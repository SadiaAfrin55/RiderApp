
import 'package:flutter/material.dart';
import 'package:progress_state_button/iconed_button.dart';

import '../../../Widgets/Card/Home/package_card.dart';
class PackageComponents extends StatefulWidget {
  final String? cardText;
  const PackageComponents({this.cardText,Key? key}) : super(key: key);

  @override
  _PackageComponentsState createState() => _PackageComponentsState();
}

class _PackageComponentsState extends State<PackageComponents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Text('Package',
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right:12.0),
                    child: PackageCard(),
                  );
                }),
          )
        ],
      ),
    );
  }
}
