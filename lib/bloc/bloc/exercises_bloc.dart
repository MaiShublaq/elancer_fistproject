//import 'package:elancer_fistproject/bloc/events/crud_event.dart';
//import 'package:elancer_fistproject/bloc/states/crud_state.dart';
//import 'package:elancer_fistproject/database/controllers/exercises_db_controller.dart';
//import 'package:elancer_fistproject/models/exercises.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//
//class ExercisesBloc extends Bloc<CrudEvent,CrudState>{
//
//  final ExercisesDbController _exercisesDbController=ExercisesDbController();
//  List<Exercises> _exercises=<Exercises>[];
//  ExercisesBloc(CrudState initialState):super(initialState){
//    on<CreateEvent<Exercises>>(_onCreate);
//    on<ReadEvent>(_onRead);
//    on<UpdateEvent<Exercises>>(_onUpdate);
//    on<DeleteEvent>(_onDelete);
//  }
//
//
//  void _onCreate(CreateEvent<Exercises> event, Emitter emitt) async{
//    int newRowid= await _exercisesDbController.create(event.newObject);
//    if(newRowid !=0){
//      event.newObject.id=newRowid;
//      _exercises.add(event.newObject);
//      emit(ReadState(_exercises));
//      emit(ProcessState(
//          newRowid!=0? 'Create Success': 'Create Failed',
//          newRowid !=0,
//          Process.create));
//    }}
//  void _onRead( ReadEvent event , Emitter emitt) async{
//    _exercises=await _exercisesDbController.read();
//    emit(ReadState<Exercises>(_exercises));
//  }
//  void _onUpdate( UpdateEvent<Exercises> event, Emitter emitt) async{
//    bool updated=await _exercisesDbController.update(event.updateObject);
//    if(updated){
//      int index =_exercises.indexWhere((element) => element.id==event.updateObject.id);
//      if(index !=-1){
//        _exercises[index]=event.updateObject;
//        emit(ReadState<Exercises>(_exercises));
//      }
//      emit(ProcessState(
//          updated ? 'Update Success' :'Update Failed',
//          updated,
//          Process.update));
//    }
//  }
//
//  void _onDelete(DeleteEvent event,Emitter emitt) async{
//    bool  deleted= await _exercisesDbController.delete(event.id);
//    if(deleted){
//      _exercises.removeWhere((element) => element.id==event.id);
//      emit(ReadState<Exercises>(_exercises));
//    }
//    emit(ProcessState(
//        deleted?'Delete Success':'Delete Failed',
//        deleted,
//        Process.delete));
//  }
//}