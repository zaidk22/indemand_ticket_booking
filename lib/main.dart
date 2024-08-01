import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/injection.dart';
import 'package:indemand_ticket_booking/presentation/app_widget.dart';
import 'package:injectable/injectable.dart';



void main() {

     WidgetsFlutterBinding.ensureInitialized();
    
      configureInjection(Environment.prod);
  runApp(const AppWigdet());
}


