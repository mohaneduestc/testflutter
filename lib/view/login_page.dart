import 'package:flutter/material.dart';
import 'package:test/provider/auth_provider.dart';
import 'package:test/view/signup_page.dart';
import 'package:provider/provider.dart';
import 'package:test/widgets/dont_have_account.dart';
import 'package:test/widgets/text_field.dart';


class LoginPage extends StatefulWidget {
  static const routeName = '/login';
  
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    final  GlobalKey<FormState> formKey = GlobalKey<FormState>();
 void dispose() {
    Provider.of<Auth>(context, listen: false).disposed();
    super.dispose();
  }

  void onPressNewAccount() {
    Navigator.of(context).pushNamed(SignUpScreen.routeName);
  }

  Future<void> onSubmit() async {
  
  }

  void onPressForgetPassword() {}

  @override
  
  Widget build(BuildContext context) {
    final authProvider = Provider.of<Auth>(context, listen: false);
    return Scaffold(
      body:  Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 50,),
              CustomTextField(
                  title:"username",
                  controller: authProvider.usernameController),
              const SizedBox(
                height: 20,
              ),
         
           
             
              DontHaveAccount(callBack: onPressNewAccount)
            ],
          )),

    );
  }
}
