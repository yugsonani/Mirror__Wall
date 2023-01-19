import 'package:flutter/material.dart';
import 'package:mirror/web.dart';

import 'global.dart';

class moviepage extends StatefulWidget {
  const moviepage({Key? key}) : super(key: key);

  @override
  State<moviepage> createState() => _moviepageState();
}

class _moviepageState extends State<moviepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Platform___Menu'),
        centerTitle: true,
      ),
      body: Card(
        child: ListView(
            children: Global.movieinfo
                .map(
                  (e) => Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => webpage()));
                        setState(() {
                          Global.weburl = '${e['url']}';
                        });
                      },
                      child: ListTile(
                        leading: Image.network(
                          '${e['image']}',
                          fit: BoxFit.cover,
                        ),
                        title: Text('${e['title']}'),
                      ),
                    ),
                  ),
                )
                .toList()),
      ),
      backgroundColor: Colors.black,
    );
  }
}
