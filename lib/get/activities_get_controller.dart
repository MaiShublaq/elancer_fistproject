
import 'package:elancer_fistproject/database/controllers/activities_db_controller.dart';
import 'package:elancer_fistproject/models/activities.dart';
import 'package:get/get.dart';

class ActivitiesGetxController extends GetxController{
  RxList<Activities> activities=<Activities>[].obs;
  RxBool loading=false.obs;
  final ActivitiesDbController _activitiesDbController=ActivitiesDbController();
  static ActivitiesGetxController get to=> Get.find<ActivitiesGetxController>();
  @override
  void onInit(){

    super.onInit();
    readActivities();
  }

//CRUD
  Future<void> readActivities() async{
    loading.value=true;
    activities.value= await _activitiesDbController.read();
    loading.value=false;
    //notifyListeners();
    //update();
  }

  Future <bool> createContact(Activities activity) async{
    int newRowId= await _activitiesDbController.create(activity);
    if (newRowId !=0){
      activity.id= newRowId;
      activities.add(activity);
      // notifyListeners();
      //update();
    }
    return newRowId !=0;
  }

  Future<bool> deleteActivity(int id) async{
    bool delated=await  _activitiesDbController.delete(id);
    if (delated){
      activities.removeWhere((element) => element.id==id);
      //notifyListeners();
      //update();
    }
    return delated;
  }

  Future <bool> updateActivities(Activities activity) async{
    bool updated = await _activitiesDbController.update(activity);
    if(updated){
      int index=activities.indexWhere((element) => element.id==activity.id);
      if(index != -1){
        activities[index]=activity;
        // notifyListeners();
        // update();
      }
    }
    return updated;
  }

}