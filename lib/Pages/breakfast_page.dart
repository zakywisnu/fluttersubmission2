import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive_screen/flutter_responsive_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterdicoding/detail_screen.dart';

class BreakfastPage extends StatefulWidget{
  @override
  mainState createState() => new mainState();

}

class mainState extends State<BreakfastPage> {
  List<Container> listMakanan = new List();

  var makanPagi = [
    {"nama" :"Soto", "detail" : "Soto, sroto, sauto, tauto, atau coto adalah makanan khas Indonesia seperti sop yang terbuat dari kaldu daging dan sayuran.", "gambar" : "soto2.jpg"},
    {"nama" :"Nasi Goreng", "detail" : "Nasi goreng merupakan sajian nasi yang digoreng dalam sebuah wajan atau penggorengan menghasilkan cita rasa berbeda karena dicampur dengan bumbu-bumbu seperti bawang putih, bawang merah, merica dan kecap manis. Selain itu, ditambahkan bahan-bahan pelengkap seperti telur, sayur-sayuran, makanan laut, atau daging. Makanan tersebut seringkali disantap sendiri atau disertai dengan hidangan lainnya.", "gambar" : "nasgos.jpg"},
    {"nama" :"Gado Gado", "detail" : "Gado-gado adalah salah satu makanan yang berasal dari Indonesia yang berupa sayur-sayuran yang direbus dan dicampur jadi satu, dengan bumbu kacang atau saus dari kacang tanah dan yang dihaluskan disertai irisan telur", "gambar" : "gadogado2.jpg"},
    {"nama" :"Pecel", "detail" : "Pecel merupakan makanan yang dikombinasikan dengan bumbu sambal kacang sebagai bahan utamanya dan dicampur dengan aneka jenis sayuran.", "gambar" : "pecel.jpg"},
    {"nama" : "Orak Arik", "detail" : "Telur orak-arik adalah makanan yang terbuat dari telur diaduk atau dikocok bersama dalam wajan atau penggorengan saat dipanaskan dengan lembut, biasanya ditambahkan garam, mentega, dan bahan lainnya yang bervariasi.", "gambar" : "orakarik.jpg"},
    {"nama" : "Omelet", "detail" : "Telur dadar atau omelet adalah variasi hidangan telur goreng yang disiapkan dengan cara mengocok telur dan menggorengnya dengan minyak goreng atau mentega panas di sebuah wajan.", "gambar" : "omelet.jpg"},
    {"nama" : "Bubur Kacang Hijau", "detail" : "Bubur kacang hijau adalah makanan khas nusantara yang terbuat dari kacang hijau yang dimasak dengan air dan gula aren bersama seikat daun pandan.", "gambar" : "buburkacang.jpg"},
    {"nama" : "Rolade", "detail" : "Rolade adalah suatu masakan olahan daging sapi yang dibentuk menjadi gulungan memanjang dan dikukus, dipotong melintang seperti irisan bolu gulung, lalu digoreng agar renyah.", "gambar" : "rolade.jpg"},
    {"nama" : "Kentang", "detail" : "Kentang goreng adalah hidangan yang dibuat dari potongan-potongan kentang yang digoreng dalam minyak goreng panas.", "gambar" : "kentang.jpg"},
    {"nama" : "Pancake", "detail" : "Pancake adalah kue dadar yang terbuat dari tepung terigu, telur, gula, dan susu.", "gambar" : "pancake.jpg"},
  ];

  makeList() async{
    for(var i=0; i<makanPagi.length;i++){
      final loopMakanan = makanPagi[i];
      final String gambar = loopMakanan["gambar"];

      listMakanan.add(Container(
        padding: EdgeInsets.all(10.0),
        child: Card(
            child: Column(
            children: <Widget>[
              Expanded (
               child: Hero(tag: loopMakanan['nama'], child: Material(
                child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => DetailScreen(
                        namaMakanan : loopMakanan['nama'],
                        detailMakanan : loopMakanan['detail'],
                        gambarMakanan : gambar,
                      )
                  )),

                  child: Image.asset("images/$gambar",
//                      height: 130,
//                      width: 180,
                    fit: BoxFit.cover,
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
      ));
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