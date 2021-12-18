import 'package:app/data/dto/bank_details/bank_details.dart';
import 'package:app/generated/l10n.dart';

class BankUtils {
  static List<BankDetails> getLocalBanks(List<BankDetails> banks) {
    final List<BankDetails> localBanks = [];
    banks.forEach((bank) {
      if (bank.isLocal) {
        localBanks.add(bank);
      }
    });
    return localBanks;
  }

  static List<BankDetails> getForeignBanks(List<BankDetails> banks) {
    final List<BankDetails> foreignBanks = [];
    banks.forEach((bank) {
      if (!bank.isLocal) {
        foreignBanks.add(bank);
      }
    });
    return foreignBanks;
  }

  static List<double> getAbbreviations(List<BankDetails> banks) {
    final List<double> abbreviations = []
      ..add(banks[0].t0)
      ..add(banks[0].t1)
      ..add(banks[0].t2)
      ..add(banks[0].t3);
    return abbreviations;
  }

  static List<String> convertAbbreviationToDay(List<double> abbreviations) {
    final List<String> days = [];
    abbreviations.forEach((abbreviation) {
      if (abbreviation == 3.0) {
        days.add(S().today);
      } else if (abbreviation == 2.7) {
        days.add(S().tomorrow);
      } else if (abbreviation == 2.3) {
        days.add(S().theDayAfter);
      } else if (abbreviation == 1.8) {
        days.add(S().threeDays);
      }
    });
    return days;
  }

  static List<double> convertDaysToAbbreviation(List<String> days) {
    final List<double> abbreviations = [];
    days.forEach((day) {
      if (day == S().today) {
        abbreviations.add(3.0);
      } else if (day == S().tomorrow) {
        abbreviations.add(2.7);
      } else if (day == S().theDayAfter) {
        abbreviations.add(2.3);
      } else if (day == S().theDayAfter) {
        abbreviations.add(1.8);
      }
    });
    return abbreviations;
  }

  static double convertDayToAbbreviation(String day) {
    if (day == S().today) {
      return 3.0;
    } else if (day == S().tomorrow) {
      return 2.7;
    } else if (day == S().theDayAfter) {
      return 2.3;
    } else if (day == S().theDayAfter) {
      return 1.8;
    } else {
      return 0.0;
    }
  }

  static BankDetails getBank(List<BankDetails> banks, String bankName) {
    return banks.firstWhere(
      (bank) => bank.bankName == bankName,
    );
  }

  static double calculateFee(double amount, double fee) {
    return amount * (fee / 100);
  }
}
