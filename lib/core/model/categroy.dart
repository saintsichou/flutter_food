// To parse this JSON data, do
//
//     final category = categoryFromJson(jsonString);

import 'dart:convert';

List<Category> categoryFromJson(String str) => List<Category>.from(json.decode(str).map((x) => Category.fromJson(x)));

String categoryToJson(List<Category> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Category {
    Category({
        this.id,
        this.title,
        this.color,
    });

    String id;
    String title;
    String color;

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        title: json["title"],
        color: json["color"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "color": color,
    };
    @override
  String toString() {
      return 'Category{id:$id,title:$title,color:$color}';
  }
}
