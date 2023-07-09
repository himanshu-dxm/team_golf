
class Retailer {
  final String companyId,
      companyName,
      companyAddress,
      companyZipCode,
      companyWebsite,
      companyEmail,
      companyPhone,
      companyScale,
      companyLogo;

  Retailer({
    required this.companyId,
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

Retailer demoRetailer = Retailer(
    companyId: "0x9dB96E4f2FB5FF26197b138879AB86f5B7A9088C",
    companyName: "House of cars",
    companyAddress: "New Delhi",
    companyZipCode: "110001",
    companyWebsite: "houseofcars.in",
    companyEmail: "info@hoc.in",
    companyPhone: "23486544567",
    companyScale: "small",
    companyLogo:
        "https://firebasestorage.googleapis.com/v0/b/carbon-footprint-monitor.appspot.com/o/companyLogo%2F0x9dB96E4f2FB5FF26197b138879AB86f5B7A9088C.png?alt=media&token=b30051a8-9ae6-466a-8ed9-8c55116e8187"
  );
