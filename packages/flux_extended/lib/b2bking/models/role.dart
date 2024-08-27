class B2BKingRole {
  const B2BKingRole({this.id, this.name, this.role, this.approvalRequired});

  final int? id;
  final String? name;
  final String? role;
  final bool? approvalRequired;

  factory B2BKingRole.fromJson(Map parsedJson) => B2BKingRole(
        name: parsedJson['name'],
        id: parsedJson['ID'],
        role: parsedJson['role'],
        approvalRequired: parsedJson['approval_required'] == true,
      );
}
