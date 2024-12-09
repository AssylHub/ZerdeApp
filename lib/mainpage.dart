import 'package:demo2/common.dart';
import 'package:demo2/toys_details_screen.dart';
import 'package:flutter/material.dart';
import 'toys.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    void navigateToy(index) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ToysDetailsScreen(toy: toys[index])));
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.person),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Tirkelu(
            label: Text("Іздеу"),
            hintText: "Іздеңіз",
            suffixIcon: Icon(Icons.search),
            paddingNum: const EdgeInsets.symmetric(horizontal: 10),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: toys.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Card(
                        // color: Colors.white,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            // borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 160,
                                height: 120,
                                child: Image.asset(toys[index].toyImage),
                              ),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    toys[index].toyName,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("#00${index + 1}"),
                                  Text(
                                    "₸ ${toys[index].toyPrice}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                      color: Colors.blue.shade900,
                                    ),
                                  ),
                                  const Text(
                                    "356 сатылады",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              )),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 1,
                                  ),
                                  IconButton(
                                      style: IconButton.styleFrom(
                                          backgroundColor:
                                              Colors.blue.shade900),
                                      onPressed: () => navigateToy(index),
                                      icon: const Icon(
                                        Icons.add,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
