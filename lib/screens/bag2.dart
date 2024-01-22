import 'package:flutter/material.dart';

class ScreenBag2 extends StatelessWidget {
  const ScreenBag2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 229, 229),
      appBar: AppBar(
          title: const Column(
              children: [SizedBox(height: 20), Text('Bag (1 Product)')]),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_border)),
            const SizedBox(width: 15)
          ],
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(80),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                    child: Image(
                  image: AssetImage('assets/bag.jpg'),
                  height: 60,
                  width: double.infinity,
                ))
              ]))),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 224, 168, 164),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(children: [
                                    Icon(Icons.dangerous),
                                    Text(' 1 Product Unavailable',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700))
                                  ])))),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Image(
                                  image: AssetImage(
                                      'assets/cataccessory-removebg-preview.png'),
                                  width: 160),
                              const Text('Sold out',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 211, 190, 3))),
                              const SizedBox(height: 7),
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    side:
                                        const BorderSide(color: Colors.white)),
                                onPressed: () {},
                                child: const Text(
                                  'Show Similar',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 7, 82, 139),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 5)
                            ],
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Sketchers DI',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              const Text(
                                  'Track-Maulton Lace-Up Casual Ornaments'),
                              const SizedBox(height: 30),
                              const Text(
                                '₹3,549.00',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 30),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const SizedBox(width: 190),
                                    OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            side: const BorderSide(
                                                color: Colors.white)),
                                        onPressed: () {},
                                        child: const Text(
                                          'Remove',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 7, 82, 139),
                                              fontWeight: FontWeight.bold),
                                        ))
                                  ])
                            ])
                      ])
                    ]))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              const Image(
                                  image: AssetImage('assets/wishlist.jpg'),
                                  width: 160),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text('In Stock')),
                              const SizedBox(height: 1),
                              OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          color: Colors.white)),
                                  onPressed: () {},
                                  child: const Text(
                                    'Show Similar',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 7, 82, 139),
                                        fontWeight: FontWeight.bold),
                                  )),
                              const SizedBox(height: 5)
                            ])),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'NETPLAY',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Text('Reguler-Fit Short Sleeve'),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              '₹320.00',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  width: 190,
                                ),
                                OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        side: const BorderSide(
                                            color: Colors.white)),
                                    onPressed: () {},
                                    child: const Text(
                                      'Remove',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 7, 82, 139),
                                          fontWeight: FontWeight.bold),
                                    ))
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: const SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Order payment Details',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Amount',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '₹4,999.00',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Saving',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '- ₹1,450.00',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 40, 126, 43),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Delivery fee',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 128, 126, 126)),
                              ),
                              Text(
                                ' ₹Free',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 40, 126, 43),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 169, 216, 255),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Cheers!'),
                    Text(
                      'You Saved ₹1,549.00',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    children: [
                      Text(
                        '₹3,549.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'View details',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 111,
                  ),
                  Expanded(
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide.none,
                            backgroundColor:
                                const Color.fromARGB(255, 228, 222, 222),
                            shape: RoundedRectangleBorder(
                              //  side: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(
                                5,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(11.0),
                            child: Text(
                              'proceed to payment',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 129, 129, 129)),
                            ),
                          ))),
                  const SizedBox(
                    width: 5,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
