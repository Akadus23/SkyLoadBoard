import 'dart:js';

import 'package:flutter/material.dart';
import 'package:geolocalizacion_flutter/app/ui/pages/apply/Apply.dart';

void main() {
  //runApp(Progress_R());
  runApp(Cargos_Menu());
}

int cont=0;
String or="0",des="0",d_i="0",d_f="0",l_i="0",l_f="0",w="0",d="0";
int values=0;
int i=0,c=0,k=1;
int n=0;
int p=0;
int progress_indicator=0;

var progressbar_a=[false,
  false,
  false,
  false,
  false,
  false,
  false];

int num_accept=0;

var permile_a=[" "," "," "," "," "];

var fixed_a=[" "," "," "," "," "];

var origin_a=["HUTCHINSON, KS 67501",
"BOGOTA",
"NEW YORK",
"HUTCHINSON",
"HUTCHINSON"];

var destiny_a=["FRANKLIN, IN 46131",
  "CALI ",
  "TEXAS",
  "FRANKLIN, IN 46131",
  "FRANKLIN, IN 46131"];

var date_i_a=["09/05/2022 18:00 Est.",
  "09/05/2022 18:00 Est.",
  "09/05/2022 18:00 Est.",
  "09/05/2022 18:00 Est.",
  "09/05/2022 18:00 Est."];

var date_f_a=["09/06/2022 09:00 Est",
  "09/06/2022 09:00 Est",
  "09/06/2022 09:00 Est",
  "09/06/2022 09:00 Est",
  "09/06/2022 09:00 Est"];

var loc_i_a=["248 Mi, ETA: 15:41",
  "248 Mi, ETA: 15:41",
  "248 Mi, ETA: 15:41",
  "248 Mi, ETA: 15:41",
  "248 Mi, ETA: 15:41"];

var loc_f_a=["712 Mi, Travel: 11:52",
  "712 Mi, Travel: 11:52",
  "712 Mi, Travel: 11:52",
  "712 Mi, Travel: 11:52",
  "712 Mi, Travel: 11:52"];

var weight_a=["120 lbs.",
  "120 lbs.",
  "120 lbs.",
  "120 lbs.",
  "120 lbs."];

var dimensions_a=["10@14x11x10",
  "10@14x11x10",
  "10@14x11x10",
  "10@14x11x10",
  "10@14x11x10"];

var apply_a=[false,
false,
  false,
  false,
  false];

class Cargos_Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cargos_Menu",
      home: Cargos(),
    );
  }
}

class Cargos extends StatefulWidget{

  @override
  CargosState createState() => CargosState();
}

