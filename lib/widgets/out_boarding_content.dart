import 'package:flutter/material.dart';

class OutBoardingContent extends StatelessWidget {

  final String textTitle;
  final String subtextTitle;
  final String Imagename;
  const OutBoardingContent({required this.textTitle,required this.subtextTitle,required this.Imagename});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,

          children:[
            const SizedBox(height: 8,),
             CircleAvatar(
              radius:120,
              backgroundImage: AssetImage(Imagename),

            ),
            const SizedBox(
              height: 25,
            ),
            Text(textTitle,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.pink.shade300,
            )),
         const SizedBox(height:10 ,),

         Text(subtextTitle,
      textAlign:TextAlign.center,
      style: const TextStyle(
      fontSize: 19,
      fontWeight: FontWeight.w400,
      color:Colors.blue,
      )),



  // const   Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  //           textAlign:TextAlign.center,
  //           style: TextStyle(
  //             fontSize: 20,
  //             fontWeight: FontWeight.w400,
  //             color:Colors.blue,
  //           )),
          ]
      ),
    );
  }
}
