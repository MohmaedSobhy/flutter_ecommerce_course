import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'ecommerce_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://ikxcijbthsdcqnllcdjc.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlreGNpamJ0aHNkY3FubGxjZGpjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzUzMjg4ODYsImV4cCI6MjA1MDkwNDg4Nn0.N99Kmfmukekp4ldA_IIId1JTMM1EWYeUrqxim1v2eBA',
  );
  runApp(const EcommerceApp());
}
