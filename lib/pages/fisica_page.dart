import 'package:flutter/material.dart';
import 'package:sciencenotes/data/BD.dart';
import 'package:sciencenotes/widgets/card_conteudo.dart';
import 'package:sciencenotes/domain/conteudo.dart';
import 'package:sciencenotes/domain/questao.dart';
import 'package:sciencenotes/widgets/lista_conteudo.dart';

class FisicaPage extends StatefulWidget {
  const FisicaPage({Key? key}) : super(key: key);

  @override
  State<FisicaPage> createState() => _FisicaPageState();
}

class _FisicaPageState extends State<FisicaPage> {
  Future<List<Conteudo>> lista = BD.getListaFisica();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFA7AED3),
        centerTitle: false,
        title: const Text(
          'Física',
          style: TextStyle(
              fontSize: 24, color: Colors.white, fontFamily: 'Staatliches'),
        ),
      ),
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.blue.shade50,
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
