import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smtutorial/models/drink.dart';
import 'package:smtutorial/provider/drawer_provider_screen.dart';
import 'package:smtutorial/provider/drinks_provider.dart';
import 'package:smtutorial/widgets/drinks_widget.dart';

import '../constants.dart';

class CheckboxProviderScreen extends StatelessWidget {
  // final List<Drink> drinks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerOrderList(),
      ),
      appBar: AppBar(
        title: Text("Cocktail Order"),
      ),
      body: Container(
        decoration: kMainBackgroundImage,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: kWhiteBackground,
              // TODO 7: Surround the Column with a Consumer widget
              // TODO 8: Implement the build function
              child: Consumer<DrinksProvider>(
                builder: (context, drinkProvider, child) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Drinks tonight",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    // TODO 9: Receive the drinks from the provider
                    ...drinkProvider.drinks
                        .map(
                          (drink) => DrinksWidget(
                            drink: drink,
                            onChanged: (value) {
                              // TODO 11: call the selectDrink on the provider
                              drinkProvider.selectDrink(drink, value);
                            },
                          ),
                        )
                        .toList(),
                    // Text(
                    //   "The order is: ",
                    //   style: Theme.of(context).textTheme.headline4,
                    // ),
                    // Expanded(
                    //   child: ListView.builder(
                    //     itemBuilder: (context, index) => ListTile(
                    //       title: Text(
                    //         // TODO 13.1: get the selectedDrinks from the provider
                    //         drinkProvider.selectedDrinks[index].name,
                    //       ),
                    //     ),
                    //     // TODO 13.2: get the selectedDrinks from the provider
                    //     itemCount: drinkProvider.selectedDrinks.length,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
