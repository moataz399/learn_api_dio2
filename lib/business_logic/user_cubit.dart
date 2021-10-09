// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:learn_api_dio/data/models/user_model.dart';
import 'package:learn_api_dio/data/repositeries/user_repository.dart';
import 'package:meta/meta.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this._userRepository) : super(UserInitial());
  final UserRepository _userRepository;

   List<dynamic> user=[] ;

  List<dynamic> getUserData() {
    _userRepository.getUserData().then((user) {
      emit(UserLoaded(user));
      this.user = user;
    }).catchError((error){
      print(error.toString());
    });
    return user;
  }
}
