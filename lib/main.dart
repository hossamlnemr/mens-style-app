// import 'package:clothes_shop/screens/home_screen.dart';
import 'package:clothes_shop/screens/login_screen.dart';
// import 'package:clothes_shop/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>ThemeProvider(),
      child:Consumer <ThemeProvider>(builder: (context, themeProvider, child) {
        return  MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            
          colorScheme: ColorScheme.fromSeed(seedColor: const  Color(0xFF703E2A),brightness:
          themeProvider._isDarkMode?Brightness.dark: Brightness.light,
           
           ),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const LoginPage() ,
      );
      },)
      
     
    );
  }
}

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}