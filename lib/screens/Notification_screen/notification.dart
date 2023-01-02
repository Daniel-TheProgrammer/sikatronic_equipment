import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sikatronics_equipment/utils/colors.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  String datalimit = "";
  int? dataCount;
  bool islimt = false;
  static String request = "requests";
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
      .collection(request)
      .orderBy("submittedAt", descending: true)
      // .limit(10)
      .snapshots();

  @override
  void initState() {
    super.initState();
    // if()
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(children: [
                  Row(
                    children: [
                      Text(
                        'Latest Requests',
                        style: TextStyle(
                            color: Color(0xff441E59),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 700,
                    child: StreamBuilder<QuerySnapshot>(
                      stream: _usersStream,
                      builder: (BuildContext context,
                          AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasError) {
                          return Text('Something went wrong');
                        }

                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Text("Loading");
                        }

                        return ListView(
                          physics: AlwaysScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: snapshot.data!.docs
                              .map((DocumentSnapshot document) {
                            Map<String, dynamic> data =
                                document.data()! as Map<String, dynamic>;
                            datalimit = data.toString();
                            return Row(
                              children: [
                                Image.asset('assets/imgs/Ellipse 194.png'),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            data['name'],
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Spacer(),
                                          Expanded(
                                            child: Text(
                                              data['submittedAt'],
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xff361847),
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: data['description'],
                                                  style: TextStyle(
                                                      color: Color(0xff361847),
                                                      fontSize: 30),
                                                ),
                                                // TextSpan(text: 'just created a new \naccount for the company ', style: TextStyle( fontSize: 30,   color: Color(0xffA3A199),),),
                                                // TextSpan(text: 'Music Record', style: TextStyle(  color: Color(0xff361847),fontSize: 30))
                                              ],
                                            ),
                                            textScaleFactor: 0.5,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );

                            // ListTile(
                            //   title: Text(data['full_name']),
                            //   subtitle: Text(data['company']),
                            // );
                          }).toList(),
                        );
                      },
                    ),
                  )
                ]))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseFirestore.instance
              .collection(request)
              .snapshots()
              .forEach((querySnapshot) {
            for (QueryDocumentSnapshot docSnapshot in querySnapshot.docs) {
              docSnapshot.reference.delete();
            }
          });
        },
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: AppColor.accentColor400,
      ),
    );
  }
}
