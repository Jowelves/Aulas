import 'package:desenvolvimento_aula/grid.dart';
import 'package:desenvolvimento_aula/login.dart';
import 'package:desenvolvimento_aula/tela_lista.dart';
import 'package:flutter/material.dart';

///draw no appbar circol avatar icone ou image

//centro dois botoes que encaminha para a lista e para o grid
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          child: ListView(
            padding: EdgeInsets.only(top: 2.0),
            children: [
              //container 1
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red[400],
                      radius: 80.0,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 80.0,
                      ),
                    ),
                    Text(
                      ("Usuário Logado!"),
                      style: TextStyle(fontSize: 20.0),
                    )
                  ],
                ),
              ),

              ///container2
              Container(
                decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.vertical(
                        top: Radius.zero, bottom: Radius.circular(100.0))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        label: Text("Home",
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                            ))),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TelaLista()),
                          );
                        },
                        icon: Icon(
                          Icons.library_books,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        label: Text("Lista",
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                            ))),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Grid()),
                          );
                        },
                        icon: Icon(
                          Icons.calculate,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        label: Text("Grid",
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                            ))),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 250.0,
                    ),

                    ///botao sair
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.red,
                            primary: Colors.white,
                            onPrimary: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        icon: Icon(Icons.exit_to_app,
                            size: 40.0, color: Colors.red),
                        label: Text(
                          "Sair",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: Colors.red),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //////////////////////////////////
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Stack(
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tela home com drawer",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Image.asset(
                      "images/LogoBrancoSantander.jpg",
                      scale: 3.5,
                    ),
                  ],
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaLista()),
                  );
                },
                child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.all(20.0),
                    height: 260,
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/cartaoBlack.jpg",
                              scale: 2.5,
                            ),
                            Text(
                              "Ir para a tela com lista",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 25.0),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Grid()),
                  );
                },
                child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.red[200],
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.all(20.0),
                    height: 260,
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/cartaoRed.jpg",
                              scale: 1.8,
                            ),
                            Text(
                              "Ir para a tela com lista",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 25.0),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
