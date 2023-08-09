// ------------------------------ Esraa Elnajjar  ---------------------------------


import 'package:flutter/material.dart';
import 'package:online_groceries_app/widgets/CustomAddMinusButtonIcon.dart';

class CustomCartItem extends StatelessWidget {
  const CustomCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28.0, left: 10.0),
                child: Image.network(
                  "https://s3-alpha-sig.figma.com/img/10f6/d5b4/84482669b38064b6039c1e9dd1e416f7?Expires=1692576000&Signature=fPaXbnwWmfgfsJ~eXYWIJF~2WfpsLkXgpk4BO5LCrJxLlBfCmhmUdjLuoMq8nWGzHsKrudxyg8GSILtwOPUTI~BcwqEkKUOWQObMxPj00lbYQQSeqxrf5qwwoUdSb0MViMkO5bpT9lR41Qwx5s1Id84RzDpBi8M9h8jIVDqyb-7YW1eLIAQ-Xagz7BgzpuzS5CJ1fJvTqbnp3C-NpmfsuymDS6DPoqzzKGfSIYGs3OqGMC~U8lN1K7q7LYOzyKzozIAZAFF8cZzXDKesaJpvCYWV88JN900aLR-h81UTAvRLKafJQWXiaLyv4alUELU6W2bRb~GbaaiLYR-vBhHHfg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                  width: 86.74,
                  height: 86.74,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: const Text(
                          "Bell Pepper Red",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              fontFamily: 'Gilroy-Bold'),
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 32),
                        child: const Text(
                          "1Kg, Price",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF7C7C7C),
                              fontFamily: 'Gilroy-Bold'),
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        AddMinusButtonIcon(
                            icon: Icons.remove, color: Color(0xFF7C7C7C)),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "1",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Gilroy-Bold'),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        AddMinusButtonIcon(
                            icon: Icons.add, color: Color(0xFF8D070F)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 55,
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.close,
                        color: Color(0xFFB3B3B3),
                      )),
                  const SizedBox(
                    height: 48,
                  ),
                  const Text(
                    "\$4.99",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        fontFamily: 'Gilroy-Bold'),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(),
        ],
      ),
    );
  }
}
