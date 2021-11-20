import 'package:flutter/material.dart';

class ProductContentScreen extends StatefulWidget {
  const ProductContentScreen({Key? key,
    required this.id,
    required this.name,
    required this.brief,
    required this.info,
    required this.mainImg,
    required this.idCategory,
    required this.img}) : super(key: key);

  final int id;
  final String name;
  final String brief;
  final String info;
  final String mainImg;
  final String idCategory;
  final String img;

  @override
  _ProductContentScreenState createState() => _ProductContentScreenState();
}

class _ProductContentScreenState extends State<ProductContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor:Colors.transparent,
         //title:const Text('Daily Morning Care',style:
         //TextStyle(
         //  fontSize: 22,
         //  fontWeight: FontWeight.w900,

         //),)
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Stack(
              children: [
                Container(
                  height: 620,
                  child: Image.asset(widget.mainImg,
                    fit: BoxFit.cover,
                    isAntiAlias: true,
                  ),),
                PositionedDirectional(
                  top: 350,
                  child: Card(
                      elevation: 5,
                      color: Colors.white54,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:SizedBox(
                          width: 353,
                          height: 300,
                          child:Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                SizedBox(height: 20,),
                                Text(widget.name,style:TextStyle(
                                  fontSize: 19,
                                  color: Colors.pink,
                                ),
                                  overflow: TextOverflow.clip,
                                ),
                                SizedBox(height: 10,),
                                Text(widget.info,
                                  overflow: TextOverflow.clip,
                                )
                              ],
                            ),
                          )

                      )
                  ),
                )

              ])

        ],
      ),
    );
  }
}
