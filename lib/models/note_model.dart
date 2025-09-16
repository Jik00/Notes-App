import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final String id;

  NoteModel(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.id});

  NoteModel copyWith({
    String? title,
    String? subtitle,
    String? date,
    String? id,
  }) {
    return NoteModel(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      date: date ?? this.date,
      id: id ?? this.id,
    );
  }
}
