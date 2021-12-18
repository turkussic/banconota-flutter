import 'package:json_annotation/json_annotation.dart';

part 'bank_details.g.dart';

@JsonSerializable()
class BankDetails {
  BankDetails(
    this.id,
    // ignore: avoid_positional_boolean_parameters
    this.isLocal,
    this.bankName,
    this.address,
    this.fax,
    this.phone,
    this.boardChairman,
    this.email,
    this.t0,
    this.t1,
    this.t2,
    this.t3,
    this.feeOfSending,
    this.feeOfReceiving,
    this.conversionRate,
  );

  factory BankDetails.fromJson(Map<String, dynamic> json) =>
      _$BankDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$BankDetailsToJson(this);

  @JsonKey(name: '_id')
  final String id;
  final bool isLocal;
  final String bankName;
  final String address;
  final String fax;
  final String phone;
  final String boardChairman;
  final String email;
  final double t0;
  final double t1;
  final double t2;
  final double t3;
  final double? feeOfSending;
  final double? feeOfReceiving;
  final double? conversionRate;
}
