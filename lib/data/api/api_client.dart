import 'package:app/data/dto/bank_details/bank_details.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://banconota.herokuapp.com/')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/bank")
  Future<List<BankDetails>> getBankDetails();
}
