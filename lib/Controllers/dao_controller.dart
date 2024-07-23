import 'package:hyrule/data/dao/database_helper.dart';
import 'package:hyrule/data/dao/entry_dao.dart';
import 'package:hyrule/domain/business/dao_workflow.dart';
import 'package:hyrule/domain/models/entry.dart';

class DaoController implements DaoWorkflow {
  @override
  Future<void> deleteEntry({required Entry entry}) async {
    final EntryDao entryDao = await DatabaseHelper.getEntryDao();
    entryDao.deleteEntry(entry);
  }

  @override
  Future<List<Entry>> getSavedEntries() async {
    final EntryDao entryDao = await DatabaseHelper.getEntryDao();
    return entryDao.findAllEntries();
  }

  @override
  Future<void> saveEntry({required Entry entry}) async {
    final EntryDao entryDao = await DatabaseHelper.getEntryDao();
    entryDao.addEntry(entry);
  }
}
