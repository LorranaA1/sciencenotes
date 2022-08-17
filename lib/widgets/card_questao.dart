import 'package:flutter/material.dart';
import 'package:helloworld/domain/conteudo.dart';

class CardQuestao extends StatefulWidget {
  final Conteudo conteudo;
  final int indice;

  const CardQuestao({
    Key? key,
    required this.conteudo,
    required this.indice,
  }) : super(key: key);

  @override
  State<CardQuestao> createState() => _CardQuestaoState();
}

class _CardQuestaoState extends State<CardQuestao> {
  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        color: widget.conteudo.questao[widget.indice].corQuestao,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.conteudo.questao[widget.indice].banca,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                widget.conteudo.questao[widget.indice].pergunta,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = 2;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: Text(widget.conteudo.questao[widget.indice].alt1)),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = 2;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: Text(widget.conteudo.questao[widget.indice].alt2)),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = 3;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: Text(widget.conteudo.questao[widget.indice].alt3)),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Radio(
                    value: 4,
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = 4;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: Text(widget.conteudo.questao[widget.indice].alt4)),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Radio(
                    value: 5,
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = 5;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: Text(widget.conteudo.questao[widget.indice].alt5)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
