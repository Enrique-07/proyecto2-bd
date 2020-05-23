import 'package:flutter/material.dart';
import 'package:proyecto2/NuevoIngreso.dart';
import 'Menu.dart';

class Ingresos extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<Ingresos> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ContainerExample(),
    );
  }
}

class ContainerExample extends StatelessWidget {
  const ContainerExample({Key key}) : super(key: key);

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
                            padding: const EdgeInsets.only(left: 50.0, bottom: 30.0, top: 0.0),
                              child: new Container(
                                height: 100.0,
                                decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.circular(5.0),
                                    color: Color(Colors.white.hashCode)),
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Text("Ingresos",
                                        style: new TextStyle(color: Colors.black54, fontSize: 33.0))
                                  ],
                                ),
                              ),

                        )),
                    new Expanded(
                        child: Padding(
                            padding: const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 30),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>NuevoIngreso(),
                                ));
                              },
                              child: new Container(
                                height: 50.0,
                                decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.circular(5.0),
                                    color: Color(Colors.black38.hashCode)),
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            )
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300.0,
                    color: Colors.blueGrey,
                    child: Padding(
                      // EdgeInsets.all: same padding value for all 4 directions.
                      padding: const EdgeInsets.all(16.0),
                      child: new Text(
                        "Sus ingresos registrados aparecerán aquí",
                        style: new TextStyle(fontSize: 25.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ]
          )
      ),
    );
  }
}