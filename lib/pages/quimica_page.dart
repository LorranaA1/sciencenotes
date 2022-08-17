import 'package:flutter/material.dart';
import 'package:sciencenotes/data/BD.dart';
import 'package:sciencenotes/widgets/card_conteudo.dart';
import 'package:sciencenotes/domain/conteudo.dart';
import 'package:sciencenotes/domain/questao.dart';
import 'package:sciencenotes/widgets/lista_conteudo.dart';

class QuimicaPage extends StatefulWidget {
  const QuimicaPage({Key? key}) : super(key: key);

  @override
  State<QuimicaPage> createState() => _QuimicaPageState();
}

class _QuimicaPageState extends State<QuimicaPage> {
  Future<List<Conteudo>> lista = BD.getListaQuimica();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFA7AED3),
        centerTitle: false,
        title: const Text(
          'Química',
          style: TextStyle(
              fontSize: 24, color: Colors.white, fontFamily: 'Staatliches'),
        ),
      ),
      backgroundColor: Colors.deepPurple.shade50,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.deepPurple.shade50,
          child: ListView(
            children: [
              buildListView(),
            ],
          ),
        ),
      ),
    );
  }

  buildListView() {
    return FutureBuilder<List<Conteudo>>(
      future: lista,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // ?? -> Verificar ser o conteudo de snapshot.data é nulo
          List<Conteudo> lista = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index) {
              return CardConteudo(conteudo: lista[index]);
            },
          );
        }

        return Center(child: const CircularProgressIndicator());
      },
    );
  }
}
