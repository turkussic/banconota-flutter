// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankDetails _$BankDetailsFromJson(Map<String, dynamic> json) => BankDetails(
      json['_id'] as String,
      json['isLocal'] as bool,
      json['bankName'] as String,
      json['address'] as String,
      json['fax'] as String,
      json['phone'] as String,
      json['boardChairman'] as String,
      json['email'] as String,
      (json['t0'] as num).toDouble(),
      (json['t1'] as num).toDouble(),
      (json['t2'] as num).toDouble(),
      (json['t3'] as num).toDouble(),
      (json['feeOfSending'] as num?)?.toDouble(),
      (json['feeOfReceiving'] as num?)?.toDouble(),
      (json['conversionRate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BankDetailsToJson(BankDetails instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'isLocal': instance.isLocal,
      'bankName': instance.bankName,
      'address': instance.address,
      'fax': instance.fax,
      'phone': instance.phone,
      'boardChairman': instance.boardChairman,
      'email': instance.email,
      't0': instance.t0,
      't1': instance.t1,
      't2': instance.t2,
      't3': instance.t3,
      'feeOfSending': instance.feeOfSending,
      'feeOfReceiving': instance.feeOfReceiving,
      'conversionRate': instance.conversionRate,
    };
