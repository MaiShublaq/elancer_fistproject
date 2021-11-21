import 'package:elancer_fistproject/database/db_controller.dart';
import 'package:elancer_fistproject/get/language_get_controller.dart';
import 'package:elancer_fistproject/providers/language_provider.dart';
import 'package:elancer_fistproject/screens/auth/login_screen.dart';
import 'package:elancer_fistproject/screens/auth/password/forget_password.dart';
import 'package:elancer_fistproject/screens/auth/register_screen.dart';
import 'package:elancer_fistproject/screens/bn_screens/blog_screen.dart';
import 'package:elancer_fistproject/screens/bn_screens/cosmetics_Screen.dart';
import 'package:elancer_fistproject/screens/bn_screens/home_screen.dart';
import 'package:elancer_fistproject/screens/launch_screen.dart';
import 'package:elancer_fistproject/screens/main_screen.dart';
import 'package:elancer_fistproject/screens/out_boarding_screen.dart';
import 'package:elancer_fistproject/screens/prefs/shared_pref_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initSharedPref();
  await DbController().initDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LanguageProvider>(
        create:(cnotext)=>LanguageProvider(),
        child:  MyMaterialApp()
    );
  }
}

class MyMaterialApp extends StatelessWidget {
  final LanguageGetxController _languageGetxController =
  Get.put<LanguageGetxController>(LanguageGetxController());
  @override
  Widget build(BuildContext context) {
         return MaterialApp(
           //localizationsDelegates: AppLocalizations.localizationsDelegates,
           //supportedLocales: AppLocalizations.supportedLocales,
       //   localizationsDelegates:  [
       //     AppLocalizations.delegate,
       //     GlobalMaterialLocalizations.delegate,
       //     GlobalCupertinoLocalizations.delegate,
       //     GlobalWidgetsLocalizations.delegate
       //   ],
       //   supportedLocales: const [
       //     Locale('en'),
       //     Locale('ar')
       //   ],
       //   locale:  Locale(LanguageGetxController.to.language.value),
           initialRoute: '/launch_screen',
           routes:{
             '/launch_screen':(context)=> const LaunchScreen(),
             '/login_screen':(context)=> const LoginScreen(),
             '/register_screen':(context)=> const RegisterScreen(),
             '/froget_password_screen':(context)=> const ForgetPasswordScreen(),
             '/main_screen':(context)=> const MainScreen(),
             '/out_boarding_screen':(context)=>  OutBoardingScreen(),
             '/home_screen':(context)=>HomeScreen(),
             '/blog_screen':(context)=>BlogScreen(),
             '/cosmetics_screen':(context)=>CosmeticsScreen(),
             // '/morning_care_screen':(context)=>MorningCare(),
             //'/night_care_screen':(context)=>NightCare(),
             //'/blog_content_screen':(context)=>BlogContent(),
             //'/exercises_screen':(context)=>ExcersisesScreen(),
             //'/cleanser_screen':(context)=>CleanserScreen(),
             //'/eye_cream_screen':(context)=>EyeCreamScreen(),
             //'/moisturizer_screen':(context)=>MoisturizerScreen(),
             //'/sunscreen_screen':(context)=>SunscreenScreen(),
             //'/product_content_screen':(context)=>ProductContentScreen(),
           }
         );
//      return MultiBlocProvider(
//        providers: [
//          BlocProvider<ExercisesBloc>(
//            create: (BuildContext context) => ExercisesBloc(LoadingState()),
//          ),
//        ],
//        child: Obx(() {
//          return MaterialApp(
//            //localizationsDelegates: AppLocalizations.localizationsDelegates,
//            //supportedLocales: AppLocalizations.supportedLocales,
//            localizationsDelegates:  [
//              AppLocalizations.delegate,
//              GlobalMaterialLocalizations.delegate,
//              GlobalCupertinoLocalizations.delegate,
//              GlobalWidgetsLocalizations.delegate
//            ],

//            supportedLocales: const [
//              Locale('en'),
//              Locale('ar')
//            ],
//            locale:  Locale(LanguageGetxController.to.language.value),
//            initialRoute: '/launch_screen',
//            routes:{
//              '/launch_screen':(context)=> const LaunchScreen(),
//              '/login_screen':(context)=> const LoginScreen(),
//              '/register_screen':(context)=> const RegisterScreen(),
//              '/froget_password_screen':(context)=> const ForgetPasswordScreen(),
//              '/main_screen':(context)=> const MainScreen(),
//              '/out_boarding_screen':(context)=>  OutBoardingScreen(),
//              '/home_screen':(context)=>HomeScreen(),
//              '/blog_screen':(context)=>BlogScreen(),
//              '/cosmetics_screen':(context)=>CosmeticsScreen(),
//              '/morning_care_screen':(context)=>MorningCare(),
//              '/night_care_screen':(context)=>NightCare(),
//              '/blog_content_screen':(context)=>BlogContent(),
//              '/exercises_screen':(context)=>ExcersisesScreen(),
//              '/cleanser_screen':(context)=>CleanserScreen(),
//              '/eye_cream_screen':(context)=>EyeCreamScreen(),
//              '/mask_screen':(context)=>MaskScreen(),
//              '/moisturizer_screen':(context)=>MoisturizerScreen(),
//              '/sunscreen_screen':(context)=>SunscreenScreen(),
//              '/product_content_screen':(context)=>ProductContentScreen(),
//            },
//          );
//        }),
//      );
   }
}

