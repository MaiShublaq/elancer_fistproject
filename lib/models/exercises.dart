
import 'package:flutter/cupertino.dart';


class Exercises{
  final int id;
  final String name;
  final String benefits;
  final String alternative;
  final String firstStep;
  final String secondStep;
  final String thirdStep;
  final String img;


  const Exercises({
    required this.id,
    required this.name,
    required this.benefits,
    required this.alternative,
    required this.firstStep,
    required this.secondStep,
    required this.thirdStep,
    required this.img,
  });



}















//class Exercises {
//  late int id;
//  late String name;
//  late String benefits;
//  late String alternative;
//  late String firstStep;
//  late String secondStep;
//  late String thirdStep;
//  late String img;
//
//  Exercises({
//   required this.name,
//   required this.benefits,
//   required this.alternative,
//   required this.firstStep,
//   required this.secondStep,
//   required this.thirdStep,
//   required this.img,
//  });
//
//  Exercises.fromMab(Map<String, dynamic> rowMap) {
//    id = rowMap['id'];
//    name = rowMap['name'];
//    benefits = rowMap['benefits'];
//    alternative = rowMap['alternative'];
//    firstStep = rowMap['firstStep'];
//    secondStep = rowMap['secondStep'];
//    thirdStep = rowMap['thirdStep'];
//    img = rowMap['img'];
//  }
//
//  Map<String, dynamic> toMap() {
//    Map<String, dynamic> rowMap = <String, dynamic>{};
//    rowMap['name'] = name;
//    rowMap['benefits'] = benefits;
//    rowMap['alternative'] = alternative;
//    rowMap['firstStep'] = firstStep;
//    rowMap['secondStep'] = secondStep;
//    rowMap['thirdStep'] = thirdStep;
//    rowMap['img'] = img;
//    return rowMap;
//  }
//}
//