
import 'package:flutter/material.dart';

import '../../../Widgets/Card/Home/driver_intro_card.dart';
class IntroComponents extends StatefulWidget {
  const IntroComponents({Key? key}) : super(key: key);

  @override
  _IntroComponentsState createState() => _IntroComponentsState();
}

class _IntroComponentsState extends State<IntroComponents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(text: 'Select any package\n', style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black87,fontSize: 17)),
                TextSpan(text: 'and you are good to go!',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.lightBlue,fontSize: 21)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Text('About Rider',
            style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),
            ),
          ),
          DriverIntro(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              CircleAvatar(radius: 4,backgroundColor: Colors.black45),
              SizedBox(width: 10),
              CircleAvatar(radius: 4,backgroundColor: Colors.black45),
              SizedBox(width: 10),
              CircleAvatar(radius: 4,backgroundColor: Colors.black45),
            ],
          ),
        ],
      ),
    );
  }
}
