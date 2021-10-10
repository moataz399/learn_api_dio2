import 'package:flutter/material.dart';
import 'package:learn_api_dio/data/models/user_model.dart';

class UserItem extends StatelessWidget {
  final User user;

  UserItem({required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        user.email,
      ),
      subtitle: Text(user.lastName),
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
        userTest.firstName,
      ),
      subtitle: Text('${userTest.id}'),
    );
  }
}

Widget item(User user) => ListTile(
      title: Text(
        user.email,
      ),
      subtitle: Text(user.lastName),
    );
