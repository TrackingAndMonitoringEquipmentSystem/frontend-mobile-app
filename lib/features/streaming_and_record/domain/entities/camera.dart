import 'package:freezed_annotation/freezed_annotation.dart';

part 'camera.freezed.dart';

@freezed
class Camera with _$Camera {
  const factory Camera({
    required int id,
    required String name,
    required String recentPicture,
  }) = _Camera;

  @override
  factory Camera.fromJson(Map<String, dynamic> json) {
    return Camera(
      id: json['camera_id'] as int,
      name: json['name'] as String,
      recentPicture: json['recent_picture'] as String,
    );
  }
}
