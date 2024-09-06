class AgifyResponseDto {
  const AgifyResponseDto._({
    required this.count,
    required this.name,
    required this.age,
  });

  factory AgifyResponseDto.fromJson(Map<String, dynamic> json) => AgifyResponseDto._(
        count: json['count'] as int,
        age: json['age'] as int,
        name: json['name'] as String,
      );

  final int count;
  final String name;
  final int age;

  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
      };
}
