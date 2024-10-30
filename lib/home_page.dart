import 'package:flutter/material.dart';
import 'package:listkuliner/list_item.dart';
import 'package:listkuliner/makanan.dart';
import 'package:listkuliner/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

    children: [
        const SizedBox(height: 20),
        const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.list_alt_sharp, size: 30),
          SizedBox(width: 10),
          Text('List Kuliner', style: textHeader1),
        ]),
        Padding(padding: EdgeInsets.only(bottom: 20)),
      Expanded(child: ListView.builder(
        itemCount: listMakanan.length,
        padding: const EdgeInsets.all(20),
        itemBuilder:(context,index){
          return ListItem(makanan: listMakanan[index]);
      } ))
        
    ],
);
  }
}