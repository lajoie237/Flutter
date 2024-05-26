
class Bible{
  String book;
  String chapter;
  String verse;
  String text;

  Bible({required this.book, required this.chapter, required this.verse, required this.text});

  factory Bible.fromJson(Map<String, dynamic> json) => Bible(
      book: json['book'],
      chapter: json['chapter'],
      verse: json['verse'],
      text: json['text']);
}