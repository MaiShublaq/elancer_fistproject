import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExcersisesScreen extends StatefulWidget {
  const ExcersisesScreen({Key? key,
    required this.name,
    required this.benefits,
    required this.alternative,
    required this.firstStep,
    required this.secondStep,
    required this.thirdStep,
    required this.img,
  }) : super(key: key);
  final String name;
  final String benefits;
  final String alternative;
  final String firstStep;
  final String secondStep;
  final String thirdStep;
  final String img;

  @override
  _ExcersisesScreenState createState() => _ExcersisesScreenState();
}

class _ExcersisesScreenState extends State<ExcersisesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body: ListView(

        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 6),
        children:  [
          SizedBox(height: 30,),

          Row(
            children: [
              IconButton(
               onPressed: ()=>Navigator.pop(context),
               icon: Icon(Icons.arrow_back),
              padding: EdgeInsets.all(0),),

             Container(
               width: 300,
                  child: Text(widget.name,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      color:Colors.pinkAccent,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),)

              ),

            // const  Text('Anti-ageing Facial Yoga For Eyes',style:TextStyle(
            //   fontSize: 25,
            //   color: Colors.pinkAccent,
            //   fontWeight: FontWeight.bold,
            //   overflow: TextOverflow.ellipsis,

            // ), maxLines: 2,),
            ],
          ),

         ListView(
           shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 0),
          children: [
            const SizedBox(height: 10,),
            const  Text('Good for:',style: TextStyle(
              fontSize: 17,
              color: Colors.blue,
              fontStyle: FontStyle.italic,


            ),),
              Text(widget.benefits),
            const SizedBox(height: 7,),
            const  Text('Alternative to:',style: TextStyle(
              fontSize: 17,
              color: Colors.blue,
              fontStyle: FontStyle.italic,
            ),) ,
             Text(widget.alternative),
            const SizedBox(height: 10,),

            Container(
              //height: 200,
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
            const SizedBox(height: 10,),
            const  Text('Step 1:',style:TextStyle(color:Colors.blue)),
              Text(widget.firstStep),
            const SizedBox(height: 10,),
            const  Text('Step 2:',style:TextStyle(color:Colors.blue)),
              Text(widget.secondStep),
            const SizedBox(height: 10,),
            const  Text('Step 3:',style:TextStyle(color:Colors.blue)),
              Text(widget.thirdStep)

          ],
         )


        ],
      ),
    );
  }
}
