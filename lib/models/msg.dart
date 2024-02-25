import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final formatter = DateFormat.yMd();

class Message {
  const Message({
    required this.title,
    required this.content,
    required this.id,
    required this.date,
  });

  final String title;
  final String content;
  final String id;
  final DateTime date;

  String get formattedDate {
    return formatter.format(date);
  }
}
