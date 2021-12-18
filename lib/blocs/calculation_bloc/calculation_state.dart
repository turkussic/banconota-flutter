part of 'calculation_bloc.dart';

@immutable
abstract class CalculationState extends Equatable {
  CalculationState(this.calculationData);
  Calculation calculationData;

  @override
  List<Object> get props => [this.calculationData];
}

class CalculationInitial extends CalculationState {
  CalculationInitial(Calculation calculationData) : super(calculationData);
}
