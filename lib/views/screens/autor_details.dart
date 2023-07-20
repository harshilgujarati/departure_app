import 'package:departure/models/sholka_model.dart';
import 'package:flutter/material.dart';

class autor_details extends StatefulWidget {
  const autor_details({super.key});

  @override
  State<autor_details> createState() => _autor_detailsState();
}

class _autor_detailsState extends State<autor_details> {
  @override
  Widget build(BuildContext context) {
    Chapters sholkadata =
        ModalRoute.of(context)!.settings.arguments as Chapters;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Books : ${sholkadata.Source}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.yellow.shade600,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.sunny),
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
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
                  "assets/images/qzz896.webp",
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Book Details :",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 350,
                width: 340,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "Hitopadesha (Sanskrit: हितोपदेशः, IAST: Hitopadeśa,('Beneficial Advice') is an Indian text in the Sanskrit language consisting of fables with both animal and human characters. It incorporates maxims, worldly wisdom and advice on political affairs in simple, elegant language, and the work has been widely translated",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
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
            ],
          ),
        ),
      ),
    );
  }
}
