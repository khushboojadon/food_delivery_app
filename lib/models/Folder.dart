class Folder
{
  String modified_time;
  String uri;
  String name;
  Folder.fromJson(Map<String, dynamic> json) {
    modified_time = json['modified_time'];
    uri = json['uri'];
    name=json['name'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['modified_time'] = this.modified_time;
    data['uri'] = this.uri;
    data['name']=this.name;
    return data;
}
}