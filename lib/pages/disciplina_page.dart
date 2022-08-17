import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sciencenotes/pages/resumo_page.dart';
import 'package:sciencenotes/pages/videos_page.dart';
import 'package:sciencenotes/pages/questoes_page.dart';
import 'package:sciencenotes/pages/inicial_page.dart';
import 'package:sciencenotes/domain/conteudo.dart';
import 'package:sciencenotes/pages/perfil_page.dart';

class Disciplina extends StatefulWidget {
  final Conteudo conteudo;

  const Disciplina({
    Key? key,
    required this.conteudo,
  }) : super(key: key);

  @override
  State<Disciplina> createState() => _DisciplinaState();
}

class _DisciplinaState extends State<Disciplina> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> _telas = [
      const Resumo(),
      VideosPage(),
      Questoes(conteudo: widget.conteudo),
      const Perfil(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.conteudo.titulo,
          style: const TextStyle(
              fontSize: 24, color: Colors.white, fontFamily: 'Staatliches'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: onPressedButton,
          ),
        ],
        backgroundColor: const Color(0xFFA7AED3),
      ),
      body: _telas[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: directionPage,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.deepPurple.shade50,
        selectedItemColor: Colors.deepPurple.shade200,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book_solid),
            label: 'Resumos',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.videocam_circle),
            label: 'Vídeos',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.pencil_circle),
            label: 'Questões',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }

  void directionPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void onPressedButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const InicialPage();
        },
      ),
    );
  }
}
