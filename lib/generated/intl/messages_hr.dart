// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hr locale. All the
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
  String get localeName => 'hr';

  static String m0(payer) => "Troškove snosi ${payer}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "amountUserReceive":
            MessageLookupByLibrary.simpleMessage("Iznos primljenog novca: "),
        "bankFrom": MessageLookupByLibrary.simpleMessage("Banka pošiljaoca"),
        "bankTo": MessageLookupByLibrary.simpleMessage("Banka primaoca"),
        "buttonDismissDialog": MessageLookupByLibrary.simpleMessage("Ukloni"),
        "buttonRetryDialog":
            MessageLookupByLibrary.simpleMessage("Pokušaj ponovno"),
        "calculate": MessageLookupByLibrary.simpleMessage("Izračunaj"),
        "close": MessageLookupByLibrary.simpleMessage("Zatvorite"),
        "feesPayer": m0,
        "genericErrorMessageErrorDialog": MessageLookupByLibrary.simpleMessage(
            "Desila se neočekivana greška. Molimo Vas da pokušate ponovno."),
        "goBack": MessageLookupByLibrary.simpleMessage("Idi nazad"),
        "letsStart": MessageLookupByLibrary.simpleMessage("Započnite"),
        "moneySum": MessageLookupByLibrary.simpleMessage("Unesite iznos"),
        "ourGoal": MessageLookupByLibrary.simpleMessage("Naš cilj"),
        "receiver": MessageLookupByLibrary.simpleMessage("Primalac"),
        "relevantInformation":
            MessageLookupByLibrary.simpleMessage("Relevante Informacije"),
        "remittances": MessageLookupByLibrary.simpleMessage("Doznake"),
        "sendCost": MessageLookupByLibrary.simpleMessage("Troškovi slanja"),
        "sender": MessageLookupByLibrary.simpleMessage("Pošiljalac"),
        "sendingFee":
            MessageLookupByLibrary.simpleMessage("Troškove slanja snosi"),
        "split":
            MessageLookupByLibrary.simpleMessage("I pošiljalac i primalac"),
        "startSendingMoney":
            MessageLookupByLibrary.simpleMessage("Započni proces"),
        "theDayAfter": MessageLookupByLibrary.simpleMessage("U roku od 3 dana"),
        "threeDays": MessageLookupByLibrary.simpleMessage("U roku od 4 dana"),
        "titleErrorDialog": MessageLookupByLibrary.simpleMessage("Greška"),
        "today": MessageLookupByLibrary.simpleMessage("Danas"),
        "tomorrow": MessageLookupByLibrary.simpleMessage("U roku od 2 dana"),
        "totalAmount": MessageLookupByLibrary.simpleMessage("Ukupan iznos: "),
        "totalConversionFee": MessageLookupByLibrary.simpleMessage(
            "Naknada za konverziju valute: "),
        "totalReceivingFee":
            MessageLookupByLibrary.simpleMessage("Naknada za primanje: "),
        "totalSendingFee":
            MessageLookupByLibrary.simpleMessage("Naknada za slanje: "),
        "transferSpeed": MessageLookupByLibrary.simpleMessage(
            "Izaberite vrijeme isporuke transkacije"),
        "usefulInformation":
            MessageLookupByLibrary.simpleMessage("Korisne informacije")
      };
}
