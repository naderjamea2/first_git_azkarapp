import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  String _alzeker ='أستغفر الله';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            'مسبحتي',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            PopupMenuButton<String>(
              offset: Offset(30, 30),
              icon: Icon(Icons.more_time,color: Colors.yellow,),
                onSelected: (String SelectedItem){
                switch(SelectedItem){
                  case 'z1':
                    setState(() {
                      _alzeker = 'سبحان الله';
                      _counter=0;

                    });
                    break;

                  case 'z2':
                    setState(() {
                      _alzeker = 'أستغفر الله';
                      _counter=0;

                    });
                    break;





                }

                },
                itemBuilder: (context) {
              return [
                PopupMenuItem(

                  child: Text('سبحان الله '),
                  value: 'z1',
                ),
                PopupMenuItem(

                  child: Text('استغفر الله '),
                  value: 'z2',
                ),

              ];
            })
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/tow.jpg'),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsetsDirectional.only(top: 10,bottom: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        _alzeker,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                      child: Text(
                        _counter.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),

                      // decoration: BoxDecoration(
                      // borderRadius: BorderRadius.only(
                      //   topLeft: Radius.circular(10),
                      //   bottomLeft: Radius.circular(10),
                      // ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: ElevatedButton(
                      onPressed: () {
                        // _counter+=1;
                        setState(() {
                          ++_counter;
                        });
                      },
                      child: Text(
                        'تسبيح',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter = 0;
                        });
                      },
                      child: Text('مسح'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
