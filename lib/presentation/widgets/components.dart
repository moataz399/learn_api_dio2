import 'package:flutter/material.dart';
import 'package:learn_api_dio/data/models/user_model.dart';

class UserItem extends StatelessWidget {
  final User user;

  UserItem({required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        user.data.email,
      ),
      subtitle: Text(user.data.lastName),
    );
  }
}

class UserTEst extends StatelessWidget {
  final User userTest;

  const UserTEst({required this.userTest});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        userTest.data.firstName,
      ),
      subtitle: Text('${userTest.data.id}'),
    );
  }
}

Widget item(User user) => ListTile(
      title: Text(
        user.data.email,
      ),
      subtitle: Text(user.data.lastName),
    );
