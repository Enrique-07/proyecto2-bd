import 'package:flutter/material.dart';
import 'package:proyecto2/MetaAhorro.dart';


class MetasActuales extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<MetasActuales> {
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
    return new Scaffold(
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child:Text(
                      "Metas en progreso",
                      style: TextStyle(fontSize: 30.0),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300.0,
                    color: Colors.blueGrey,
                    child: Padding(
                      // EdgeInsets.all: same padding value for all 4 directions.
                      padding: const EdgeInsets.all(16.0),
                      child: new Text(
                        "Sus Metas a alcanzar aparecerán aquí",
                        style: new TextStyle(fontSize: 25.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 60.0, right: 60.0, bottom: 30.0, top: 10.0),
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
                              child: new Text("Eliminar Metas",
                                  style: new TextStyle(
                                      fontSize: 20.0, color: Colors.white))),
                        ),
                      ),
                    )
                  ],
                ),
              ]
          )
      ),
    );
  }
}