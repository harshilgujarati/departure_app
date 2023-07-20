import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../controllers/providers/sholka_provider.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  void initState() {
    super.initState();
    Provider.of<JsonProvider>(context, listen: false).FormJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade300,
        title: Text(
          "Sanskrit Sholka",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              (ThemeData.light() == true)
                  ? Get.changeTheme(
                      ThemeData.light(useMaterial3: true),
                    )
                  : Get.changeTheme(ThemeData.dark(useMaterial3: true));
              setState(() {});
            },
            icon: Icon(
              Icons.sunny,
              size: 32,
            ),
          ),
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: Provider.of<JsonProvider>(context).chepters.length,
          itemBuilder: (context, index) => Card(
            elevation: 14,
            child: ListTile(
              horizontalTitleGap: 2,
              focusColor: Colors.red,
              style: ListTileStyle.list,
              isThreeLine: true,
              onTap: () {
                Navigator.of(context).pushNamed("sholka_details_page",
                    arguments: Provider.of<JsonProvider>(context, listen: false)
                        .chepters[index]);
                setState(() {});
              },
              leading: Text(
                "${Provider.of<JsonProvider>(context).chepters[index].Shlok_index} .",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              title: Text(
                  "${Provider.of<JsonProvider>(context).chepters[index].Sanskrit_Shlok}"),
              subtitle: Text(
                "- ${Provider.of<JsonProvider>(context).chepters[index].Source}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).pushNamed(
                      "autor_details",
                      arguments:
                          Provider.of<JsonProvider>(context, listen: false)
                              .chepters[index],
                    );
                  });
                },
                icon: Icon(
                  Icons.read_more,
                  size: 36,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