class CargosState extends State<Cargos>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: const Text("Cargos Menu")
        ),
        body: ListView(
            children: <Widget>[

              //Origen, Destino, Fecha_i, Fecha_f,Ubic_i,Ubic_f,Peso,Dimensiones
              /*
              Cargo("1",context,"HUTCHINSON, KS 67501","FRANKLIN, IN 46131","09/05/2022 18:00 Est.","09/06/2022 09:00 Est","248 Mi, ETA: 15:41","712 Mi, Travel: 11:52","120 lbs.","10@14x11x10",apply1),
              Cargo("2",context,"BOGOTA","CALI ","09/05/2022 18:00 Est.","09/06/2022 09:00 Est","248 Mi, ETA: 15:41","712 Mi, Travel: 11:52","120 lbs.","10@14x11x10",apply2),
              Cargo("3",context,"NEW YORK","TEXAS","09/05/2022 18:00 Est.","09/06/2022 09:00 Est","248 Mi, ETA: 15:41","712 Mi, Travel: 11:52","120 lbs.","10@14x11x10",apply3),
              Cargo("4",context,"HUTCHINSON, KS 67501","FRANKLIN, IN 46131","09/05/2022 18:00 Est.","09/06/2022 09:00 Est","248 Mi, ETA: 15:41","712 Mi, Travel: 11:52","120 lbs.","10@14x11x10",apply4),
              Cargo("5",context,"HUTCHINSON, KS 67501","FRANKLIN, IN 46131","09/05/2022 18:00 Est.","09/06/2022 09:00 Est","248 Mi, ETA: 15:41","712 Mi, Travel: 11:52","120 lbs.","10@14x11x10",apply5)
            */
              /*
              Cargo(0,context,origin_a[0],destiny_a[0],date_i_a[0],date_f_a[0],loc_i_a[0],loc_f_a[0],weight_a[0],dimensions_a[0],apply_a[0]),
              Cargo(1,context,origin_a[1],destiny_a[1],date_i_a[1],date_f_a[1],loc_i_a[1],loc_f_a[1],weight_a[1],dimensions_a[1],apply_a[1]),
              Cargo(2,context,origin_a[2],destiny_a[2],date_i_a[2],date_f_a[2],loc_i_a[2],loc_f_a[2],weight_a[2],dimensions_a[2],apply_a[2]),
              Cargo(3,context,origin_a[3],destiny_a[3],date_i_a[3],date_f_a[3],loc_i_a[3],loc_f_a[3],weight_a[3],dimensions_a[3],apply_a[3]),
              Cargo(4,context,origin_a[4],destiny_a[4],date_i_a[4],date_f_a[4],loc_i_a[4],loc_f_a[4],weight_a[4],dimensions_a[4],apply_a[4]),
               */
              Cargo(0,context),
              Cargo(1,context),
              Cargo(2,context),
              Cargo(3,context),
              Cargo(4,context),

              SimulateButton()
            ]


        )
    );
  }
}

  Widget Cargo (num,context) {
    if (apply_a[num] == false) {
      return Container(
          height: 140,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.lightBlue[900],
          ),
          padding: const EdgeInsets.all(15.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(origin_a[num],
                          style: const TextStyle(fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text(destiny_a[num],
                          style: const TextStyle(fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ]
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(date_i_a[num],
                          style: const TextStyle(fontSize: 10,
                              color: Colors.white)),
                      Text(date_f_a[num],
                          style: const TextStyle(fontSize: 10,
                              color: Colors.white)),
                    ]
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(loc_i_a[num],
                          style: const TextStyle(fontSize: 10,
                              color: Colors.white)),
                      Text(loc_f_a[num],
                          style: const TextStyle(fontSize: 10,
                              color: Colors.white)),
                    ]
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(weight_a[num],
                          style: const TextStyle(fontSize: 10,
                              color: Colors.white)),
                      const Text("   "),
                      Text(dimensions_a[num],
                          style: const TextStyle(fontSize: 10,
                              color: Colors.white)),
                      const Text("       "),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(13, 14),

                            primary: Colors.green,
                          ),

                          onPressed: () {
                            /*
                            or = origin;
                            des = destiny;
                            d_i = date_i;
                            d_f = date_f;
                            l_i = loc_i;
                            l_f = loc_f;
                            w = weight;
                            d = dimensions;
                             */
                            n = num;
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => ApplyCargo()));
                          },
                          child: const Text("Apply", style: TextStyle(fontSize: 17),)
                      )
                    ]
                ),
              ]
          )
      );
    }
    else {
      return Container(
          height: 140,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.purple[900],
          ),
          padding: EdgeInsets.all(15.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(origin_a[num],
                          style: const TextStyle(fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text(destiny_a[num],
                          style: const TextStyle(fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ]
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(date_i_a[num],
                          style: const TextStyle(fontSize: 10,
                              color: Colors.white)),
                      Text(date_f_a[num],
                          style: const TextStyle(fontSize: 10,
                              color: Colors.white)),
                    ]
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(loc_i_a[num],
                          style: const TextStyle(fontSize: 10,
                              color: Colors.white)),
                      Text(loc_f_a[num],
                          style: const TextStyle(fontSize: 10,
                              color: Colors.white)),
                    ]
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(weight_a[num],
                          style: const TextStyle(fontSize: 10,
                              color: Colors.white)),
                      const Text("   "),
                      Text(dimensions_a[num],
                          style: const TextStyle(fontSize: 10,
                              color: Colors.white))
                    ]
                ),
                Row(
                    children: <Widget>[
                      const Text("Per mile: ",
                          style: TextStyle(fontSize: 15,
                              color: Colors.white)),
                      Text(permile_a[num],
                          style: const TextStyle(fontSize: 15,
                              decoration: TextDecoration.underline,
                              color: Colors.white)),
                      const Text("       Fixed: ",
                          style: TextStyle(fontSize: 15,
                              color: Colors.white)),
                      Text(fixed_a[num],
                          style: const TextStyle(fontSize: 15,
                              decoration: TextDecoration.underline,
                              color: Colors.white))
                    ]
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text("       "),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(13, 14),

                            primary: Colors.red,
                          ),

                          onPressed: () {

                          },
                          child: const Text(
                            "Applied", style: TextStyle(fontSize: 17),)
                      )
                    ]
                )
              ]
          )
      );
    }
  }
