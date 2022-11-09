import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocalizacion_flutter/app/ui/pages/home/home_controller.dart';
import 'package:provider/provider.dart';





class HomePage extends StatelessWidget {
  const HomePage({Key? key}) :super(key: key);


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeController>(
      create: (_) {
        final controller = HomeController();
        controller.onMarkerTap.listen((String id) { 
          print('got to $id');

        });
        return controller;
      },
      child: Scaffold(
      appBar: AppBar(
       title: Text('Search'),
       
      ),
      body:
      
      
       Selector<HomeController,bool>(
        selector:(_,controller) => controller.loading ,
        builder: (context, loading, loadingWidget){
          if (loading){
            return loadingWidget!;
            
            
          }
         

          return  Consumer<HomeController>(
            
            
              builder: (_, controller, gpsMessageWidget ) {
                if (!controller.gpsEnabled){
                  return gpsMessageWidget!;
                  
                }

              

               

               
                return GoogleMap(
                 markers: controller.markers,
                 initialCameraPosition: controller.initialCameraPosition,
                 myLocationButtonEnabled: true,
                 myLocationEnabled: true,
                 compassEnabled: false,
                 onTap: controller.onTap,
                 
           
                 
                 
                 
                 

        );
        
       
        
        
      
        
      },
      child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min ,
                      children: [
                        const Text(
                          'Enable your GPS to use our aplication',
                          textAlign: TextAlign.center,
                          ),
                        const SizedBox(height: 10),
                       ElevatedButton(onPressed: (){
                        final controller = context.read<HomeController>();
                        controller.turnOnGPS();
                       }, 
                       child: const Text('Tunr on GPS'))   
                      ],
                    ),
                  ),  
      );
    },

    child: const Center(
              child: CircularProgressIndicator(),
              ),


      
      )
      

   
      
    ),
      );
  }
}