import 'package:elancer_fistproject/screens/product_content_screen.dart';
import 'package:flutter/material.dart';

class CosmeticsList extends StatefulWidget {
  const CosmeticsList({Key? key,
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
  _CosmeticsListState createState() => _CosmeticsListState();
}

class _CosmeticsListState extends State<CosmeticsList> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:
            (context)=>ProductContentScreen(
            id: widget.id,
            name: widget.name,
            brief: widget.brief,
            info: widget.info,
            mainImg: widget.mainImg,
            idCategory: widget.idCategory,
            img: widget.img) ));
      },
      child: Column(
        children: [
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.pink.shade200,
              child: Row(
                children: [
                  Container(
                    height: 115,
                    child:Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(widget.img,
                        fit: BoxFit.cover,
                        isAntiAlias: true,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 116,
                        child: Text(widget.name,
                            overflow: TextOverflow.clip,
                            style:TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            )),
                      ),
                      const SizedBox(height: 5,),

                      Container(
                        width: 160,
                        child:  Text(widget.brief,style:
                        TextStyle(
                          fontSize: 12,
                        ),
                          overflow: TextOverflow.clip,),
                      )
                    ],
                  ),
                  IconButton(icon: const Icon(Icons.arrow_forward_ios),
                    iconSize: 15,
                    color: Colors.grey.shade50,
                    onPressed: (){ Navigator.push(context, MaterialPageRoute(builder:
                        (context)=>ProductContentScreen(
                        id: widget.id,
                        name: widget.name,
                        brief: widget.brief,
                        info: widget.info,
                        mainImg: widget.mainImg,
                        idCategory: widget.idCategory,
                        img: widget.img) ));},),
                ],

              )
          )
        ],),
    )
    ;
  }
}
