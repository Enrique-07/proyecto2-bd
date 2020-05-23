import 'package:flutter/material.dart';

class ReporteGastos extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<ReporteGastos> {
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
                Row(
                  children: <Widget>[
                    new Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, bottom: 0.0, top: 0.0),
                          child: new Container(
                            height: 100.0,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                            ),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Text("Gastos por Categoría",
                                    style: new TextStyle(color: Colors.black54, fontSize: 25.0))
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 50),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 20.0,
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("imagenes/RG1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300.0,
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("imagenes/RG2.jpg"),
                          fit: BoxFit.cover,
                        ),
                      )
                  ),
                ),
              ]
          )
      ),
    );
  }
}