import 'package:flutter/material.dart';

Row buildRow({
  required String boldText,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(boldText,
          style: const TextStyle(
              color: Color(0xff181725),
              fontWeight: FontWeight.bold,
              fontFamily: "Gilroy",
              fontSize: 24)),
      const Spacer(),
      const Text(
        "See all",
        style: TextStyle(color: Color(0xFF8D070F), fontSize: 16),
      )
    ],
  );
}
