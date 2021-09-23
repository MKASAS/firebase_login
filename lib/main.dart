import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'register_Page.dart';
import 'login_page.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences pref=await SharedPreferences.getInstance();
  var Email=pref.getString('email');
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Email==null?Login_Page():Register_Page(),
  ));
  }
