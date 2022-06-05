// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';

import 'home.dart'; 
class LoginPage extends StatelessWidget {
  static String id = "login_page";
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 350),
                _textFieldEmail(),
                SizedBox(height: 25),
                _textFieldPassword(),
                SizedBox(height: 50),
                _bottomLogin()
              ],
            ),
          ),
        )
        ),
    );
  }
  Widget _textFieldName(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      margin:  EdgeInsets.symmetric(
        horizontal: 30
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person_outline),
          labelText: "Nombre",
          hintText: "Eduardo Garcia" 
        ),
        onChanged: (value){},
      ),
    );
  }
 Widget _textFieldEmail() {
   return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      margin:  EdgeInsets.symmetric(
        horizontal: 30
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email_outlined),
          labelText: "Email",
          hintText: "Correo@gmail.com" ,
          border: InputBorder.none
        ),
        onChanged: (value){},
      ),
    );
}
  Widget _textFieldPassword(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      margin:  EdgeInsets.symmetric(
        horizontal: 30
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock_outline),
          labelText: "Password",
          hintText: "Password" ,
          border: InputBorder.none
        ),
        obscureText: true,
        onChanged: (value){},
      ),
    );
  }
  Widget _bottomLogin(){
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
            child: Text('Iniciar Sesion',
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
          });
      }
    );
  }
}