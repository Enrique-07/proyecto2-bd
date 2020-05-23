import 'package:flutter/material.dart';

class Presupuesto extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<Presupuesto> {
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
                                new Text("Presupuestos",
                                    style: new TextStyle(color: Colors.black54, fontSize: 25.0))
                              ],
                            ),
                          ),

                        )),
                    new Expanded(
                        child: Padding(
                            padding: const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 0),
                            child: GestureDetector(
                              /*onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>NuevoIngreso(),
                                ));
                              },*/
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
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120.0,
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("imagenes/Pr1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 120.0,
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("imagenes/Pr2.jpg"),
                          fit: BoxFit.cover,
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 120.0,
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("imagenes/Pr3.jpg"),
                          fit: BoxFit.cover,
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 125.0,
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("imagenes/Pr4.jpg"),
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