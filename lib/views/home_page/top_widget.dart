import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*0.365,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage('assets/images/Intro.png',),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 37,
            ),
            Text(
              "Encontre o café perfeito para qualquer hora do dia",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 5),
                fillColor: Color(0XFF403937),
                filled: true,
                border: OutlineInputBorder(borderSide: BorderSide.none),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0XFF8D8686),
                ),
                hintText: "Pesquisar",
                hintStyle: TextStyle(
                  color: Color(0XFF8D8686),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
