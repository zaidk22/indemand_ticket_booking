

// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'dart:convert';

import 'package:equatable/equatable.dart';

class PopularEventsModel extends Equatable {
   String? createdAt;
    String? avatar;
    String? event_name;
    String? image_url;
    String? id;
  PopularEventsModel({
    this.createdAt,
    this.avatar,
    this.event_name,
    this.image_url,
    this.id,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(createdAt != null){
      result.addAll({'createdAt': createdAt});
    }
    if(avatar != null){
      result.addAll({'avatar': avatar});
    }
    if(event_name != null){
      result.addAll({'event_name': event_name});
    }
    if(image_url != null){
      result.addAll({'image_url': image_url});
    }
    if(id != null){
      result.addAll({'id': id});
    }
  
    return result;
  }

  factory PopularEventsModel.fromMap(Map<String, dynamic> map) {
    return PopularEventsModel(
      createdAt: map['createdAt'],
      avatar: map['avatar'],
      event_name: map['event_name'],
      image_url: map['image_url'],
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PopularEventsModel.fromJson(String source) => PopularEventsModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PopularEventsModel(createdAt: $createdAt, avatar: $avatar, event_name: $event_name, image_url: $image_url, id: $id)';
  }

  PopularEventsModel copyWith({
    String? createdAt,
    String? avatar,
    String? event_name,
    String? image_url,
    String? id,
  }) {
    return PopularEventsModel(
      createdAt: createdAt ?? this.createdAt,
      avatar: avatar ?? this.avatar,
      event_name: event_name ?? this.event_name,
      image_url: image_url ?? this.image_url,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      createdAt,
      avatar,
      event_name,
      image_url,
      id,
    ];
  }
}
