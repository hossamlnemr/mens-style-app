import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
   final TextEditingController _searchController = TextEditingController();
final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    // Add more items if needed
  ];

  void clearList() {
    setState(() {
      items.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Column(
              children: [
                Text('Search',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 25,),
                SizedBox(
                  height: 35,
                  child: TextField(
                    
                        style: Theme.of(context).textTheme.bodyMedium,
                        controller:_searchController ,
                        onSubmitted: (_)async {
                          setState(() {
                            _searchController.text=_searchController.text.replaceAll(' ', '');
                            if(_searchController.text!=''){
                              items.add(_searchController.text);
                            }
                            
                          });
                        },
                        decoration: InputDecoration(
                           contentPadding: const EdgeInsets.all(8.0),
                          fillColor: Theme.of(context).colorScheme.background,
                          prefixIcon: const Icon(Icons.search),
                          hintText: "Search",
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide:  BorderSide(color:Theme.of(context).colorScheme.primary,width: 10),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                         keyboardType: TextInputType.text,
                        ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Text('Recent',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(width: 20,),
                TextButton(onPressed: clearList, child: const Text('Clear all'))
                  ],
                ),
                 const SizedBox(height: 20,),
                  Divider(
                color:Theme.of(context).colorScheme.onBackground ,
                thickness: 2,
                height: 20,
                indent: 20,
                endIndent: 20,
              ),
             const SizedBox(height: 15,),
             Flexible(
               child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (BuildContext context, int index) {
                           return ListTile(
                            onTap: (){},
                title: Text(items[index],
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w500,color:Colors.grey ) ,
                ),
                trailing: IconButton(onPressed: (){
                  setState(() {
                    items.removeAt(index);
                  });
                }, icon:  Icon(Icons.delete_forever,color:Theme.of(context).colorScheme.primary  ,)),
                 );
                 },
                    ),
             ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}