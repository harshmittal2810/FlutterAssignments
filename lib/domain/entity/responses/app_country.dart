import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_country.freezed.dart';
part 'app_country.g.dart';

@freezed
class AppCountry with _$AppCountry {
  const factory AppCountry({required int id, required String value}) =
      _AppCountry;

  factory AppCountry.fromJson(Map<String, dynamic> json) =>
      _$AppCountryFromJson(json);
}
