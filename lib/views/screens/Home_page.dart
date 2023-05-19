import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
            onPressed: () {},
            icon: (ThemeMode.dark == true)
                ? Icon(Icons.mode_night)
                : Icon(Icons.light_mode),
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: Provider.of<JsonProvider>(context).chepters.length,
          itemBuilder: (context, index) => Card(
            elevation: 14,
            child: ListTile(
              horizontalTitleGap: 2,
              style: ListTileStyle.list,
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
                  "- ${Provider.of<JsonProvider>(context).chepters[index].Source}",style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border_rounded,
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
