import 'package:flutter/material.dart';
import 'package:sciencenotes/domain/questao.dart';

class Conteudo {
  final String imagem;
  final String titulo;
  final String resumo;
  final String aplicacao;
  final String equacao;
  final Color corBotao;
  final Color corConteudo;
  final List<Questao> questao;

  Conteudo({
    required this.imagem,
    required this.titulo,
    required this.resumo,
    required this.aplicacao,
    required this.equacao,
    required this.corBotao,
    required this.corConteudo,
    required this.questao,
  });
}
