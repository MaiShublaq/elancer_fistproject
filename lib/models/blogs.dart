import 'package:elancer_fistproject/database/controllers/blogs_db_controller.dart';
import 'package:flutter/cupertino.dart';


class Blogs{
final  int id;
final  String title;
final  String autherName;
final  String autherTitle;
final  String autherImg;
final  String content1;
final String content2;
final  String img;

const Blogs(
{required this.id,
 required this.title,
 required this.autherName,
 required this.autherTitle,
 required this.autherImg,
 required this.content1,
  required this.content2,
  required this.img});
}

//class Blogs{
//
//  late int id;
//  late String title;
//  late String autherName;
//  late String autherTitle;
//  late Image autherImg;
//  late String content;
//  late Image img;
//  Blogs();
//
//  Blogs.fromMab(Map<String,dynamic> rowMap){
//    id=rowMap['id'];
//    title=rowMap['title'];
//    autherName=rowMap['autherName'];
//    autherTitle=rowMap['autherTitle'];
//    autherImg=rowMap['autherImg'];
//    content=rowMap['content'];
//    img=rowMap['img'];
//  }
//  Map<String,dynamic> toMap(){
//    Map<String,dynamic> rowMap=<String,dynamic>{};
//    rowMap['title']= title;
//    rowMap['autherName']=autherName;
//    rowMap['autherTitle']=autherTitle;
//    rowMap['autherImg']=autherImg;
//    rowMap['content']=content;
//    rowMap['img']=img;
//    return rowMap;
//  }
//}