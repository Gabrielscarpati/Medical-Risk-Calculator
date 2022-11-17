import '../../framework/Model.dart';

class BodyType extends Model{
  String videoExercisesRuler;
  String bodyType;
  String bodyTypeText;
  String healthRisks;
  String whatToDoDiet;
  String whatToDoExercise;
  String whyMightThisOccur;

  BodyType({
    required this.videoExercisesRuler,
    required this.bodyType,
    required this.bodyTypeText,
    required this.healthRisks,
    required this.whatToDoDiet,
    required this.whatToDoExercise,
    required this.whyMightThisOccur,
  });
}