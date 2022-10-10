import 'package:flutter/material.dart';

import '../../models/language_constants.dart';
import '../../widgets/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WhishListScreen extends StatelessWidget {
  static const String routeName = '/whishList';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const WhishListScreen());
  }

  const WhishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(appBarTitle: 'Whish List'),
        bottomNavigationBar: const CustomNavBar(),
        body: Container(
          child: Text(translation(context).hola),
        ));
  }
}
