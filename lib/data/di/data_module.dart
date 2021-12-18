import 'package:app/data/api/api_client.dart';
import 'package:app/data/repositores/repository.dart';
import 'package:app/utils/base_di_module.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class DataModule extends BaseDiModule {
  @override
  void inject() {
    final Dio dio = Dio();
    final ApiClient apiClient = ApiClient(dio);
    GetIt.I.registerSingleton<Repository>(Repository(apiClient));
  }
}
