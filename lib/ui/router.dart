// Add views here
import 'package:flutter/material.dart';
import 'package:cloudmall_v2/core/constants/route_paths.dart';
// Set up router for the project

class XRouter {
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){

      // Add Routes here
    ///
    /// case Routes.NAME_OF_SCREEN:
    /// return MaterialPageRoute(builder: (_) => Screen());
    ///

      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text("No route defined for ${settings.name}"),
          ),
        ));
    }
  }
}