// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:prueba_1/pages/cafeterias.dart';
import 'package:prueba_1/pages/settings.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  static String id = 'home_page';
  const HomePage({ Key? key }) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> {
  HomePage createState()=> HomePage();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    const List<Widget> _pages = <Widget>[
        CardView(),
        PagosPage(),
        PageHome(),
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('UANL ID',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32
          ),),
          backgroundColor: Color(0xFF000D66),
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.qr_code_scanner_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.pushNamed(context, SettingsPage.id);
              },
            ),
          ],
        ),
        // drawer:Drawer(
        //   backgroundColor: Color(0xFF1D6507),
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: [
        //       DrawerHeader(
        //         decoration: BoxDecoration(
        //           color: Color(0xFF1D6507)
        //         ),
        //         child: Column(
        //           children: [
        //             SizedBox(
        //               height: 50,
        //             ),
        //             Text('Menu Principal',
        //             style: TextStyle(
        //               fontSize: 32,
        //               fontWeight: FontWeight.bold,
        //               color: Colors.white
        //             ),)
        //           ],
        //         ),
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.person,
        //         color: Colors.white,),
        //         title: Text('Perfil',
        //         style: TextStyle(
        //           color: Colors.white
        //         ),),
        //         onTap: (){},
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.person,
        //         color: Colors.white,),
        //         title: Text('Perfil',
        //         style: TextStyle(
        //           color: Colors.white
        //         ),),
        //         onTap: (){},
        //       ),
        //     ],
        //   ),
        // ),
        body: SingleChildScrollView(
          //color: Color(0xFF000D66),
          child: Center(
            child: Column(
              children: [
                // RaisedButton(
                //     child: Container(
                //     padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                //     child: Text('Salir',
                //     style: TextStyle(
                //       fontSize: 16,
                //       fontWeight: FontWeight.bold,
                //       color: Colors.white
                //         ),
                //       ),
                //     ),
                //   shape: RoundedRectangleBorder(
                //     borderRadius:BorderRadius.circular(10) ),
                //   elevation: 10,
                //   color: Color(0xFF1D6507),
                //   onPressed: (){
                //     Navigator.pushNamed(context, LoginPage.id);
                //   }
                // )
                Container(
                  height: 704,
                  child: _pages.elementAt(_selectedIndex),
                )
  
              ],
            ),
          )
        ),
        
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF000D66),
          selectedIconTheme: IconThemeData(color: Colors.white, size: 40),
          selectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          items: const <BottomNavigationBarItem>[
             BottomNavigationBarItem(
              icon: Icon(Icons.card_membership_sharp),
              label: 'Credencial',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money),
              label: 'Pagos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school_sharp),
              label: 'School',
            ),
            
          ],
          currentIndex: _selectedIndex, //New
          onTap: _onTap, 
          ),
          
      ),   
    );
  }
   _onTap(int index) async {
    switch (index) {
      case 0:
        setState(() => _selectedIndex = index);
        break;
      case 1:
        await showMenu(
          context: context,
          position: RelativeRect.fromLTRB(1000.0, 1000.0, 500.0, 1000.0),
          items: [
            PopupMenuItem(
              child: Text("Bajarangisoft.com"),
            ),
            PopupMenuItem(
              child: Text("Yahoo.com"),
            ),
            PopupMenuItem(
              child: Text("Google.com"),
            ),
          ],
          elevation: 8.0,
        );
        
        break;
      case 2:
        setState(() => _selectedIndex = index);
        break;
    }
  }
  void _onItemTapped(int index) {
    setState((){
    
  });
}
}


class PageHome extends StatefulWidget {
  const PageHome({ Key? key }) : super(key: key);

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {

  @override
  final List<String> genderItems = [
    'Male',
    'Female',
  ];

  String? selectedValue;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF000D66),
        body: Container(
          child: Center(
            child: Column(
              children: [
                    SizedBox(height: 200,),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RaisedButton(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                              child: Text('Cafeteria',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                                  ),
                                ),
                              ),
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(10) ),
                            elevation: 10,
                            color: Color(0xFF1D6507),
                            onPressed: (){
                              Navigator.pushNamed(context, CafeteriaPage.id);
                          }),
                          RaisedButton(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                              child: Text('Papeleria',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                                  ),
                                ),
                              ),
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(10) ),
                            elevation: 10,
                            color: Color.fromARGB(255, 215, 123, 3),
                            onPressed: (){
                              Navigator.pushNamed(context, HomePage.id);
                          }),
                        ],
                      ),),
                    SizedBox(height: 100,),
                    Center(
                      child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                            child: Text('Biblioteca',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                                ),
                              ),
                            ),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10) ),
                          elevation: 10,
                          color: Color.fromARGB(255, 7, 85, 101),
                          onPressed: (){
                            Navigator.pushNamed(context, HomePage.id);
                        }),
                        RaisedButton(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                            child: Text('Tesoreria',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                                ),
                              ),
                            ),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10) ),
                          elevation: 10,
                          color: Color.fromARGB(255, 5, 184, 115),
                          onPressed: (){
                            Navigator.pushNamed(context, HomePage.id);
                        }),
                      ],
                    ), 
                      )
              ],
            ),
          ),
        ),
      )
    );
  }
}

