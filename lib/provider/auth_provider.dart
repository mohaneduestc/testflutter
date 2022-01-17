import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class Auth with ChangeNotifier {



  final TextEditingController _usernameControl = TextEditingController();
  final TextEditingController _passwordControl = TextEditingController();

  final TextEditingController _addressControl = TextEditingController();
  final TextEditingController _phoneControl = TextEditingController();

  TextEditingController get usernameController => _usernameControl;
  TextEditingController get passwordControl => _passwordControl;
  TextEditingController get addressControl => _addressControl;
  TextEditingController get phoneControl => _phoneControl;

  bool _isLoading = false;
  bool get isLoading => _isLoading;


  void disposed() {
    _usernameControl.dispose();
    _passwordControl.dispose();
    _addressControl.dispose();
    _phoneControl.dispose();
  }



  
}
