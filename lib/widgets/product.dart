import 'package:clothes_shop/screens/product_details.dart';
import 'package:flutter/material.dart';

class Proudct extends StatefulWidget {
  const Proudct({super.key});

  @override
  State<Proudct> createState() => _ProudctState();
}

class _ProudctState extends State<Proudct> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
                   borderRadius:const BorderRadius.all(Radius.circular(15)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const ProductScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                           
                          decoration:  BoxDecoration(
                              color:const Color(0xFFF0DBA9),
                        
                              border: Border.all(color:Theme.of(context).colorScheme.primary,width: 1),
                              borderRadius: BorderRadius.circular(35),
                             
                            ),
                             child: Column(
                              children: [
                                Text('30% OFF',style:Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold
                        ),),
                        const SizedBox(height: 3,),
                        Expanded(child: Image.network('https://m.media-amazon.com/images/I/61IrEgdqMZL._AC_SY606_.jpg',width: 150,)),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Text('\$100',style:Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold
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
                       TextButton.icon(
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
                              ],
                             ),
                          ),
                );
  }
}