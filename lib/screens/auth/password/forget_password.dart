
import 'package:elancer_fistproject/helpers/helpers.dart';
import 'package:elancer_fistproject/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> with Helpers{

  late TextEditingController _emailTextController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();

  }


  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text(AppLocalizations.of(context)!.passwordForget),
        ),
        body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const Text('Enter Email', style:
            TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
            const Text('Reset code will be sent', style:
            TextStyle(
              fontSize: 15,
              color: Colors.grey,
            )),
            const SizedBox(height: 15),
            AppTextField(
              controller: _emailTextController,
              prefixIcon: Icons.email,
              hint: 'Email',
              type: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: ()async=>performForgetPassword(),
              child:  Text(AppLocalizations.of(context)!.send),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),



          ],
        )
    );
  }


  Future<void> performForgetPassword() async {
    if (checkData()) {
      await forgetPassword();
    }
  }

  bool checkData() {
    if (_emailTextController.text.isNotEmpty ) {
      return true;
    }
    showSnackBar(context: context,
      message: 'Enter required data',
      error: true,
    );
    return false;
  }

  Future<void> forgetPassword() async{

    // if (status) Navigator.pushReplacementNamed(context, '/reset_password_screen');

     // Navigator.pushReplacement(
     //   context,
     //   MaterialPageRoute(
     //     builder: (context) =>
     //         ResetPassword(email: _emailTextController.text),
     //   ),
     // );
    Navigator.pushReplacementNamed(context, '/login_screen');

  }


}