import 'package:json_annotation/json_annotation.dart';

part 'calculation.g.dart';

@JsonSerializable()
class Calculation {
  Calculation(
    this.sendBankFee,
    this.receiveBankFee,
    this.selectedTime,
    this.amount,
    this.exchangeRate,
    this.payerFees,
  );

  factory Calculation.fromJson(Map<String, dynamic> json) =>
      _$CalculationFromJson(json);

  Map<String, dynamic> toJson() => _$CalculationToJson(this);

  double sendBankFee;
  double receiveBankFee;
  double selectedTime;
  double amount;
  double exchangeRate;
  String payerFees;
}
