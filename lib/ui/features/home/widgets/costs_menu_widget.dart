import 'package:app/blocs/calculation_bloc/calculation_bloc.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/res/attributes.dart';
import 'package:app/res/dimensions.dart';
import 'package:app/res/text_styles.dart';
import 'package:app/ui/widgets/buttons/elevated_button_widget.dart';
import 'package:app/utils/bank_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class CostsMenuWidget extends StatefulWidget {
  const CostsMenuWidget({
    required this.initialValue,
    required this.menuValues,
    Key? key,
  }) : super(key: key);

  final String initialValue;
  final List<String> menuValues;

  @override
  State<CostsMenuWidget> createState() => _CostsMenuWidgetState();
}

class _CostsMenuWidgetState extends State<CostsMenuWidget> {
  @override
  void initState() {
    BlocProvider.of<CalculationBloc>(context)
        .add(SetPayerFees(widget.initialValue));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions.of(context);
    final textStyle = TextStyles.of(context);
    final s = S.of(context);
    return Container(
      margin: EdgeInsets.only(top: 24.0),
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                s.sendingFee,
                style: textStyle.cardTitleInverted,
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SizedBox(
            height: 3.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Attributes.backgroundColor,
                ),
                width: dimensions.fullWidth * 0.4,
                height: 60.0,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  value: widget.initialValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: textStyle.cardHintText,
                  onChanged: (String? newValue) {
                    BlocProvider.of<CalculationBloc>(context).add(
                      SetPayerFees(newValue!),
                    );
                  },
                  items: widget.menuValues
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: SizedBox(
                        width: dimensions.fullWidth * 0.4 - 50,
                        child: Text(
                          value,
                          overflow: TextOverflow.ellipsis,
                          style: textStyle.dropdownTitle,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                width: dimensions.fullWidth * 0.4,
                height: 65.0,
                child: ElevatedButtonWidget(
                  buttonText: s.calculate,
                  onPressed: () {
                    final amount = GetIt.I
                        .get<CalculationBloc>()
                        .state
                        .calculationData
                        .amount;
                    if (amount != 0.0) {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          final blocValue = GetIt.I
                              .get<CalculationBloc>()
                              .state
                              .calculationData;
                          final sendBankFee = blocValue.sendBankFee;
                          final receiveBankFee = blocValue.receiveBankFee;
                          final sendTime = blocValue.selectedTime;
                          final amount = blocValue.amount;
                          final conversionFee = 0.4;
                          final payer = blocValue.payerFees;

                          final totalSendingFee = BankUtils.calculateFee(
                              amount, sendBankFee * sendTime);
                          final totalReceiveFee = BankUtils.calculateFee(
                              amount, receiveBankFee * sendTime);
                          final totalConversionFee =
                              BankUtils.calculateFee(amount, conversionFee);

                          final totalSendAmount = amount -
                              totalSendingFee -
                              totalReceiveFee -
                              totalConversionFee;

                          return Container(
                            height: dimensions.fullHeight * 0.4,
                            color: Attributes.backgroundColor,
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(),
                                  Container(
                                    padding: EdgeInsets.all(24.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              s.totalAmount,
                                              style: textStyle.popupTitle,
                                            ),
                                            Text(
                                              amount.toStringAsFixed(0),
                                              style: textStyle.popupTitle,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 24.0,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              s.totalSendingFee,
                                              style: textStyle.popupFees,
                                            ),
                                            Text(
                                              totalSendingFee
                                                  .toStringAsFixed(1),
                                              style: textStyle.popupFeesRed,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              s.totalReceivingFee,
                                              style: textStyle.popupFees,
                                            ),
                                            Text(
                                              totalReceiveFee
                                                  .toStringAsFixed(1),
                                              style: textStyle.popupFeesRed,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              s.totalConversionFee,
                                              style: textStyle.popupFees,
                                            ),
                                            Text(
                                              totalConversionFee
                                                  .toStringAsFixed(1),
                                              style: textStyle.popupFeesRed,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 12.0,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              s.feesPayer(payer),
                                              style: textStyle.popupFeesPayer,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 24.0,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              s.amountUserReceive,
                                              style: textStyle.popupReceive,
                                            ),
                                            Text(
                                              totalSendAmount
                                                  .toStringAsFixed(1),
                                              style:
                                                  textStyle.popupReceiveGreen,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      bottom: 16.0,
                                      left: 24.0,
                                      right: 24.0,
                                    ),
                                    width: dimensions.fullWidth,
                                    height: 60.0,
                                    child: ElevatedButtonWidget(
                                      buttonText: s.close,
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      backgroundColor:
                                          Attributes.secondaryColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }
                  },
                  backgroundColor: Attributes.tertiaryColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
