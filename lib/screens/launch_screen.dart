import 'package:elancer_fistproject/screens/main_screen.dart';
import 'package:elancer_fistproject/screens/prefs/shared_pref_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    Future.delayed(const Duration(seconds:3),(){
      //String route = SharedPrefController().loggedIn? '/main_screen':'/out_boarding_screen';
      bool status = SharedPrefController().loggedIn;
      if(!status){
        Navigator.pushReplacementNamed(context, '/out_boarding_screen');
      }
      else{
        Navigator.pushReplacement( context,MaterialPageRoute(
            builder:(context)=> const MainScreen()
        ));
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
    Container(
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.pink.shade50,
                    Colors.pink.shade200,
                  ],
                  ),
                image: DecorationImage(
                  image:  AssetImage('images/53.jpg'),
                  fit:BoxFit.cover,

                ), ) ,
              child:const Text('Skin Care-APP',style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color:Colors.black,
              ))
          ),



    );
  }
}
