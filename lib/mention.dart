import 'package:flutter/material.dart';

class Mention extends StatelessWidget {
  const Mention({Key? key}) : super(key: key);

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
                child: Image.asset("assets/images/faculty1.jpg")),
          ),
          const SizedBox(width: 5.0,),
          Container(
            width: MediaQuery.of(context).size.width*0.4,
            height: MediaQuery.of(context).size.height*2,
            child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset("assets/images/faculty2.jpg")
            ),
          )
        ],
      ),
    );
  }
}
