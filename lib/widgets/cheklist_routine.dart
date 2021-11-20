import 'package:flutter/material.dart';


class CheckListRoutine extends StatefulWidget {
  const CheckListRoutine({Key? key,required this.title,required this.subtitle, required this.image}) : super(key: key);
  final String title;
  final String subtitle;
  final String image;
  @override
  _CheckListRoutineState createState() => _CheckListRoutineState();
}

class _CheckListRoutineState extends State<CheckListRoutine> {

  bool? checkVal=false;
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Card(
      color:Colors.pink.shade100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)

      ),
      child:

      Row(
        children:[
      CircleAvatar(
      backgroundImage: AssetImage(widget.image),
      radius: 30,),
      const SizedBox(width: 5,),
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(widget.title,style:const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold
      )),
      const SizedBox(height: 5,),
      Text(widget.subtitle),

      ],
          ),
          const Spacer(),
       Checkbox(

         value: checkVal, onChanged:(val) {

         setState(() {
           checkVal=val;
         });
         if(val!){
           setState(() {
             counter=counter+1;
             print (counter);
           });


           if(!val){
             setState(() {
               counter=counter-1;
               print (counter);
             });
           }
         }
       },)




       //   IconButton(
       //     icon: Icon(Icons.check_box),
       //     onPressed: (){},
       //   )

        ]),
    );
  }
}
