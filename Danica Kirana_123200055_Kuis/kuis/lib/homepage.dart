import 'package:flutter/material.dart';
import 'package:kuis/detailpage.dart';
import 'package:kuis/coffee_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kopi"),
      ),
      body: ListView.builder(
          itemCount: coffeeList.length,
          itemBuilder: (context, index) {
            final CoffeeMenu coffee = coffeeList[index];
            String coffeeName = coffee.name;
            String coffeePrice = coffee.price;
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(coffee: coffee)));
              },
              child: Container(
                height: 100,
                child: ListTile(
                  leading: Image.network(
                    coffee.imageUrls[0],
                    width: 100,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(coffeeName),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(coffeePrice),
                  ),

                ),
              ),
            );
          }),
    );
  }
}
