import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'grocery_lists_main_page.dart';
import 'product_main_page.dart';
import 'recipe_main_page.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<StatefulWidget> createState() => _LandingPageState();

}

class _LandingPageState extends State<LandingPage> {

  final SizedBox _spacing = const SizedBox(height: 10);
  late User _user;

  @override
  void initState() {
    super.initState();
    _user = FirebaseAuth.instance.currentUser!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(AppLocalizations.of(context)!.helloWorld),//Text('Grocery! - Witaj ${_user.displayName}'),
      ),
      body: Center(
        child: Column(
          children: [
            _spacing,
            _goToOption(
                context, const Text('Przepisy'), const RecipeMainPage()),
            _spacing,
            _goToOption(
                context, const Text('Produkty'), const ProductsListWidget()),
            _spacing,
            _goToOption(context, const Text('Listy Zakupów'),
                const GroceryListsMainPage()),
          ],
        ),
      ),
    );
  }

  ElevatedButton _goToOption(BuildContext context, Text label, Widget destination) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => destination));
        },
        child: label);
  }
}