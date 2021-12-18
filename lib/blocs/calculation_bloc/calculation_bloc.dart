import 'package:app/data/dto/calculation/calculation.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'calculation_event.dart';
part 'calculation_state.dart';

class CalculationBloc extends Bloc<CalculationEvent, CalculationState> {
  CalculationBloc()
      : super(CalculationInitial(Calculation(
          0.0,
          0.0,
          0.0,
          0.0,
          0.0,
          '',
        ))) {
    on<SetSendBankFee>(_setSendBankFee);
    on<SetReceiveBankFee>(_setReceiveBankFee);
    on<SetSelectedTime>(_setSelectedTime);
    on<SetAmount>(_setAmount);
    on<SetExchangeRate>(_setExchangeRate);
    on<SetPayerFees>(_setPayerFees);
  }

  void _setSendBankFee(SetSendBankFee event, Emitter<CalculationState> emit) {
    state.calculationData.sendBankFee = event.sendBankFee;
  }

  void _setReceiveBankFee(
      SetReceiveBankFee event, Emitter<CalculationState> emit) {
    state.calculationData.receiveBankFee = event.receiveBankFee;
  }

  void _setSelectedTime(SetSelectedTime event, Emitter<CalculationState> emit) {
    state.calculationData.selectedTime = event.selectedTime;
  }

  void _setAmount(SetAmount event, Emitter<CalculationState> emit) {
    state.calculationData.amount = event.amount;
  }

  void _setExchangeRate(SetExchangeRate event, Emitter<CalculationState> emit) {
    state.calculationData.exchangeRate = event.exchangeRate;
  }

  void _setPayerFees(SetPayerFees event, Emitter<CalculationState> emit) {
    state.calculationData.payerFees = event.payerFees;
  }
}
