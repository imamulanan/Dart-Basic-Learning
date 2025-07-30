import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home:  HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

var MyItems=[
  {"img":"https://user-images.githubusercontent.com/55774240/151201813-4c0426f2-af8c-439b-964f-1e4ce6d28d3d.png","title":"Anan"},
  {"img":"https://user-images.githubusercontent.com/55774240/151201813-4c0426f2-af8c-439b-964f-1e4ce6d28d3d.png","title":"Miad"},
  {"img":"https://user-images.githubusercontent.com/55774240/151201813-4c0426f2-af8c-439b-964f-1e4ce6d28d3d.png","title":"Masum"},
  {"img":"https://user-images.githubusercontent.com/55774240/151201813-4c0426f2-af8c-439b-964f-1e4ce6d28d3d.png","title":"Miraj"},
  {"img":"https://user-images.githubusercontent.com/55774240/151201813-4c0426f2-af8c-439b-964f-1e4ce6d28d3d.png","title":"Meheraj"}
];

  MySnackBar(context, message ) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventory App"),
    ),
      body: ListView.builder(
        itemCount: MyItems.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){MySnackBar(context ,MyItems[index]['title'] );},
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              child: Image.network(MyItems[index]['img']!,fit:BoxFit.fill ,),
            ),
          );
        },
      ),

    );
  }
}
