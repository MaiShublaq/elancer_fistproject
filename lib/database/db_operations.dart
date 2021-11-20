import 'package:elancer_fistproject/models/activities.dart';

abstract class DbOperations<T>{
  /**
   * CRUD:
   * C => Create
   * R => Read
   * U => Update
   * D => Delete
   */
  Future<int> create(Activities object);
  Future<List<Activities>> read();
  Future<T?> show(int id);
  Future<bool> update(T object);
  Future<bool> delete(int id);

}