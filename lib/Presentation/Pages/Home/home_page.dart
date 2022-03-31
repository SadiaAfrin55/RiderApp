
import 'package:flutter/material.dart';
import '../../Widgets/AppBar/custom_appbar.dart';
import '../Login/login_page.dart';
import 'HomeComponents/intro_components.dart';
import 'HomeComponents/package_components.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              IntroComponents(),
              PackageComponents(),
            ],
          ),
        ),
      ),
    );
  }
}
