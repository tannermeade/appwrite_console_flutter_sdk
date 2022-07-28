part of appwrite.models;

/// Key
class Key implements Model {
    /// Key ID.
    final String $id;
    /// Key creation date in Unix timestamp.
    final int $createdAt;
    /// Key update date in Unix timestamp.
    final int $updatedAt;
    /// Key name.
    final String name;
    /// Key expiration in Unix timestamp.
    final int expire;
    /// Allowed permission scopes.
    final List scopes;
    /// Secret key.
    final String secret;

    Key({
        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.name,
        required this.expire,
        required this.scopes,
        required this.secret,
    });

    factory Key.fromMap(Map<String, dynamic> map) {
        return Key(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'],
            $updatedAt: map['\$updatedAt'],
            name: map['name'].toString(),
            expire: map['expire'],
            scopes: map['scopes'],
            secret: map['secret'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "name": name,
            "expire": expire,
            "scopes": scopes,
            "secret": secret,
        };
    }
}
