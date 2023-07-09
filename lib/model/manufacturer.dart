
class Manufacturer {
  final String companyName,
      companyAddress,
      companyZipCode,
      companyWebsite,
      companyEmail,
      companyPhone,
      companyScale,
      companyLogo;

  Manufacturer({
    required this.companyName,
    required this.companyAddress,
    required this.companyZipCode,
    required this.companyWebsite,
    required this.companyEmail,
    required this.companyPhone,
    required this.companyScale,
    required this.companyLogo
  });
}

Manufacturer demoManufacturer = Manufacturer(
    companyName: "Tata Motors",
    companyAddress: "Mumbai",
    companyZipCode: "400001",
    companyWebsite: "tatamotors.com",
    companyEmail: "info@tatamotors.com",
    companyPhone: "1234567890",
    companyScale: "large",
    companyLogo:
        "https://firebasestorage.googleapis.com/v0/b/carbon-footprint-monitor.appspot.com/o/companyLogo%2F0x410e7fEE06b0E66CC99A0243B0188870Be689f4C.png?alt=media&token=29930751-3034-4be4-bd92-02f406d837bd");
