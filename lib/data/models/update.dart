class Update {
  final String updateDescription;
  final String updateDay;
  final List<String> updateImageUrl;

  Update({this.updateDescription, this.updateDay, this.updateImageUrl});
}

class UpdateData {
  List<Update> getUpdates() {
    List<Update> updates = [];
    Update update1 = Update(
        updateDescription:
            'Itachi uchiha art, My saves and 12 other boards inspired by your recent activity',
        updateDay: '1d',
        updateImageUrl: [
          'assets/images/jiraiya.png',
          'assets/images/jiraiya.png'
        ]);
    updates.add(update1);
    Update update2 = Update(
        updateDescription:
            'MARUTO, Ui design trends and 12 other boards picked for you',
        updateDay: '2d',
        updateImageUrl: [
          'assets/images/obito.jpg',
          'assets/images/jiraiya.png'
        ]);
    updates.add(update2);
    Update update3 = Update(
        updateDescription: 'You\'ve got 17 new Pins waiting for you',
        updateDay: '3d',
        updateImageUrl: [
          'assets/images/jiraiya.png',
          'assets/images/obito.jpg'
        ]);
    updates.add(update3);
    Update update4 = Update(
        updateDescription: '17 ideas people are loving right now',
        updateDay: '6d',
        updateImageUrl: [
          'assets/images/obito.jpg',
          'assets/images/jiraiya.png'
        ]);
    updates.add(update4);
    Update update5 = Update(
        updateDescription:
            'Itachi uchiha art, My saves and 12 other boards inspired by your recent activity',
        updateDay: '1d',
        updateImageUrl: [
          'assets/images/jiraiya.png',
          'assets/images/obito.jpg'
        ]);
    updates.add(update5);
    Update update6 = Update(
        updateDescription:
            'Itachi uchiha art, My saves and 12 other boards inspired by your recent activity',
        updateDay: '1d',
        updateImageUrl: ['assets/images/obito.jpg', 'assets/images/obito.jpg']);
    updates.add(update6);
    Update update7 = Update(
        updateDescription:
            'Itachi uchiha art, My saves and 12 other boards inspired by your recent activity',
        updateDay: '1d',
        updateImageUrl: [
          'assets/images/jiraiya.png',
          'assets/images/obito.jpg'
        ]);
    updates.add(update7);
    Update update8 = Update(
        updateDescription:
            'Itachi uchiha art, My saves and 12 other boards inspired by your recent activity',
        updateDay: '1d',
        updateImageUrl: [
          'assets/images/obito.jpg',
          'assets/images/jiraiya.png'
        ]);
    updates.add(update8);
    return updates;
  }
}
