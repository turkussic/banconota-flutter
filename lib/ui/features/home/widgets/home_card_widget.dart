import 'package:app/blocs/calculation_bloc/calculation_bloc.dart';
import 'package:app/data/dto/bank_details/bank_details.dart';
import 'package:app/res/attributes.dart';
import 'package:app/res/dimensions.dart';
import 'package:app/res/text_styles.dart';
import 'package:app/utils/bank_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCardWidget extends StatefulWidget {
  HomeCardWidget(
    this.isLocal,
    this.image,
    this.menuValues,
    this.topMargin, {
    required this.title,
    required this.initialValue,
    Key? key,
  }) : super(key: key);

  final bool isLocal;
  final BankDetails initialValue;
  final String image;
  final String title;
  final double topMargin;
  final List<BankDetails> menuValues;

  @override
  State<HomeCardWidget> createState() => _HomeCardWidgetState();
}

class _HomeCardWidgetState extends State<HomeCardWidget> {
  @override
  void initState() {
    if (widget.isLocal) {
      BlocProvider.of<CalculationBloc>(context).add(
        SetReceiveBankFee(
          widget.initialValue.feeOfReceiving ?? 0.0,
        ),
      );
    } else {
      BlocProvider.of<CalculationBloc>(context).add(
        SetSendBankFee(
          widget.initialValue.feeOfSending ?? 0.0,
        ),
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions.of(context);
    final textStyle = TextStyles.of(context);
    return Container(
      height: dimensions.cardHeight,
      width: dimensions.fullWidth,
      margin: EdgeInsets.only(
        top: widget.topMargin,
        left: 24.0,
        right: 24.0,
        bottom: 24.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        image: DecorationImage(
          image: AssetImage(widget.image),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.4),
            BlendMode.darken,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.title,
                        style: textStyle.cardTitle,
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color: Attributes.backgroundColor,
                        ),
                        width: dimensions.fullWidth - 100,
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                          value: widget.initialValue.bankName,
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          style: textStyle.cardHintText,
                          onChanged: (String? newValue) {
                            final bankData =
                                BankUtils.getBank(widget.menuValues, newValue!);
                            if (widget.isLocal) {
                              BlocProvider.of<CalculationBloc>(context).add(
                                SetReceiveBankFee(
                                  bankData.feeOfReceiving ?? 0.0,
                                ),
                              );
                            } else {
                              BlocProvider.of<CalculationBloc>(context).add(
                                SetSendBankFee(
                                  bankData.feeOfSending ?? 0.0,
                                ),
                              );
                            }
                          },
                          items: widget.menuValues
                              .map<DropdownMenuItem<String>>(
                                  (BankDetails value) {
                            return DropdownMenuItem<String>(
                              value: value.bankName,
                              child: SizedBox(
                                width: dimensions.fullWidth - 150,
                                child: Text(
                                  value.bankName,
                                  overflow: TextOverflow.ellipsis,
                                  style: textStyle.dropdownTitle,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
