
class AuthResponse {
    final String? token;
    final int? id;
    final String? fullName;
    final String? email;
    final String? password;

    AuthResponse({
        this.token,
        this.id,
        this.fullName,
        this.email,
        this.password,
    });

    AuthResponse copyWith({
        String? token,
        int? id,
        String? fullName,
        String? email,
        String? password,
    }) => 
        AuthResponse(
            token: token ?? this.token,
            id: id ?? this.id,
            fullName: fullName ?? this.fullName,
            email: email ?? this.email,
            password: password ?? this.password,
        );

    factory AuthResponse.fromJson(Map<String, dynamic> json) => AuthResponse(
        token: json["token"],
        id: json["id"],
        fullName: json["full_name"],
        email: json["email"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
        "id": id,
        "full_name": fullName,
        "email": email,
        "password": password,
    };
}
