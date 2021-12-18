part of 'useful_information_bloc.dart';

@immutable
abstract class UsefulInformationState extends Equatable {
  const UsefulInformationState();

  @override
  List<Object> get props => [];
}

class UsefulInformationInitial extends UsefulInformationState {}

class ChoosePdfLoaded extends UsefulInformationState {}

class ChooseBankLoaded extends UsefulInformationState {
  const ChooseBankLoaded(this.pdfDocument);
  final PDFDocument pdfDocument;

  @override
  List<Object> get props => [pdfDocument];
}

class SendCostsLoaded extends UsefulInformationState {
  const SendCostsLoaded(this.pdfDocument);
  final PDFDocument pdfDocument;

  @override
  List<Object> get props => [pdfDocument];
}

class RemittancesLoaded extends UsefulInformationState {
  const RemittancesLoaded(this.pdfDocument);
  final PDFDocument pdfDocument;

  @override
  List<Object> get props => [pdfDocument];
}
