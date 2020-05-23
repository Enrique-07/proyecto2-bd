import 'package:flutter/material.dart';
import 'Menu.dart';

class NuevoIngreso extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<NuevoIngreso> {
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
              Padding(
                  padding: const EdgeInsets.only(top: 0.0, bottom: 20.0),
                  child: new Text(
                    "Nuevo Ingreso",
                    style: new TextStyle(fontSize: 35.0, color: Colors.black38),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0, bottom: 20.0),
                child: new Container(
                  width: 300.0,
                  height: 30.0,
                  color: Colors.blueGrey,
                  child: new Text(
                    "Fecha",
                    style: new TextStyle(fontSize: 25.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0, bottom: 20.0),
                child: new RaisedButton(
                  child: Text('Elija una fecha'),
                  onPressed: () {
                    showDatePicker(
                        context: context,
                        initialDate: _dateTime == null ? DateTime.now() : _dateTime,
                        firstDate: DateTime(2001),
                        lastDate: DateTime(2021)
                    ).then((date) => _dateTime);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0,),
                child: new TextField(
                  decoration: new InputDecoration(labelText: 'Detalle del ingreso'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0,),
                child: new TextField(
                  decoration: new InputDecoration(labelText: 'Monto en Bolivianos'),
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 60.0, right: 60.0, top: 80.0),
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
                            child: new Text("GUARDAR",
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