import 'package:dio/dio.dart';
import 'package:dio_api/config.dart';

class ApiClient {
  Future getData(String endpoint) async {
    try {
      final response = await Dio(
        BaseOptions(baseUrl: Config.baseUrl),
      ).get(endpoint);
      return response.data;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }
}
