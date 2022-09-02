import 'medium_feed.dart';
import 'medium_post_item.dart';

class MediumPostsResponse {
  String? status;
  MediumFeed? feed;
  List<MediumPostItem>? items;

  MediumPostsResponse({this.status, this.feed, this.items});

  MediumPostsResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    feed = json['feed'] != null ? new MediumFeed.fromJson(json['feed']) : null;
    if (json['items'] != null) {
      items = <MediumPostItem>[];
      json['items'].forEach((v) { items!.add(new MediumPostItem.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.feed != null) {
      data['feed'] = this.feed!.toJson();
    }
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}