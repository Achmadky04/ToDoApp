import 'package:flutter/material.dart';
import 'package:todoapp/models/todo.dart';

class AddTodo extends StatelessWidget {
  const AddTodo({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerTitle = TextEditingController();
    TextEditingController controllerDesc = TextEditingController();
    AppBar myAppBar = AppBar(
      title: const Text("Tambahkan Jadwalmu"),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
    );

    double heighBody = MediaQuery.of(context).size.height -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    double widthBody = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(controllerTitle.text.length != 0 || controllerDesc.text.length != 0 ) {
            dataTodo.add(Todo(
              id: DateTime.now().toString(),
              title: controllerTitle.text.length == 0 ? "No Title" : controllerTitle.text,
              desc: controllerDesc.text.length == 0 ? "No Desc" : controllerDesc.text),
              );
          }
              print(dataTodo);
              Navigator.pop(context);
        },
        child: Icon(Icons.add_task),
      ),
      appBar: myAppBar,
      body: Container(
        width: widthBody,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controllerTitle,
              maxLength: 20,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  hintText: "Nama Jadwal",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            SizedBox(
              height: heighBody * 0.05,
            ),
            TextField(
              controller: controllerDesc,
              maxLines: 10,
              style: TextStyle(fontSize: 15),
              decoration: InputDecoration(
                  hintText: "Masukkan Deskripsi Jadwalmu",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ],
        ),
      ),
    );
  }
}
