import 'package:flutter/material.dart';
import 'package:mirror/web.dart';

import 'global.dart';

class educationpage extends StatefulWidget {
  const educationpage({Key? key}) : super(key: key);

  @override
  State<educationpage> createState() => _educationpageState();
}

class _educationpageState extends State<educationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Education',
        ),
        centerTitle: true,
      ),
      body: Card(
        child: ListView(
            children: Global.educ
                .map(
                  (e) => Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const webpage()));
                        setState(() {
                          Global.weburl = '${e['url']}';
                          print("${Global.weburl}");
                        });
                      },
                      child: ListTile(
                        leading: Image.asset(
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
    );
  }
}
