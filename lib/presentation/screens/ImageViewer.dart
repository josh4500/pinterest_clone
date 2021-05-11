import 'package:flutter/material.dart';
import 'package:pinterest_clone/presentation/widgets/ImageCard.dart';

class ImageViewer extends StatelessWidget {
  final List<String> _imageContents = [
    'Strange Habours Film | Black Panther 1',
    'Strange Habours Film | Black Panther 2',
    'Strange Habours Film | Black Panther 3',
    'Strange Habours Film | Black Panther 4',
    'Strange Habours Film | Black Panther 5',
    'Strange Habours Film | Black Panther 6',
    'Strange Habours Film | Black Panther 7',
    'Strange Habours Film | Black Panther 8',
    'Strange Habours Film | Black Panther 9',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          height: 45.0,
          width: 45.0,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.black54),
          child: Icon(Icons.chevron_left),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      color: Theme.of(context).backgroundColor,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white24,
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              child: Stack(children: [
                                Image.asset(
                                  'assets/images/obito.jpg',
                                  fit: BoxFit.fitHeight,
                                ),
                                Positioned(
                                  right: 0,
                                  child: IconButton(
                                    icon: Icon(Icons.more_horiz_outlined),
                                    onPressed: () {},
                                  ),
                                )
                              ]),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/obito.jpg'),
                              ),
                              title: Row(
                                children: [
                                  Text('Storenvy'),
                                  Icon(
                                    Icons.arrow_circle_down_rounded,
                                    size: 12.0,
                                  )
                                ],
                              ),
                              subtitle: Text('1m Followers'),
                              trailing: Container(
                                height: 50.0,
                                width: 65.0,
                                decoration: BoxDecoration(
                                  color: Colors.white38,
                                  borderRadius: BorderRadius.circular(27.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'Follow',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'I have much free time',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.comment),
                                  onPressed: () {},
                                ),
                                Spacer(),
                                Container(
                                  height: 60.0,
                                  width: 70.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white38,
                                    borderRadius: BorderRadius.circular(27.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Visit',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 60.0,
                                  width: 70.0,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(27.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Save',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(Icons.share),
                                  onPressed: () {},
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Theme.of(context).backgroundColor,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 16.0),
                        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white24,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Share your feedback',
                              style: TextStyle(
                                  fontSize: 22.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/jiraiya.png'),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: 'Bokuto\`s Dump Truck ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0),
                                        ),
                                        TextSpan(text: 'VsCode'),
                                      ]),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.favorite),
                                        SizedBox(
                                          width: 3.0,
                                        ),
                                        Text('1'),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          'Reply',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/obito.jpg'),
                                ),
                                Text(
                                  'Add a comment or photo',
                                  style: TextStyle(color: Colors.white38),
                                ),
                                IconButton(
                                  icon: Icon(Icons.photo),
                                  onPressed: () {},
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Theme.of(context).backgroundColor,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(25.0)),
                          color: Colors.white24,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'More like this',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 9 / 16,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return ImageCard(
                      text: _imageContents[index],
                      icon: Icons.more_horiz,
                      imageUri: 'assets/images/testImage1.jpeg',
                    );
                  },
                  childCount: _imageContents.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
