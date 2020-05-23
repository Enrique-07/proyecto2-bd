import 'package:flutter/material.dart';
import 'package:proyecto2/MetaAhorro.dart';
import 'NuevoIngreso.dart';
import 'Ingresos.dart';
import 'RegistroGastos.dart';
import 'Presupuesto.dart';
import 'ReporteGastos.dart';
import 'ReporteGastosMes.dart';

class Menu extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
              child: new Column(
                children: <Widget>[
                  new SizedBox(
                    height: 10.0,
                  ),
                  Row(
                      children: <Widget>[
                        new Expanded(child: new Image.asset('imagenes/imagen2.jpg', fit: BoxFit.fitWidth,))
                      ]
                  ),
                  Row(
                    children: <Widget>[
                      new Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Ingresos(),
                              ));
                            },
                              child: new Container(
                                height: 100.0,
                                decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.circular(5.0),
                                    color: Color(Colors.black38.hashCode)),
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Icon(
                                      Icons.trending_up,
                                      color: Colors.white,
                                    ),
                                    new Text("Ingresos",
                                        style: new TextStyle(color: Colors.white))
                                  ],
                                ),
                              ),
                          )
                          )),
                      new Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>RegistroGastos(),
                                ));
                              },
                              child: new Container(
                                height: 100.0,
                                decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.circular(5.0),
                                    color: Color(Colors.black38.hashCode)),
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Icon(
                                      Icons.add_shopping_cart,
                                      color: Colors.white,
                                    ),
                                    new Text("Registro de Gastos",
                                        style: new TextStyle(color: Colors.white))
                                  ],
                                ),
                              ),
                            )
                          )),
                    ],
                  ),
                  new SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: <Widget>[
                      new Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>MetaAhorro(),
                                  ));
                                },
                                child: new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(5.0),
                                      color: Color(Colors.black38.hashCode)),
                                  child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Icon(
                                        Icons.library_add,
                                        color: Colors.white,
                                      ),
                                      new Text("Metas de Ahorro",
                                          style: new TextStyle(color: Colors.white))
                                    ],
                                  ),
                                ),
                            )
                          )),
                      new Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>Presupuesto(),
                                ));
                              },
                              child: new Container(
                                height: 100.0,
                                decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.circular(5.0),
                                    color: Color(Colors.black38.hashCode)),
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Icon(
                                      Icons.monetization_on,
                                      color: Colors.white,
                                    ),
                                    new Text("Presupuesto",
                                        style: new TextStyle(color: Colors.white))
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                  new SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: <Widget>[
                      new Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>ReporteGastos(),
                                ));
                              },
                              child: new Container(
                                height: 100.0,
                                decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.circular(5.0),
                                    color: Color(Colors.black38.hashCode)),
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Icon(
                                      Icons.print,
                                      color: Colors.white,
                                    ),
                                    new Text("Reportes",
                                        style: new TextStyle(color: Colors.white))
                                  ],
                                ),
                              ),
                            ),
                          )),
                      new Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  color: Color(Colors.black38.hashCode)),
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Icon(
                                    Icons.exit_to_app,
                                    color: Colors.white,
                                  ),
                                  new Text("Cerrar sesion",
                                      style: new TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                  new SizedBox(
                    height: 15.0,
                  ),
                ],
              )),
        )
      ],
    );
  }
}