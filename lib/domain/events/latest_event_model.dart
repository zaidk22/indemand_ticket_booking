
import 'dart:convert';

import 'package:equatable/equatable.dart';

class LatestEventsModel extends Equatable {
    String? createdAt;
    String? title;
    String? imageUrl;
    String? description;
    String? location;
    String? eventDate;
    String? minPrice;
    String? id;
  LatestEventsModel({
    this.createdAt,
    this.title,
    this.imageUrl,
    this.description,
    this.location,
    this.eventDate,
    this.minPrice,
    this.id,
  });

  LatestEventsModel copyWith({
    String? createdAt,
    String? title,
    String? imageUrl,
    String? description,
    String? location,
    String? eventDate,
    String? minPrice,
    String? id,
  }) {
    return LatestEventsModel(
      createdAt: createdAt ?? this.createdAt,
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
      location: location ?? this.location,
      eventDate: eventDate ?? this.eventDate,
      minPrice: minPrice ?? this.minPrice,
      id: id ?? this.id,
    );
  }



  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(createdAt != null){
      result.addAll({'createdAt': createdAt});
    }
    if(title != null){
      result.addAll({'title': title});
    }
    if(imageUrl != null){
      result.addAll({'image_url': imageUrl});
    }
    if(description != null){
      result.addAll({'description': description});
    }
    if(location != null){
      result.addAll({'location': location});
    }
    if(eventDate != null){
      result.addAll({'event_date': eventDate});
    }
    if(minPrice != null){
      result.addAll({'min_price': minPrice});
    }
    if(id != null){
      result.addAll({'id': id});
    }
  
    return result;
  }

  factory LatestEventsModel.fromMap(Map<String, dynamic> map) {
    return LatestEventsModel(
      createdAt: map['createdAt'],
      title: map['title'],
      imageUrl: map['image_url'],
      description: map['description'],
      location: map['location'],
      eventDate: map['event_date'],
      minPrice: map['min_price'],
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LatestEventsModel.fromJson(String source) => LatestEventsModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'LatestEventsModel(createdAt: $createdAt, title: $title, imageUrl: $imageUrl, description: $description, location: $location, eventDate: $eventDate, minPrice: $minPrice, id: $id)';
  }
  
  @override

  List<Object?> get props => [
    id,
    createdAt,
    title,
    imageUrl,
    description,
    location,
    eventDate,
    minPrice
  ];

}
