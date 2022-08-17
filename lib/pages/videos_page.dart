import 'package:chewie_tutorial/chewie_list_item_dart_page.dart'; //importando o proprio item de item mastigavel
import 'package:flutter/material.dart';
import 'package:sciencenotes/pages/chewie_list_item.dart';
import 'package:video_player/video_player.dart'; //player de video, porque estamos indo configurar o controlador do player de video

class VideosPage extends StatelessWidget {
  const VideosPage({Key? key}) : super(key: key);

  @override
  State<VideosPage> createState() => _VideosPage();
}

class _VideosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //barra de aplicativos
        title: Text('Video Player'),
      ),
      body: ListView(
        //para criar os itens de visualização de lista
        children: <Widget>[
          //filhos
          ChewieListItem(
            //listagem de itens (onde queremos colocar nossos videos)
            videoPlayerController: VideoPlayerController.asset(
              //configurando o player de video passando o que quisermos para ele para reproduzir
              'videos/IntroVideo.mp4', //video que queremos reproduzir
            ),
            looping:
                true, //para fazer um loop indefinidamente até que o interrompamos
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              //qualquer URL que contenha arquivos mp4
              'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              //mensagem de erro
              'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/error.mp4',
            ),
          ),
        ],
      ),
    );
  }
}
