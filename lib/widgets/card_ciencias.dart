import 'package:flutter/material.dart';
import 'package:helloworld/pages/fisica_page.dart';

class CardCiencias extends StatefulWidget {
  final String nomeCiencias;
  final String imagemCiencias;
  final Color corCard;
  final Color corBotao;
  final Function page_direction;

  const CardCiencias({
    Key? key,
    required this.nomeCiencias,
    required this.imagemCiencias,
    required this.corCard,
    required this.corBotao,
    required this.page_direction,
  }) : super(key: key);

  @override
  State<CardCiencias> createState() => _CardCienciasState();
}

class _CardCienciasState extends State<CardCiencias> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: widget.corCard,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.nomeCiencias,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black,
                  fontFamily: 'Abel-Regular',
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Resumo',
                          style: TextStyle(
                              fontSize: 24, fontFamily: 'Abel-Regular'),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Equações',
                          style: TextStyle(
                              fontSize: 24, fontFamily: 'Abel-Regular'),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Aplicação',
                          style: TextStyle(
                              fontSize: 24, fontFamily: 'Abel-Regular'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 24.0),
                  Column(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.network(widget.imagemCiencias),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: widget.corBotao),
                        onPressed: () => widget.page_direction(),
                        child: const Text(
                          'Visualizar',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: 'AmaticSC-Regular'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
