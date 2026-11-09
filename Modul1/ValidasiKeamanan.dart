void validasiPassword(String password) {
  if (password.length < 8) {
    throw Exception("Password terlalu pendek! minimal 8 karakter.");
  }

  print("Password valid dan berhasil disimpan di database.");
}

void main() {
  try {
    validasiPassword("budi123");
  } catch (e) {
    print("Pendaftran gagal");
    print("Pesan Error: $e");
  }
}
