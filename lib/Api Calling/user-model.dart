import 'dart:convert';

Usermodel usermodelFromJson(String str) => Usermodel.fromJson(json.decode(str));

String usermodelToJson(Usermodel data) => json.encode(data.toJson());

class Usermodel {
  Usermodel({
    this.quiz,
    this.quizId,
  });

  String quiz;
  String quizId;

  factory Usermodel.fromJson(Map<String, dynamic> json) => Usermodel(
    quiz: json["quiz"],
    quizId: json["quiz_id"],
  );

  Map<String, dynamic> toJson() => {
    "quiz": quiz,
    "quiz_id": quizId,
  };
}
