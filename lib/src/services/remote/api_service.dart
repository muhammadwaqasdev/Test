import 'package:dio/dio.dart';
import 'package:tech_it/src/services/remote/api_client.dart';

class ApiService {
  ApiClient? _apiClient;

  ApiService() {
    var dio = Dio();
    _apiClient = ApiClient(dio);
  }
}
