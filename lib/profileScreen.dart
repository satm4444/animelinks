import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      //   appBar: AppBar(),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 13.0, top: 6),
                    child: Text(
                      "Pr0fILE",
                      style: TextStyle(
                        //    color: Colors.white,
                        color: Color(0xff4B0082),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Vonique",
                        fontSize: 38,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                          height: 200,
                          width: double.infinity,
                          // color: Color(0xff4B0082),
                          child: new FadeInImage.assetNetwork(
                            // fadeInDuration: Duration(seconds: 2),
                            // fadeInCurve: Curves.bounceInOut,
                            placeholder: 'assets/loading.jpg',
                            image:
                                'https://www.xtrafondos.com/en/descargar.php?id=3716&resolucion=2560x1440',
                            fit: BoxFit.cover,
                            height: 200.0,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              top: 190,
              child: Container(
                // width: double.infinity,
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 76,
                      child: CircleAvatar(
                        radius: 72,
                        backgroundImage: NetworkImage(
                            "https://vignette.wikia.nocookie.net/noblesse/images/8/80/Rai-brother-396.png/revision/latest/top-crop/width/360/height/450?cb=20160309100901"),
                      ),
                    ),
                    //  SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 135,
              right: 0,
              top: 355,
              child: Text(
                "Done  J",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Vonique",
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              top: 410,
              child: ListView(children: <Widget>[
                Column(
                  children: <Widget>[
                    Divider(
                      color: Color(0xff4B0082),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Color(0xff4B0082),
                      ),
                      title: Text(
                        "done.conkie16@gmail.com",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Divider(
                      color: Color(0xff4B0082),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.security,
                        color: Color(0xff4B0082),
                      ),
                      title: Text(
                        "Accounts & Security",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Divider(
                      color: Color(0xff4B0082),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.feedback,
                        color: Color(0xff4B0082),
                      ),
                      title: Text(
                        "Feedback",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Divider(
                      color: Color(0xff4B0082),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.note,
                        color: Color(0xff4B0082),
                      ),
                      title: Text(
                        "Disclamer",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Divider(
                      color: Color(0xff4B0082),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.delete,
                        color: Color(0xff4B0082),
                      ),
                      title: Text(
                        "Clear Cache",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Divider(
                      color: Color(0xff4B0082),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
