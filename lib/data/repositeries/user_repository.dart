import 'package:learn_api_dio/data/models/user_model.dart';
import 'package:learn_api_dio/data/web_services/http_services.dart';

class UserRepository {
  final UserServices userServices;

  UserRepository(this.userServices);

  Future<List<User>> getUserData() async {
    final userdata = await userServices.getUserData();
    print(userdata);
    print('='*8);
    return userdata.map((element) => User.fromJson(element)).toList();
  }
}
