import 'package:flutter/material.dart';

class AboutWars extends StatelessWidget {
  final String warname;
  final String imageurl;
  final String introduction;
  final String about;
  final String impact;
  final String end;

  const AboutWars(
      {super.key,
      required this.warname,
      required this.imageurl,
      required this.introduction, required this.about, required this.impact, required this.end});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffFFD3AC),
      appBar: AppBar(
        title: Text(warname),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: screenHeight * 0.3,
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(imageurl), fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                " - $warname",
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Inroduction",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                introduction,
                style: const TextStyle(fontSize: 9),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "About",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                about,
                style: const TextStyle(fontSize: 9),
              ),
               const SizedBox(
                height: 20,
              ),
              const Text(
                "Impact",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                impact,
                style: const TextStyle(fontSize: 9),
              ),
               const SizedBox(
                height: 20,
              ),
              const Text(
                "Ending",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                end,
                style: const TextStyle(fontSize: 9),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
