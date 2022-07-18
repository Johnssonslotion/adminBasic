//https://flutter-ko.dev/docs/development/data-and-backend/json
//https://www.vworld.kr/dev/v4dv_search2_s001.do

import 'package:json_annotation/json_annotation.dart';
part 'map_model.g.dart';

//flutter pub run build_runner build -> g.dart파일 생성

enum vw_service {
  search,
  address,
  image
}

enum vw_openapi_type {
    PLACE,ADDRESS,DISTRICT,ROAD
}

@JsonSerializable()
class AddrInfoRequest {
  final String service;
  final String version="2.0";
  final String request;
  final String key= "06C287A1-8473-3EF8-AAEA-DA14AA878D04"; // 추후 암호화 필요
  final String format = "json"; 
  final String errorFormat = "json";
  final String size;
  final String page;
  final String query;
  final String type; // 검색대상 vw_openapi_type
  final String category;
  final String bbox;
  final String crs="EPSG:4326"; 
  
  AddrInfoRequest(
  this.service,
  //this.version="2.0";
  this.request,
  //this.key
  //final String format = "json"; 
  //final String errorFormat = "json";
  this.size,
  this.page,
  this.query,
  this.type, // 검색대상 vw_openapi_type
  this.category,
  this.bbox,
  //final String crs="EPSG:4326"; 
    );


  factory AddrInfoRequest.fromJson(Map<String, dynamic> json) => _$AddrInfoRequestFromJson(json);

  /// `toJson`은 클래스가 JSON 인코딩의 지원을 선언하는 규칙입니다.
  /// 이의 구현은 생성된 private 헬퍼 메서드 `_$UserToJson`을 단순히 호출합니다.
  Map<String, dynamic> toJson() => _$AddrInfoRequestToJson(this);
}

