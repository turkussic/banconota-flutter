import 'package:app/res/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    required this.buttonText,
    required this.onPressed,
    required this.backgroundColor,
    Key? key,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback onPressed;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyles.of(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: textStyle.buttonText,
      ),
    );
  }
}
