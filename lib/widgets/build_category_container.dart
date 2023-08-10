import 'package:flutter/material.dart';

Row buildCategoryContainer(
    {required Color categoryColor1,
    required String categoryImage1,
    required String categoryName1,
    required Color categoryColor2,
    required String categoryImage2,
    required String categoryName2}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
          width: 200,
          height: 105,
          decoration: BoxDecoration(
              color: categoryColor1, borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Image.asset(categoryImage1),
              const SizedBox(
                width: 15,
              ),
              Text(
                categoryName1,
                style: const TextStyle(
                    color: Color(0xff3e423f),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          )),
      const SizedBox(
        width: 20,
      ),
      Container(
        width: 240,
        height: 105,
        decoration: BoxDecoration(
            color: categoryColor2, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Image.asset(categoryImage2),
            const SizedBox(
              width: 15,
            ),
            Text(
              categoryName2,
              style: const TextStyle(
                  color: Color(0xff3e423f),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      ),
      const SizedBox(width: 20),
    ],
  );
}
