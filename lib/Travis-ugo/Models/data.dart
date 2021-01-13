import 'package:flutter/cupertino.dart';

class Data {
  final String title;
  final String subtitle;
  final String info;
  final String imageurl;
  final String backgroundImage;

  Data({
    @required this.title,
    @required this.info,
    @required this.imageurl,
    @required this.subtitle,
    @required this.backgroundImage,
  });
}

final Data port = Data(
  title: 'Travis_ugo',
  subtitle: 'Travis_ugo Portfolio webApp',
  info:
      'this is a personal portfolio webapp developed with flutter to show case my develpomebt skills',
  imageurl: 'download.jpg',
  backgroundImage: 'download.jpg',
);
final Data klaws = Data(
  title: 'Telegram Bot',
  subtitle: 'Telegram FX forwarder',
  info: 'A telegram forex signal forwarder',
  imageurl: 'agro.jpg',
  backgroundImage: 'agro.jpg',
);

final Data world = Data(
  title: 'World News App',
  subtitle: 'World News app',
  info:
      'A world new app developed woth flutter\nuses the new api to get news information from\nall over  the world',
  imageurl: 'black..jpg',
  backgroundImage: 'black..jpg',
);

final Data soccer = Data(
  title: 'Sport News App',
  subtitle: 'Sport News app',
  info:
      'Sport news app to get sport news using the sky news sport API to get data',
  imageurl: 'net.jpg',
  backgroundImage: 'net.jpg',
);