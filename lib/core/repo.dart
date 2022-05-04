import 'package:dio_api/config.dart';
import 'package:dio_api/core/api_client.dart';
import 'package:dio_api/models/data_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Repo {
  Future<List<DataModel>> getAllData() async {
    try {
      final result = await ApiClient().getData(Config.endpoint);
      final List data = result['data'];
      return data.map((e) => DataModel.fromJson(e)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}

final repoProvider = Provider<Repo>((ref) {
  return Repo();
});
