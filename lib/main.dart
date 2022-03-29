
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:rider_app/Bloc/Login/login_cubit.dart';
import 'package:rider_app/Bloc/User/user_cubit.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

import 'Routes/app_route.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Directory directory = await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  await Hive.openBox('users');
  runApp(MyApp(
    router: AppRouter(),
  ));
}
class MyApp extends StatelessWidget {
  final AppRouter router;
  const MyApp({Key? key,required this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserCubit>(
            create: (context) =>UserCubit()),

        BlocProvider<LoginCubit>(
            create: (context) =>LoginCubit()),
      ],
      child: MaterialApp(
        title: 'Rider App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Nunito',
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color(0xFF000000),
          dividerColor: const Color(0xFFEEEEEE),
        ),
        onGenerateRoute: router.generateRoute,
      ),
    );
  }
}

