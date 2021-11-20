import 'package:elancer_fistproject/data/dummy_data.dart';
import 'package:elancer_fistproject/screens/exercises_screen.dart';
import 'package:elancer_fistproject/widgets/routine_card.dart';
import 'package:flutter/material.dart';

class ExercisesItem extends StatefulWidget {
  const ExercisesItem({Key? key,
    required this.id,
    required this.name,
    required this.benefits,
    required this.alternative,
    required this.firstStep,
    required this.secondStep,
    required this.thirdStep,
    required this.img,
  }) : super(key: key);
final int id;
final String name;
final String benefits;
final String alternative;
final String firstStep;
final String secondStep;
final String thirdStep;
final String img;

  @override
  _ExercisesItemState createState() => _ExercisesItemState();
}

class _ExercisesItemState extends State<ExercisesItem> {
  @override
  Widget build(BuildContext context) {
    return
                  InkWell(
                    onTap: () {
                      Navigator.push( context,MaterialPageRoute(
                          builder:(context)=>  ExcersisesScreen(
                              name: widget.name,
                              benefits: widget.benefits,
                              alternative: widget.alternative,
                              firstStep: widget.firstStep,
                              secondStep: widget.secondStep,
                              thirdStep: widget.thirdStep,
                              img: widget.img)
                      ));
                    },
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                      return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: Colors.pinkAccent.shade100,
                          child: Row(
                            children: [
                              Container(
                                height: 115,
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
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
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Container(
                                    width: 167,
                                    child: Text(
                                       widget.name, style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.clip,
                                    ),
                                 ),
                                  ),
                                  const SizedBox(height: 5,),

                                  Container(
                                    width: 160,
                                    child:  Text(
                                      widget.benefits,
                                      style:
                                      const TextStyle(
                                        fontSize: 12,
                                      ),
                                      overflow: TextOverflow.clip,),
                                  )
                                ],
                              ),
                              IconButton(
                                icon: const Icon(Icons.arrow_forward_ios),
                                iconSize: 15,
                                color: Colors.grey.shade50,
                                onPressed: () {},),
                            ],

                          )
                      );
                    },),
                  );






        }
}
