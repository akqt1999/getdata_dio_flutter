class UserModel {
 String ?IdUser;
 String ?PhoneUser;

 UserModel({this.IdUser,this.PhoneUser});

 UserModel.fromJson(Map<String,dynamic>json){
    IdUser=json['IdUser'];
    PhoneUser=json['PhoneUser'];
 }

}