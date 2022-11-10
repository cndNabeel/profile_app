import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/helper.dart';

class profile extends StatelessWidget {
  String user, pass;


  profile({required this.user, required this.pass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Theme.of(context).primaryColor, Theme.of(context).accentColor,]
              )
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only( top: 16, right: 16,),
            child: Stack(
              children: <Widget>[
                Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration( color: Colors.red, borderRadius: BorderRadius.circular(6),),
                    constraints: BoxConstraints( minWidth: 12, minHeight: 12, ),
                    child: Text( '5', style: TextStyle(color: Colors.white, fontSize: 8,), textAlign: TextAlign.center,),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 5, color: Colors.white),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 20, offset: const Offset(5, 5),),
                      ],
                    ),
                    child: Icon(Icons.person, size: 80, color: Colors.grey.shade300,),
                  ),
                  SizedBox(height: 20,),
                  Text('User', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "User Information",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Card(
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    ...ListTile.divideTiles(
                                      color: Colors.grey,
                                      tiles: [
                                        ListTile(
                                          leading: Icon(Icons.email),
                                          title: Text("Email"),
                                          subtitle: Text(user),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.password),
                                          title: Text("Password"),
                                          subtitle: Text(pass),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.person),
                                          title: Text("Adress"),
                                          subtitle: Text(
                                              "user(h),poolamangalam,vettichira,kerala,malappuram,india"),
                                        ),

                                      ],

                                    ),
                                    Container(
                                      decoration: helper().buttonBoxDecoration(
                                          context),
                                      child: ElevatedButton(
                                        style: helper().buttonStyle(),
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              40, 10, 40, 10),
                                          child: Text('LOOG OUT'.toUpperCase(),
                                            style: TextStyle(fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ),

                                  ],

                                )

                              ],
                            ),
                          ),
                        )

                      ],
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
