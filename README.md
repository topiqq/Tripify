# 🌍 Tripify – Aplikasi Eksplorasi Destinasi Wisata Indonesia

## Tema dan Tujuan Aplikasi
**Tripify** merupakan aplikasi mobile berbasis **Flutter** yang bertemakan **Pariwisata Indonesia**.  
Tujuan utama dari aplikasi ini adalah untuk membantu pengguna menemukan, menjelajahi, dan mengenal lebih dalam berbagai **destinasi wisata terbaik di Indonesia**, mulai dari wisata alam seperti pantai dan gunung, hingga wisata kuliner dan budaya.

Aplikasi ini menampilkan daftar tempat wisata populer dan rekomendasi menarik dengan tampilan yang modern, sederhana, dan mudah digunakan.  
Setiap destinasi dilengkapi dengan gambar, deskripsi, informasi waktu kunjungan terbaik, jam buka, dan biaya masuk.
Data destinasi sudah terintegrasi dengan API yang diambil dari internet.

---

## Daftar Halaman dan Fungsinya
### 1. **Login Page**
- Halaman setelah menjalankan aplikasi akan diarahkan untuk login, bisa juga register.
  
---

### 2. **Home Page**
- Halaman utama aplikasi setelah login yang menampilkan:
  - **Popular Destinations** → beberapa tempat wisata populer.
  - **Recommended for You** → rekomendasi wisata lainnya.
- Menyediakan **ikon kategori** seperti:
  - 🏖️ *Beach*  
  - ⛰️ *Mountain*  
  - 🍜 *Culinary*  
  - 🏛️ *Cultural*
- Ketika pengguna menekan salah satu kategori, akan diarahkan ke halaman **Explore** yang sudah difilter sesuai kategori.
- Didesain dengan nuansa **dark purple** dan tata letak yang clean serta responsif.
- Bisa di refresh dengan gesture refresh

---

### 3. **Explore Page**
- Menampilkan seluruh daftar destinasi wisata dalam bentuk **grid dua kolom**.
- Dilengkapi dengan **search bar fungsional** untuk mencari destinasi berdasarkan:
  - Nama destinasi  
  - Lokasi  
  - Kategori wisata
- Jika pengguna masuk dari kategori tertentu (misal: *Mountain*), maka daftar langsung terfilter sesuai kategori tersebut.
- Pengguna dapat menekan salah satu destinasi untuk membuka **Detail Page**.

---

### 4. **Favorite Page**
- Menampilkan daftar destinasi wisata yang disukai pengguna (favorite list).
- Setiap item berisi gambar, nama tempat, dan lokasi dalam bentuk **list vertikal**.
- Tombol **hapus (delete)** tersedia di sisi kanan untuk menghapus destinasi dari daftar favorit.
- Menampilkan notifikasi **SnackBar** setiap kali pengguna menghapus item.

---

### 5. **Detail Page**
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

### 6. **Profile Page**
- Menampilkan informasi profile User, termasuk nama, email, dan password.
- Data user bisa diubah dari halaman profile.

---

# 🚀 Cara Instalasi Project Tripify (Branch UAS)

## 1. Persiapan Awal

Pastikan sudah menginstal:

* Flutter SDK
* Android Studio atau VS Code (plugin Flutter & Dart)
* Emulator Android atau perangkat fisik

## 2. Clone Repository

```
git clone https://github.com/topiqq/tripify.git
```

## 3. Masuk ke Folder Project

```
cd tripify
```

## 4. Pindah ke Branch UAS

```
git checkout UAS
```

## 5. Install Dependencies

```
flutter pub get
```

## 6. Jalankan Aplikasi

```
flutter run
```

---

## Fitur Utama

**Halaman Login dan Register**

**Navigasi antar halaman dengan Bottom Navigation Bar**

**Search filter cerdas untuk pencarian destinasi**

**Sistem Favorite**

**Informasi wisata yang menarik dan sudah terintegrasi dengan API**

---

## Pengembang
**Nama:** Taufiq Luthfi Nurrohim

**NIM:** 230605110037

**Program Studi:** Teknik Informatika

**Universitas:** UIN Maulana Malik Ibrahim Malang

---

# "Explore Indonesia, Discover Amazing Destinations with Tripify"


***Note***: *Aplikasi dalam bentuk file.apk sudah tersedia di dalam folder build/app/outputs/flutter-apk/app-release.apk*
