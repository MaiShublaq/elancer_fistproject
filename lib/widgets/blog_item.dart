import 'package:elancer_fistproject/screens/blog_content_screen.dart';
import 'package:flutter/material.dart';

class BlogItem extends StatefulWidget {
  const BlogItem({Key? key,
    required this.id,
    required this.title,
    required this.autherName,
    required this.autherTitle,
    required this.autherImg,
    required this.content1,
    required this.content2,
    required this.img
  }) : super(key: key);

  final  int id;
  final  String title;
  final  String autherName;
  final  String autherTitle;
  final  String autherImg;
  final  String content1;
  final String content2;
  final  String img;

  @override
  _BlogItemState createState() => _BlogItemState();
}

class _BlogItemState extends State<BlogItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push( context,MaterialPageRoute(
            builder:(context)=>  BlogContent(
                id: widget.id,
                title: widget.title,
                autherName: widget.autherName,
                autherTitle: widget.autherTitle,
                autherImg: widget.autherImg,
                content1: widget.content1,
                content2: widget.content2,
                img: widget.img)
        ));      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child:Stack(
          children:[
            Image.asset(widget.img,
              fit:BoxFit.cover ,
              height: double.infinity,
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                  height: 80,
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  //color: Colors.white54,

                  child: Text(widget.title,
                    overflow: TextOverflow.clip
                    ,style: TextStyle(
                      color:Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),)

              ),


            ),],
        ),
      ),
    );

  }
}
