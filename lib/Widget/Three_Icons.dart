import 'package:flutter/material.dart';

threeIcons() {
  return Row(
    children: [
      Column(
        children: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.filter_list_sharp)),
          const Text("ফিল্টার"),
        ],
      ),
      const SizedBox(width: 10),
      Column(
        children: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.qr_code_outlined)),
          const Text("QR কোড"),
        ],
      ),
      const SizedBox(width: 10),
      Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_active_outlined)),
          const Text("তাগাদা"),
        ],
      ),
    ],
  );
}
