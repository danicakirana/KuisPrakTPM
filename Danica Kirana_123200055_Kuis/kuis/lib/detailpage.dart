import 'package:flutter/material.dart';
import 'package:kuis/coffee_menu.dart';

class DetailPage extends StatefulWidget {
  final CoffeeMenu coffee;
  const DetailPage({Key? key, required this.coffee}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.coffee.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            widget.coffee.imageUrls[0],
            width: 200,
            height: 200,
          ),
          Text(
            widget.coffee.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
              child: Column(
                children: [
                  Text(
                    "Price\t: " + widget.coffee.price,
                    textAlign: TextAlign.center,
                  ),

                  Text("Review Average\t: " + widget.coffee.reviewAverage),
                  Text("Review Count\t: " + widget.coffee.reviewCount),
                  Text("Ingredients\t: " + widget.coffee.ingredients[0]),
                  Text("Link Store\t: " + widget.coffee.linkStore),

                  Text("Description",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  Text(widget.coffee.description),




                ],

              )),
          Padding(
              padding: const EdgeInsets.only(left:15, right: 15),
              child: ElevatedButton(
                onPressed: () {
                  [
                    Text('Favorit'),
                  ];
                },
                child: Text('Favorit'),
              )
          ),
        ],
      ),
    );
  }
}
