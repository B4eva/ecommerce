import 'package:flutter/material.dart';

import '../../models/language_constants.dart';
import '../../widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const CartScreen());
  }

  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(appBarTitle: 'Cart'),
        bottomNavigationBar: const CustomNavBar(),
        body: Container(
          child: Center(child: Text(translation(context).hola)),
        ));
  }
}
