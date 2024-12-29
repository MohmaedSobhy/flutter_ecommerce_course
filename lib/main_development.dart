import 'package:device_preview/device_preview.dart';
import 'ecommerce_app.dart';

void main() {
  DevicePreview(
    enabled: true,
    builder: (context) => const EcommerceApp(), // Wrap your app
  );
}
