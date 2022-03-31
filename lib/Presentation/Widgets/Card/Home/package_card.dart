
import 'package:flutter/material.dart';
class PackageCard extends StatefulWidget {
  final Color? bgColor;
  const PackageCard({this.bgColor,Key? key}) : super(key: key);

  @override
  _PackageCardState createState() => _PackageCardState();
}

class _PackageCardState extends State<PackageCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(width: 2,color: Color(0xFFC2EBFF).withOpacity(0.7)),  //Color(0xFFC2EBFF)
        color: Color(0xFFC2EBFF).withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.lock_clock,color: Colors.lightBlue[300],size: 30,),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[
                Text('Hourly Rate',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 35),
                Text('2 hour',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                  ),
                ),
                Text('100 per hour',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
