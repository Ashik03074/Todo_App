import 'package:flutter/material.dart';

InputDecoration AppInputDecoration(label) {
  return InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
      border: const OutlineInputBorder(),
      labelText: label);
}

ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(2),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ));
}

SizedBox sizedBox50(child) {
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      child: child,
    ),
  );
}
