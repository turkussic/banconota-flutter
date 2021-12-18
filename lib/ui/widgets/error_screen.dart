import 'package:app/blocs/bank_bloc/bank_bloc.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/res/attributes.dart';
import 'package:app/res/dimensions.dart';
import 'package:app/res/text_styles.dart';
import 'package:app/ui/widgets/buttons/elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions.of(context);
    final s = S.of(context);
    final textStyle = TextStyles.of(context);
    return SizedBox(
      height: dimensions.fullHeight,
      width: dimensions.fullWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            color: Colors.redAccent,
            size: 100.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            s.genericErrorMessageErrorDialog,
            style: textStyle.cardTitleInverted,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            width: dimensions.fullWidth,
            height: 60.0,
           padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: ElevatedButtonWidget(
              onPressed: () {
                BlocProvider.of<BankBloc>(context).add(FetchBankDetails());
              },
              backgroundColor: Attributes.primaryColor,
              buttonText: s.goBack,
            ),
          )
        ],
      ),
    );
  }
}
