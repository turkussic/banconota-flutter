part of 'useful_information_bloc.dart';

@immutable
abstract class UsefulInformationEvent extends Equatable {
  const UsefulInformationEvent();

  @override
  List<Object> get props => [];
}

class LoadChoosePdf extends UsefulInformationEvent {}

class LoadChooseBank extends UsefulInformationEvent {
  const LoadChooseBank(this.pdfPath);
  final String pdfPath;

  @override
  List<Object> get props => [pdfPath];
}

class LoadSendCost extends UsefulInformationEvent {
  const LoadSendCost(this.pdfPath);
  final String pdfPath;

  @override
  List<Object> get props => [pdfPath];
}

class LoadRemittances extends UsefulInformationEvent {
  const LoadRemittances(this.pdfPath);
  final String pdfPath;

  @override
  List<Object> get props => [pdfPath];
}
