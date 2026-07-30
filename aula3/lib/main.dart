import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Página 1',
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.greenAccent,
                ),
                child: Image.asset(
                  'assets/images/smile_face.png',
                  height: 32,
                  width: 32,
                ),
              ),
            ),
          ],
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Entregar em',
                style: TextStyle(
                  color: Color(0xFF148C4D),
                  fontSize: 9,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Rua das Flores, 128',
                style: TextStyle(
                  color: Color(0xFF14261C),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(color: Colors.black),
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(color: Color(0xFF148C4D)),
          selectedItemColor: Color(0xFF148C4D),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.other_houses_sharp),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps_outage_outlined),
              label: 'Categorias',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded),
              label: 'Listas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Carrinho',
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Color(0xFF0B4729),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFC2ED47),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Text(
                          'OFERTA DO DIA',
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Hortifruti com até\n30% OFF',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Ver ofertas →',
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xFFC2ED47),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 92,
                    height: 92,
                    decoration: BoxDecoration(
                      color: Color(0xFFF2BF2E),
                      borderRadius: BorderRadius.circular(34),
                    ),
                    child: Image.asset('assets/images/sacolas.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    'Categorias',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Ver todas',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF148C4D),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
