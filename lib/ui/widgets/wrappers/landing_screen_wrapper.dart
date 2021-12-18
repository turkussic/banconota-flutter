import 'package:flutter/material.dart';

class LandingScreenWrapper extends StatelessWidget {
  const LandingScreenWrapper({
    required this.child,
    Key? key,
  }) : super(key: key);
  final Widget child;
  static const String routeName = '/landing-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
    );
  }
}
