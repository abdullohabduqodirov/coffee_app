import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         SizedBox(
          height: MediaQuery.sizeOf(context).height*0.25,
        ),
        const Text(
          "Nossos Cafes",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color(0XFF574F4D),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(100),
                ),
                border: Border.all(
                  color: const Color(
                    0XFF8047F8,
                  ),
                ),
              ),
              child: const Text(
                "TRADICIONAIS",
                style: TextStyle(
                  color: Color(
                    0XFF4B2995,
                  ),
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: 56,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(100),
                ),
                border: Border.all(
                  color: const Color(
                    0XFF8047F8,
                  ),
                ),
              ),
              child: const Text(
                "DOCES",
                style: TextStyle(
                  color: Color(
                    0XFF4B2995,
                  ),
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: 74,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(100),
                ),
                border: Border.all(
                  color: const Color(
                    0XFF8047F8,
                  ),
                ),
              ),
              child: const Text(
                "ESPECIAIS",
                style: TextStyle(
                  color: Color(
                    0XFF4B2995,
                  ),
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Tradicionais",
          style: TextStyle(
            fontSize: 17,
            fontFamily: "Baloo2",
            fontWeight: FontWeight.w700,
            color: Color(
              0XFF8D8686,
            ),
          ),
        ),
      ],
    );
  }
}
