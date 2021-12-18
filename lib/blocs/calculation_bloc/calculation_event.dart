part of 'calculation_bloc.dart';

@immutable
abstract class CalculationEvent extends Equatable {
  const CalculationEvent();

  @override
  List<Object> get props => [];
}

class SetSendBankFee extends CalculationEvent {
  const SetSendBankFee(this.sendBankFee);
  final double sendBankFee;

  @override
  List<Object> get props => [sendBankFee];
}

class SetReceiveBankFee extends CalculationEvent {
  const SetReceiveBankFee(this.receiveBankFee);
  final double receiveBankFee;

  @override
  List<Object> get props => [receiveBankFee];
}

class SetSelectedTime extends CalculationEvent {
  const SetSelectedTime(this.selectedTime);
  final double selectedTime;

  @override
  List<Object> get props => [selectedTime];
}

class SetAmount extends CalculationEvent {
  const SetAmount(this.amount);
  final double amount;

  @override
  List<Object> get props => [amount];
}

class SetExchangeRate extends CalculationEvent {
  const SetExchangeRate(this.exchangeRate);
  final double exchangeRate;

  @override
  List<Object> get props => [exchangeRate];
}

class SetPayerFees extends CalculationEvent {
  const SetPayerFees(this.payerFees);
  final String payerFees;

  @override
  List<Object> get props => [payerFees];
}
