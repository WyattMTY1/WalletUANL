import 'package:flutter/material.dart';
import 'package:prueba_1/pages/settings.dart';

import 'home.dart';

class CafeteriaPage extends StatefulWidget {
  const CafeteriaPage({ Key? key }) : super(key: key);
  static String id = 'cafeterias_page';

  @override
  State<CafeteriaPage> createState() => _CafeteriaPageState();
}

class _CafeteriaPageState extends State<CafeteriaPage> {
  final List<String> genderItems = [
    'Male',
    'Female',
  ];

  String? selectedValue;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Cafeterias',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32
          ),),
          backgroundColor: Color(0xFF000D66),
          elevation: 0,
          automaticallyImplyLeading: true,
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
        backgroundColor: Color(0xFF000D66),
        body: Container(
          child: Center(
            child: Column(
              children: [
                  SizedBox(height: 25,),
                  DropdownButtonFormField(
                    focusColor: Colors.white,
                    items: genderItems
                      .map((item) =>
                      DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white
                          ),
                        ),
                      ))
                      .toList(),
                    decoration: InputDecoration(
                      //Add isDense true and zero Padding.
                      //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                      isDense: true,
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      )),
                    isExpanded: true,
                    iconEnabledColor: Colors.amber,
                    dropdownColor: Colors.black,
                    hint: const Text(
                      'Selecciona la facultad',
                      style: TextStyle(fontSize: 14,
                      color: Colors.white,
                      ),
                    ),
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    iconSize: 30,
                    onChanged: (value){

                    }),
                    SizedBox(height: 50,),
              ],
            ),
          ),
        ),
      )
    );
  }
}