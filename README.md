# godiet_app

lib/
│
├── core/                         # Bagian inti (helper, config, theme, utils)
│   ├── constants/                 # Konstanta (warna, ukuran, teks, dll.)
│   ├── utils/                     # Helper / fungsi umum
│   ├── theme/                     # Theme (warna, typography, dll.)
│   └── routes/                    # Route management
│
├── data/                         # Data layer (API, local DB, repository)
│   ├── models/                    # Model (misal User, Product)
│   ├── services/                  # API Service, Local Storage
│   └── repositories/              # Repository pattern
│
├── presentation/                 # UI (semua widget & halaman)
│   ├── pages/                     # Halaman utama (HomePage, LoginPage, dsb.)
│   ├── widgets/                   # Widget custom reusable
│   └── controllers/               # State management (Provider, Riverpod, Bloc)
│
├── domain/                       # Business logic (opsional, kalau pakai clean architecture)
│   ├── entities/                   # Entity murni (tanpa ketergantungan luar)
│   └── usecases/                   # Use case untuk logika aplikasi
│
├── main.dart                     # Entry point aplikasi

