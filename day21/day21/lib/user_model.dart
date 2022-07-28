class UserModel {
  String name, details, img;
  int id;
  bool gender;

  UserModel(this.id, this.name, this.details, this.img, this.gender);

  static List<UserModel> getAllList() {
    return [
      UserModel(
          1,
          "Mofizur Rahman",
          "My Name is Mofizur Rahman. I am Android and Flutter developer",
          "https://images.unsplash.com/photo-1562690868-60bbe7293e94?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1436&q=80",
          true),
      UserModel(
          2,
          "jfdk",
          "My Name is Mofizur Rahman. I am Android and Flutter developer",
          "https://images.unsplash.com/photo-1596073419667-9d77d59f033f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
          false),
      UserModel(
          3,
          "fdfjds",
          "My Name is Mofizur Rahman. I am Android and Flutter developer",
          "https://images.unsplash.com/photo-1596073419667-9d77d59f033f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
          false),
      UserModel(
          4,
          "Rakib",
          "My Name is Mofizur Rahman. I am Android and Flutter developer",
          "https://images.unsplash.com/photo-1596073419667-9d77d59f033f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
          true),
      UserModel(
          1,
          "Mofizur Rahman",
          "My Name is Mofizur Rahman. I am Android and Flutter developer",
          "https://images.unsplash.com/photo-1596073419667-9d77d59f033f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
          true),
      UserModel(
          2,
          "jfdk",
          "My Name is Mofizur Rahman. I am Android and Flutter developer",
          "https://images.unsplash.com/photo-1586082207282-3dcb61d25ebd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
          false),
      UserModel(
          3,
          "fdfjds",
          "My Name is Mofizur Rahman. I am Android and Flutter developer",
          "https://images.unsplash.com/photo-1586082207282-3dcb61d25ebd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
          false),
      UserModel(
          4,
          "Rakib",
          "My Name is Mofizur Rahman. I am Android and Flutter developer",
          "https://images.unsplash.com/photo-1586082207282-3dcb61d25ebd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
          true),
    ];
  }
}
