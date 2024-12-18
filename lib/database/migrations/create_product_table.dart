import 'package:vania/vania.dart';

class CreateProductTable extends Migration {
  @override
  Future<void> up() async {
    await createTableNotExists('product', () {
      id(); // Primary key
      string('name', length: 50);
      text('description');
      decimal('price', precision: 10, scale: 2);
      timeStamps(); // created_at dan updated_at
    });
  }

  @override
  Future<void> down() async {
    await dropIfExists('product');
  }
}
