import 'package:flutter/material.dart';

AppBar buildAppBar(String title) {
  return AppBar(
    title: Center(
      child: Text(
        title,
      ),
    ),
  );
}
