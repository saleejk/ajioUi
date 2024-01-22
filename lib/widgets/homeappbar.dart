import 'package:ajio/screens/notifications.dart';
import 'package:ajio/widgets/tabbar.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget buildAppBar(BuildContext context) {
  return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: DefaultTabController(
        length: 10,
        child: CommonAppBar(elevationn: elevationn),
      ));
}

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({super.key, required this.elevationn});
  final double elevationn;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 10,
      backgroundColor: Colors.white,
      title: Column(
        children: [
          Container(
            color: const Color.fromARGB(13, 8, 3, 3),
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                const Image(
                  image: AssetImage('assets/ajio.png'),
                  width: 40,
                  height: 40,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search by product, brand...',
                      border: InputBorder.none),
                )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                    )),
                const SizedBox(
                  width: 8,
                )
              ],
            ),
          )
        ],
      ),
      bottom: customTabBar(context),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                return const Notifications();
              }));
            },
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
            )),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
