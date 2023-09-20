import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(TrabajoUno());
}

//2,4,1,3
class TrabajoUno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(children: [
        PlaceWidget(),
        TextWidget(),
        ImageWidget(),
        LinksWidget(),
      ])),
    );
  }
}

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image(
            image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            fit: BoxFit.contain));
  }
}

class PlaceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(40),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(children: [
            Text.rich(TextSpan(
                text: 'Oeschinen Lake Campoground',
                style: TextStyle(fontWeight: FontWeight.bold))),
            Text('Kandersteg, Switzerland',
                style: TextStyle(color: Colors.grey))
          ]),
          Container(
            width: 119,
            height: 50,
            alignment: Alignment.centerRight,
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    
                      Icon(Icons.star, color: Colors.red),
                      Text('41')
                    ]),
                  
                
              )
        ]));
  }
}

class LinksWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.8),
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 0, right: 40),
                child: Column(children: [
                  Icon(Icons.call, color: Colors.blue),
                  Text('Call', style: TextStyle(color: Colors.blue))
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, right: 40),
                child: Column(children: [
                  Icon(Icons.location_on_outlined, color: Colors.blue),
                  Text('Location', style: TextStyle(color: Colors.blue))
                ]),
              ),
              Column(children: [
                Icon(Icons.share_outlined, color: Colors.blue),
                Text('Share', style: TextStyle(color: Colors.blue))
              ]),
            ]));
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Búho es el nombre común de aves de la familia Strigidae, del orden de los estrigiformes o aves rapaces nocturnas. Habitualmente designa especies que, a diferencia de las lechuzas, tienen plumas alzadas que parecen orejas (sus verdaderas orejas se encuentran al costado de la cabeza, a los laterales de los ojos) y presentan una coloración amarilla o naranja en el iris. Debido a que sus ojos carecen de movilidad y solo pueden ver hacia delante, pueden girar la cabeza 270°.',
          textAlign: TextAlign.justify, // Justify the text
        ),
      ),
    );
  }
}