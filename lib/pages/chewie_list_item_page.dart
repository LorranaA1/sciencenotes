import 'package:chewie_tutorial/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ChewieListItem extends StatefulWidget {
  //widget stateful porque queremos obter a função de descarte
  //instancia de controlador
  //contem o URL ou caminho
  final VideoPlayerController videoPlayerController;
  //onde queremos fazer o loop
  final bool looping;

  ChewieListItem({
    //passando por parametro
    @required
        this.videoPlayerController, //sem isso nao seremos capazes de reproduzir nenhum video
    this.looping, //o loop nao precisa ser obrigatorio, porque nao importa se é falso ou verdadeiro, os videos ainda poderão ser reproduzidos
    Key? key,
  }) : super(key: key);

  @override
  _ChewieListItemState createState() => _ChewieListItemState();
}

class _ChewieListItemState extends State<ChewieListItem> {
  //criando um estado de item de lista
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      //configuramos o controlador para uma nova instancia
      videoPlayerController: widget
          .videoPlayerController, //Essa é uma classe real e nessa classe queremos configurar o controlador do player de video para ser o controlador do player de video que é passado para o widget stateful de algum outro lugar em nosso codigo
      aspectRatio: 16 / 9, //proporcao do video
      autoInitialize:
          true, //inicializacao automatica | se for falso, quando iniciarmos, veremos apenas a cor escura onde deve haver um video
      looping: widget
          .looping, //usamos o campo de loop do widget para que possamos fazer ou nao um loop do video
      errorBuilder: (context, errorMessage) {
        //construtor de erros no controlador do chewie leva em um contexto de compilacao um erro ou mensagem - para o caso de uma URL ser invalida
        return Center(
          //retornamos qualquer tipo de widget deste construtor de erros
          child: Text(
            //texto central
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //funcao de construcao | retorna um widget
    return Padding(
      //envolvemos o controlador dentro de um preenchimento
      padding: const EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController, //controlador
      ),
    );
  }

  @override
  void dispose() {
    //funcao de descarte
    super.dispose();
    widget.videoPlayerController
        .dispose(); //para nos livramos dos recursos desnecessários do controlador do player de video
    _chewieController
        .dispose(); //para nos livramos dos recursos desnecessários do controlador que é criado dentro dessa classe de estado
  }
}
