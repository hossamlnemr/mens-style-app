import 'package:flutter/material.dart';


class ProductScreen extends StatefulWidget {

   const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final List<String> images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi6FjPCTlQbdtenhrR5YlJTih4rB5jk4rfktvldwnqvglxwLfs8ObcU6s6Aw&s', // Replace with your image URLs
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1MypiJB7j1TZ7sJlIKDVK--Nvonlh-ROqkA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1MypiJB7j1TZ7sJlIKDVK--Nvonlh-ROqkA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi6FjPCTlQbdtenhrR5YlJTih4rB5jk4rfktvldwnqvglxwLfs8ObcU6s6Aw&s', // Replace with your image URLs
    

  ];
  String selectedImage='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1MypiJB7j1TZ7sJlIKDVK--Nvonlh-ROqkA&usqp=CAU';
   double c1=0;
   double c2=0;
   double c3=0;
   double c4=0;
   Color selctedColor= Colors.white;

  @override
  Widget build(BuildContext context) {

     return Scaffold(
        appBar: AppBar(
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: Image.network(selectedImage,height: 150,width: 100,),
                ),
                 const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      border: Border.all(color:Theme.of(context).colorScheme.primary),
                      borderRadius: BorderRadius.circular(10),
                     
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 10,),
                            GestureDetector(
                              onTap: () {
                                // Scroll to the image index when tapped
                                // You can implement scrolling logic here
                                setState(() {
                                  selectedImage=images[index];
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.circular(7),
                                
                                ),
                                child: Card(
                                  
                                  child: Image.network(
                                    images[index],
                                    width: 50, // Adjust the image size as needed
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,)
                          ],
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 18,),
                Row(
                  children: [
                    Text('    Bear in Black',style: Theme.of(context).textTheme.titleLarge,),
                    const Spacer(),
                    TextButton.icon(
                          onPressed: (){},
                          
                           label:  Text('4.5',
                           style:Theme.of(context).textTheme.bodyMedium),
                           icon: const Icon(Icons.star,
                          color:Colors.amber,
                        ),
                        ),
                  ],
                ),
                  const SizedBox(height: 18,),
                 Row(
                          children: [
                             Text('     Price:  \$100',style:Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimaryContainer,
                          ),),
                          const SizedBox(width: 3,),
                          const Text(
               '\$300',
              style: TextStyle(
                color:Colors.grey ,
                fontSize: 15,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.grey, // Optional: Change the strikethrough color
                decorationThickness: 2.0, // Optional: Set the strikethrough thickness
              ),
            ),
               ],
            ),
             const SizedBox(height: 18,),
             Row(
               children: [
                 Text('    Select Size',style: Theme.of(context).textTheme.titleLarge,),
               ],
             ),
             const SizedBox(height: 18,), 
              const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               ColorContainer(),
              ColorContainer(),
               ColorContainer(),
               ColorContainer(),
               ColorContainer(),
               ColorContainer(),
               
        
             
              ],
            ),
             const SizedBox(height: 18,), 
             Row(
               children: [
                 Text('    Select Color',style: Theme.of(context).textTheme.titleLarge,),
               ],
             ),
             const SizedBox(height: 15,), 
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
             GestureDetector(
              onTap: () {
                setState(() {
                  c1=c1==0?5:0;
                  c3=0;
                  c2=0;
                  c4=0;
                  selctedColor=Colors.white;
                });
              },
               child: Container(
                 width: 35,
                       height: 35,
                       decoration: BoxDecoration(
                         border:Border.all(width: c1,color: Theme.of(context).colorScheme.secondary),
                         boxShadow: [
                BoxShadow(
                       color: Colors.black.withOpacity(0.5),
                       spreadRadius: 0,
                       blurRadius: 4,
                       offset: const Offset(0, 4), // changes position of shadow
                ),
                         ],
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(7),
                       ),),
             ),
          GestureDetector(
             onTap: () {
                setState(() {
                  c2=c2==0?5:0;
                  c1=0;
                  c3=0;
                  c4=0;
                  selctedColor=Colors.black;
                });
                },
            child: Container(
                 width: 35,
            height: 35,
            decoration: BoxDecoration(
                border:Border.all(width: c2,color: Theme.of(context).colorScheme.secondary),
              boxShadow: [
                BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4), // changes position of shadow
                ),
              ],
              color: Colors.black,
              borderRadius: BorderRadius.circular(7),
            ),),
          ),
          GestureDetector(
             onTap: () {
                setState(() {
                  c3=c3==0?5:0;
                  selctedColor=Colors.blue;
                  c1=0;
                  c2=0;
                  c4=0;
                });
                },
            child: Container(
                 width: 35,
            height: 35,
            decoration: BoxDecoration(
                border:Border.all(width: c3,color: Theme.of(context).colorScheme.secondary),
              boxShadow: [
                BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4), // changes position of shadow
                ),
              ],
              color: Colors.blue[900],
              borderRadius: BorderRadius.circular(7),
            ),),
          ),
          GestureDetector(
             onTap: () {
                setState(() {
                  c4=c4==0?5:0;
                  c1=0;
                  c2=0;
                  c3=0;
                  selctedColor=Colors.red;
                });
                },
            child: Container(
                 width: 35,
            height: 35,
            decoration: BoxDecoration(
                border:Border.all(width: c4,color: Theme.of(context).colorScheme.secondary),
              boxShadow: [
                BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4), // changes position of shadow
                ),
              ],
              color: Colors.red,
            //  border: Border.all(color: Theme.of(context).colorScheme.primary),
              borderRadius: BorderRadius.circular(7),
            ),),
          ),
             
              ],
            ),
        
            const SizedBox(height: 30,), 
        
             SizedBox(
              width: double.infinity,
              height: 50,
               child: TextButton.icon(
                            onPressed: (){},
                            
                             label:  Text('Add Cart',
                             style:Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.bold
                            ),),icon: Icon(Icons.shopping_cart,
                            color:Theme.of(context).colorScheme.onPrimary
                             ,),
                             
                            
                            style: ButtonStyle(
                              backgroundColor:MaterialStateProperty.resolveWith((states) => Theme.of(context).colorScheme.primary ),
                               ),
                               
                            ),
             ),
        
              ],
            ),
          ),
        ),
      )
    ;
  }
  
}
class ColorContainer extends StatefulWidget {
  const ColorContainer({super.key});

  @override
  State<ColorContainer> createState() => _ColorContainerState();
}

class _ColorContainerState extends State<ColorContainer> {
   Color containerColor = const Color(0xFFF0DBA9);

  @override
  Widget build(BuildContext context) {
    return InkWell(
  
      onTap: () {
        setState(() {
          // تغيير لون الـ container عند النقر
          containerColor = containerColor ==const  Color(0xFFF0DBA9)
              ?Theme.of(context).colorScheme.primary
              :const Color(0xFFF0DBA9);
        });
      },
      child: Container(
        width: 45,
        height: 40,
        decoration: BoxDecoration(

          color: containerColor,
        //  border: Border.all(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(7),
        ),
        child:  Center(child: Text('XXL',style:Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: Theme.of(context).colorScheme.onPrimary
        ),)),
      ),
    );
  }
}




