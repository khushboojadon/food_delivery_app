class Sizes{
int width;
  int height;
  String link;

  Sizes(this.width, this.height, this.link);

  Sizes.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    height = json['height'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['width'] = this.width;
    data['height'] = this.height;
    data['link'] = this.link;
    return data;
  }
}