import 'dart:convert';

class Data {
  String name, height, weight, img, career, agility;

  Data(
      {this.name,
      this.height,
      this.weight,
      this.img,
      this.career,
      this.agility});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    height = json['height'];
    weight = json['weight'];
    img = json['img_url'];
    career = json['career'];
    agility = json['agility'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> dat = new Map<String, dynamic>();
    dat['Name'] = this.name;
    dat['height'] = this.height;
    dat['weight'] = this.weight;
    dat['img_url'] = this.img;
    dat['career'] = this.career;
    dat['agility'] = this.agility;
    return dat;
  }
}
