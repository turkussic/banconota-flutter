import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'useful_information_event.dart';
part 'useful_information_state.dart';

class UsefulInformationBloc
    extends Bloc<UsefulInformationEvent, UsefulInformationState> {
  UsefulInformationBloc() : super(UsefulInformationInitial()) {
    on<LoadChoosePdf>(_loadChoosePdf);
    on<LoadChooseBank>(_loadChooseBank);
    on<LoadSendCost>(_loadSendCost);
    on<LoadRemittances>(_loadRemittances);
  }

  void _loadChoosePdf(
      LoadChoosePdf event, Emitter<UsefulInformationState> emit) {
    emit(ChoosePdfLoaded());
  }

  void _loadChooseBank(
      LoadChooseBank event, Emitter<UsefulInformationState> emit) async {
    final PDFDocument doc = await PDFDocument.fromAsset(event.pdfPath);
    emit(ChooseBankLoaded(doc));
  }

  void _loadSendCost(
      LoadSendCost event, Emitter<UsefulInformationState> emit) async {
    final PDFDocument doc = await PDFDocument.fromAsset(event.pdfPath);
    emit(SendCostsLoaded(doc));
  }

  void _loadRemittances(
      LoadRemittances event, Emitter<UsefulInformationState> emit) async {
    final PDFDocument doc = await PDFDocument.fromAsset(event.pdfPath);
    emit(RemittancesLoaded(doc));
  }
}
