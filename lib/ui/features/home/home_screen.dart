import 'package:app/blocs/calculation_bloc/calculation_bloc.dart';
import 'package:app/data/dto/bank_details/bank_details.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/res/assets.dart';
import 'package:app/res/attributes.dart';
import 'package:app/res/dimensions.dart';
import 'package:app/res/text_styles.dart';
import 'package:app/ui/features/home/widgets/abbreviations_card_widget.dart';
import 'package:app/ui/features/home/widgets/costs_menu_widget.dart';
import 'package:app/ui/features/home/widgets/home_card_widget.dart';
import 'package:app/utils/bank_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    required this.banks,
    Key? key,
  }) : super(key: key);

  final List<BankDetails> banks;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<CalculationBloc>(context).add(SetAmount(0.0));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions.of(context);
    final textStyle = TextStyles.of(context);
    final s = S.of(context);
    final listOfLocalBanks = BankUtils.getLocalBanks(widget.banks);
    final listOfForeignBanks = BankUtils.getForeignBanks(widget.banks);
    final listOfAbbreviations = BankUtils.getAbbreviations(widget.banks);
    final listOfDays = BankUtils.convertAbbreviationToDay(listOfAbbreviations);
    final listOfSendFee = [s.sender, s.receiver, s.split];
    final TextEditingController _textController = TextEditingController();

    return Container(
      height: dimensions.fullHeight,
      width: dimensions.fullWidth,
      decoration: BoxDecoration(color: Attributes.backgroundColor),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            HomeCardWidget(
              false,
              Assets.germany,
              listOfForeignBanks,
              60.0,
              title: s.bankFrom,
              initialValue: listOfForeignBanks[0],
            ),
            HomeCardWidget(
              true,
              Assets.bosnia,
              listOfLocalBanks,
              0.0,
              title: s.bankTo,
              initialValue: listOfLocalBanks[0],
            ),
            AbbreviationsCardWidget(
              Attributes.primaryColor,
              listOfDays,
              0.0,
              title: s.transferSpeed,
              initialValue: listOfDays[0],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    s.moneySum,
                    style: textStyle.cardTitleInverted,
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  TextField(
                    controller: _textController,
                    keyboardType: TextInputType.number,
                    onChanged: (String value) {
                      if (value.length > 0) {
                        BlocProvider.of<CalculationBloc>(context).add(
                          SetAmount(
                            double.parse(value),
                          ),
                        );
                      } else {
                        BlocProvider.of<CalculationBloc>(context).add(
                          SetAmount(0.0),
                        );
                      }
                    },
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Attributes.tertiaryColor,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Attributes.secondaryColor,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      hintText: s.moneySum,
                    ),
                  ),
                ],
              ),
            ),
            CostsMenuWidget(
              menuValues: listOfSendFee,
              initialValue: listOfSendFee[0],
            ),
          ],
        ),
      ),
    );
  }
}
