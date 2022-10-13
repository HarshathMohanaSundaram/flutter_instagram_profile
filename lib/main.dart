import 'package:flutter/material.dart';
import 'package:instagram_flutter/instagram_profile.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  bool _themeMode = false;
  changeTheme(){
    setState(() {
      _themeMode = !_themeMode;
    });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColorDark: _themeMode?Colors.black:Colors.white,
          primaryColorLight:_themeMode?Colors.white:Colors.black,
      ),
      home: Profile(theme: changeTheme,mode: _themeMode,),
    );
  }
}
