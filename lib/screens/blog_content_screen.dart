import 'package:flutter/material.dart';

class BlogContent extends StatefulWidget {
  const BlogContent({Key? key,
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
  _BlogContentState createState() => _BlogContentState();
}

class _BlogContentState extends State<BlogContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
      iconTheme: const IconThemeData(
        color:Colors.grey,
      ),
      backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:  ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 75),
        children: [
           Text(widget.title, style:TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          )),
          const SizedBox(height: 10,),
          Row(
            children: [
              Container(
                height: 80,
                child:Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(widget.autherImg,
                    fit: BoxFit.cover,
                    isAntiAlias: true,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.autherName, style: TextStyle(
                      fontSize: 15
                  ),),
                  Text(widget.autherTitle, style:TextStyle(
                      fontSize: 12,

                  ),),
                ],),
            ],),
            const SizedBox(height: 10,),
             Text(widget.content1,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black54,
              ),
           ),
          const SizedBox(height: 10,),
          Container(
            height: 200,
            child:Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset(widget.img,
                fit: BoxFit.cover,
                isAntiAlias: true,
              ),
            ),
          ),

        const SizedBox(height: 10,),
         Text(widget.content2,

          overflow: TextOverflow.clip,
          style: TextStyle(
            fontSize: 17,
            color: Colors.black54,
          ),),
          const SizedBox(height: 5,),


        ],

    )
    );
  }
}