//}

ApplyButton(){
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(13, 14),

        primary: Colors.green,
      ),

      onPressed: (){
        runApp(ApplyCargo());


      },
      child: const Text("Apply",style: TextStyle(fontSize: 17),)
  );

}

SimulateButton(){
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(13, 14),

        primary: Colors.green,
      ),

      onPressed: (){
        runApp(Accepted_R());


      },
      child: const Text("Simulate Cargo Accepted",style: TextStyle(fontSize: 17))
  );

}

class Accepted_R extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Accepted Request",
      home: Accepted(),
    );
  }
}

class Accepted extends StatefulWidget{

  @override
  AcceptedState createState() => AcceptedState();
}

class AcceptedState extends State<Accepted>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: const Text("Accepted request")
        ),
        body: ListView(
            children: <Widget>[
              //Origen, Destino, Fecha_i, Fecha_f,Ubic_i,Ubic_f,Peso,Dimensiones
              Cargo_accepted(),
            ]

        )
    );
  }
}

Widget Cargo_accepted () {
  return Container(
      height: 300,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.lightBlue[900],
      ),
      padding: const EdgeInsets.all(15.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text("Congratulations!",style:TextStyle(fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white)),

            const Text("Your request has been accepted",style:TextStyle(fontSize: 14,
                color: Colors.white)),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(origin_a[num_accept],
                      style: const TextStyle(fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Text(destiny_a[num_accept],
                      style: const TextStyle(fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(date_i_a[num_accept],
                      style: const TextStyle(fontSize: 10,
                          color: Colors.white)),
                  Text(date_f_a[num_accept],
                      style: const TextStyle(fontSize: 10,
                          color: Colors.white)),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(loc_i_a[num_accept],
                      style: const TextStyle(fontSize: 10,
                          color: Colors.white)),
                  Text(loc_f_a[num_accept],
                      style: const TextStyle(fontSize: 10,
                          color: Colors.white)),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(weight_a[num_accept],
                      style: const TextStyle(fontSize: 10,
                          color: Colors.white)),
                  const Text("   "),
                  Text(dimensions_a[num_accept],
                      style: const TextStyle(fontSize: 10,
                          color: Colors.white)),
                ]
            ),
            Row(
                children: <Widget>[
                  const Text("Per mile: ",
                      style: TextStyle(fontSize: 15,
                          color: Colors.white)),
                  Text(permile_a[num_accept],
                      style: const TextStyle(fontSize: 15,
                          decoration: TextDecoration.underline,
                          color: Colors.white)),
                  const Text("       Fixed: ",
                      style: TextStyle(fontSize: 15,
                          color: Colors.white)),
                  Text(fixed_a[num_accept],
                      style: const TextStyle(fontSize: 15,
                          decoration: TextDecoration.underline,
                          color: Colors.white))
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text("       "),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(13, 14),

                        primary: Colors.green,
                      ),

                      onPressed: (){
                        runApp(Progress_R());
                        permile_a[0]=" ";
                        fixed_a[0]=" ";

                      },
                      child: const Text("Continue",style: TextStyle(fontSize: 17),)
                  )
                ]
            )
          ]
      )
  );
}

class Progress_R extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Accepted Request",
      home: Progress(),
    );
  }
}

class Progress extends StatefulWidget{

  @override
  ProgressState createState() => ProgressState();
}

class ProgressState extends State<Progress>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: const Text("Progress Bar")
        ),
        body: ListView(
            children: <Widget>[
              //Origen, Destino, Fecha_i, Fecha_f,Ubic_i,Ubic_f,Peso,Dimensiones
              ProgressBar(),
            ]

        )
    );
  }
}

