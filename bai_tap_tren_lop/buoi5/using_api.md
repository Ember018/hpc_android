# Quy trình gọi API trong Flutter với `http`

## Thêm `http` vào `pubspec.yaml`

```yaml
# <project_name>/pubspec.yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^1.4.0
```

- Chạy `flutter pub get`

## Import `http`

```dart
import 'package:http/http.dart' as http;
import 'dart:convert'; // Để xử lý Json
```

## Thực hiện yêu cầu API
- Sử dụng [các phương thức với API](./http_method.md)

## Lưu ý về xử lý bất đồng bộ
- Tác vụ bất đồng bộ không hoàn thành ngay lập tập, cần lưu ý sử dụng `Future`, `async` và `await` để tránh làm đóng băng giao diện người
  - `Future`: đại diện cho một giá trị sẽ có trong tương
  - `async`: đánh dấu một hàm là bất đồng
  - `await`: Tạm dừng việc thức thi của hàm `async` cho tới khi `Future` mà nó chờ hoàn thành
