
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rider_app/Bloc/Login/login_cubit.dart';
import 'package:rider_app/Service/LocalDataBase/localdata.dart';
class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  String? token;
  String? role;
  String? userId;
  LocalDataGet _localDataGet = LocalDataGet();
  getToken() async {
    var tokenx = await _localDataGet.getData();
    setState(() {
      token = tokenx.get('token');
      role = tokenx.get('role');
    });
  }

  @override
  void initState() {
    getToken();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      height: 80,
      color: Colors.black,
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          if(state is !LoginUser){
            return Center(child: CircularProgressIndicator(),);
          }
          final data=(state as LoginUser).login!.user!;
      return Row(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
           child: Image.asset('assets/images/profile.jpg'),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello',
                    style: TextStyle(
                      fontSize:13,
                      fontWeight: FontWeight.w700,
                      color: Colors.white54,
                    )),
                Text(data.name!,
                    style: TextStyle(
                  fontSize:15,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                )),
              ],
            ),
          ),
          const Icon(Icons.notifications,color: Colors.white,size: 25),
          const SizedBox(width: 24),
          const Icon(Icons.search,color: Colors.white,size: 25),
        ],
      );
  },
),
    );
  }
}