Widget ProgressBar(){
  return Container(
      margin: const EdgeInsets.all(10),

      child:Column(children:<Widget>[const Icon(Icons.local_shipping_rounded,
      size: 200),
    const SizedBox(height: 20),
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget>[

          Progress2(true),

          Progress1(progressbar_a[0]),
          Progress2(progressbar_a[0]),
          Progress1(progressbar_a[1]),
          Progress2(progressbar_a[1]),
          Progress1(progressbar_a[2]),
          Progress2(progressbar_a[2]),
          Progress1(progressbar_a[3]),
          Progress2(progressbar_a[3]),
          Progress1(progressbar_a[4]),
          Progress2(progressbar_a[4]),
          Progress1(progressbar_a[5]),
          Progress2(progressbar_a[5]),
          Progress1(progressbar_a[6]),
          Progress2(progressbar_a[6]),


        ]
  ),
        const SizedBox(height: 50),
        ProgressText()
  ]
  )
  );
}

Widget Progress1(state) {
  if (state == false) {
    return Container(
        height: 10,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(100)),
          color: Colors.lightBlue[900],
        ),
        padding: const EdgeInsets.all(15.0));
  }
  else{
    return Container(
        height: 10,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          color: Colors.green,
        ),
        padding: const EdgeInsets.all(15.0));
  }
}

Widget Progress2(state) {
  if (state == false) {
    return Container(
        height: 20,
        width: 20,
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(100)),
          color: Colors.lightBlue[900],
        ),
        padding: const EdgeInsets.all(15.0));
  }
  else{
    return Container(
        height: 20,
        width: 20,
        margin: const EdgeInsets.all(3),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          color: Colors.green,
        ),
        padding: const EdgeInsets.all(15.0));
  }
}

Widget ProgressText(){
  if(p==0) {
    return Column(children: <Widget>[ const Text("Going to the pick up site",style: TextStyle(fontFamily: 'RobotoMono',fontSize: 25,fontWeight: FontWeight.bold,)),
      const SizedBox(height: 30),
      DoneButton()]);
  }
  else if(p==1){
    return Column(children: <Widget>[const Text("Arrival at pick up site",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,)),
      const SizedBox(height: 30),
      DoneButton()]);
  }
  else if(p==2){
    return Column(children: <Widget>[const Text("Van loaded",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
      const SizedBox(height: 30),
      DoneButton()]);
  }
  else if(p==3){
    return Column(children: <Widget>[const Text("Going to the delivery site",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
      const SizedBox(height: 30),
      DoneButton()]);
  }
  else if(p==4){
    return Column(children: <Widget>[const Text("Arrival at delivery site",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
      const SizedBox(height: 30),
      DoneButton()]);
  }
  else if(p==5){
    return Column(children: <Widget>[const Text("Van unloaded",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
      const SizedBox(height: 30),
      DoneButton()]);
  }
  else if(p==6){
    return Column(children: <Widget>[const Text("Cargo delivered",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
      const SizedBox(height: 30),
      DoneButton()]);
  }
  else {
    return Column(children: <Widget>[const Text("Back to Menu",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
      const SizedBox(height: 30),
      DoneButton()]);
  }
}

Widget DoneButton(){
  if(p<=6){
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(13, 14),

          primary: Colors.green,
        ),

        onPressed: (){

            progressbar_a[p]=true;
            p=p+1;
            runApp(Progress_R());

          permile_a[0]=" ";
          fixed_a[0]=" ";

        },
        child: const Text("DONE",style: TextStyle(fontSize: 27)));
  }
  else{
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(13, 14),

          primary: Colors.green,
        ),

        onPressed: (){
            runApp(Cargos_Menu());
            for(cont=0;cont<=4;cont++){
              progressbar_a=[false,
                false,
                false,
                false,
                false,
                false,
                false];


              permile_a=[" "," "," "," "," "];

              fixed_a=[" "," "," "," "," "];


              apply_a=[false,
                false,
                false,
                false,
                false];
            }

            p=0;
          permile_a[0]=" ";
          fixed_a[0]=" ";

        },
        child: const Icon(Icons.home,size: 30));

  }
}
