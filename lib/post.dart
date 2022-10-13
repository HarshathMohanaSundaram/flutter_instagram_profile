import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1.0),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.4,
            height: MediaQuery.of(context).size.height*2,
            child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset("assets/images/anu.jpg")),
          ),
          const SizedBox(width: 5.0,),
          Container(
            width: MediaQuery.of(context).size.width*0.4,
            height: MediaQuery.of(context).size.height*2,
            child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset("assets/images/vicky.jpg")),
          )
        ],
      ),
    );
  }
}
