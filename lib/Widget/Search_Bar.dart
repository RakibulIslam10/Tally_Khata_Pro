import 'package:flutter/material.dart';

searchBar() {
  return Expanded(
      child: SizedBox(
    height: 45,
    child: TextFormField(
      decoration: const InputDecoration(
          hintText: "খোঁজ", prefixIcon: Icon(Icons.search)),
    ),
  ));
}
