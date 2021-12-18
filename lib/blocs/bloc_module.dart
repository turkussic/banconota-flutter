import 'package:app/blocs/bank_bloc/bank_bloc.dart';
import 'package:app/blocs/calculation_bloc/calculation_bloc.dart';
import 'package:app/blocs/splash_bloc/splash_bloc.dart';
import 'package:app/blocs/useful_information_bloc/useful_information_bloc.dart';
import 'package:app/utils/base_di_module.dart';
import 'package:get_it/get_it.dart';

class BlocModule extends BaseDiModule {
  @override
  void inject() {
    GetIt.I.registerLazySingleton<SplashBloc>(() => SplashBloc());
    GetIt.I.registerLazySingleton<BankBloc>(() => BankBloc());
    GetIt.I.registerLazySingleton<UsefulInformationBloc>(
      () => UsefulInformationBloc(),
    );
    GetIt.I.registerLazySingleton<CalculationBloc>(() => CalculationBloc());
  }
}
