import 'package:flutter/material.dart';

void main() => runApp(MyApp());
// my appp widgetını çalıştırarak uygulamayı başlaıtr

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('çerçeve')), // appBar widget bekler
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  @override
  State<AnaEkran> createState() => _AnaEkranState();
} // _AnaEkranState sınıfının altında, widget'ın veri ve durum bilgilerini tutarız.

class _AnaEkranState extends State<AnaEkran> {
  String blogYazisi = 'bloga hoşgeldiniz';

martGoster (){
  setState(() {
    blogYazisi ='mart ayı özeti ';
  });
}





  @override
  Widget build(BuildContext context) {
    //  nasıl görünecek
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(blogYazisi),
            ElevatedButton(
              onPressed: martGoster,
              child: Text("mart yazisi "),
            ),
          ],
        ),

        // column içine konan widgetları altlata dizcek çocukları var altalta dizmek için
      ),
    );
  }
}
