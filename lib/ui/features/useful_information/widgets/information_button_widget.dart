import 'package:app/blocs/useful_information_bloc/useful_information_bloc.dart';
import 'package:app/res/dimensions.dart';
import 'package:app/ui/widgets/buttons/elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InformationButtonWidget extends StatelessWidget {
  const InformationButtonWidget({
    required this.buttonText,
    required this.pdfPath,
    required this.buttonColor,
    Key? key,
  }) : super(key: key);

  final String buttonText;
  final String pdfPath;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions.of(context);
    return Container(
      height: dimensions.buttonHeight,
      width: dimensions.fullWidth,
      margin: EdgeInsets.only(
        left: 24.0,
        right: 24.0,
        bottom: 12.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ElevatedButtonWidget(
        backgroundColor: buttonColor,
        buttonText: buttonText,
        onPressed: () {
          BlocProvider.of<UsefulInformationBloc>(context).add(
            LoadSendCost(pdfPath),
          );
        },
      ),
    );
  }
}
