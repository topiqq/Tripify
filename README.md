# 🌍 Tripify – Aplikasi Eksplorasi Destinasi Wisata Indonesia

## Tema dan Tujuan Aplikasi
**Tripify** merupakan aplikasi mobile berbasis **Flutter** yang bertemakan **Pariwisata Indonesia**.  
Tujuan utama dari aplikasi ini adalah untuk membantu pengguna menemukan, menjelajahi, dan mengenal lebih dalam berbagai **destinasi wisata terbaik di Indonesia**, mulai dari wisata alam seperti pantai dan gunung, hingga wisata kuliner dan budaya.

Aplikasi ini menampilkan daftar tempat wisata populer dan rekomendasi menarik dengan tampilan yang modern, sederhana, dan mudah digunakan.  
Setiap destinasi dilengkapi dengan gambar, deskripsi, informasi waktu kunjungan terbaik, jam buka, dan biaya masuk.

---

## Daftar Halaman dan Fungsinya

### 1. 🏠 **Home Page**
- Halaman utama aplikasi yang menampilkan:
  - **Popular Destinations** → beberapa tempat wisata populer.
  - **Recommended for You** → rekomendasi wisata lainnya.
- Menyediakan **ikon kategori** seperti:
  - 🏖️ *Beach*  
  - ⛰️ *Mountain*  
  - 🍜 *Culinary*  
  - 🏛️ *Cultural*
- Ketika pengguna menekan salah satu kategori, akan diarahkan ke halaman **Explore** yang sudah difilter sesuai kategori.
- Didesain dengan **gradient background** biru dan tata letak yang clean serta responsif.

---

### 2. 🔍 **Explore Page**
- Menampilkan seluruh daftar destinasi wisata dalam bentuk **grid dua kolom**.
- Dilengkapi dengan **search bar fungsional** untuk mencari destinasi berdasarkan:
  - Nama destinasi  
  - Lokasi  
  - Kategori wisata
- Jika pengguna masuk dari kategori tertentu (misal: *Mountain*), maka daftar langsung terfilter sesuai kategori tersebut.
- Pengguna dapat menekan salah satu destinasi untuk membuka **Detail Page**.

---

### 3. ❤️ **Favorite Page**
- Menampilkan daftar destinasi wisata yang disukai pengguna (favorite list).
- Setiap item berisi gambar, nama tempat, dan lokasi dalam bentuk **list vertikal**.
- Tombol **hapus (delete)** tersedia di sisi kanan untuk menghapus destinasi dari daftar favorit.
- Menampilkan notifikasi **SnackBar** setiap kali pengguna menghapus item.

---

### 4. 📍 **Detail Page**
- Menampilkan informasi lengkap mengenai destinasi yang dipilih.
- Komponen yang ditampilkan:
  - Gambar utama destinasi
  - Nama, lokasi, dan deskripsi panjang (fitur *Read More*)
  - Informasi tambahan seperti:
    - 🌤️ *Best Season*
    - ⏰ *Open Time*
    - 💰 *Entry Fee*
- Menggunakan efek **Hero Animation** dari card ke halaman detail untuk memberikan pengalaman transisi yang halus dan elegan.

---

## ⚙️ Langkah Menjalankan Aplikasi

### 1 **Persiapan Awal**
Pastikan sudah menginstal:
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Android Studio atau VS Code (dengan plugin Flutter & Dart)
- Emulator Android / perangkat fisik

### 2 **Clone Repository**
```bash
git clone https://github.com/topiqq/tripify.git
```

### 3 **Masuk ke Folder Project**
```bash
cd tripify
```

### 4 **Install Dependencies**
```bash
flutter pub get
```

### **Jalankan Aplikasi**
```bash
flutter run
```

---

## Fitur Utama
**Navigasi antar halaman dengan Bottom Navigation Bar**

**Search filter cerdas untuk pencarian destinasi**

**Sistem Favorite (dummy list untuk demo)**

**Informasi wisata yang menarik**
---
## Pengembang
**Nama:** Taufiq Luthfi Nurrohim

**NIM:** 230605110037

**Program Studi:** Teknik Informatika

**Universitas:** UIN Maulana Malik Ibrahim Malang
---
# "Explore Indonesia, Discover Amazing Destinations with Tripify"
