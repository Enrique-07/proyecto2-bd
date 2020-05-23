import 'package:flutter/material.dart';
import 'package:proyecto2/MetasActuales.dart';
import 'package:proyecto2/NuevoIngreso.dart';

class MetaAhorro extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<MetaAhorro> {
  int group = 1;
  @override
  Widget build(BuildContext context) {
    DateTime _dateTime;
    return new Scaffold(
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Row(
                  children: <Widget>[
                    new Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0, bottom: 10.0, top: 0.0),
                          child: new Container(
                            height: 60.0,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                            ),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Text("Nombre del Objetivo: ",
                                    style: new TextStyle(color: Colors.black54, fontSize: 18.0))
                              ],
                            ),
                          ),

                        )),
                    new Expanded(
                        child: Padding(
                            padding: const EdgeInsets.only(left: 20.0, right: 50.0, bottom: 10),
                            child: GestureDetector(
                              /*onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>NuevoIngreso(),
                                ));
                              },*/
                              child: new Container(
                                height: 60.0,
                                decoration: new BoxDecoration(
                                  //borderRadius: new BorderRadius.circular(5.0),
                                ),
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new TextField(
                                      decoration: new InputDecoration(labelText: 'Nombre'),
                                    )
                                  ],
                                ),
                              ),
                            )
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    color: Colors.blueGrey,
                    child: Padding(
                      // EdgeInsets.all: same padding value for all 4 directions.
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Valor Objetivo",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          TextField(
                            decoration: new InputDecoration(labelText: 'Cantidad'),
                          ),
                          Text(
                            "Fecha a alcanzar objetivo",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          RaisedButton(
                            child: Text('Elija una fecha'),
                            onPressed: () {
                              showDatePicker(
                                  context: context,
                                  initialDate: _dateTime == null ? DateTime.now() : _dateTime,
                                  firstDate: DateTime(2001),
                                  lastDate: DateTime(2021)
                              ).then((date) => _dateTime);
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Text(
                  "Ahorrar por: ",
                  style: TextStyle(fontSize: 20.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0.0),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        new Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                              child: new Container(
                                height: 70.0,
                                decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.circular(5.0),
                                    ),
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Semana",
                                        style: new TextStyle(fontSize: 15.0)
                                    ),
                                    Radio(
                                      value: 1,
                                      groupValue: group,
                                      onChanged: (T){
                                        print(T);
                                        setState(() {
                                          group = T;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            )),
                        new Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                              child: new Container(
                                height: 70.0,
                                decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.circular(5.0),
                                    ),
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Text(
                                      "Mes",
                                      style: new TextStyle(fontSize: 15.0),
                                    ),
                                    Radio(
                                      value: 2,
                                      groupValue: group,
                                      onChanged: (T){
                                        print(T);
                                        setState(() {
                                          group = T;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            )),
                        new Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                              child: new Container(
                                height: 70.0,
                                decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.circular(5.0),
                                    ),
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Text(
                                      "Año",
                                      style: new TextStyle(fontSize: 15.0),
                                    ),
                                    Radio(
                                      value: 3,
                                      groupValue: group,
                                      onChanged: (T){
                                        print(T);
                                        setState(() {
                                          group = T;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Row(
                    children: <Widget>[
                      new Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: GestureDetector(
                                /*onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>MetaAhorro(),
                                  ));
                                },*/
                                child: new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(5.0),
                                      ),
                                  child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Icon(
                                        Icons.check_circle,
                                        color: Colors.black,
                                        size: 60,
                                      ),
                                      new Text("Confirmar",
                                          style: new TextStyle(color: Colors.black))
                                    ],
                                  ),
                                ),
                              )
                          )),
                      new Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 50.0),
                            child: new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  ),
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Icon(
                                    Icons.cancel,
                                    color: Colors.black,
                                    size: 60,
                                  ),
                                  new Text("Cancelar",
                                      style: new TextStyle(color: Colors.black))
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 60.0, right: 60.0, top: 10.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MetasActuales(),
                                ));
                              },
                              child: new Container(
                                  alignment: Alignment.center,
                                  height: 60.0,
                                  decoration: new BoxDecoration(
                                      color: Color(Colors.black54.hashCode),
                                      borderRadius: new BorderRadius.circular(9.0)),
                                  child: new Text("Metas Actuales",
                                      style: new TextStyle(
                                          fontSize: 20.0, color: Colors.white))),
                            ),
                          ),
                        )
                      ],
                    ),
                )
              ]
          )
      ),
    );
  }
}
