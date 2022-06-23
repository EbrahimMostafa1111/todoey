class Task{
  final String ? name;
  //var ischecked
   bool? isDone;
//make it false by default cz we need box is empty while first look on screen
 Task({required this.name, this.isDone=false});
//
  void toggleDone(){
   isDone = !isDone!;

  }

}