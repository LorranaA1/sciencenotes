import 'package:flutter/material.dart';

class Resumo extends StatefulWidget {
  const Resumo({Key? key}) : super(key: key);

  @override
  State<Resumo> createState() => _ResumoState();
}

class _ResumoState extends State<Resumo> {
  late TextEditingController controller;
  final busca = ValueNotifier<String>('');

  @override
  void initState() {
    //inicializa o TextEditingController
    super.initState();
    controller = TextEditingController(text: '');
  }

  @override
  void dispose() {
    //destruindo o TextEditingControlle
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valuelistenableBuilder: busca,
      ),
    );
  }
}
