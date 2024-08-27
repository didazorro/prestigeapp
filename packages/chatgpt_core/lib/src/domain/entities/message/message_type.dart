enum MessageType {
  assistant,
  system,
  user,
  ;

  String get roleName {
    // Role name needs to be capitalized when sharing conversation
    switch (this) {
      case MessageType.assistant:
        return 'Assistant';
      case MessageType.system:
        return 'System';
      case MessageType.user:
        return 'User';
    }
  }

  bool get isAssistant => this == MessageType.assistant;

  bool get isSystem => this == MessageType.system;

  bool get isUser => this == MessageType.user;
}
