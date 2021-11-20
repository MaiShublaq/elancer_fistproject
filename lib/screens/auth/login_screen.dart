
import 'package:elancer_fistproject/helpers/helpers.dart';
import 'package:elancer_fistproject/providers/language_provider.dart';
import 'package:elancer_fistproject/screens/main_screen.dart';
import 'package:elancer_fistproject/screens/prefs/shared_pref_controller.dart';
import 'package:elancer_fistproject/widgets/app_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Helpers{

  late TextEditingController _fullNameTextController;
  late TextEditingController _passwordTextController;
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fullNameTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = onTap;
  }

  void onTap() {
    Navigator.pushNamed(context, '/register_screen');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _fullNameTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          centerTitle: true,
         // title:  Text(AppLocalizations.of(context)!.login),
          title:  Text('LOGIN'),
          backgroundColor: Colors.pink.shade300,
        ),
        floatingActionButton: FloatingActionButton(
          child:const Icon(Icons.language),
          onPressed: (){
            Provider.of<LanguageProvider>(context,listen: false).changeLanguage();
          },

        ),

        body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const SizedBox(height: 5,),
             //Text(AppLocalizations.of(context)!.welcome, style:
            Text('Welcome Back', style:

            const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),textAlign: TextAlign.center,),
            // Text(AppLocalizations.of(context)!.start,
            Text('Start Your Beauty Journey',
                textAlign: TextAlign.center,
                style:
            TextStyle(
              fontSize: 15,
              color: Colors.pink.shade300,
            )),
            const SizedBox(height: 15),
            AppTextField(
              controller: _fullNameTextController,
              prefixIcon: Icons.person,
            //  hint: AppLocalizations.of(context)!.fullName,
              hint: 'FullName',
              type: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),
            AppTextField(
              controller: _passwordTextController,
              prefixIcon: Icons.lock,
            //  hint: AppLocalizations.of(context)!.password,
              hint: 'Password',
              obsecure: true,
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: ()async=>performLogin(),
              //  child:  Text(AppLocalizations.of(context)!.login),
              child:  Text('LOGIN'),


              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Colors.pink.shade200,
                minimumSize: const Size(0, 50),
                shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                //    text: AppLocalizations.of(context)!.haveAccount,
                    text: 'Don\'t have an account',
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      const TextSpan(text: ' '),
                      TextSpan(
                       //   text: AppLocalizations.of(context)!.create,
                          text: ' Create now',


                          style: const TextStyle(color: Colors.blue),
                          recognizer: _tapGestureRecognizer
                      )
                    ]
                )),
            TextButton(
                onPressed:()=>Navigator.pushReplacementNamed(context,'/froget_password_screen') ,
               // child: Text(AppLocalizations.of(context)!.passwordForget)
    child: Text('Forget Password?')
            )

          ],
        )
    );
  }


  Future<void> performLogin() async {
    if (checkData()) {
       login();
    }
  }

  bool checkData() {
    if (_fullNameTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      return true;
    }
    showSnackBar(context: context,
      message: 'Enter required data',
      error: true,
    );
    return false;
  }

    void login()async {
    await SharedPrefController().save(email: _fullNameTextController.text);
    await SharedPrefController().setName(name: _fullNameTextController.text);
   // Navigator.pushReplacement( context,MaterialPageRoute(
   //   builder:(context)=> MainScreen(fullName:_fullNameTextController.text)
   // ));
//
Navigator.pushReplacementNamed(context, '/main_screen');
  }



}