part of 'bank_bloc.dart';

@immutable
abstract class BankState extends Equatable {
  const BankState();

  @override
  List<Object> get props => [];
}

class BankInitial extends BankState {}

class BankLoading extends BankState {}

class BankLoaded extends BankState {
  const BankLoaded(this.bankDetails);
  final List<BankDetails> bankDetails;

  @override
  List<Object> get props => [bankDetails];
}

class BankFailure extends BankState {}
