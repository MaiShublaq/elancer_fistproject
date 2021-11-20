import 'package:flutter/cupertino.dart';


class Cosmetics{

 final int id;
 final String name;
 final String brief;
 final String info;
 final String mainImg;
 final String idCategory;
 final String img;

 const Cosmetics({
  required this.id,
  required this.name,
  required this.brief,
  required this.info,
  required this.mainImg,
  required this.idCategory,
  required this.img});
}


//class Cosmetics{
//
//  late int id;
//  late String name;
//  late String brief;
//  late String info;
//  late Image mainImg;
//  late int idCategory;
//  late Image img;
//  Cosmetics();
//
//  Cosmetics.fromMab(Map<String,dynamic> rowMap){
//    id=rowMap['id'];
//    name=rowMap['name'];
//    brief=rowMap['brief'];
//    info=rowMap['info'];
//    mainImg=rowMap['mainImg'];
//    idCategory=rowMap['idCategory'];
//    img=rowMap['img'];
//  }
//  Map<String,dynamic> toMap(){
//    Map<String,dynamic> rowMap=<String,dynamic>{};
//    rowMap['name']= name;
//    rowMap['brief']=brief;
//    rowMap['info']=info;
//    rowMap['mainImg']=mainImg;
//    rowMap['idCategory']=idCategory;
//    rowMap['img']=img;
//    return rowMap;
//  }
//}