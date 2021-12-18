import 'package:app/generated/l10n.dart';
import 'package:app/res/attributes.dart';
import 'package:app/ui/features/splash_screen/splash_screen.dart';
import 'package:app/ui/widgets/wrappers/landing_screen_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Banconota',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        primaryColor: Attributes.primaryColor,
        scaffoldBackgroundColor: Attributes.backgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Attributes.accentColor),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Attributes.cursorColor,
          selectionColor: Attributes.textSelectionColor,
        ),
      ),
      home: LandingScreenWrapper(
        child: SplashScreen(),
      ),
    );
  }
}
