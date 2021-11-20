enum Process{ create, read,update,delete}

abstract class CrudState{}
class ProcessState extends CrudState{
  String message;
  bool status;
  Process process;

  ProcessState(this.message,this.status,this.process);
}


class ReadState<Exercises> extends CrudState{
  List<Exercises> list;
  ReadState(this.list);
}
class LoadingState extends CrudState{}
class ErrorState extends CrudState{
  String message;
  bool status;
  ErrorState(this.message,this.status);
}