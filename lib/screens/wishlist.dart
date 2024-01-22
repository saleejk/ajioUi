import 'package:ajio/screens/bag2.dart';

import 'package:flutter/material.dart';

class ScreenWishlist extends StatelessWidget {
  const ScreenWishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const ScreenBag2();
                    }));
                  },
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                  )),
              const SizedBox(
                width: 14,
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 10,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/wishlist.jpg',
                          width: 150,
                        ),
                        const Text("NETPLAY"),
                        const Text(
                          "Regular Fit Short-Sleeve",
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 185, 184, 184),
                              fontSize: 12),
                        ),
                        const Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '₹320 ',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              '₹799',
                              style: TextStyle(
                                  fontSize: 13,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text(
                              ' 72%off',
                              style: TextStyle(fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              child: const Icon(Icons.delete),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (ctx) {
                                    return const ScreenBag2();
                                  }));
                                },
                                icon: const Icon(Icons.shopping_bag),
                                label: const Text('Add to Bag'))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
