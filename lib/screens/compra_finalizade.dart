
import 'package:flutter/material.dart';

import 'home_screen.dart';

class CompraFinalizade extends StatelessWidget {
  const CompraFinalizade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage(
              'assets/images/Illustration.png',
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Uhu! Pedido confirmado',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: Color(0xffC47F17),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Agora é só aguardar que logo o café\n                   chegará até você!',
            style: TextStyle(
              fontSize: 19,
              color: Color(0xff403937),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
            width: 250,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff4B2995),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: const Text(
                'IR PARA A HOME',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
