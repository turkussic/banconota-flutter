part of 'bank_bloc.dart';

@immutable
abstract class BankEvent extends Equatable {
  const BankEvent();

  @override
  List<Object> get props => [];
}

class FetchBankDetails extends BankEvent {}
