class CarItem {
  final String title;
  final double harga;
  final String path;
  final String warna;
  final String gearbox;
  final String bensin;
  final String brand;

  CarItem({required this.title, required this.harga, required this.path, required this.warna, required this.gearbox, required this.bensin, required this.brand});
}

CarsList allCars = CarsList(mobil: [
  CarItem(
    title: 'Toyota Grand New Avanza',
    harga: 500000,
    warna: 'Silver',
    gearbox: 'automatic',
    bensin: 'Pertamax Turbo',
    brand: 'Toyota',
    path: 'assets/mobil/mobil1.jpg'
  ),
  CarItem(
      title: 'Toyota New Fortuner',
      harga: 560000,
      warna: 'Silver',
      gearbox: 'automatic',
      bensin: 'Pertamina Dex',
      brand: 'Toyota',
      path: 'assets/mobil/mobil2.jpg'
  ),
  CarItem(
      title: 'Toyota Kijang Innova',
      harga: 500000,
      warna: 'Putih',
      gearbox: 'automatic',
      bensin: 'Pertamina Dex',
      brand: 'Toyota',
      path: 'assets/mobil/mobil3.jpg'
  ),
  CarItem(
      title: 'Suzuki XL7 Alpha FF',
      harga: 480000,
      warna: 'Jingga',
      gearbox: 'automatic',
      bensin: 'Pertamax',
      brand: 'Suzuki',
      path: 'assets/mobil/mobil4.jpg'
  ),
  CarItem(
      title: 'Honda HR-V',
      harga: 520000,
      warna: 'Hitam',
      gearbox: 'automatic',
      bensin: 'Pertamax',
      brand: 'Honda',
      path: 'assets/mobil/mobil5.jpg'
  ),
]);

class CarsList {
  List<CarItem> mobil;

  CarsList({required this.mobil});
}