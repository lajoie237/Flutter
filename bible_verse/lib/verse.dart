import 'package:flutter/material.dart';
import 'package:system_joyce/data_from_json.dart';
import 'package:system_joyce/show_verse.dart';
import 'package:system_joyce/transformation.dart';

class Verse extends StatelessWidget {
  const Verse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "BIBLE VERSE",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 55
                    ),
                  ),
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/bible.jpeg"),
                    fit: BoxFit.cover,
                    opacity: .5
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 12, right: 12, top: 12),
                height: MediaQuery.of(context).size.height*.8,
                child: ListView.builder(
                  itemCount: json.length,
                    itemBuilder: (context, index){
                    var data = Bible.fromJson(json[index]);
                      return InkWell(
                        onTap: (){
                          myVerse(context, data);
                        },
                        child: Card(
                          elevation: 5,
                          child: ListTile(
                            title: Text("${data.book} ${data.chapter}:${data.verse}"),
                            subtitle: Text(data.text),
                            leading: Image.asset("images/colombe.png", width: 60,),
                          ),
                        ),
                      );
                    },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
