// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Calculation _$CalculationFromJson(Map<String, dynamic> json) => Calculation(
      (json['sendBankFee'] as num).toDouble(),
      (json['receiveBankFee'] as num).toDouble(),
      (json['selectedTime'] as num).toDouble(),
      (json['amount'] as num).toDouble(),
      (json['exchangeRate'] as num).toDouble(),
      json['payerFees'] as String,
    );

Map<String, dynamic> _$CalculationToJson(Calculation instance) =>
    <String, dynamic>{
      'sendBankFee': instance.sendBankFee,
      'receiveBankFee': instance.receiveBankFee,
      'selectedTime': instance.selectedTime,
      'amount': instance.amount,
      'exchangeRate': instance.exchangeRate,
      'payerFees': instance.payerFees,
    };
