import 'package:flutter/material.dart';
import 'package:system_joyce/transformation.dart';

myVerse(BuildContext context, Bible bible){
  return showDialog(
      context: context,
      builder: (context){
        return SimpleDialog(
          title: Text("${bible.book} ${bible.chapter}:${bible.verse}", textAlign: TextAlign.center,),
          contentPadding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
          children: [
            Text(bible.text, textAlign: TextAlign.justify,)
          ],
        );
      }
  );
}