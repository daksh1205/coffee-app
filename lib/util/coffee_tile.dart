import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  CoffeeTile({
    required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  coffeeImagePath,
                ),
              ),
            ),
            // coffee name
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeeName,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'With Almond Milk',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            //price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$' + coffeePrice),
                  Container(
                    padding: EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
