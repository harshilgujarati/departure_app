import 'package:departure/models/sholka_model.dart';
import 'package:flutter/material.dart';

class sholka_details_page extends StatefulWidget {
  const sholka_details_page({Key? key}) : super(key: key);

  @override
  State<sholka_details_page> createState() => _sholka_details_pageState();
}

class _sholka_details_pageState extends State<sholka_details_page> {
  @override
  Widget build(BuildContext context)
  {
    Chapters sholkadata = ModalRoute.of(context)!.settings.arguments as Chapters;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sholka No : ${sholkadata.Shlok_index}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/blurred-colorful-vertical-portrait-display-wallpaper-preview.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: 320,
                child: Image.asset(
                  "assets/images/download.jpeg",
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Sholka In Sanskrit :",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 70,
                width: 340,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "${sholkadata.Sanskrit_Shlok}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Translate In English :",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 170,
                width: 340,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "${sholkadata.English_Shlok}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.green.shade300,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Translate In Hindi :",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 170,
                width: 340,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "${sholkadata.Hindi_shlok}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.red.shade300,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Translate In Gujarati :",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 170,
                width: 340,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "${sholkadata.Gujarati_shlok}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.purple.shade300,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}
