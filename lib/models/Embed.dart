class Embed {
  bool playbar;
  bool volume;
  bool speed;
  String color;
  Null uri;
  String html;
  Embed(
      {
      this.playbar,
      this.volume,
      this.speed,
      this.color,
      this.uri,
      this.html,});
  Embed.fromJson(Map<String, dynamic> json) {
    playbar = json['playbar'];
    volume = json['volume'];
    speed = json['speed'];
    color = json['color'];
    uri = json['uri'];
    html = json['html'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['playbar'] = this.playbar;
    data['volume'] = this.volume;
    data['speed'] = this.speed;
    data['color'] = this.color;
    data['uri'] = this.uri;
    data['html'] = this.html;
    return data;
  }
}
