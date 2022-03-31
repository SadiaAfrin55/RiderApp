
import 'package:flutter/material.dart';
class DriverIntro extends StatefulWidget {
  const DriverIntro({Key? key}) : super(key: key);

  @override
  _DriverIntroState createState() => _DriverIntroState();
}

class _DriverIntroState extends State<DriverIntro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 95,
      // decoration: BoxDecoration(
      //   border: Border.all(width: 0.5, color: Colors.black54),
      //   borderRadius: BorderRadius.circular(8)
      // ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage:AssetImage('assets/images/profile.jpg'),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const[
                  Text('John Doe',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight:FontWeight.bold,
                    ),),
                  SizedBox(height: 2),
                  Text('John@gmail.com',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black87
                    ),),
                ],
              ),
            ),
            Image.asset('assets/images/bike.png',height: 75,),
          ],
        ),
      ),
    );
  }
}
