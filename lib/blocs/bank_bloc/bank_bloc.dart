import 'package:app/data/dto/bank_details/bank_details.dart';
import 'package:app/data/repositores/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';

part 'bank_event.dart';
part 'bank_state.dart';

class BankBloc extends Bloc<BankEvent, BankState> {
  BankBloc() : super(BankInitial()) {
    on<FetchBankDetails>(_fetchBankDetails);
  }

  final Repository _repository = GetIt.I.get<Repository>();

  void _fetchBankDetails(
      FetchBankDetails event, Emitter<BankState> emit) async {
    try {
      emit(BankLoading());
      final List<BankDetails> bankDetails = await _repository.getBankDetails();
      emit(BankLoaded(bankDetails));
    } catch (e) {
      emit(BankFailure());
      rethrow;
    }
  }
}
