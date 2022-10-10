import 'package:flutter/material.dart';

import '../../models/language_constants.dart';
import '../../widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const ProfileScreen());
  }

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(appBarTitle: 'profile'),
        bottomNavigationBar: const CustomNavBar(),
        body: Container(
          child: Center(
            child: Text(translation(context).hola),
          ),
        ));
  }
}
