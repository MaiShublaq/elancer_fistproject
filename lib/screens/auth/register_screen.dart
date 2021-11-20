
import 'package:elancer_fistproject/helpers/helpers.dart';
import 'package:elancer_fistproject/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with Helpers {
  late TextEditingController _fullNameTextController;
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  //String _gender='M';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fullNameTextController=TextEditingController();
    _emailTextController=TextEditingController();
    _passwordTextController=TextEditingController() ;

  }
  void onTap(){
    Navigator.pushNamed(context, '/register_screen');
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _fullNameTextController.dispose();
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text(AppLocalizations.of(context)!.register),
        ),
        body:ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          children: [
             Text(AppLocalizations.of(context)!.createNew,style:
            const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
             Text(AppLocalizations.of(context)!.enterDetails,style:
            const TextStyle(
              fontSize: 15,
              color:Colors.grey,
            )),
            const  SizedBox(height:15),
            AppTextField(
              controller: _fullNameTextController,
              prefixIcon: Icons.person,
              hint: AppLocalizations.of(context)!.fullName,
            ),
            const SizedBox(height:10),
            AppTextField(
              controller: _emailTextController,
              prefixIcon: Icons.email,
              hint: AppLocalizations.of(context)!.email,
              type: TextInputType.emailAddress,
            ),
            const SizedBox(height:10),
            AppTextField(
              controller: _passwordTextController,
              prefixIcon: Icons.lock,
              hint: AppLocalizations.of(context)!.password,
              obsecure: true,
            ),

            const SizedBox(height:10),
         // Row(
         //     children:[
         //       Expanded(
         //           child:RadioListTile<String>(
         //             title: const Text('Male'),
         //             value:'M',
         //             groupValue: _gender,
         //             onChanged: (String?value) {
         //               if(value !=null){
         //                 setState((){
         //                   _gender=value;
         //                 });
         //               }
         //             },

         //           )
         //       ),

         //       Expanded(
         //           child:RadioListTile<String>(
         //             title: const Text('Female'),
         //             value:'F',
         //             groupValue: _gender,
         //             onChanged: (String?value) {
         //               if(value !=null){
         //                 setState((){
         //                   _gender=value;
         //                 });
         //               }
         //             },

         //           )
         //       ),

         //     ]

         // ),
            ElevatedButton(
              onPressed: ()async=>performLogin(),
              child: Text(AppLocalizations.of(context)!.register),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0,50),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 15,),


          ],
        )
    );
  }
  Future<void> performLogin() async {
    if (checkData()) {
      await register();
    }
  }

  bool checkData() {
    if (_fullNameTextController.text.isNotEmpty&&
        _emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      return true;
    }
    showSnackBar(context: context,
      message: 'Enter required data',
      error: true,
    );
    return false;
  }

  Future<void> register() async{
    // bool status= await AuthApiController().register(context, student: student);
    // if(status) Navigator.pop(context);
    Navigator.pop(context);
  }

//Student get student{
//  Student student = Student();
//  student.fullName=_fullNameTextController.text;
//  student.email=_emailTextController.text;
//  student.password=.text;
//  student.gender=_gender;
//  return student;


//}

}


