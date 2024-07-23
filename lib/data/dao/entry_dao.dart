import 'package:floor/floor.dart';
import 'package:hyrule/domain/models/entry.dart';

@dao
//Crie uma classe abstrata chamada EntryDao
abstract class EntryDao {
  //Crie um método chamado insertEntry que recebe um objeto Entry e retorna um Future<int>
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<int> addEntry(Entry entry);

  //Crie um método chamado updateEntry que recebe um objeto Entry e retorna um Future<int>
  @update
  Future<int> updateEntry(Entry entry);

  //Crie um método chamado deleteEntry que recebe um objeto Entry e retorna um Future<int>
  @delete
  Future<int> deleteEntry(Entry entry);

  //Crie um método chamado deleteAllEntries que retorna um Future<int>
  @Query('DELETE FROM Entry')
  Future<int?> deleteAllEntries();

  //Crie um método chamado findAllEntries que retorna um Future<List<Entry>>
  @Query('SELECT * FROM Entry')
  Future<List<Entry>> findAllEntries();
}
