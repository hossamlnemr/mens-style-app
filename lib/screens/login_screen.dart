 import 'package:clothes_shop/screens/home_screen.dart';
import 'package:clothes_shop/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';

 
 class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool passwordvis = true;


  void _login() {
    // Implement your authentication logic here.
    // For simplicity, we'll just check if the username and password are "admin".
    if (_usernameController.text == "admin" && _passwordController.text == "admin") {
      Navigator.push(context,MaterialPageRoute(builder: (ctx)=>const HomeScreen()));
    } else {
      // Show an error message or perform other actions for invalid login.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid credentials')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    

    return SafeArea(
      child: Scaffold(
        
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 Container(
                   padding: const EdgeInsets.all(5.0),
                   height: 250.0,
                   width: 150.0,
                   decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50.0),
                   border:Border.all(color:Theme.of(context).colorScheme.outline,width: 2.0 ),
                  color:Theme.of(context).colorScheme.onPrimary,
                  image: const DecorationImage(
                          image: NetworkImage('https://m.media-amazon.com/images/I/61PCGaOe5BL._AC_SX679_.jpg'),
                          fit: BoxFit.fill,
                        )
                ),
               
                   ),
                    const SizedBox(
                          height: 20.0,
                        ),
                 TextFormField(
                          controller: _usernameController,
                          keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (_) {},
                          onChanged: (val) {},
                          decoration: InputDecoration(
                            labelText: 'email address',
                            labelStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                               color:Theme.of(context).colorScheme.primary ,
                              fontWeight: FontWeight.bold,
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color:Theme.of(context).colorScheme.primary,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            fillColor: Theme.of(context).colorScheme.background,
                            filled: true,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                TextFormField(
                          controller: _passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: passwordvis,
                          onFieldSubmitted: (value) {},
                          onChanged: (val) {},
                          decoration: InputDecoration(
                            fillColor:Theme.of(context).colorScheme.background,
                            filled: true,
                            labelText: ' password',
                            labelStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                               color:Theme.of(context).colorScheme.primary ,
                              fontWeight: FontWeight.bold,
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color:Theme.of(context).colorScheme.primary,
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    passwordvis=!passwordvis;
                                  });
                                },
                                icon: Icon(  
                                  passwordvis
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                  color:Theme.of(context).colorScheme.primary ,
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                          
                        ),
                const SizedBox(height: 5.0),
                Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                          onPressed: () {}, child: const Text('forget password'))
                          ],
                        ),
                const SizedBox(height: 20.0),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    
                    onPressed: _login,
                    style: ButtonStyle(
                      textStyle:MaterialStateProperty.resolveWith((states) => Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),) ,
                      backgroundColor:MaterialStateColor.resolveWith((states) =>Theme.of(context).colorScheme.primary ) ,
                      foregroundColor:MaterialStateColor.resolveWith((states) =>Theme.of(context).colorScheme.onSecondary ) ,
                    ),
                    child:  Text('Login',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                      
                    )),
                  ),
                ),
             const SizedBox(height: 10,),
              Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an acount?',
                              style: TextStyle(
                                color:Theme.of(context).colorScheme.onPrimaryContainer,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const SignUp()));
                                }, child: const Text('register now'))
                          ],
                        ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
        },child: const Icon(Icons.dark_mode),),
      ),
    );
  }
}





