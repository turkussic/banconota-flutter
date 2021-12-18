import 'package:app/data/dto/bank_details/bank_details.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/res/assets.dart';
import 'package:app/res/attributes.dart';
import 'package:app/res/dimensions.dart';
import 'package:app/ui/features/home/home_screen.dart';
import 'package:app/ui/features/our_goal/our_goal_screen.dart';
import 'package:app/ui/features/useful_information/useful_information_screen.dart';
import 'package:app/ui/widgets/buttons/elevated_button_widget.dart';
import 'package:app/ui/widgets/wrappers/home_screen_wrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart' as t;

class LandingLoadedWidget extends StatelessWidget {
  const LandingLoadedWidget({
    required this.banks,
    Key? key,
  }) : super(key: key);

  final List<BankDetails> banks;

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions.of(context);
    final s = S.of(context);
    return Container(
      height: dimensions.fullHeight,
      width: dimensions.fullWidth,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Assets.background), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// logo
          Container(
            height: dimensions.fullHeight * 0.6,
            width: dimensions.fullWidth,
            margin: EdgeInsets.only(top: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Container(
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage(
                //         Assets.logo,
                //       ),
                //     ),
                //   ),
                //   width: dimensions.fullWidth,
                //   height: dimensions.fullHeight * 0.4,
                // ),
              ],
            ),
          ),

          /// buttons
          SizedBox(
            child: Column(
              children: [
                Container(
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
                    buttonText: s.usefulInformation,
                    backgroundColor: Attributes.accentColor,
                    onPressed: () {
                      Get.to<UsefulInformationScreen>(
                        () => UsefulInformationScreen(),
                        routeName: UsefulInformationScreen.routeName,
                        transition: t.Transition.rightToLeft,
                      );
                    },
                  ),
                ),
                Container(
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
                    backgroundColor: Attributes.secondaryColor,
                    buttonText: s.ourGoal,
                    onPressed: () {
                      Get.to<OurGoalScreen>(
                        () => OurGoalScreen(),
                        routeName: OurGoalScreen.routeName,
                        transition: t.Transition.rightToLeft,
                      );
                    },
                  ),
                ),
                Container(
                  height: dimensions.buttonHeight,
                  width: dimensions.fullWidth,
                  margin: EdgeInsets.only(
                    left: 24.0,
                    right: 24.0,
                    bottom: 25.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: ElevatedButtonWidget(
                    buttonText: s.startSendingMoney,
                    backgroundColor: Attributes.tertiaryColor,
                    onPressed: () {
                      Get.to<HomeScreen>(
                        () => HomeScreenWrapper(
                          child: HomeScreen(
                            banks: banks,
                          ),
                        ),
                        routeName: HomeScreenWrapper.routeName,
                        transition: t.Transition.rightToLeft,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
