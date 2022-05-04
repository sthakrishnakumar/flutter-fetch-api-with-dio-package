import 'package:dio_api/core/repo.dart';
import 'package:dio_api/models/data_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dataProvider = FutureProvider<List<DataModel>>((ref) async {
  return ref.read(repoProvider).getAllData();
});
