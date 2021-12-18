import 'package:app/data/api/api_client.dart';
import 'package:app/data/dto/bank_details/bank_details.dart';

class Repository {
  const Repository(this._apiClient);
  final ApiClient _apiClient;

  Future<List<BankDetails>> getBankDetails() {
    return _apiClient.getBankDetails();
  }
}
