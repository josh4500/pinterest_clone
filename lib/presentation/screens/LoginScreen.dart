import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  bool _hideEmailComplete = true;
  FocusNode focusNode = FocusNode();

  void addCompleteEmail(String end) {
    setState(() {
      List<String> begin = emailController.text.split("@");
      emailController.text = begin[0] + end;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/testImage1.jpeg',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: ((_size.height / 2) - 25) - 50,
                  height: 50,
                  width: _size.width,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50.0,
                          spreadRadius: 80.0,
                          offset: Offset(0, 20),
                        )
                      ],
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  top: ((_size.height / 2) - 25) - _size.width / 4,
                  left: (_size.width / 2) - (_size.width / 8),
                  height: _size.width / 4,
                  width: _size.width / 4,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_size.width / 4),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 200.0,
                          spreadRadius: 50.0,
                          offset: Offset(0, 12),
                        )
                      ],
                      color: Colors.red[900],
                    ),
                    child: Center(
                      child: Text(
                        'P',
                        style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              clipBehavior: Clip.antiAliasWithSaveLayer,
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 60.0, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to Pinterest',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0)),
                              color: Colors.white10,
                            ),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  if (emailController.text.length > 0) {
                                    _hideEmailComplete = false;
                                  } else {
                                    _hideEmailComplete = true;
                                  }
                                });
                              },
                              focusNode: focusNode,
                              controller: emailController,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.white54),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 16.0),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          RoundedIconButton(
                            text: 'Continue',
                            color: Colors.red[900],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          RoundedIconButton(
                            icon: Icon(Icons.face),
                            text: 'Continue with Facebook',
                            color: Colors.blueAccent[700],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          RoundedIconButton(
                            icon: Icon(Icons.card_giftcard_rounded),
                            text: 'Continue with Google',
                            color: Colors.white10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'By continuing, you agree to Pinterest\' Terms of Service and Privacy Policy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            child: !_hideEmailComplete
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      EmailComplete(
                        text: '@gmail.com',
                        onClick: addCompleteEmail,
                      ),
                      EmailComplete(
                        text: '@yahoo.com',
                        onClick: addCompleteEmail,
                      ),
                      EmailComplete(
                        text: '@hotmail.com',
                        onClick: addCompleteEmail,
                      ),
                    ],
                  )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}

class EmailComplete extends StatelessWidget {
  EmailComplete({@required this.text, this.onClick});
  final String text;
  final Function onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick(text);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(5.0), right: Radius.circular(5.0)),
          ),
          child: Center(
            child: Text(text),
          ),
        ),
      ),
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({@required this.text, this.icon, this.color});
  final String text;
  final Icon icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        color: color,
      ),
      child: Row(
        children: [
          icon ?? SizedBox(),
          Expanded(
            flex: 1,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
