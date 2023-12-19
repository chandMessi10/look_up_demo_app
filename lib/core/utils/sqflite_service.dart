import 'package:look_up_demo_app/features/home/domain/entities/liked_image_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqfliteService {
  late Database db;

  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();

    return openDatabase(
      join(path, 'liked_image_database.db'),
      onCreate: (database, version) async {
        await database.execute(
          "CREATE TABLE likedImages(id INTEGER PRIMARY KEY AUTOINCREMENT, "
          "likedImageId TEXT)",
        );
      },
      version: 1,
    );
  }

  Future<void> insertImage(LikedImageModel imageModel) async {
    final db = await SqfliteService().initializeDB();

    await db.insert(
      'likedImages',
      imageModel.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<LikedImageModel>> likedImage() async {
    final db = await SqfliteService().initializeDB();

    final List<Map<String, dynamic>> maps = await db.query('likedImages');

    return List.generate(maps.length, (i) {
      return LikedImageModel(
        likedImageId: maps[i]['likedImageId'] as String,
      );
    });
  }

  Future<void> deleteLikedImage(int id) async {
    final db = await SqfliteService().initializeDB();

    await db.delete(
      'likedImages',
      // Use a `where` clause to delete a specific dog.
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
