import 'package:flutter/material.dart';

import '../../models/language_constants.dart';
import '../../widgets/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const HomeScreen());
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(appBarTitle: 'ShopLift sports'),
        bottomNavigationBar: const CustomNavBar(),
        body: Container(
          child: Center(child: Text(translation(context).hola)),
        ));
  }
}
