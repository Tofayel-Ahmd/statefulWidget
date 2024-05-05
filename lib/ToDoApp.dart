import 'package:flutter/material.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  List ToDoList=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("To Do Application")),
      ),
      body: Container(
          padding: EdgeInsets.all(7),
          child: Column(children: [
            Expanded(
                flex: 10,
                child: Row(
                  children: [
                    const Expanded(
                      child: TextField(),
                    ),
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Add"),
                    )),
                  ],
                )),
             Expanded(
                flex: 90,
                child: ListView.builder(
                  itemCount: ToDoList.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: Text('List View'),
                    );

                  }
                )
                )
          ]
             )),
    );
  }
}
