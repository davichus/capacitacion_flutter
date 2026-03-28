class User {
  int? id;
  String name;
  String email;
  String password;

  User(
      {this.id,
      required this.name,
      required this.email,
      required this.password});

  Map<String, dynamic> toMap(){
    var map = <String, dynamic>{
      'name': name,
      'email': email,
      'password': password
    };
    if(id != null){
      map['id'] = id;
    }
    return map;
  }
}
