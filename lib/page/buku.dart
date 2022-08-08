import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:bismillah_quiz_pemrograman/page/detail_data.dart';

class Buku extends StatefulWidget {
  const Buku({ Key? key }) : super(key: key);

  @override
  State<Buku> createState() => _Buku();
}

class _Buku extends State<Buku> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
       
        title: new Text("E-book", style: new TextStyle(color: Colors.black12),),
      ),
      
      body: ListView(
        
        children: <Widget>[
          new ListBuku(
            gambar:
                "assets/kata.jpg",
            judul: "Senja & Pagi",
          ),
          new ListBuku(
            gambar:
                "assets/senja.jpg",
            judul: "Senja & Pagi",
          ),
           new ListBuku(
            gambar:
                "assets/pbo.png",
            judul: "Pemrograman Objek",
          ),
         new ListBuku(
            gambar:
                "assets/psikologi.jpg",
            judul: "Pikologi",
          ),
          
    
          
          // new ListBuku(
          //   gambar:
          //       "https://i.pinimg.com/474x/0a/6a/1b/0a6a1b73f739b7be43991df089e3bcea.jpg",
          //   judul: "Bintang tak Lagi Menanti Senja",
          // ),
         
        ],
      ),
    );
  }
}

class ListBuku extends StatelessWidget {
  ListBuku({required this.gambar, required this.judul});

  final String gambar;
  final String judul;
  int currentTab = 2;
  final List<Widget> screens = [
 
    Detail_data(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: new EdgeInsets.all(
          20.0,
        ),
        child: new Center(
          child: new Row(
            children: <Widget>[
              new Image(
                image: new AssetImage(gambar),
                width: 100.0,
              ),
              new Container(
                padding: new EdgeInsets.all(20.0),
                child: new Center(
                    child: new Column(
                  children: <Widget>[
                    new Text(
                      judul,
                      
                      style: new TextStyle(fontSize: 15.0),
                    ),
                    new Text(
                      "ini deksripsi .................",
                      style: new TextStyle(fontSize: 15.0, color: Colors.amber),
                    ),
                    
                  
                  ],
                )),
              ),
             IconButton(onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Detail_data()
              ),
              );
              
             }, icon: Icon(Icons.arrow_circle_left_sharp))
              
              
              
            ],
          ),
        ));
  }
}