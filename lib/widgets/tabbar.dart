import 'package:flutter/material.dart';

PreferredSizeWidget customTabBar(BuildContext context) {
  double circleAvatarRadius = MediaQuery.of(context).size.width;
  return TabBar(
    isScrollable: true,
    indicatorColor: Colors.black,
    tabs: [
      Tab(
        icon: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.home_filled,
            color: Colors.black,
          ),
        ),
      ),
      buildTab(
        context,
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvN86vCVk2TjEbIu-RPf8fg8u8wSTf86uuEA&usqp=CAU',
        'Sale',
        circleAvatarRadius,
      ),
      buildTab(
          context,
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1GPQzRwesRR1qkKezfukGoN2LoPN-jAEo-A&usqp=CAU',
          'Winterwear',
          circleAvatarRadius),
      buildTab(
          context,
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBu5vG3bCtDg_jVLNvFWWicwEMXhHvNOZ4cw&usqp=CAU',
          'Men',
          circleAvatarRadius),
      buildTab(
          context,
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOAiRZnm7YjdxQhCScyX1ubwxvjRLv6jJ79Q&usqp=CAU',
          'Women',
          circleAvatarRadius),
      buildTab(
          context,
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRSmnZNL0tvlQREKIv7sbshoCTuvDxnIXp2Q&usqp=CAU',
          'Kids',
          circleAvatarRadius),
      buildTab(
          context,
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfuKNJNfukdS3qR0eLCtw8NTwm38IsSxn7yw&usqp=CAU',
          'Jewellery',
          circleAvatarRadius),
      buildTab(
          context,
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvsDlfpvFceIiODnAzsgnM5Xteqe1JaFajBQ&usqp=CAU',
          'Beauty',
          circleAvatarRadius),
      buildTab(
          context,
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaFbczhETJcu8OXd0U6DgGtXWhO5KNa1sVYg&usqp=CAU',
          'Footwear',
          circleAvatarRadius),
      buildTab(
          context,
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQFkBeTxrsEhBQLmrb_4i-81-pdInvmBdy0w&usqp=CAU',
          'Accessories',
          circleAvatarRadius),
    ],
  );
}

Tab buildTab(BuildContext context, String imageUrl, String label,
    double circleAvatarRadius) {
  return Tab(
    child: Row(
      children: [
        CircleAvatar(
          radius: MediaQuery.of(context).size.width * 0.03,
          backgroundColor: Colors.black,
          backgroundImage: NetworkImage(imageUrl),
        ),
        const SizedBox(width: 5),
        Text(
          label,
          style: const TextStyle(color: Colors.black),
        ),
      ],
    ),
  );
}
