import 'package:elancer_fistproject/data/dummy_data.dart';
import 'package:elancer_fistproject/widgets/blog_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  _BlogScreenState createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,),
      backgroundColor: Colors.pink.shade50,

      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 27,horizontal: 10),
        children: [
          Text('Blog',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
          GridView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(vertical: 7),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.85,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            children:BLOGS_DATA.map((blogData) =>
            BlogItem(
                id: blogData.id,
                title: blogData.title,
                autherName: blogData.autherName,
                autherTitle: blogData.autherTitle,
                autherImg: blogData.autherImg,
                content1: blogData.content1,
                content2: blogData.content2,
                img: blogData.img)


            ).toList()

          ,),
        ],



      ),

    );
  }
}
