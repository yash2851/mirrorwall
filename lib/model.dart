import 'dart:convert';

BookmarkModel bookmarkModelFromJson(String str) =>
    BookmarkModel.fromJson(json.decode(str));

String bookmarkModelToJson(BookmarkModel data) => json.encode(data.toJson());

class BookmarkModel {
  var bookmark;
  var bookmarktitle;

  BookmarkModel({
    required this.bookmarktitle,
    required this.bookmark,
  });

  factory BookmarkModel.fromJson(Map<String, dynamic> json) => BookmarkModel(
        bookmarktitle: json["bookmarktitle"],
        bookmark: json["bookmarkdesc"],
      );

  Map<String, dynamic> toJson() => {
        "bookmarktitle": bookmarktitle,
        "bookmarkdesc": bookmark,
      };
}

List<BookmarkModel> bookmarkModel = [];
