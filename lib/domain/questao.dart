import 'package:flutter/material.dart';

class Questao {
  final String banca;
  final String pergunta;
  final String alt1;
  final String alt2;
  final String alt3;
  final String alt4;
  final String alt5;
  final Color corQuestao;
  //final Color corBotao;
  //final Color corConteudo;

  Questao({
    required this.banca,
    required this.pergunta,
    required this.alt1,
    required this.alt2,
    required this.alt3,
    required this.alt4,
    required this.alt5,
    required this.corQuestao,
    //required this.corConteudo,
  });
}
