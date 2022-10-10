// ignore_for_file: use_build_context_synchronously

import 'package:ecommerce_app/main.dart';
import 'package:ecommerce_app/models/language.dart';
import 'package:ecommerce_app/models/language_constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  final String? appBarTitle;
  const CustomAppBar({
    required this.appBarTitle,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  // TODO: implement preferredSize
  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Center(
        child: Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              widget.appBarTitle!,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.bold,
              ),
            )),
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite),
          onPressed: () {
            Navigator.pushNamed(context, '/wishlist');
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton<Language>(
            underline: const SizedBox(),
            icon: const Icon(
              Icons.language,
              color: Colors.black,
            ),
            onChanged: (Language? language) async {
              if (language != null) {
                // Locale locale = await setLocale(language.languageCode);
                MyApp.setLocale(context, Locale(language.languageCode, ''));
              }
            },
            items: Language.languageList()
                .map<DropdownMenuItem<Language>>(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(e.flag),
                        Text(e.name),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}
