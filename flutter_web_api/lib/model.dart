class User {
  final int userId;
  final String userName;
  final String address;

  const User({
    required this.userId,
    required this.userName,
    required this.address,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    userId: json['userId'],
    userName: json['userName'],
    address: json['address'],
  );

  Map<String, dynamic> toJson() =>{
    "userId" : userId,
    "userName" : userName,
    "address" : address,
  };
}