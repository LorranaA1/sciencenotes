import 'package:flutter/material.dart';
import 'package:sciencenotes/pages/biologia_page.dart';
import 'package:sciencenotes/widgets/card_ciencias.dart';
import 'package:sciencenotes/pages/fisica_page.dart';
import 'package:sciencenotes/pages/quimica_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xFFA7AED3),
        title: const Text(
          'Sciences Notes',
          style: TextStyle(
              fontSize: 24, color: Colors.white, fontFamily: 'Staatliches'),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CardCiencias(
              corBotao: Colors.blue.shade200,
              corCard: Colors.blue.shade100,
              nomeCiencias: 'Física',
              imagemCiencias: 'https://i.ibb.co/5Ff9kVX/1655761311860.png',
              page_direction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const FisicaPage();
                    },
                  ),
                );
              },
            ),
            CardCiencias(
              corBotao: Colors.deepPurple.shade200,
              corCard: Colors.deepPurple.shade100,
              nomeCiencias: 'Química',
              imagemCiencias: 'https://i.ibb.co/mBhmBFy/1655761232564.png',
              page_direction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const QuimicaPage();
                    },
                  ),
                );
              },
            ),
            CardCiencias(
              corBotao: Colors.green.shade200,
              corCard: Colors.green.shade100,
              nomeCiencias: 'Biologia',
              imagemCiencias: 'https://i.ibb.co/Yc1Q9dW/1655760878844.png',
              page_direction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const BiologiaPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
