import 'package:elancer_fistproject/bloc/bloc/exercises_bloc.dart';
import 'package:elancer_fistproject/bloc/events/crud_event.dart';
import 'package:elancer_fistproject/bloc/states/crud_state.dart';
import 'package:elancer_fistproject/data/dummy_data.dart';
import 'package:elancer_fistproject/database/controllers/exercises_db_controller.dart';
import 'package:elancer_fistproject/models/exercises.dart';
import 'package:elancer_fistproject/screens/prefs/shared_pref_controller.dart';
import 'package:elancer_fistproject/widgets/exercise_item.dart';
import 'package:elancer_fistproject/widgets/routine_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key,}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //ExercisesDbController _exercisesDbController = ExercisesDbController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  //  BlocProvider.of<ExercisesBloc>(context).add(ReadEvent());

  }

  @override
  Widget build(BuildContext context) {

        //   return Scaffold(
 //     appBar:AppBar(
 //       title:Text('gf'),
 //     ),


    return ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      children: [
      const SizedBox(height: 30,),
    Row(
    children:  [
    CircleAvatar(
    backgroundImage: AssetImage('images/1.jpg'),
    radius: 40,
    ),
    SizedBox(width: 10,),
    Text('Hi, ${SharedPrefController().name}!', style: TextStyle(
    fontSize: 20, fontWeight: FontWeight.w500,)),
    ],
    ),
    const SizedBox(height: 15,),
    const Text('Your program for today', style:
    TextStyle(fontSize: 18,
    fontWeight: FontWeight.w500,
    ),),
    const SizedBox(height: 15,),

    Row(
    children: [
    Expanded(child: RoutineCard(steps: '0/3',
    care: 'Daily',
    daily: 'Morning Care',
    color: Colors.white,
    icon: Icons.cloud_outlined)),
    Expanded(child: RoutineCard(steps: '0/3',
    care: 'Daily',
    daily: 'Night Care',
    color: Colors.pink.shade200,
    icon: Icons.cloud)),
    ],
    ),
    const SizedBox(height: 20,),
    const Text('A series of anti-wrinkle exercises', style:
    TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,


    ),),

Column(
  children: EXERCISES_DATA.map((exData) =>
      ExercisesItem(
          id: exData.id,
          name: exData.name,
          benefits: exData.benefits,
          alternative: exData.alternative,
          firstStep: exData.firstStep,
          secondStep: exData.secondStep,
          thirdStep: exData.thirdStep,
          img: exData.img)
  ).toList(),

)

]
    );







//    body: BlocBuilder<ExercisesBloc,CrudState>(

//        buildWhen: (previos,current)=> current is ReadState,

//        builder: (context,state) {

//           if (state is ReadState) {

//               return ListView(
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 10, vertical: 10),
//                 children: [
//                   const SizedBox(height: 30,),
//                   Row(
//                     children: const [
//                       CircleAvatar(
//                         backgroundImage: AssetImage('images/1.jpg'),
//                         radius: 40,
//                       ),
//                       SizedBox(width: 10,),
//                       Text('Hi, Sarah!', style: TextStyle(
//                         fontSize: 20, fontWeight: FontWeight.w500,)),
//                     ],
//                   ),
//                   const SizedBox(height: 15,),
//                   const Text('Your program for today', style:
//                   TextStyle(fontSize: 18,
//                     fontWeight: FontWeight.w500,
//                   ),),
//                   const SizedBox(height: 15,),

//                   Row(
//                     children: [
//                       const Expanded(child: RoutineCard(steps: '0/3',
//                           care: 'Daily',
//                           daily: 'Morning Care',
//                           color: Colors.white,
//                           icon: Icons.cloud_outlined)),
//                       Expanded(child: RoutineCard(steps: '0/3',
//                           care: 'Daily',
//                           daily: 'Night Care',
//                           color: Colors.pink.shade200,
//                           icon: Icons.cloud)),
//                     ],
//                   ),
//                   const SizedBox(height: 20,),
//                   const Text('A series of anti-wrinkle exercises', style:
//                   TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w500,


