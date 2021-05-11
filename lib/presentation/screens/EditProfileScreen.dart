import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  TextEditingController firstNameCtr = TextEditingController(text: 'Obito');
  TextEditingController lastNameCtr = TextEditingController(text: 'Uchiha');
  TextEditingController userNameCtr = TextEditingController(text: 'Madara');

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40.0,
        elevation: 0.0,
        leading: Icon(Icons.chevron_left),
        title: Text(
          'Edit profile',
          style: TextStyle(fontSize: 15.0),
        ),
        centerTitle: true,
        actions: [
          Container(
            height: 50.0,
            width: 65.0,
            margin: EdgeInsets.only(right: 5.0),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(27.0),
            ),
            child: Center(
              child: Text(
                'Done',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white38,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('assets/images/obito.jpg'),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          contentPadding: EdgeInsets.all(0.0),
                          title: Center(
                            child: Text('Uchiha Obito'),
                          ),
                          content: Container(
                            height: _size.height * 0.33,
                            width: _size.width,
                            child: ListView(
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                Container(
                                  padding: EdgeInsets.all(24.0),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(6.0)),
                                      child: Image.asset(
                                          'assets/images/obito.jpg')),
                                ),
                                Divider(
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Center(
                                  child: Text(
                                    'Update profile picture',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          actionsPadding: EdgeInsets.all(0.0),
                        );
                      });
                },
                child: Container(
                  height: 40.0,
                  width: 45.0,
                  margin: EdgeInsets.only(right: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('First name'),
                  TextField(
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                    controller: firstNameCtr,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Last name'),
                  TextField(
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                    controller: lastNameCtr,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Username'),
                  TextField(
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                    controller: userNameCtr,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('About you'),
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Add a short bio or fun fact',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Location'),
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Add your city or region',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Website'),
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Add a link to your website',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
