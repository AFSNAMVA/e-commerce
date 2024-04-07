
class CaregoryResoponse {
    final int id;
    final String name;

    CaregoryResoponse({
        required this.id,
        required this.name,
    });

    factory CaregoryResoponse.fromJson(Map<String, dynamic> json) => CaregoryResoponse(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}
