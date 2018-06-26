import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable(nullable: false)
class Model extends Object with _$ModelSerializerMixin {
    final int userId;
    final int id;
    final String title;
    final String body;


    Model({this.userId, this.id, this.title, this.body});

    factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);
}





