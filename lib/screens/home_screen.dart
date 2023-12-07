
import 'package:clothes_shop/screens/search_screen.dart';
import 'package:clothes_shop/widgets/product.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                  decoration:  BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color:Theme.of(context).colorScheme.primary,width: 2),
                      borderRadius: BorderRadius.circular(40),
                      image: const DecorationImage(
                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi6FjPCTlQbdtenhrR5YlJTih4rB5jk4rfktvldwnqvglxwLfs8ObcU6s6Aw&s'),
                        fit: BoxFit.cover,
                      )
                    ),
                     
                  ),
                ],
              ),
              const SizedBox(height: 10,),
          
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Flexible(
                   child: SizedBox(
                    height: 30,
                     child: TextField(
                       onTap: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>const Search()));
                        });
                      },
                      style: Theme.of(context).textTheme.bodyMedium,
                      decoration: InputDecoration(
                         contentPadding: const EdgeInsets.all(8.0),
                        fillColor: Theme.of(context).colorScheme.background,
                        hoverColor: Theme.of(context).colorScheme.primary,
                        prefixIcon: const Icon(Icons.search),
                        hintText: "Search",
                        filled: true,
                        border: OutlineInputBorder(
                          
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                       maxLines: 1, // Allows multiline input
                       keyboardType: TextInputType.multiline,
                                   ),
                   ),
                 ),
                     const SizedBox(width: 7,),
                     IconButton(onPressed: (){}, icon:const Icon(Icons.list) )
                ],
              ),
           const SizedBox(height: 25,),
           Expanded(
             child: SingleChildScrollView(
               child: Column(
                children: [
                  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text('Category',style: Theme.of(context).textTheme.titleLarge,),
                 ],
               ),
                    const SizedBox(height: 25,),
                       SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                  children: [
                    InkWell(
                      onTap: (){},
                      borderRadius:const BorderRadius.all(Radius.circular(15)),
                      child: Container(
                                height: 100,
                                width: 150,
                              decoration:  BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color:Theme.of(context).colorScheme.primary,width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1MypiJB7j1TZ7sJlIKDVK--Nvonlh-ROqkA&usqp=CAU'),
                                    fit: BoxFit.fill,
                                  )
                                ),
                                 
                              ),
                    ),
                            const SizedBox(height: 12,),
                            Text('Men',style:Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold
                            ),)
                  ],
                ),
                const SizedBox(width: 20,),
                Column(
                  children: [
                    InkWell(
                       borderRadius:const BorderRadius.all(Radius.circular(15)),
                      onTap: () {
                        
                      },
                      child: Container(
                                height: 100,
                                width: 150,
                              decoration:  BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color:Theme.of(context).colorScheme.primary,width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvT8jR0GZF8QfdPbBX0eQpmVT_pnm8rDX_rw&usqp=CAU'),
                                    fit: BoxFit.fill
                                  )
                                ),
                                 
                              ),
                    ),
                            const SizedBox(height: 12,),
                            Text('Childern',style:Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold
                            ),)
                  ],
                ),
                  ],
                ),
                       ),
                       const SizedBox(height: 30,),
                       GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                       gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 5.8 /6,
                crossAxisSpacing: 15,
                mainAxisSpacing: 10,
                       ),
                       children:const [
               Proudct(),
               Proudct(),
               Proudct(),
               Proudct(),
               Proudct(),
               Proudct(),
                Proudct(),
               Proudct(),
               Proudct(),
               Proudct(),
               Proudct(),
               Proudct(),
                Proudct(),
               Proudct(),
               Proudct(),
               Proudct(),
               Proudct(),
               Proudct(),
               
                  
                       ],
                    ),
                ],
               ),
             ),
           ),
                 
            ],
          ),
        ),
       bottomNavigationBar: BottomNavigationBar(
        // onTap:,
        type: BottomNavigationBarType.fixed,
        useLegacyColorScheme: true,
        currentIndex: 0,
        iconSize: 20,
        items: const [
         BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Menu'),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'card'),
      BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account')
        
      
      ]),
      ),
    );
  }
}