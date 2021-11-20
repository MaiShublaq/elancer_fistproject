
import 'package:elancer_fistproject/database/db_data.dart';
import 'package:elancer_fistproject/screens/prefs/shared_pref_controller.dart';
import 'package:elancer_fistproject/widgets/out_boarding_content.dart';
import 'package:elancer_fistproject/widgets/out_boarding_indicator.dart';
import 'package:flutter/material.dart';

class OutBoardingScreen extends StatefulWidget {


  @override
  _OutBoardingScreenState createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  int _currentPage=0;
  late PageController _pageController;
  String image1='images/1.jpg';
  String image2='images/2.jpg';
  String image3='images/3.jpg';

  DbData dbData = DbData();
  @override
  void initState(){
    super.initState();
    createAppData();
    _pageController=PageController();
  }

  void createAppData() {
    if(SharedPrefController().firstRun){
      //dbData.createExercises( context);
     // dbData.createExercises();
     // dbData.createExercises();
      dbData.createExercises(context);
      dbData.createExercises(context);
      dbData.createExercises(context);
      dbData.createExercises(context);
      dbData.createExercises(context);
      dbData.createExercises(context);
    }
  }
  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children:[
                Align(
                  alignment:AlignmentDirectional.topEnd,
                  child: Visibility(
                    visible:_currentPage<2,
                    replacement: TextButton(child:const Text('START'),onPressed:(){
                      Navigator.pushReplacementNamed(context, '/login_screen');
                    }),
                    child: TextButton(child:const Text('SKIP'),onPressed: (){
                      _pageController.animateToPage(
                        2,
                        duration: const Duration(seconds:1),
                        curve: Curves.easeInOut,
                      );
                    },)
                    ,
                  ),
                )

                ,
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth:10,
                    maxWidth:double.infinity,
                    minHeight:0,
                    maxHeight: 450,
                  ),

                  child: PageView(
                    controller: _pageController,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (value){

                      setState((){
                        _currentPage=value;
                      });

                    },
                    children:  [
                      OutBoardingContent(textTitle:'CELANSING',
                        subtextTitle: 'in the morning start by splashing your face with warm water,wash with a gentle face cleanser designed for your skin type',
                      Imagename: image1,),


                      OutBoardingContent(textTitle: 'SKIN CARE',
                        subtextTitle: 'Skin care is the range of practices that support skin integrity, enhance it\'s oppearance  ande relieve skin conditions',
                      Imagename: image2,),
                      OutBoardingContent(textTitle: 'FACE MASK',
                        subtextTitle: 'If your skin is on the dry side, you may want to adda hydrating cream mask or face oil',
                      Imagename: image3,),

                    ],
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:[
                      IconButton(
                          color: _currentPage==0? Colors.grey : Colors.black,
                          onPressed: (){
                            _pageController.previousPage(duration: const Duration(seconds:1), curve:Curves.easeInOut );
                          },
                          icon: const Icon(Icons.arrow_back_ios)),

                      Visibility(
                        visible: _currentPage<2,
                        maintainAnimation: true,
                        maintainSize: true,
                        maintainState: true,
                        child: IconButton(
                          onPressed:(){
                            _pageController.nextPage(duration: const Duration(seconds:1), curve: Curves.easeIn);

                          },
                          icon:const Icon(Icons.arrow_forward_ios),
                        ),
                      )
                    ]
                ),
                const SizedBox(height:5),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children:[
                      OutBoardingIndicator(selected: _currentPage==0,marginEnd: 5,),
                      OutBoardingIndicator(selected:_currentPage==1,marginEnd: 5,),
                      OutBoardingIndicator(selected: _currentPage==2,),

                    ]
                ),
                const SizedBox(height:5),

                Visibility(
                  visible:_currentPage==2,
                  maintainState: true,
                  maintainSize: true,
                  maintainAnimation: true,
                  child: Padding(
                    padding:const EdgeInsets.symmetric(horizontal:10),
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacementNamed(context, '/login_screen');
                        },
                        child:const Text('START'),
                        style:ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity,50),

                        )

                    ),
                  ),
                )
              ]),
        )
    );
  }
}

