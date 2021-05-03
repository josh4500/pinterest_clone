import 'package:flutter/material.dart';
import 'package:pinterest_clone/data/models/update.dart';
import 'package:pinterest_clone/presentation/widgets/UpdateTile.dart';

class UpdatesScreen extends StatefulWidget {
  @override
  _UpdatesScreenState createState() => _UpdatesScreenState();
}

class _UpdatesScreenState extends State<UpdatesScreen> {
  UpdateData updateData = UpdateData();
  List<Update> updates;

  @override
  void initState() {
    updates = updateData.getUpdates();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.0,
      ),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: updates.length,
        itemBuilder: (context, index) {
          return UpdateTile(
            updateDescription: updates[index].updateDescription,
            updateDay: updates[index].updateDay,
            updateImageUrl: updates[index].updateImageUrl,
          );
        },
      ),
    );
  }
}
