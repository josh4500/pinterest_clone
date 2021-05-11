import 'package:flutter/material.dart';
import 'package:pinterest_clone/presentation/widgets/AccountListTile.dart';

class AddAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.close),
        ),
        title: Text(
          'Add account',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Add a new account or connect an existing account \n for seamless account switching'),
              Container(
                padding: EdgeInsets.all(24.0),
                margin: EdgeInsets.symmetric(vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26.0),
                  color: Colors.white12,
                ),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.indigo.shade900),
                          child: Icon(Icons.add_business_outlined),
                        ),
                        Text(
                          'Create a free business\naccount',
                          maxLines: 2,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: _size.width / 2.4),
                      child: Column(
                        children: [
                          Text(
                            'Unlock tools to help:',
                            style: TextStyle(
                              height: 2.0,
                            ),
                          ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.done,
                              ),
                              Text('Grow your audience'),
                            ],
                          ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.done),
                              Text('Drive traffic'),
                            ],
                          ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.done),
                              Text('Sell more products'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(
                          24.0,
                        ),
                      ),
                      child: Text(
                        'Create',
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              AccountListTile(
                icon: Icons.add,
                title: 'Create a new personal\naccount',
                subtitle:
                    'Create a seperate account\nwith another email address',
                color: Colors.green.shade800,
              ),
              AccountListTile(
                icon: Icons.person_add,
                title: 'Connect existing\naccount',
                subtitle:
                    'Connect Pinterest accounts\nwith different emails for\nseamless account switching',
                color: Colors.orange.shade600,
              ),
              AccountListTile(
                title: 'Manage accounts',
                subtitle:
                    'You can change or convert your\naccount at any time. Go to settings >\nAccount settings > Account changes',
              )
            ],
          ),
        ),
      ),
    );
  }
}
