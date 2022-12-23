import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool varSementara = true;
  @override
  Widget build(BuildContext context) {
    AppBar myAppBar = AppBar(
      title: Text("Jadwalin Yuk"),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
    );

    double heighBody = MediaQuery.of(context).size.height -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    double widthBody = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: myAppBar,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: widthBody,
                height: heighBody * 0.15,
                // color: Colors.amber,
                padding: const EdgeInsets.all(20),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.search),
                      hintText: "Cari Jadwalmu di Sini"),
                ),
              ),
              Container(
                  // padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: heighBody * 0.85,
                  width: widthBody,
                  // color: Colors.amber,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: ((context, index) {
                      return CheckboxListTile(
                        secondary: IconButton(onPressed: () {}, icon: Icon(Icons.delete,
                          color: Colors.red,)),
                        controlAffinity: ListTileControlAffinity.leading,
                        title: const Text(
                          "Title",
                          style: TextStyle(fontSize: 17),
                        ),
                        subtitle: const Text("Subtitle"),
                        value: varSementara,
                        onChanged: (value) {},
                      );
                    }),
                  ))
            ],
          ),
        ));
  }
}
