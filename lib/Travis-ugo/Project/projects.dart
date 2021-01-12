import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 80,
            right: 80,
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProjectData(
                  love: port,
                  right: 'port loco_',
                  imageurl: 'download.jpg',
                  left: '',
                ),
                ProjectData(
                  love: klaws,
                  left: '_Portfolio  webApp',
                  imageurl: 'agro.jpg',
                  right: '',
                ),
                ProjectData(
                  love: world,
                  right: 'world of flutter_',
                  imageurl: 'black..jpg',
                  left: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectData extends StatelessWidget {
  final String right;
  final String imageurl;
  final String left;
  final Data love;

  const ProjectData({
    Key key,
    this.right,
    this.imageurl,
    this.left,
    @required this.love,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            right,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width / 23,
            ),
          ),
          GestureDetector(
            onTap: () {
              Data instance = love;
              Navigator.pushNamed(context, '/views', arguments: {
                'title': instance.title,
                'subtitle': instance.subtitle,
                'info': instance.info,
                'imageurl': instance.imageurl,
                'backgroundimage': instance.backgroundImage,
              });
            },
            child: Hero(
              tag: imageurl,
              child: Container(
                child: Image.asset(
                  'assets/$imageurl',
                  fit: BoxFit.fitWidth,
                ),
                height: MediaQuery.of(context).size.width * 0.21,
                width: MediaQuery.of(context).size.width * 0.57,
              ),
            ),
          ),
          Text(
            left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width / 23,
            ),
          ),
        ],
      ),
    );
  }
}

class Views extends StatefulWidget {
  @override
  _ViewsState createState() => _ViewsState();
}

class _ViewsState extends State<Views> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: data['imageurl'],
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     image: AssetImage('assets/${data['imageurl']}'),
                  //
                  //   ),
                  // ),
                  color: Colors.blue,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width / 3,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/${data['imageurl']}',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Text(data['title']),
                    Text(data['subtitle']),
                    SizedBox(height: 30),
                    Text(data['info']),
                    IconButton(
                      icon: Icon(MdiIcons.github),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 30.0,
                top: 30,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Close',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        letterSpacing: 0.5,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ScreenTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: Text(
        'holy molly',
        style: GoogleFonts.varelaRound(
          textStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 32,
            letterSpacing: 0.5,
            color: Colors.black54,
          ),
        ),
      ),
      duration: Duration(microseconds: 500),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (BuildContext context, double value, Widget child) {
        return Opacity(
          opacity: value,
          child: Padding(
            padding: EdgeInsets.only(top: value * 30),
            child: child,
          ),
        );
      },
    );
  }
}
