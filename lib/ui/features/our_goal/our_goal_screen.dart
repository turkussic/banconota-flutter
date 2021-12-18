import 'package:app/res/assets.dart';
import 'package:app/ui/widgets/wrappers/landing_screen_wrapper.dart';
import 'package:flutter/material.dart';

class OurGoalScreen extends StatelessWidget {
  const OurGoalScreen({Key? key}) : super(key: key);
  static const String routeName = '/our-goal';

  @override
  Widget build(BuildContext context) {
    return LandingScreenWrapper(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(Assets.ourGoal),
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}
