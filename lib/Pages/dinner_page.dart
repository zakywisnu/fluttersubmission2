import 'package:flutter/material.dart';
import '../detail_screen.dart';

class DinnerPage extends StatefulWidget{
  @override
  mainState createState() => new mainState();

}
class mainState extends State<DinnerPage> {
  List<Container> listMakanan = new List();

  var makanMalam = [
    {"nama" : "Tumis Bayam", "detail" : "Tumis Bayam adalah masakan dengan menggunakan sedikit minyak dan api besar dengan menggunakan bahan bayam", "gambar" : "tumisbayam.jpg"},
    {"nama" : "Sayur Sop", "detail" : "Sup atau sop adalah masakan berkuah dari kaldu yang dibuat dengan cara mendidihkan bahan bisa berupa daging atau ayam untuk membuat kuah kaldu, dan biasanya diberi bumbu serta bahan lainnya untuk menambah rasa.", "gambar" : "sayursop.jpg"},
    {"nama" : "Udang Goreng", "detail" : "Ciri khas udang goreng tepung jepang ini terletak pada adonan kulitnya. Udang tempura  ini tidak menggunakan air dalam tepung pelapisnya. Sehingga hasilnya, kulit tepung akan tampak keriting bertekstur mirip nugget setelah di goreng. Berbeda dengan olahan lain yang menggunakan adonan tepung khusus supaya tidak ada remah tepung roti yang mengubah rasa saus atau bumbunya", "gambar" : "udang.jpg"},
    {"nama" : "Sayur Kukus", "detail" : "Sayur kukus adalah makanan dengan mengukus beberapa sayur dengan waktu yang berbeda - beda.", "gambar" : "sayurkukus.jpg"},
    {"nama" : "Ikan Goreng", "detail" : "Ikan goreng adalah istilah umum yang merujuk pada berbagai jenis hidangan Indonesia dan Malaysia yang dibuat dengan cara menggoreng ikan atau makanan laut lainnya.", "gambar" : "ikan.jpg"},
    {"nama" : "Tumis Kangkung", "detail" : "Tumis Kangkung adalah masakan dengan menggunakan sedikit minyak dan api besar dengan menggunakan bahan kangkung", "gambar" : "tumiskangkung.jpg"},
    {"nama" : "Jamur Crispy", "detail" : "jamur crispy atau jamur goreng tepung menjadi salah satu camilan yang sangat digemari, Jamur ini memiliki kandungan asam lemak jenuh serta adanya semacam polisakarida kitin di dalam jamur tiram yang akan menimbulkan rasa enak.", "gambar" : "jamur.jpg"},
    {"nama" : "Salad Sayur", "detail" : "Selada adalah jenis makanan yang terdiri dari campuran sayur-sayuran dan bahan-bahan makanan siap santap.", "gambar" : "saladsayur.jpg"},
    {"nama" : "Steak", "detail" : "Bistik atau steik adalah sepotong besar daging, biasanya daging sapi. Daging merah, dada ayam dan ikan seringkali dipotong menjadi steik. Kebanyakan steik dipotong tegak lurus dengan serat otot, menambah kelegitan daging.", "gambar" : "steak.jpg"},
    {"nama" : "Nasi Merah", "detail" : "Nasi merah adalah masakan yang berasal dari beras yang hanya mengalami pengelupasan paling luar dan tidak mengalami penggilingan yang nantinya menjadi beras merah.", "gambar" : "nasimerah.jpg"},
  ];

  makeList() async{
    for(var i=0; i<makanMalam.length;i++){
      final loopMakanan = makanMalam[i];
      final String gambar = loopMakanan["gambar"];

      listMakanan.add(Container(

        padding: EdgeInsets.all(10.0),

        child: Card(
          child: Column(

            children: <Widget>[
              Expanded(
              child: Hero(tag: loopMakanan['nama'], child: new Material(
                child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => DetailScreen(
                        namaMakanan : loopMakanan['nama'],
                        detailMakanan : loopMakanan['detail'],
                        gambarMakanan : gambar,
                      )
                  )),

                  child: Image.asset("images/$gambar",
                        height: 130,
                        width: 180,
//                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ),),
              Padding(
                  padding: EdgeInsets.all(10.0)
              ),
              Text(loopMakanan['nama'],
                style: TextStyle(fontSize: 20.0),)
            ],
          ),
        ),
      ),);
    }
  }
  @override
  void initState(){
    makeList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GridView.count(crossAxisCount: 2,
              children: listMakanan,),
    );
  }
}