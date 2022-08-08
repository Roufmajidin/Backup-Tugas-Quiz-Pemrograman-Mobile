import 'package:flutter/material.dart';

class Saya extends StatefulWidget {
  const Saya({Key? key}) : super(key: key);

  @override
  State<Saya> createState() => _Saya();
}

class _Saya extends State<Saya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff020d1c),
      appBar: AppBar(title: Text('My Bio')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //user
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                child: Image(
                  image: AssetImage('assets/profile fix.jpg'),
                  width: 120.0,
                  
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Rouf Majid',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 18.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Palimanan, Cirebon",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Tanggal Lahir"),
                    subtitle: Text("1 April 2002"),
                  ),
                  Divider(),
                   ListTile(
                    leading: Icon(Icons.email_outlined),
                    title: Text("Email"),
                    subtitle: Text("Rouf Majidin777@gmail.com"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.task_alt),
                    title: Text("Jurusan"),
                    subtitle: Text("Teknik Informatika"),
                  )
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
