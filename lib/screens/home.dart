import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, String? title}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool selectedTag = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Color myColor = Color(0xff5446b7);
    // Color myColor = Color(123456)

    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 20, left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Choose What",
                style: GoogleFonts.inter(
                    fontSize: 40, fontWeight: FontWeight.w300)),
            Text("To Learn Today ?",
                style: GoogleFonts.inter(
                    fontSize: 40, fontWeight: FontWeight.w700)),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTag = true;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 150,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          color:
                              selectedTag ? Colors.black : Colors.amberAccent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text("Brain Storme",
                              style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white)),
                        ),
                      ),
                    );
                  })),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 220,
              width: width * 0.95,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: myColor),
              child: Stack(children: <Widget>[
                Positioned(
                  bottom: 30,
                  left: 20,
                  child: Container(
                    height: 60,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Start",
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black)),
                        SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.play_circle_fill,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 20,
                    left: 20,
                    child: Text("Vocabulary",
                        style: GoogleFonts.inter(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.white))),
                Positioned(
                    top: 65,
                    left: 20,
                    child: Text("Listen 20 New Words",
                        style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.white)))
              ]),
            ),
            SizedBox(
              height: 25,
            ),
            Text("Recommended",
                style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: Colors.black)),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                  itemCount: 40,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      leading: Icon(Icons.music_note),
                      title: Text("Chatting",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                      trailing: const Icon(
                        Icons.bookmark,
                        color: Colors.black,
                      ),
                    );
                    // return Container(child: Text("hello"));
                  })),
            ),
            const SizedBox(
              height: 25,
            ),
            Text("Top 10 Songs",
                style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: Colors.black)),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                  itemCount: 40,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      leading: Icon(Icons.music_note),
                      title: Text("Chatting",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                      trailing: const Icon(
                        Icons.bookmark,
                        color: Colors.black,
                      ),
                    );
                    // return Container(child: Text("hello"));
                  })),
            )
          ],
        ),
      ),
    )));
  }
}
