// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:learn_api_dio/data/models/user_model.dart';
import 'package:learn_api_dio/data/repositeries/user_repository.dart';
import 'package:meta/meta.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this._userRepository) : super(UserInitial());
  final UserRepository _userRepository;

   List<User> users =[];

  List<User> getUserData() {
    _userRepository.getUserData().then((user) {
      emit(UserLoaded(user));
      users = user;
      print(users[0].data.firstName);
      print(user[0].data.lastName);
      print(users[0].data.email);
      print(user[0].data.lastName);
      print(users[0].data.firstName);
      print(user[0].data.email);
      print(users[0].data.lastName);
    }).catchError((error) {
      print(error.toString());
    });
    return users;
  }
}
