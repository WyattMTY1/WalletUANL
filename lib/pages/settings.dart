import 'package:flutter/material.dart';
import 'package:prueba_1/pages/login.dart';

class SettingsPage extends StatefulWidget {
  static String id = 'settings_page';
  const SettingsPage({ Key? key }) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Settings',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32
          ),),
          backgroundColor: Colors.amber,
          elevation: 0,
        ),
        backgroundColor: Colors.amber,
        body: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50,),
                Icon(
                  Icons.person_outline_rounded,
                  size: 200,
                  color: Colors.white,
                ),
                SizedBox(height: 20,),
                Text(
                  "Correo Electronico",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Correo@gmail.com",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
                SizedBox(height: 20,),
                RaisedButton(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                    child: Text('Cerrar Sesion',
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
                  color: Colors.red,
                  onPressed: (){
                    Navigator.pushNamed(context, LoginPage.id);
                  }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}  
