import 'package:flutter/material.dart';

class HomeScreenWrapper extends StatelessWidget {
  const HomeScreenWrapper({
    required this.child,
    Key? key,
  }) : super(key: key);
  final Widget child;
  static const String routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
    );
  }
}
