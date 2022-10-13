import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/mention.dart';
import 'package:instagram_flutter/post.dart';

class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> with SingleTickerProviderStateMixin{
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(
        length:  (2), vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Column(
          children: <Widget>[
            const SizedBox(height: 10.0,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin:const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.all(10.0),
                  child:const CircleAvatar(
                    radius: 40,
                    backgroundImage: ExactAssetImage("assets/images/profile.png"),
                  ),
                ),
                //const SizedBox(width: 10,),
                Container(
                  margin:const EdgeInsets.fromLTRB(3.0, 15.0, 3.0, 5.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      Text(
                        "1",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).primaryColorLight
                        ),
                      ),
                      const SizedBox(height: 3.0,),
                      Text(
                        "Posts",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).primaryColorLight
                        ),
                      ),
                    ],
                  ),
                ),
                //const SizedBox(width: 10,),
                Container(
                  margin:const EdgeInsets.fromLTRB(3.0, 15.0, 3.0, 5.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      Text(
                        "218",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).primaryColorLight
                        ),
                      ),
                      const SizedBox(height: 3.0,),
                      Text(
                        "Followers",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).primaryColorLight
                        ),
                      ),
                    ],
                  ),
                ),
                //const SizedBox(width: 6,),
                Expanded(
                  child: Container(
                    margin:const EdgeInsets.fromLTRB(3.0, 15.0, 3.0, 5.0),
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget> [
                        Text(
                          "277",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).primaryColorLight
                          ),
                        ),
                        const SizedBox(height: 3.0,),
                        Text(
                          "Following",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).primaryColorLight
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 3,),
            Container(
              margin:const EdgeInsets.only(left:15.0),
              alignment: Alignment.centerLeft,
              child: Text(
                "Harshath_02",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColorLight,
                ),
              ),
            ),
            Container(
              margin:const EdgeInsets.only(left:15.0),
              alignment: Alignment.centerLeft,
              child: Text(
                "Flutter Developer",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColorLight,
                ),
              ),
            ),
            const SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                Container(
                  margin:const EdgeInsets.only(left:15.0),
                  width: MediaQuery.of(context).size.width*0.8,
                  height: MediaQuery.of(context).size.height*0.05,
                  decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColorLight),
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  child: Center(
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: Theme.of(context).primaryColorLight,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5.0,),
                Container(
                  width: MediaQuery.of(context).size.width*0.1,
                  height: MediaQuery.of(context).size.height*0.05,
                  decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColorLight),
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.account_circle_outlined,
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children:<Widget> [
                Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left:15.0,right:5.0,top: 10.0),
                      child:const CircleAvatar(
                        radius: 40,
                        backgroundImage: ExactAssetImage("assets/images/highlight.jpg"),
                      ),
                    ),
                    const SizedBox(height: 3.0,),
                    Container(
                      margin: const EdgeInsets.only(left:10.0,top: 5.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Highlights",
                        style: TextStyle(
                            color: Theme.of(context).primaryColorLight,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(width: 10.0,),
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColorLight,
                          ),
                          borderRadius: BorderRadius.circular(50.0)
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.add,
                            color: Theme.of(context).primaryColorLight,
                            size: 28,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 3.0,),
                    Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      alignment: Alignment.center,
                      child: Text(
                        "New",
                        style: TextStyle(
                            color: Theme.of(context).primaryColorLight,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                TabBar(
                  controller: controller,
                    indicatorColor: Theme.of(context).primaryColorLight,
                    tabs: [
                      Tab(
                        icon:Icon(
                          Icons.apps,
                          color: Theme.of(context).primaryColorLight,
                        ),
                      ),
                      Tab(
                        icon:Icon(
                          Icons.account_box_outlined,
                          color: Theme.of(context).primaryColorLight,
                        ),
                      ),
                    ]
                ),
              ],
            ),
            const SizedBox(height: 10.0,),
            Container(
              height: 100,
              child: TabBarView(
                  controller: controller,
                  children: const [
                    Post(),
                    Mention()
                  ]
              ),
            )
          ],
        ),
    );
  }
}

