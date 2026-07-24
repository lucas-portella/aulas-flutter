import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final greenColor = const Color(0xFF146C43);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula 2',
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 56,
          backgroundColor: greenColor,
          title: Text(
            'Configurações',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          fixedColor: greenColor,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configurações',
            ),
          ],
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsetsGeometry.all(12),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  margin: EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsetsGeometry.all(12),
                          child: Icon(Icons.notifications, color: greenColor),
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Padding(
                          padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Notificações',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Gerencie seus alertas',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  margin: EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsetsGeometry.all(12),
                          child: Icon(Icons.lock, color: greenColor),
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Padding(
                          padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                          child: Text(
                            'Privacidade e segurança',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  margin: EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsetsGeometry.all(12),
                          child: Icon(Icons.help, color: greenColor),
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Padding(
                          padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                          child: Text(
                            'Ajuda e suporte',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
