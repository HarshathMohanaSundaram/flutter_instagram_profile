import 'package:flutter/material.dart';
import 'package:instagram_flutter/profile_content.dart';

class Profile extends StatefulWidget {
  const Profile({required this.theme,required this.mode,Key? key}) : super(key: key);
  final Function theme;
  final bool mode;
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        title:Text(
          "Instagram",
          style: TextStyle(
              fontSize: 28,
              color: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w500,
              fontFamily: "Lobster"
          ),
        ),
        elevation: 0.0,
        actions:[
          IconButton(
              onPressed :(){
                widget.theme();
              },
            icon: Icon(widget.mode?
            Icons.dark_mode:Icons.light_mode,
          size: 28,
          color: Theme.of(context).primaryColorLight,
        )
    ),
    IconButton(
    onPressed: null,
    icon: Icon(
    Icons.menu,
    size: 28,
    color: Theme.of(context).primaryColorLight,
    )
    )
    ],
    ),
    bottomNavigationBar: BottomNavigationBar(
    backgroundColor: Theme.of(context).primaryColorDark,
    items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: Icon(
    Icons.home,color: Theme.of(context).primaryColorLight),
            label: "",
            backgroundColor: Theme.of(context).primaryColorDark,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Theme.of(context).primaryColorLight,),
            label: "",
            backgroundColor: Theme.of(context).primaryColorDark,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box,color: Theme.of(context).primaryColorLight),
            label: "",
            backgroundColor: Theme.of(context).primaryColorDark,
          ),
          BottomNavigationBarItem(icon: Icon(Icons.wallpaper_sharp, color: Theme.of(context).primaryColorLight,),
            label: "",
            backgroundColor: Theme.of(context).primaryColorDark,
          ),
          BottomNavigationBarItem(icon: Icon(Icons.account_box, color: Theme.of(context).primaryColorLight,),
            label: "",
            backgroundColor: Theme.of(context).primaryColorDark,
          )
        ],
      ),
      body: const Content(),
    );
  }
}