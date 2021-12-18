import 'package:app/blocs/useful_information_bloc/useful_information_bloc.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/res/assets.dart';
import 'package:app/res/attributes.dart';
import 'package:app/res/dimensions.dart';
import 'package:app/ui/features/useful_information/widgets/information_button_widget.dart';
import 'package:app/ui/widgets/pdf_viewer/pdf_viewer.dart';
import 'package:app/ui/widgets/wrappers/landing_screen_wrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class UsefulInformationScreen extends StatefulWidget {
  const UsefulInformationScreen({Key? key}) : super(key: key);

  static const String routeName = '/useful-information';

  @override
  State<UsefulInformationScreen> createState() =>
      _UsefulInformationScreenState();
}

class _UsefulInformationScreenState extends State<UsefulInformationScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<UsefulInformationBloc>(context).add(LoadChoosePdf());
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions.of(context);
    final s = S.of(context);
    return WillPopScope(
      onWillPop: () async {
        if (GetIt.I.get<UsefulInformationBloc>().state is ChoosePdfLoaded) {
          Get.back<dynamic>();
        } else {
          BlocProvider.of<UsefulInformationBloc>(context).add(LoadChoosePdf());
        }
        return false;
      },
      child: LandingScreenWrapper(
          child: BlocBuilder<UsefulInformationBloc, UsefulInformationState>(
        buildWhen: (p, c) => p != c,
        builder: (context, state) {
          if (state is ChoosePdfLoaded) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.infoBackground),
                  fit: BoxFit.fill,
                ),
              ),
              width: dimensions.fullWidth,
              height: dimensions.fullHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InformationButtonWidget(
                    buttonText: s.relevantInformation,
                    pdfPath: Assets.bankChoosePdf,
                    buttonColor: Attributes.primaryColor,
                  ),
                  InformationButtonWidget(
                    buttonText: s.sendCost,
                    pdfPath: Assets.sendCostPdf,
                    buttonColor: Attributes.secondaryColor,
                  ),
                  InformationButtonWidget(
                    buttonText: s.remittances,
                    pdfPath: Assets.remittances,
                    buttonColor: Attributes.tertiaryColor,
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                ],
              ),
            );
          } else if (state is ChooseBankLoaded) {
            return SizedBox(
              height: dimensions.fullHeight,
              width: dimensions.fullWidth,
              child: PdfViewer(
                doc: state.pdfDocument,
              ),
            );
          } else if (state is SendCostsLoaded) {
            return SizedBox(
              height: dimensions.fullHeight,
              width: dimensions.fullWidth,
              child: PdfViewer(
                doc: state.pdfDocument,
              ),
            );
          } else {
            return Container();
          }
        },
      )),
    );
  }
}
