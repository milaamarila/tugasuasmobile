// To parse this JSON data, do
//
    // final contentModel = contentModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ContentModel contentModelFromJson(String str) => ContentModel.fromJson(json.decode(str));

String contentModelToJson(ContentModel data) => json.encode(data.toJson());

class ContentModel {
    ContentModel({
        required this.status,
        required this.message,
        required this.data,
    });

    final int status;
    final String message;
    final List<Datum> data;

    factory ContentModel.fromJson(Map<String, dynamic> json) => ContentModel(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        required this.id,
        required this.namabuah,
        required this.harga,
        required this.deskripsi,
        required this.imageurl,
    });

    final String id;
    final String namabuah;
    final String harga;
    final String deskripsi;
    final String imageurl;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        namabuah: json["namabuah"],
        harga: json["harga"],
        deskripsi: json["deskripsi"],
        imageurl: json["imageurl"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "namabuah": namabuah,
        "harga": harga,
        "deskripsi": deskripsi,
        "imageurl": imageurl,
    };
}
