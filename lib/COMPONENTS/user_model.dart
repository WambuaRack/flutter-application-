class User {
  final String name;
  final String username;
  final int followersCount;
  final int postsCount;
  final int followingCount;
  final String avatarUrl;

  User({
    required this.name,
    required this.username,
    required this.followersCount,
    required this.postsCount,
    required this.followingCount,
    required this.avatarUrl,
  });
}

// Mock user data
User mockUser = User(
  name: 'John Doe',
  username: 'johndoe',
  followersCount: 100,
  postsCount: 50,
  followingCount: 200,
  avatarUrl: 'https://example.com/avatar.jpg',
);
