import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sebha/utils/colors/app_colors.dart';
import 'package:sebha/utils/constants/zekr.dart';
import 'package:sebha/utils/styles/app_style.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  int round = 0;
  String zekr = Azkar.tsabeh[0];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  " اذكر الله",
                  style: AppStyle2.titleTextStyle2,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  // width: 350,
                  // height: 240,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.containerBack,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: next, icon: Icon(Icons.chevron_left)),
                          Expanded(
                            child: Text(
                              "$zekr",
                              textAlign: TextAlign.center,
                              style: AppStyle.titleTextStyle,
                            ),
                          ),
                          IconButton(
                              onPressed: back, icon: Icon(Icons.chevron_right)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: reset, icon: Icon(Icons.refresh)),
                          IconButton(
                              onPressed: AzkarList, icon: Icon(Icons.list)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                InkWell(
                  onTap: countRoundIncrement,
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 157, 122, 122),
                    radius: 75,
                    child: CircleAvatar(
                      backgroundColor: AppColors.containerBack,
                      radius: 70,
                      child: Text(
                        "$counter/33",
                        style: AppStyle.titleTextStyle,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Round $round",
                  style: AppStyle2.titleTextStyle2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void reset() {
    counter = 0;
    round = 0;
    setState(() {});
  }

  void countRoundIncrement() {
    if (counter < 33) {
      counter++;
    } else {
      counter = 0;
      round++;
    }
    setState(() {});
  }

  void AzkarList() {
    showModalBottomSheet(
        backgroundColor: AppColors.ScaffoldBackColor,
        context: context,
        builder: (context) {
          return ListView.builder(
              itemCount: Azkar.tsabeh.length,
              itemBuilder: ((context, index) {
                return TextButton(
                    onPressed: () {
                      select(Azkar.tsabeh[index]);
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: AppColors.containerBack,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "${Azkar.tsabeh[index]}",
                        textAlign: TextAlign.center,
                        style: AppStyle.titleTextStyle,
                      ),
                    ));
              }));
        });
  }

  select(String newzekr) {
    setState(() {
      zekr = newzekr;
      counter = 0;
      round = 0;
    });
  }

  void back() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
        
      } else {
        currentIndex = Azkar.tsabeh.length - 1;
      }
      zekr = Azkar.tsabeh[currentIndex];
      counter = 0;
        round = 0;
    });
  }

  void next() {
    setState(() {
      if (currentIndex < Azkar.tsabeh.length - 1) {
        currentIndex++;
        
      } else {
        currentIndex = 0;
      }
      zekr = Azkar.tsabeh[currentIndex];
      counter = 0;
        round = 0;
    });
  }
}





