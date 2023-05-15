
import 'package:counter_app/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/them_provider.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
      AppBar(
        title: const Text("Counter App"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context,listen: false).changtheme();
            },
            icon: Icon(Icons.sunny),
          ),
        ],
      ),
      floatingActionButton: Consumer<CounterProvider>(
        builder:(context,counterProvider,_)=>FloatingActionButton(onPressed: (){
          counterProvider.incrementCounter();
        },
          child: Icon(Icons.add),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterProvider>(
              builder:(context,counterProvider,_)=>Text(
                "${counterProvider.c}",
                style: TextStyle(fontSize: 65),
              ),
            )
          ],
        ),
      ),
    );
  }
}
