import 'package:e_commerce/src/data/provider/favourite_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'src/presentation/widgets/widget_bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx)=>Favourite(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Grocery App',
        theme: ThemeData(
          primarySwatch: Colors.teal,
            iconTheme: IconThemeData(color: Colors.black.withOpacity(0.8))
        ),
        home: const BottomNavigationWidget(),
      ),
    );
  }
}
