import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  String activeButton = 'All';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 234, 234),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
            titleSpacing: 0,
            title: const Padding(
              padding: EdgeInsets.only(
                top: 15,
              ),
              child: Column(
                children: [
                  Text(
                    'Notifications',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(48),
                child: Row(
                  children: [
                    Expanded(
                        child: OutlinedButton(
                            // style: ButtonStyle(
                            //   foregroundColor:
                            //       MaterialStateProperty.all(Colors.black),
                            //   backgroundColor:
                            //       MaterialStateProperty.all(Colors.blue[200]),
                            // ),
                            onPressed: () {
                              setState(() {
                                activeButton = 'All';
                              });
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: activeButton == 'All'
                                  ? Colors.black
                                  : Colors.white,
                              side: const BorderSide(width: 1),
                            ),
                            child: Text(
                              'All',
                              style: TextStyle(
                                color: activeButton == 'All'
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ))),
                    Expanded(
                        child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                activeButton = 'Order Updates';
                              });
                            },
                            style: OutlinedButton.styleFrom(
                                backgroundColor: activeButton == 'Order Updates'
                                    ? Colors.black
                                    : Colors.white,
                                side: const BorderSide(width: 1)),
                            child: Text(
                              'Order Updates',
                              style: TextStyle(
                                color: activeButton == 'Order Updates'
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ))),
                    Expanded(
                        child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                activeButton = 'Promotions';
                              });
                            },
                            style: OutlinedButton.styleFrom(
                                backgroundColor: activeButton == 'Promotions'
                                    ? Colors.black
                                    : Colors.white,
                                side: const BorderSide(width: 1)),
                            child: Text(
                              'Promotions',
                              style: TextStyle(
                                  color: activeButton == 'Promotions'
                                      ? Colors.white
                                      : Colors.black),
                            )))
                  ],
                )),
          )),
      body: Container(
        color: Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.all(0.8),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 100,
                child: ListTile(
                  title: const Text('👉 Buda Jeans 👉Fyre Rose'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Under ₹599: Sale Ends Tommorow'),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                    width: 2,
                                  )),
                                  onPressed: () {},
                                  child: const Text(
                                    'Shop Now',
                                    style: TextStyle(color: Colors.black),
                                  )))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
