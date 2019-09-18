import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget{
  DetailScreen ({this.namaMakanan, this.detailMakanan, this.gambarMakanan});
  final String namaMakanan;
  final String detailMakanan;
  final String gambarMakanan;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 240.0,
            child: new Hero(tag: namaMakanan, child: new Material(
              child: new InkWell(
                child: new Image.asset("images/$gambarMakanan",
                  fit: BoxFit.cover,),
              ),
            )
            ),
          ),
          new aNamaMakanan(
            namaVar: namaMakanan,
          ),
          new DetailMakananPage(
            detailMakanan: detailMakanan,
          )
        ],
      ),
    );
  }
}


class DetailMakananPage extends StatelessWidget {
  DetailMakananPage ({this.detailMakanan});
  final String detailMakanan;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(padding: const EdgeInsets.all(10.0),
          child: new Text(detailMakanan,
            style: new TextStyle(fontSize: 18.0),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}

class aNamaMakanan extends StatelessWidget {
  aNamaMakanan ({this.namaVar});
  final String namaVar;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(namaVar, style: new TextStyle(fontSize: 20.0, color: Colors.black),
              ),
              new Text("", style: new TextStyle(fontSize: 19.0, color: Colors.blue),
              ),
            ],
          ),
          ),
          new Row(
            children: <Widget>[
              new Icon(Icons.star, size: 35.0, color: Colors.yellow,),
              new Text("5", style: new TextStyle(fontSize: 17.0),
              )
            ],
          )
        ],
      ),
    );
  }
}