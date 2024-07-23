// database_helper.dart
import 'package:hyrule/data/dao/database.dart';
import 'package:hyrule/data/dao/entry_dao.dart';

class DatabaseHelper {
  static Future<AppDatabase> _createDatabase() async {
    final database =
        await $FloorAppDatabase.databaseBuilder("app_database.db").build();
    return database;
  }

  static Future<EntryDao> getEntryDao() async {
    final database = await _createDatabase();
    return database.entryDao;
  }

  // Adicione métodos semelhantes para quaisquer outras DAOs que você criar
}
