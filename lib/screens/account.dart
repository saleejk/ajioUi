import 'package:ajio/screens/notifications.dart';
import 'package:flutter/material.dart';

class ScreenAccount extends StatelessWidget {
  const ScreenAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('My Account'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, top: 10),
            width: double.infinity,
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 60,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 61,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black)),
                      onPressed: () {},
                      child: const Text(
                        "SignIn/Join",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.white,
            child: ListView.separated(
                itemBuilder: (ctx, index) {
                  String title = '';
                  if (index == 0) {
                    title = 'Customer Care';
                  } else if (index == 1) {
                    title = 'invite friends & Earn';
                  } else if (index == 2) {
                    title = 'coupen quest';
                  } else if (index == 3) {
                    return Column(
                      children: [
                        Container(
                            height: 10,
                            color: const Color.fromARGB(255, 201, 195, 195)),
                        ListTile(
                          title: const Text(
                            "Notifications",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => const Notifications()));
                          },
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_right)),
                        ),
                        Container(
                          color: const Color.fromARGB(255, 201, 195, 195),
                          height: 10,
                        )
                      ],
                    );
                  } else if (index == 4) {
                    title = "return Creation Demo";
                  } else if (index == 5) {
                    title = 'how to return';
                  } else if (index == 6) {
                    title = 'how to redeem My Coupon';
                  } else if (index == 7) {
                    title = 'Terms & Conditions';
                  } else if (index == 8) {
                    title = 'promotions Terms & conditions';
                  } else if (index == 9) {
                    title = 'Refunds and return policy';
                  } else if (index == 10) {
                    title = 'We Respect Your Policy';
                  } else if (index == 11) {
                    title = 'fees and payment';
                  } else if (index == 12) {
                    title = 'Who We Are';
                  } else if (index == 13) {
                    title = 'Join Our Team';
                  }
                  return ListTile(
                    title: Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    trailing: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.arrow_right)),
                  );
                },
                separatorBuilder: (ctx, index) {
                  return const Divider();
                },
                itemCount: 14),
          ))
        ],
      ),
    ));
  }
}
