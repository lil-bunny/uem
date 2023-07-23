//ListTile
//Card
//Container
//Scaffold
//Row Column Text
//FUNCTIONS
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  // String showMyName() {
  //   return 'Deb';
  // }

  void showMyName(String name, {nickname = ''}) {
    print(name + ' ' + nickname);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var imageList = [
      'https://images.genius.com/af4ac59ba9e3e8b0fe70d7c1156ff8f2.1000x1000x1.jpg',
      'https://m.media-amazon.com/images/I/71Dmo+FfyfS.jpg',
      'https://i.scdn.co/image/ab6761610000e5eb8bcc7c755fe5f1e3c97b641b'
    ];

    var songName = ['song 1', 'song 2', 'song 3'];

    Widget showMyMusic(String songName, String songImage,
        {color = Colors.amber}) {
      return Container(
        color: color,
        width: width,
        height: height * 0.1,
        child: ListTile(
          leading: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.pink,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(songImage
                        // 'https://images.genius.com/af4ac59ba9e3e8b0fe70d7c1156ff8f2.1000x1000x1.jpg'

                        ))),
          ),
          title: Text(songName),
          trailing: Icon(Icons.play_arrow_rounded),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              showMyMusic(songName[0], imageList[0], color: Colors.deepOrange),
              showMyMusic(songName[1], imageList[1], color: Colors.pink),
              showMyMusic(songName[2], imageList[2], color: Colors.red),
              showMyMusic(songName[0], imageList[0], color: Colors.deepOrange),
              showMyMusic(songName[1], imageList[1], color: Colors.pink),
              showMyMusic(songName[2], imageList[2], color: Colors.red),
              showMyMusic(songName[0], imageList[0], color: Colors.deepOrange),
              showMyMusic(songName[1], imageList[1], color: Colors.pink),
              showMyMusic(songName[2], imageList[2], color: Colors.red),
              // Stack(
              //   children: [
              //     Container(
              //       height: height * 0.2,
              //       width: width * 0.2,
              //       color: Colors.pink,
              //     ),
              //     Container(
              //       height: height * 0.1,
              //       width: width * 0.1,
              //       color: Colors.amber,
              //     ),
              //     Container(
              //       height: height * 0.1 / 2,
              //       width: width * 0.1 / 2,
              //       color: Colors.purple,
              //     ),
              //   ],
              // ),
              SizedBox(
                height: height * 0.2,
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 110,
                    backgroundColor: Colors.deepPurple,
                    child: CircleAvatar(
                      backgroundColor: Colors.amberAccent,
                      radius: 100,
                      backgroundImage: NetworkImage(
                          'https://webappstatic.buzzfeed.com/static/2017-08/9/6/asset/buzzfeed-prod-fastlane-02/anigif_sub-buzz-13286-1502274465-2.gif'),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      child: Icon(Icons.add, color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.1,
              ),
              // Stack(
              //   alignment: Alignment.topRight,
              //   children: [
              //     Icon(Icons.notifications, size: 100, color: Colors.white),
              //     CircleAvatar(
              //       child: Text('1'),
              //       backgroundColor: Colors.red,
              //     ),
              //     // CircleAvatar(
              //     //   child: Text('1'),
              //     //   radius: 10,
              //     //   backgroundColor: Colors.amber,
              //     // )
              //   ],
              // ),
              // SizedBox(
              //   height: height * 0.4,
              // ),

              ElevatedButton(
                  onPressed: () {
                    showMyName(
                      'Abc',
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber)),
                  child: Text(
                    'Click me',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
