
class MediumFeed {
  String? url;
  String? title;
  String? link;
  String? author;
  String? description;
  String? image;

  MediumFeed({this.url, this.title, this.link, this.author, this.description, this.image});

  MediumFeed.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    title = json['title'];
    link = json['link'];
    author = json['author'];
    description = json['description'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['title'] = this.title;
    data['link'] = this.link;
    data['author'] = this.author;
    data['description'] = this.description;
    data['image'] = this.image;
    return data;
  }
}