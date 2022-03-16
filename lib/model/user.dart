class User{

  String? id;
  String? name;
  String? profession;
  String? gender;
  bool? isActive;


  User(this.id, this.name, this.profession, this.gender, this.isActive);

  User.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    profession = json['profession'];
    gender = json['gender'];
    //this.isActive = json['active'].compareTo("1") == 0 ? true : false;
  }



}