import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_api_dio/business_logic/user_cubit.dart';
import 'package:learn_api_dio/data/models/user_model.dart';
import 'package:learn_api_dio/presentation/widgets/components.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 late  List<dynamic> userData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     BlocProvider.of<UserCubit>(context).getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: buildBlocWidget(),
    );
  }

  Widget buildBlocWidget() {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        if (state is UserLoaded) {
          userData = (state).user;
          return ListView.separated(
              itemBuilder: (context, index) {
                return UserItem(user: userData[index]);
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.black,
                  height: 1,
                );
              },
              itemCount: userData.length);
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.blue,
            ),
          );
        }
      },
    );
  }
}
