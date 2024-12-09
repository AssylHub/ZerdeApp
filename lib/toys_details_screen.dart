import 'package:flutter/material.dart';
import 'common.dart';
import 'toys.dart';

class ToysDetailsScreen extends StatelessWidget {

  final Toys toy;



  const ToysDetailsScreen({required this.toy});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
        // leading: Icon(Icons.fork_left),
        title: Text(toy.toyName.toString()),
        actions: [Icon(Icons.card_travel)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 500,
              height: 300,
              child: Image.asset(toy.toyImage.toString()),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  toy.toyName.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Text("00${toy.toyIndex}"),
                Text(
                  "₸ ${toy.toyPrice}",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.blue.shade900,
                  ),
                ),
                const Text(
                  "356 сатылады",
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 35,
                  width: 150,
                    child: Button(
                  text: Text("Себетке қосу", style: TextStyle(color: Colors.white),),
                  backgroundColor: Colors.blue.shade900,
                  foregroundColor: Colors.white,
                )),
                const SizedBox(
                  height: 20,
                ),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis ")
              ],
            )),
          ],
        ),
      ),
    );
  }
}
