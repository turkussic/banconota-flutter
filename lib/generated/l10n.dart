// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Error`
  String get titleErrorDialog {
    return Intl.message(
      'Error',
      name: 'titleErrorDialog',
      desc: '',
      args: [],
    );
  }

  /// `Dismiss`
  String get buttonDismissDialog {
    return Intl.message(
      'Dismiss',
      name: 'buttonDismissDialog',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get buttonRetryDialog {
    return Intl.message(
      'Try again',
      name: 'buttonRetryDialog',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error has occurred. Please try again.`
  String get genericErrorMessageErrorDialog {
    return Intl.message(
      'An unexpected error has occurred. Please try again.',
      name: 'genericErrorMessageErrorDialog',
      desc: '',
      args: [],
    );
  }

  /// `Let's start`
  String get letsStart {
    return Intl.message(
      'Let\'s start',
      name: 'letsStart',
      desc: '',
      args: [],
    );
  }

  /// `Useful Information`
  String get usefulInformation {
    return Intl.message(
      'Useful Information',
      name: 'usefulInformation',
      desc: '',
      args: [],
    );
  }

  /// `Our Goal`
  String get ourGoal {
    return Intl.message(
      'Our Goal',
      name: 'ourGoal',
      desc: '',
      args: [],
    );
  }

  /// `Start sending money`
  String get startSendingMoney {
    return Intl.message(
      'Start sending money',
      name: 'startSendingMoney',
      desc: '',
      args: [],
    );
  }

  /// `Sending cost`
  String get sendCost {
    return Intl.message(
      'Sending cost',
      name: 'sendCost',
      desc: '',
      args: [],
    );
  }

  /// `Remittances`
  String get remittances {
    return Intl.message(
      'Remittances',
      name: 'remittances',
      desc: '',
      args: [],
    );
  }

  /// `Relevant Information`
  String get relevantInformation {
    return Intl.message(
      'Relevant Information',
      name: 'relevantInformation',
      desc: '',
      args: [],
    );
  }

  /// `Bank you are sending money from`
  String get bankFrom {
    return Intl.message(
      'Bank you are sending money from',
      name: 'bankFrom',
      desc: '',
      args: [],
    );
  }

  /// `Receiving money bank`
  String get bankTo {
    return Intl.message(
      'Receiving money bank',
      name: 'bankTo',
      desc: '',
      args: [],
    );
  }

  /// `Choose the time of the transaction`
  String get transferSpeed {
    return Intl.message(
      'Choose the time of the transaction',
      name: 'transferSpeed',
      desc: '',
      args: [],
    );
  }

  /// `Enter amount`
  String get moneySum {
    return Intl.message(
      'Enter amount',
      name: 'moneySum',
      desc: '',
      args: [],
    );
  }

  /// `Go back`
  String get goBack {
    return Intl.message(
      'Go back',
      name: 'goBack',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `In the following 2 days`
  String get tomorrow {
    return Intl.message(
      'In the following 2 days',
      name: 'tomorrow',
      desc: '',
      args: [],
    );
  }

  /// `In the following 3 days`
  String get theDayAfter {
    return Intl.message(
      'In the following 3 days',
      name: 'theDayAfter',
      desc: '',
      args: [],
    );
  }

  /// `In the following 4 days`
  String get threeDays {
    return Intl.message(
      'In the following 4 days',
      name: 'threeDays',
      desc: '',
      args: [],
    );
  }

  /// `Fee of sending`
  String get sendingFee {
    return Intl.message(
      'Fee of sending',
      name: 'sendingFee',
      desc: '',
      args: [],
    );
  }

  /// `Sender`
  String get sender {
    return Intl.message(
      'Sender',
      name: 'sender',
      desc: '',
      args: [],
    );
  }

  /// `Receiver`
  String get receiver {
    return Intl.message(
      'Receiver',
      name: 'receiver',
      desc: '',
      args: [],
    );
  }

  /// `Splits fees`
  String get split {
    return Intl.message(
      'Splits fees',
      name: 'split',
      desc: '',
      args: [],
    );
  }

  /// `Calculate`
  String get calculate {
    return Intl.message(
      'Calculate',
      name: 'calculate',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Total amount: `
  String get totalAmount {
    return Intl.message(
      'Total amount: ',
      name: 'totalAmount',
      desc: '',
      args: [],
    );
  }

  /// `Total sending fee: `
  String get totalSendingFee {
    return Intl.message(
      'Total sending fee: ',
      name: 'totalSendingFee',
      desc: '',
      args: [],
    );
  }

  /// `Total receiving fee: `
  String get totalReceivingFee {
    return Intl.message(
      'Total receiving fee: ',
      name: 'totalReceivingFee',
      desc: '',
      args: [],
    );
  }

  /// `Total conversion fee: `
  String get totalConversionFee {
    return Intl.message(
      'Total conversion fee: ',
      name: 'totalConversionFee',
      desc: '',
      args: [],
    );
  }

  /// `Amount user receive: `
  String get amountUserReceive {
    return Intl.message(
      'Amount user receive: ',
      name: 'amountUserReceive',
      desc: '',
      args: [],
    );
  }

  /// `Fees payer {payer}`
  String feesPayer(Object payer) {
    return Intl.message(
      'Fees payer $payer',
      name: 'feesPayer',
      desc: '',
      args: [payer],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ba'),
      Locale.fromSubtags(languageCode: 'hr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
