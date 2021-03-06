import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

// class HomeMobileRedesign extends StatefulWidget {
//   @override
//   _HomeMobileRedesignState createState() => _HomeMobileRedesignState();
// }

// class _HomeMobileRedesignState extends State<HomeMobileRedesign> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Color(0xFF0B0D0F),
//         body: Stack(
//           children: [
//             SingleChildScrollView(
//               child: Container(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: MediaQuery.of(context).size.height,
//                       width: MediaQuery.of(context).size.width,
//                       // decoration: BoxDecoration(
//                       //   image: DecorationImage(
//                       //     image: AssetImage('assets/backdrop.jpeg'),
//                       //     fit: BoxFit.fill,
//                       //   ),
//                       // ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 50),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             SizedBox(height: 100),
//                             Text(
//                               'Hello.\nI am\nTravis',
//                               style: GoogleFonts.montserrat(
//                                 textStyle: TextStyle(
//                                   fontSize: 82,
//                                   color: mainColor,
//                                   letterSpacing: 1.5,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ),
//                             Row(
//                               children: [
//                                 Container(
//                                   height: 50,
//                                   width: 50,
//                                   color: Colors.white,
//                                 ),
//                                 SizedBox(width: 10),
//                                 Text(
//                                   'Mobile Developer\nUX/UI Designer\nWebDeveloper',
//                                   textAlign: TextAlign.left,
//                                   style: GoogleFonts.montserrat(
//                                     textStyle: TextStyle(
//                                       fontSize: 18,
//                                       color: Color(0xFFEBEBEB),
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 35,
//                             ),
//                             Container(
//                               height: 260,
//                               width: 260,
//                               child: Center(
//                                 child: Text(
//                                   'Contact',
//                                   style: TextStyle(
//                                     color: Colors.grey,
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(160),
//                                 border:
//                                     Border.all(color: Colors.white, width: 0.2),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 35),
//                     Container(
//                       // decoration: BoxDecoration(
//                       //   image: DecorationImage(
//                       //     image: AssetImage('assets/backdrop.jpeg'),
//                       //     fit: BoxFit.fill,
//                       //   ),
//                       // ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             'YOUNG AND CREATIVE',
//                             style: TextStyle(
//                               color: Color(0xFFEBEBEB),
//                               fontWeight: FontWeight.w400,
//                               letterSpacing: 0.5,
//                               fontSize: 12,
//                             ),
//                           ),
//                           SizedBox(height: 50),
//                           Text(
//                             'Consistency is all i need to Hard work\nwill do the magic and Practice',
//                             style: TextStyle(
//                               color: Color(0xFFEBEBEB),
//                               fontWeight: FontWeight.w400,
//                               letterSpacing: 0.5,
//                               fontSize: 20,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                           SizedBox(height: 20),
//                           Text(
//                             'Consistency is all i need to succed\nHard work and Practice will do the magic\nHard work and Practice ',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               color: Color(0xFFEBEBEB),
//                               fontWeight: FontWeight.w300,
//                               letterSpacing: 0.3,
//                               fontSize: 14,
//                             ),
//                           ),
//                           // SizedBox(
//                           //   height: MediaQuery.of(context).size.height / 80,
//                           // ),
//                           SizedBox(height: 150),
//                           RecentWork(),
//                           SizedBox(height: 70),
//                           MobilePin(),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 20),
//               child: MenuMobile(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(MdiIcons.email),
          color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
          iconSize: 14,
          onPressed: () async => await launch(
              Uri.parse('https://twitter.com/Travis86622225').toString()),
        ),
        IconButton(
          icon: Icon(MdiIcons.twitter),
          color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
          iconSize: 14,
          onPressed: () async => await launch(
              Uri.parse('https://twitter.com/Travis86622225').toString()),
        ),
        IconButton(
          icon: Icon(MdiIcons.github),
          color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
          iconSize: 14,
          onPressed: () async => await launch(
              Uri.parse('https://github.com/Travis-ugo').toString()),
        ),
        IconButton(
          icon: Icon(MdiIcons.linkedin),
          color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
          iconSize: 14,
          onPressed: () async => await launch(Uri.parse(
                  'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
              .toString()),
        ),
      ],
    );
  }
}

class RecentWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Recent\nWork',
            textAlign: TextAlign.center,
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                fontSize: 42,
                color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/projects');
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 2.3,
              height: MediaQuery.of(context).size.height / 16,
              decoration: BoxDecoration(
                border: Border.all(
                  color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'View Recent work',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color:
                            (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
                    thickness: 1,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MobilePin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height / 4.5,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Travis Okonicha ugochukwu'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(MdiIcons.email),
                color: Colors.black,
                iconSize: 16,
                onPressed: () async {
                  await launch(Uri.parse('https://twitter.com/Travis86622225')
                      .toString());
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 15),
              IconButton(
                icon: Icon(MdiIcons.twitter),
                color: Colors.black,
                iconSize: 16,
                onPressed: () async {
                  await launch(Uri.parse('https://twitter.com/Travis86622225')
                      .toString());
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 15),
              IconButton(
                icon: Icon(MdiIcons.github),
                color: Colors.black,
                iconSize: 16,
                onPressed: () async {
                  await launch(
                      Uri.parse('https://github.com/Travis-ugo').toString());
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 15),
              IconButton(
                icon: Icon(MdiIcons.linkedin),
                color: Colors.black,
                iconSize: 16,
                onPressed: () async {
                  await launch(Uri.parse(
                          'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
                      .toString());
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 15),
              IconButton(
                icon: Icon(MdiIcons.twitter),
                color: Colors.black,
                iconSize: 16,
                onPressed: () async {
                  await launch(Uri.parse('https://twitter.com/Travis86622225')
                      .toString());
                },
              ),
            ],
          ),
          Text('version 2.1'),
          Text('. . .'),
        ],
      ),
    );
  }
}

class DesktopPin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height / 2.5,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Travis Okonicha ugochukwu',
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0xFF303030),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(MdiIcons.email),
                color: Colors.black,
                iconSize: 14,
                onPressed: () async {
                  await launch(Uri.parse('https://twitter.com/Travis86622225')
                      .toString());
                },
              ),
              IconButton(
                icon: Icon(MdiIcons.twitter),
                color: Colors.black,
                iconSize: 14,
                onPressed: () async {
                  await launch(Uri.parse('https://twitter.com/Travis86622225')
                      .toString());
                },
              ),
              IconButton(
                icon: Icon(MdiIcons.github),
                color: Colors.black,
                iconSize: 14,
                onPressed: () async {
                  await launch(
                      Uri.parse('https://github.com/Travis-ugo').toString());
                },
              ),
              IconButton(
                icon: Icon(MdiIcons.linkedin),
                color: Colors.black,
                iconSize: 14,
                onPressed: () async {
                  await launch(Uri.parse(
                          'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
                      .toString());
                },
              ),
              IconButton(
                icon: Icon(MdiIcons.twitter),
                color: Colors.black,
                iconSize: 14,
                onPressed: () async {
                  await launch(Uri.parse('https://twitter.com/Travis86622225')
                      .toString());
                },
              ),
            ],
          ),
          Text(
            'version 2.1',
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0xFF303030),
              ),
            ),
          ),
          Text('. . .'),
        ],
      ),
    );
  }
}
