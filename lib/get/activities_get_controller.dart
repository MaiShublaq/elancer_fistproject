import 'package:elancer_fistproject/database/controllers/activities_db_controller.dart';
import 'package:elancer_fistproject/database/controllers/daily_activities_db_controller.dart';
import 'package:elancer_fistproject/models/activities.dart';
import 'package:elancer_fistproject/models/daily_activity.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class ActivitiesGetxController extends GetxController {
  RxList<Activities> activities = <Activities>[].obs;
  RxList<DailyActivity> dailyActivities = <DailyActivity>[].obs;
  RxBool loading = false.obs;
  final ActivitiesDbController _activitiesDbController =
      ActivitiesDbController();
  final DailyActivitiesDbController _dailyActivitiesDbController =
      DailyActivitiesDbController();
  late String formattedDate;

  static ActivitiesGetxController get to =>
      Get.find<ActivitiesGetxController>();

  @override
  void onInit() {
    readActivities();
    super.onInit();
  }

  void _getFormattedTodayDate() {
    var today = DateTime.now();
    var format = DateFormat.yMd('en');
    formattedDate = format.format(today);
  }

  Future<void> readActivities() async {
    await initializeDateFormatting('en');
    _getFormattedTodayDate();
    loading.value = true;
    activities.value = await _activitiesDbController.read();
    dailyActivities.value =
        await _dailyActivitiesDbController.readByDate(date: formattedDate);
    setActivitiesStatus();
    loading.value = false;
  }

  void setActivitiesStatus() {
    if (dailyActivities.isNotEmpty) {
      for (var value in activities) {
        if (dailyActivities
                .indexWhere((element) => element.activityId == value.id) !=
            -1) {
          value.done = true;
        }
      }
    }
  }

  Future<void> updateDailyActivityStatus(Activities activity) async {
    var activityIndex = activities.indexWhere((element) => element.id == activity.id);
    if (dailyActivities.isNotEmpty) {
      var index = dailyActivities
          .indexWhere((element) => element.activityId == activity.id);
      if (index != -1) {
        await _dailyActivitiesDbController.delete(dailyActivities[index].id);
        dailyActivities.removeAt(index);
        activities[activityIndex].done = false;
      } else {
        await addDailyActivityAction(activity);
        activities[activityIndex].done = true;
      }
    } else {
      await addDailyActivityAction(activity);
      activities[activityIndex].done = true;
    }
  }

  Future<void> addDailyActivityAction(Activities activity) async {
    var dailyActivity = DailyActivity(
        activity.id, formattedDate);
    int newRowId = await _dailyActivitiesDbController.create(dailyActivity);
    dailyActivity.id = newRowId;
    dailyActivities.add(dailyActivity);
  }

  Future<bool> createActivity(Activities activity) async {
    int newRowId = await _activitiesDbController.create(activity);
    if (newRowId != 0) {
      activity.id = newRowId;
      activities.add(activity);
    }
    return newRowId != 0;
  }

  Future<bool> deleteActivity(int id) async {
    bool delated = await _activitiesDbController.delete(id);
    if (delated) {
      activities.removeWhere((element) => element.id == id);
    }
    return delated;
  }

  Future<bool> updateActivities(Activities activity) async {
    bool updated = await _activitiesDbController.update(activity);
    if (updated) {
      int index = activities.indexWhere((element) => element.id == activity.id);
      if (index != -1) {
        activities[index] = activity;
      }
    }
    return updated;
  }
}
