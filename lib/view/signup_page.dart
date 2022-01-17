import 'package:flutter/material.dart';
import 'package:test/provider/auth_provider.dart';
import 'package:test/const.dart';


import 'package:test/widgets/back_arrow.dart';
import 'package:provider/provider.dart';
import 'package:test/widgets/text_field.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const routeName = '/signUp';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
    final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
   @override
  void dispose() {
    Provider.of<Auth>(context, listen: false).disposed();
    super.dispose();
  }

  Future<void> onSubmit() async {
    print('signUp');
  }
  @override
  Widget build(BuildContext context) {
        final authProvider = Provider.of<Auth>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(
          'create new account',
          style: appbarTextStyle,
        ),
        leading: BackArrow(),
        // actions: [Icon(Icons.access_alarm)],
      ),
      body:  Form(
          key: formKey1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 50,),
              CustomTextField(
                  title: 'username',
                  controller: authProvider.usernameController),
            
             
     
            ],
          ),
        ),

    );
  }
}
