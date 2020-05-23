import 'package:flutter/material.dart';

class RegistroGastos extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<RegistroGastos> {
  int group = 1;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  new Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                        child: new Container(
                          height: 50.0,
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              color: Color(Colors.white.hashCode)),
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Text("Dinero Actual",
                                  style: new TextStyle(color: Colors.black54, fontSize: 22.0))
                            ],
                          ),
                        ),
                      )),
                  new Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                        child: new Container(
                          height: 40.0,
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              color: Color(Colors.black26.hashCode)),
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Text(
                                "Monto dinero",
                                style: new TextStyle(fontSize: 10.0),
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Categorías",
                    style: new TextStyle(fontSize: 30.0),
                  )
              ),
              Row(
                children: <Widget>[
                new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                      child: new Container(
                        height: 65.0,
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            color: Color(Colors.white.hashCode)),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text("Transporte"),
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
                      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                      child: new Container(
                        height: 65.0,
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            color: Color(Colors.white.hashCode)),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text("Comida"),
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
                ]
              ),
              Row(
                  children: <Widget>[
                    new Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                          child: new Container(
                            height: 65.0,
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                color: Color(Colors.white.hashCode)),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Text("Ropa"),
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
                    new Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                          child: new Container(
                            height: 65.0,
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                color: Color(Colors.white.hashCode)),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Text("Ocio"),
                                Radio(
                                  value: 4,
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
                  ]
              ),
              Text(
                "Detalle",
                style: TextStyle(fontSize: 20.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0,),
                child: new TextField(
                  decoration: new InputDecoration(labelText: 'Detalle del Gasto'),
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 60.0, right: 60.0, top: 70.0, bottom: 30),
                      child: GestureDetector(
                        /*onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Menu(),
                          ));
                        },*/
                        child: new Container(
                            alignment: Alignment.center,
                            height: 60.0,
                            decoration: new BoxDecoration(
                                color: Color(Colors.black54.hashCode),
                                borderRadius: new BorderRadius.circular(9.0)),
                            child: new Text("REGISTRAR",
                                style: new TextStyle(
                                    fontSize: 20.0, color: Colors.white))),
                      ),
                    ),
                  )
                ],
              ),
            ]
        ),
      ),
    );
  }
}
