import 'package:wallpaper_app/data/models/images.dart';

class Results {
  Results({
    required this.total,
    required this.totalHits,
    required this.hits,
  });

  final int? total;
  final int? totalHits;
  final List<Images> hits;

  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      total: json["total"],
      totalHits: json["totalHits"],
      hits: json["hits"] == null
          ? []
          : List<Images>.from(json["hits"]!.map((x) => Images.fromJson(x))),
    );
  }
}