//                   ),),
//                   InkWell(
//                     onTap: () {
//                       Navigator.pushNamed(context, '/exercises_screen');
//                     },
//                     child: ListView.builder(
//                       padding: const EdgeInsets.symmetric(vertical: 10),
//                       shrinkWrap: true,
//                       itemCount: state.list.length, itemBuilder: (context, index) {
//                       return Card(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                           color: Colors.pinkAccent.shade100,
//                           child: Row(
//                             children: [
//                               Container(
//                                 height: 115,
//                                 child: Card(
//                                   clipBehavior: Clip.antiAlias,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(20),
//                                   ),
//                                   child: Image.asset(state.list[index].img,
//                                     fit: BoxFit.cover,
//                                     isAntiAlias: true,
//                                   ),
//                                 ),
//                               ),
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment
//                                     .spaceBetween,
//                                 children: [
//                                   Text(
//                                       state.list[index].name, style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold
//                                   )),
//                                   const SizedBox(height: 5,),

//                                   Container(
//                                     width: 160,
//                                     child:  Text(
//                                       state.list[index].benefits,
//                                       style:
//                                       TextStyle(
//                                         fontSize: 12,
//                                       ),
//                                       overflow: TextOverflow.clip,),
//                                   )
//                                 ],
//                               ),
//                               IconButton(
//                                 icon: const Icon(Icons.arrow_forward_ios),
//                                 iconSize: 15,
//                                 color: Colors.grey.shade50,
//                                 onPressed: () {},),
//                             ],

//                           )
//                       );
//                     },),
//                   )


//                 ],

//               );




//           }
//           else {
//             return Center(child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const[
//                   Icon(Icons.warning, size: 90, color: Colors.red),
//                   Text('NO DATA', style:
//                   TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold
//                   ),)

//                 ]
//             ));
//           }
//        },
//        )
//   );







//   return ListView(
//     padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//     children: [
//       const SizedBox(height: 30,),
//       Row(
//         children:  const [
//             CircleAvatar(
//             backgroundImage: AssetImage('images/1.jpg'),
//             radius: 40,
//           ),
//             SizedBox(width: 10,),
//            Text('Hi, Sarah!',style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,)),
//         ],
//       ),
//       const SizedBox(height: 15,),
//        const Text('Your program for today',style:
//         TextStyle(fontSize: 18,
//           fontWeight: FontWeight.w500,
//         ),),
//       const SizedBox(height: 15,),

//       Row(
//         children:  [
//           const Expanded(child: RoutineCard(steps: '0/3', care: 'Daily', daily: 'Morning Care',color: Colors.white,icon:Icons.cloud_outlined)),
//           Expanded(child:RoutineCard(steps: '0/3', care: 'Daily', daily: 'Night Care',color: Colors.pink.shade200,icon:Icons.cloud)),
//         ],
//       ),
//       const SizedBox(height: 20,),
//        const Text('A series of anti-wrinkle exercises',style:
//         TextStyle(
//           fontSize: 18,
//           fontWeight: FontWeight.w500,



//         ),),
//       InkWell(
//         onTap: (){
//           Navigator.pushNamed(context,'/exercises_screen');
//         },
//         child: ListView.builder(
//           padding: const EdgeInsets.symmetric(vertical: 10),
//           shrinkWrap: true,
//           itemCount: 5,itemBuilder: (context, index) {

//           return Card(
//              shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//           ),
//             color: Colors.pinkAccent.shade100,
//             child: Row(
//             children: [
//               Container(
//                 height: 115,
//                 child:Card(
//                   clipBehavior: Clip.antiAlias,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Image.asset('images/1.jpg',
//                     fit: BoxFit.cover,
//                     isAntiAlias: true,
//                   ),
//                 ),
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                    Text(_exercises[index].,style:TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold
//                     )),
//                   const SizedBox(height: 5,),

//                   Container(
//                     width: 160,
//                     child: const Text('uyr euwyeoiwu hjds bvdnxow weyuhkfbd oiaiufh dkjhfash iefihef',style:
//                      TextStyle(
//                       fontSize: 12,
//                     ),
//                     overflow: TextOverflow.clip,),
//                   )
//                 ],
//               ),
//               IconButton(icon: const Icon(Icons.arrow_forward_ios),
//               iconSize: 15,
//               color: Colors.grey.shade50,
//               onPressed: (){},),
//             ],

//             )
//           );
//         },),
//       )



//
//     ],

//   );
  }
}
