import 'package:elancer_fistproject/database/controllers/activities_db_controller.dart';
import 'package:elancer_fistproject/models/activities.dart';

class DbData {
  final ActivitiesDbController _activitiesDbController =
      ActivitiesDbController();

  Future<void> createActivities() async {
    await _activitiesDbController.create(Activities(
        title: 'Cleansing',
        info: 'Try massaging your face to relax',
        period: 'morning',
        img: 'images/5.jpg'));
    await _activitiesDbController.create(Activities(
        title: 'Toning',
        info: 'Cleand and close your pores',
        period: 'morning',
        img: 'images/6.jpg'));
    await _activitiesDbController.create(Activities(
        title: 'Cream',
        info: 'help to treat your skin',
        period: 'morning',
        img: 'images/7.jpg'));
    await _activitiesDbController.create(Activities(
        title: 'MakeUp Remover',
        info: 'washes away cosmetics and dirt',
        period: 'night',
        img: 'images/5.jpg'));
    await _activitiesDbController.create(Activities(
        title: 'Eye Cream',
        info: 'Give skin a youthful glow',
        period: 'night',
        img: 'images/6.jpg'));
    await _activitiesDbController.create(Activities(
        title: 'Lip Mask',
        info: 'prevent drying out lips',
        period: 'night',
        img: 'images/7.jpg'));
  }
//  ExercisesDbController _exercisesDbController = ExercisesDbController();
//
//  Future<void> createExercises(BuildContext context) async {
//   _exercisesDbController.create(Exercises(
//      name: 'Anti-ageing Facial Yoga For Eyes: The V',
//      benefits: "Drooping eyelids, crow’s feet, eye bags and puffiness.",
//      alternative: ": Botox and eye surgery.",
//      firstStep: "Press both middle fingers together at the inner corner of the eyebrows, then with the index fingers, apply pressure to the outer corners of the eyebrows.",
//      secondStep: "Look to the ceiling, and lift the skin below the eyes upwards into a strong squint, and then relax.",
//      thirdStep: "Repeat six more times and finish by squeezing eyes shut tightly for 10 seconds.",
//      img: 'images/9.jpg'
//   ));
//   _exercisesDbController.create(Exercises(
//       name: 'Anti-ageing Facial Yoga For Eyes: The V',
//       benefits: "Drooping eyelids, crow’s feet, eye bags and puffiness.",
//       alternative: ": Botox and eye surgery.",
//       firstStep: "Press both middle fingers together at the inner corner of the eyebrows, then with the index fingers, apply pressure to the outer corners of the eyebrows.",
//       secondStep: "Look to the ceiling, and lift the skin below the eyes upwards into a strong squint, and then relax.",
//       thirdStep: "Repeat six more times and finish by squeezing eyes shut tightly for 10 seconds.",
//       img: 'images/9.jpg'
//   ));
//   _exercisesDbController.create(Exercises(
//       name: 'Anti-ageing Facial Yoga For Eyes: The V',
//       benefits: "Drooping eyelids, crow’s feet, eye bags and puffiness.",
//       alternative: ": Botox and eye surgery.",
//       firstStep: "Press both middle fingers together at the inner corner of the eyebrows, then with the index fingers, apply pressure to the outer corners of the eyebrows.",
//       secondStep: "Look to the ceiling, and lift the skin below the eyes upwards into a strong squint, and then relax.",
//       thirdStep: "Repeat six more times and finish by squeezing eyes shut tightly for 10 seconds.",
//       img: 'images/9.jpg'
//   ));
//   _exercisesDbController.create(Exercises(
//       name: 'Anti-ageing Facial Yoga For Eyes: The V',
//       benefits: "Drooping eyelids, crow’s feet, eye bags and puffiness.",
//       alternative: ": Botox and eye surgery.",
//       firstStep: "Press both middle fingers together at the inner corner of the eyebrows, then with the index fingers, apply pressure to the outer corners of the eyebrows.",
//       secondStep: "Look to the ceiling, and lift the skin below the eyes upwards into a strong squint, and then relax.",
//       thirdStep: "Repeat six more times and finish by squeezing eyes shut tightly for 10 seconds.",
//       img: 'images/9.jpg'
//   ));
//   _exercisesDbController.create(Exercises(
//       name: 'Anti-ageing Facial Yoga For Eyes: The V',
//       benefits: "Drooping eyelids, crow’s feet, eye bags and puffiness.",
//       alternative: ": Botox and eye surgery.",
//       firstStep: "Press both middle fingers together at the inner corner of the eyebrows, then with the index fingers, apply pressure to the outer corners of the eyebrows.",
//       secondStep: "Look to the ceiling, and lift the skin below the eyes upwards into a strong squint, and then relax.",
//       thirdStep: "Repeat six more times and finish by squeezing eyes shut tightly for 10 seconds.",
//       img: 'images/9.jpg'
//   ));
//  }
}
