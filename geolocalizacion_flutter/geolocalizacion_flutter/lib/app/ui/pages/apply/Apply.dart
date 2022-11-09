import 'dart:js';

import 'package:flutter/material.dart';
import 'package:geolocalizacion_flutter/app/ui/pages/menu/Menu.dart';

void main() {
  runApp(Cargos_Menu());
}

class ApplyCargo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(

            title: const Text("Cargos Menu")
        ),

        body: ListView(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.only(left: 15, top: 8, right: 0, bottom: 15),
                height: 50,
                margin:const EdgeInsets.only(left:10,right: 10,top: 10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10)),
                  color: Colors.lightBlue[900],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(" "),
                FloatingActionButton(
                child: Icon(Icons.close,color: Colors.black87),
                  mini: true,
                  elevation: 3,

                  backgroundColor: Colors.red,
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> Cargos_Menu())
                    );
                    values=0;
                  })
                ]
                )
              ),
              //Origen, Destino, Fecha_i, Fecha_f,Ubic_i,Ubic_f,Peso,Dimensiones
              Container(
                  height: 400,
                  margin: const EdgeInsets.only(left:10,right:10,bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                    color: Colors.lightBlue[900],
                  ),
                  padding: const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 15),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(origin_a[n],
                                  style: const TextStyle(fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text(destiny_a[n],
                                  style: const TextStyle(fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ]
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(date_i_a[n],
                                  style: const TextStyle(fontSize: 10,
                                      color: Colors.white)),
                              Text(date_f_a[n],
                                  style: const TextStyle(fontSize: 10,
                                      color: Colors.white)),
                            ]
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(loc_i_a[n],
                                  style: const TextStyle(fontSize: 10,
                                      color: Colors.white)),
                              Text(loc_f_a[n],
                                  style: const TextStyle(fontSize: 10,
                                      color: Colors.white)),
                            ]
                        ),
                        Row(
                            children: <Widget>[
                              Text(weight_a[n],
                                  style: const TextStyle(fontSize: 10,
                                      color: Colors.white)),
                              const Text("   "),
                              Text(dimensions_a[n],
                                  style: const TextStyle(fontSize: 10,
                                      color: Colors.white)),
                            ]
                        ),
                        Row(
                            children: <Widget>[
                              Text("NOTES: ",
                                  style: TextStyle(fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.yellow)),
                              Text("EMAIL BIDS PLEASE!!! CHECK DATES!!!",
                                  style: TextStyle(fontSize: 11,
                                      color: Colors.yellow)),
                            ]
                        ),
                        Row(
                            children: <Widget>[
                              Text("BROKER: ",
                                  style: TextStyle(fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.yellow)),
                              Text("ORD EXPEDITE",
                                  style: TextStyle(fontSize: 11,
                                      color: Colors.yellow)),
                            ]
                        ),
                        Row(
                            children: <Widget>[
                              Text("Per Mile:  ",
                                  style: TextStyle(fontSize: 15,
                                      color: Colors.white)),
                              SizedBox(
                                  width: 50,
                                  height: 18,
                                  child: TextFormField(
                                    autofocus: true,
                                    style: TextStyle(fontSize: 15,
                                        color: Colors.white),
                                    onChanged: (value){
                                      permile_a[n] = value;
                                      values=values+1;
                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                        hintText: "US",
                                        hintStyle: TextStyle(fontSize: 15,
                                            color: Colors.white)
                                    ),
                                  )
                              ),
                              Text("Fixed:  ",
                                  style: TextStyle(fontSize: 15,
                                      color: Colors.white)),
                              SizedBox(
                                width: 50,
                                height: 20,
                                child: TextFormField(
                                    style: TextStyle(fontSize: 15,
                                        color: Colors.white),
                                    onChanged: (value){
                                      fixed_a[n]=value;
                                      values=values+1;
                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                        hintText: "US",
                                        hintStyle: TextStyle(fontSize: 15,
                                            color: Colors.white)
                                    )
                                ),
                              ),
                              Text("                                        "),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(13, 14),

                                  primary: Colors.green,
                                ),

                                child: Text("Continue"),

                                onPressed: () {
                                  if (values >= 1) {
                                    showDialog(
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (context) =>
                                          AlertDialog(
                                            title: Text('Request sended'),
                                            content: Text('The request has been sended'),
                                            actions: <Widget>[
                                              TextButton(
                                                  child: Text('Continue'),
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context)=> Cargos_Menu())
                                                    );
                                                      apply_a[n]=true;
                                                    //runApp(Accepted_R());
                                                    // Navigator.of(context).pop();
                                                  }
                                              )
                                            ],
                                          ),
                                    );
                                    values=0;
                                  }
                                  else {
                                    showDialog(
                                      context: context,
                                      builder: (context) =>
                                          AlertDialog(
                                            title: Text('Error'),
                                            content: Text('Please set the price'),
                                          ),
                                    );
                                  }
                                },
                              )
                            ]
                        )
                      ]
                  )
              )

            ]

        )
    );
  }
}
