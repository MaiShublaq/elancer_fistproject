abstract class CrudEvent{}
class CreateEvent<Exercises> extends CrudEvent {
  Exercises newObject;
  CreateEvent(this.newObject);
}
class ReadEvent extends CrudEvent{}

class UpdateEvent<T> extends CrudEvent{
  T updateObject;
  UpdateEvent(this.updateObject);
}

class DeleteEvent extends CrudEvent{
  int id;
  DeleteEvent(this.id);
}
