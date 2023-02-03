import 'package:flutter/material.dart';

import 'Style.dart';

class TodoPage extends StatefulWidget {
  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List TodoList = [];
  String item = "";
  MyInputOnchange(content) {
    setState(() {
      item = content;
    });
  }

  AddItem() {
    setState(() {
      TodoList.add({"item": item});
    });
  }

  RemoveItem(index) {
    setState(() {
      TodoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Todo")),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                    flex: 70,
                    child: TextFormField(
                      onChanged: (content) {
                        MyInputOnchange(content);
                      },
                      decoration: AppInputDecoration("List Item"),
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: ElevatedButton(
                          onPressed: () {
                            AddItem();
                          },
                          child: Text("Add"),
                          style: AppButtonStyle(),
                        )),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 90,
              child: ListView.builder(
                itemCount: TodoList.length,
                itemBuilder: ((context, index) {
                  return Card(
                      child: sizedBox50(Row(
                    children: [
                      Expanded(
                          flex: 80,
                          child: Text(TodoList[index]['item'].toString())),
                      Expanded(
                          flex: 30,
                          child: TextButton(
                            onPressed: () {
                              RemoveItem(index);
                            },
                            child: const Icon(Icons.delete),
                          ))
                    ],
                  )));
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
