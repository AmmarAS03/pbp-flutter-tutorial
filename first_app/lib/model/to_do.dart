// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<ToDo> ToDoFromJson(String str) => List<ToDo>.from(json.decode(str).map((x) => ToDo.fromJson(x)));

String ToDoToJson(List<ToDo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ToDo {
  ToDo({
    this.userId = 0,
    this.id = 0,
    this.title =  '',
    this.completed = false,
  });

  int userId;
  int id;
  String title;
  bool completed;

  factory ToDo.fromJson(Map<String, dynamic> json) => ToDo(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    completed: json["completed"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "completed": completed,
  };
}
