import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:sciencenotes/widgets/card_questao.dart';
import 'package:sciencenotes/domain/conteudo.dart';

class Questoes extends StatefulWidget {
  final Conteudo conteudo;

  const Questoes({
    Key? key,
    required this.conteudo,
  }) : super(key: key);

  @override
  State<Questoes> createState() => _QuestoesState();
}

class _QuestoesState extends State<Questoes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.pink.shade50,
      child: ListView(
        children: [
          CardQuestao(
            conteudo: widget.conteudo,
            indice: 0,
          ),
          const SizedBox(
            height: 2,
          ),
          CardQuestao(
            conteudo: widget.conteudo,
            indice: 1,
          ),
          const SizedBox(
            height: 2,
          ),
          CardQuestao(
            conteudo: widget.conteudo,
            indice: 2,
          ),
          const SizedBox(
            height: 2,
          ),
        ],
      ),
      // child: CarouselSlider.builder(
      //   itemCount: 3,
      //   itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
      //       Container(
      //         child: Text(itemIndex.toString()),
      //       ),
      // ),
    );
  }
}
