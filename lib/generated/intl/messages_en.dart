// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(payer) => "Fees payer ${payer}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "amountUserReceive":
            MessageLookupByLibrary.simpleMessage("Amount user receive: "),
        "bankFrom": MessageLookupByLibrary.simpleMessage(
            "Bank you are sending money from"),
        "bankTo": MessageLookupByLibrary.simpleMessage("Receiving money bank"),
        "buttonDismissDialog": MessageLookupByLibrary.simpleMessage("Dismiss"),
        "buttonRetryDialog": MessageLookupByLibrary.simpleMessage("Try again"),
        "calculate": MessageLookupByLibrary.simpleMessage("Calculate"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "feesPayer": m0,
        "genericErrorMessageErrorDialog": MessageLookupByLibrary.simpleMessage(
            "An unexpected error has occurred. Please try again."),
        "goBack": MessageLookupByLibrary.simpleMessage("Go back"),
        "letsStart": MessageLookupByLibrary.simpleMessage("Let\'s start"),
        "moneySum": MessageLookupByLibrary.simpleMessage("Enter amount"),
        "ourGoal": MessageLookupByLibrary.simpleMessage("Our Goal"),
        "receiver": MessageLookupByLibrary.simpleMessage("Receiver"),
        "relevantInformation":
            MessageLookupByLibrary.simpleMessage("Relevant Information"),
        "remittances": MessageLookupByLibrary.simpleMessage("Remittances"),
        "sendCost": MessageLookupByLibrary.simpleMessage("Sending cost"),
        "sender": MessageLookupByLibrary.simpleMessage("Sender"),
        "sendingFee": MessageLookupByLibrary.simpleMessage("Fee of sending"),
        "split": MessageLookupByLibrary.simpleMessage("Splits fees"),
        "startSendingMoney":
            MessageLookupByLibrary.simpleMessage("Start sending money"),
        "theDayAfter":
            MessageLookupByLibrary.simpleMessage("In the following 3 days"),
        "threeDays":
            MessageLookupByLibrary.simpleMessage("In the following 4 days"),
        "titleErrorDialog": MessageLookupByLibrary.simpleMessage("Error"),
        "today": MessageLookupByLibrary.simpleMessage("Today"),
        "tomorrow":
            MessageLookupByLibrary.simpleMessage("In the following 2 days"),
        "totalAmount": MessageLookupByLibrary.simpleMessage("Total amount: "),
        "totalConversionFee":
            MessageLookupByLibrary.simpleMessage("Total conversion fee: "),
        "totalReceivingFee":
            MessageLookupByLibrary.simpleMessage("Total receiving fee: "),
        "totalSendingFee":
            MessageLookupByLibrary.simpleMessage("Total sending fee: "),
        "transferSpeed": MessageLookupByLibrary.simpleMessage(
            "Choose the time of the transaction"),
        "usefulInformation":
            MessageLookupByLibrary.simpleMessage("Useful Information")
      };
}
