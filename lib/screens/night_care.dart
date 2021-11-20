import 'package:elancer_fistproject/get/activities_get_controller.dart';
import 'package:elancer_fistproject/models/activities.dart';
import 'package:elancer_fistproject/widgets/cheklist_routine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NightCare extends StatefulWidget {
  const NightCare({Key? key,
    required this.daily
  }) : super(key: key);

final String daily;

  @override
  _NightCareState createState() => _NightCareState();
}

class _NightCareState extends State<NightCare> {

  final ActivitiesGetxController controller = Get.put(
      ActivitiesGetxController());
  bool? checkVal=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor:Colors.transparent,
          title:const Text('Daily Night Care',style:
          TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w900,

          ),)
      ),
      body: GetX<ActivitiesGetxController>(
        builder: (controller) {
            return Column(
                children: [
                  const SizedBox(height: 20,),
                  Stack(
                      children: [
                        Container(
                          height: 620,
                          child: Image.asset('images/8.jpg',
                            fit: BoxFit.cover,
                            isAntiAlias: true,
                          ),),
                        PositionedDirectional(
                            top: 370,
                            child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: SizedBox(
                                    width: 353,
                                    height: 400,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: ListView.builder(
                                          itemCount: controller.activities.length,
                                          itemBuilder: (context,index){


                                            List<Activities> activitieslist =widget.daily=='Morning Care'?
                                            controller.activities.where((element) => element.period=='morning').toList()
                                                :controller.activities.where((element) => element.period=='night').toList();
                                            return Card(
                                              color:Colors.pink.shade100,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(15)

                                              ),
                                              child:

                                              Row(
                                                  children:[
                                                    CircleAvatar(
                                                      backgroundImage: AssetImage(controller.activities[index].img),
                                                      radius: 30,),
                                                    const SizedBox(width: 5,),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisSize: MainAxisSize.min,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(activitieslist[index].title,style:const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.bold
                                                        )),
                                                        const SizedBox(height: 5,),
                                                        Text(activitieslist[index].info),

                                                      ],
                                                    ),
                                                    const Spacer(),
                                                    Checkbox(

                                                      value: checkVal, onChanged:(val) {

                                                      setState(() {
                                                        checkVal=val;
                                                      });
                                                    },)



                                                  ]),
                                            );


                                          })
                                    )
                                )
                            )

                        )
                      ]

                  )

                ]);









        })
          //
        );

  }
}
