import 'package:dio/dio.dart';
import 'package:hyrule/utils/consts/api_constants.dart';
import 'package:hyrule/domain/models/entry.dart';

class DataApi {
  final Dio dio = Dio();
  List<Entry> entries = [];

  Future<List<Entry>> getEntriesByCategory({required String category}) async {
    final response = await dio.get(ApiConstants.getCategoryUrl(category));

    entries =
        List<Entry>.from(response.data["data"].map((e) => Entry.fromMap(e)));

    return entries;
  }
}
