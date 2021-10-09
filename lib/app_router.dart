import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_api_dio/data/repositeries/user_repository.dart';
import 'package:learn_api_dio/data/web_services/http_services.dart';
import 'package:learn_api_dio/presentation/screens/home_screen.dart';

import 'business_logic/user_cubit.dart';
import 'constants/strings.dart';

class AppRouter {
   //String initialRoute;
  late UserRepository userRepository;
  late UserCubit userCubit;

  AppRouter() {
    userRepository = UserRepository(UserServices());
    userCubit = UserCubit(userRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext context) => userCubit,
                  child: const HomePage(),
                ));
    }
  }
}
