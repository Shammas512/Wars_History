import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:historix/Wars/about_wars.dart';
import 'package:historix/Wars/warlist.dart';
import 'package:historix/widgets/display_container.dart';

class Warsmain extends StatelessWidget {
  const Warsmain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFD3AC),
      appBar: AppBar(
        backgroundColor: Color(0xffFFD3AC),
        title: const Text(
          "HistorioX",
          style: TextStyle(fontSize: 26, fontFamily: 'Roboto'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: wars.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Get.to(()=>AboutWars(warname: wars[index]['name'], imageurl: wars[index]['images'],introduction: wars[index]["introduction"],about: wars[index]["about"],impact:wars[index]["impact"] ,end: wars[index]["end"],),transition: Transition.fade,duration:const  Duration(milliseconds: 600 ));
                        },
                        child: MainContainer(
                          itext: wars[index]['name'],
                          imageurl: wars[index]['images'],
                        ));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
