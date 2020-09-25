import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smtutorial/provider/drinks_provider.dart';

class DrawerOrderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<DrinksProvider>(
        builder: (context, drinkProvider, child) => Column(
          children: [
            Text(
              "The order is: ",
              style: Theme.of(context).textTheme.headline4,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    // TODO 13.1: get the selectedDrinks from the provider
                    drinkProvider.selectedDrinks[index].name,
                  ),
                ),
                // TODO 13.2: get the selectedDrinks from the provider
                itemCount: drinkProvider.selectedDrinks.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
