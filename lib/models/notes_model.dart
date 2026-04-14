import 'package:hive/hive.dart';
part 'notes_model.g.dart';
@HiveType(typeId: 0)
class NotesModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;

  @HiveField(3)
  final String date;
  @HiveField(4)
  final int color;

  NotesModel({
    required this.title,
    required this.subtitle,

    required this.color,
    required this.date,
  });
}
