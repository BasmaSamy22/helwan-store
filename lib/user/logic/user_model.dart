
class UserModel {

  final String userId;
  final String userName;
  final String userEmail;
  final String userphon;

  UserModel (this.userId, this.userName, this.userEmail, this.userphon);

  factory UserModel.fromjson(String userId, Map<String, dynamic> userData){
    return UserModel(
      userId,
      userData['userName'] ,
      userData['userEmail'],
      userData['userphon']
    );
  }
}