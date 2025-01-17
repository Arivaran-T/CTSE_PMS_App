import '../Screens/LIstViewItems.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Navigations extends StatefulWidget {
  const Navigations({super.key});

  @override
  State<Navigations> createState() => _NavigationsState();
}

class _NavigationsState extends State<Navigations> {
  var dataview = [
    {
      "imageURL": "lib/assets/images/UserManagement.png",
      "heading": "User Management"
    },
    {
      "imageURL": "lib/assets/images/pre-school.png",
      "heading": "Pre-schools Management"
    },
    {
      "imageURL": "lib/assets/images/announcement.png",
      "heading": "Announcements Management"
    },
    {
      "imageURL": "lib/assets/images/examMarks.png",
      "heading": "exam Marks Management"
    },
    {
      "imageURL": "lib/assets/images/parentsMeeting.png",
      "heading": "parents Meetings schedule"
    },
    {"imageURL": "lib/assets/images/menu.png", "heading": "More details"},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: EdgeInsets.all(20.0),
          // width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.85,
          width: MediaQuery.of(context).size.width,
          child: GridView.builder(
            itemCount: dataview.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 13.0,
                mainAxisSpacing: 13.0),
            itemBuilder: (BuildContext context, int index) {
              return Material(
                borderRadius: BorderRadius.circular(24),
                color: Colors.teal[400],
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ListViewItems(),
                    ));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      textDirection: TextDirection.ltr,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          child: Image.asset(
                            '${dataview[index]['imageURL']}',
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            textAlign: TextAlign.center,
                            '${dataview[index]['heading']}',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}
