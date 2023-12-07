import 'package:clothes_shop/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
    bool passwordvis = true;
      bool confirmPasswordvisable = true;


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
                Text('Create your Acount',style:Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  
                ),textAlign:TextAlign.left,),
                    const SizedBox(
                          height: 4.0,
                        ),
                          Text('please fill this information for sign up',style:Theme.of(context).textTheme.bodyLarge!.copyWith(),
                          textAlign:TextAlign.left,),
                    const SizedBox(
                          height: 20.0,
                        ),
                         TextFormField(
                         // controller: ,
                          keyboardType: TextInputType.name,
                          onFieldSubmitted: (_) {},
                          onChanged: (val) {},
                          decoration: InputDecoration(
                            labelText: 'Name',
                            labelStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                               color:Theme.of(context).colorScheme.primary ,
                              fontWeight: FontWeight.bold,
                            ),
                            prefixIcon: Icon(
                              Icons.person,
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
                         // controller: ,
                          keyboardType: TextInputType.phone,
                          onFieldSubmitted: (_) {},
                          onChanged: (val) {},
                          decoration: InputDecoration(
                            labelText: 'Phone',
                            labelStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                               color:Theme.of(context).colorScheme.primary ,
                              fontWeight: FontWeight.bold,
                            ),
                            prefixIcon: Icon(
                              Icons.phone,
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
                         // controller: ,
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
                       //   controller: ,
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
                                   ?Icons.visibility_off
                                   :Icons.visibility,
                                  color:Theme.of(context).colorScheme.primary ,
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                          
                        ),
        
                const SizedBox(height: 20.0),
                  TextFormField(
                       //   controller: ,
                          keyboardType: TextInputType.visiblePassword,
                          onFieldSubmitted: (value) {},
                          obscureText: confirmPasswordvisable,
                          onChanged: (val) {},
                          decoration: InputDecoration(
                            fillColor:Theme.of(context).colorScheme.background,
                            filled: true,
                            labelText: 'Confirm password',
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
                                    confirmPasswordvisable=!confirmPasswordvisable;
                                  });
                                },
                                icon: Icon( 
                                  confirmPasswordvisable
                                  ?Icons.visibility_off
                                  :Icons.visibility,
                                  color:Theme.of(context).colorScheme.primary ,
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                          
                        ),
               
                const SizedBox(height: 20.0),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    
                    onPressed: (){},
                    style: ButtonStyle(
                      textStyle:MaterialStateProperty.resolveWith((states) => Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),) ,
                      backgroundColor:MaterialStateColor.resolveWith((states) =>Theme.of(context).colorScheme.primary ) ,
                      foregroundColor:MaterialStateColor.resolveWith((states) =>Theme.of(context).colorScheme.onSecondary ) ,
                    ),
                    child:  Text('Sign up',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                      
                    )),
                  ),
                ),
             const SizedBox(height: 10,),
              Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account',
                              style: TextStyle(
                                color:Theme.of(context).colorScheme.onPrimaryContainer,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const LoginPage()));
                                }, child: const Text('log in'))
                          ],
                        ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}