class CardView extends StatefulWidget {
  const CardView({ Key? key }) : super(key: key);

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  bool _selectCartera = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF000D66),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Row(
                    children: [
                      SizedBox(height: 10,width: 20,),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectCartera = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                         
                          // decoration: BoxDecoration(
                          //   border: Border.all(
                          //     color: Colors.blue,
                          //     width: 2,
                          //     ),
                          //   borderRadius: BorderRadius.all(
                          //     Radius.circular(20)
                          //   )
                          // ),
                          child: Text("Cartera",
                          style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          background:Paint()
                          ..color = Color.fromARGB(255, 3, 95, 171)
                          ..strokeWidth = 20
                          ..strokeJoin = StrokeJoin.round
                          ..strokeCap = StrokeCap.round
                          ..style = PaintingStyle.stroke,
                        
                        ),),
                        )
                      ),
                      
                      SizedBox(height: 20,width: 10,),
                      GestureDetector(
                        onTap: (() {
                          setState(() {
                            _selectCartera = false;
                          });
                        }),
                        child: Container(
                          padding: EdgeInsets.all(10),
                         
                          // decoration: BoxDecoration(
                          //   border: Border.all(
                          //     color: Colors.blue,
                          //     width: 2,
                          //     ),
                          //   borderRadius: BorderRadius.all(
                          //     Radius.circular(20)
                          //   )
                          // ),
                          child: Text("Movimientos",
                          style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          background:Paint()
                          ..color = Color.fromARGB(255, 3, 95, 171)
                          ..strokeWidth = 20
                          ..strokeJoin = StrokeJoin.round
                          ..strokeCap = StrokeCap.round
                          ..style = PaintingStyle.stroke,
                        
                        ),),
                        )
                      )
                    ],
                  ),
              SizedBox(height: 50,),
              (_selectCartera)? _carteraTrue() : _movimientoTrue()
              
            ],
          ),
        ),
      ),
    );
  }
  Widget _carteraTrue(){
    return Column(
      children: [
        Card(
                color: Color.fromARGB(211, 1, 115, 202),
                child: SizedBox(
                  width: 400,
                  height: 200,
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Text(
                          "UANL",
                          style: TextStyle(
                            color:Colors.amber,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 30,),
                          Text(
                        "ApellidoM",
                        style: TextStyle(
                          color:Colors.amber
                          ),
                        ),
                        SizedBox(height: 10,),
                          Text(
                        "ApellidoP",
                        style: TextStyle(
                          color:Colors.amber
                          ),
                        ),
                        SizedBox(height: 10,),
                          Text(
                        "Nombre",
                        style: TextStyle(
                          color:Colors.amber
                          ),
                        ),
                        ],
                      ),
                      SizedBox(width: 170,),
                      Text(
                        "Tarjeta UANL",
                        style: TextStyle(
                          color:Colors.amber
                          ),
                      ),
                    ],
                  )
                ),
                elevation: 10,
              ),
              SizedBox(height: 20, ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(height: 10,width: 20,),
                      Text("Fondos",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      ),),
                      SizedBox(height: 20,width: 10,),
                      Text("0000 pesos",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  RaisedButton(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Text('Agregar Fondos',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                          ),
                        ),
                      ),
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(10) ),
                    elevation: 10,
                    color: Color(0xFF1D6507),
                    onPressed: (){
                      Navigator.pushNamed(context, HomePage.id);
                    }),
                  
                ],
              )
      ],
    );
  }
  Widget _movimientoTrue(){
    return Column(
      children: [
        SizedBox(height: 100,),
        Icon(Icons.replay_outlined,
        size: 200,
        color: Colors.white,),
        SizedBox(height: 10,),
        Text("No se han hecho movimientos",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),)
      ],
    );
  }
}
class PagosPage extends StatefulWidget {
  const PagosPage({ Key? key }) : super(key: key);

  @override
  State<PagosPage> createState() => _PagosPageState();
}

class _PagosPageState extends State<PagosPage> {
  @override
  Widget build(BuildContext context) {
    return _childPopup();
  }
}
Widget _childPopup() => PopupMenuButton<int>(
          itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Earth",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "Moon",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text(
                    "Sun",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
          // child: Container(
          //   height: 50,
          //   width: 200,
          //   decoration: ShapeDecoration(
          //     color: Colors.green,
          //     shape: StadiumBorder(
          //       side: BorderSide(color: Colors.black, width: 2),
          //     ),
          //   ),
          //   child: Icon(Icons.airplanemode_active),
          // ),
        );
