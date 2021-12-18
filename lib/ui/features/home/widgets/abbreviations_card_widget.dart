import 'package:app/blocs/calculation_bloc/calculation_bloc.dart';
import 'package:app/res/attributes.dart';
import 'package:app/res/dimensions.dart';
import 'package:app/res/text_styles.dart';
import 'package:app/utils/bank_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AbbreviationsCardWidget extends StatefulWidget {
  AbbreviationsCardWidget(
    this.backgroundColor,
    this.menuValues,
    this.topMargin, {
    required this.title,
    required this.initialValue,
    Key? key,
  }) : super(key: key);

  final String initialValue;
  final Color backgroundColor;
  final String title;
  final double topMargin;
  final List<String> menuValues;

  @override
  State<AbbreviationsCardWidget> createState() =>
      _AbbreviationsCardWidgetState();
}

class _AbbreviationsCardWidgetState extends State<AbbreviationsCardWidget> {
  @override
  void initState() {
    final convertedValue =
        BankUtils.convertDayToAbbreviation(widget.initialValue);
    BlocProvider.of<CalculationBloc>(context).add(
      SetSelectedTime(convertedValue),
    );
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
        color: widget.backgroundColor,
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
                          value: widget.initialValue.toString(),
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          style: textStyle.cardHintText,
                          onChanged: (String? newValue) {
                            final convertedValue =
                                BankUtils.convertDayToAbbreviation(newValue!);
                            BlocProvider.of<CalculationBloc>(context).add(
                              SetSelectedTime(convertedValue),
                            );
                          },
                          items: widget.menuValues
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value.toString(),
                              child: SizedBox(
                                width: dimensions.fullWidth - 150,
                                child: Text(
                                  value.toString(),
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
