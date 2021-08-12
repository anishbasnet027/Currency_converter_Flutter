class Country {
  String flag;
  String country_name;
  String currency_symbol;

  Country(
      {required this.flag,
      required this.country_name,
      required this.currency_symbol});
}

final List<Country> datas = [
  Country(
    flag:
        "https://www.countryflags.com/wp-content/uploads/sweden-flag-png-large.png",
    country_name: "SWE",
    currency_symbol: "Kr",
  ),
  Country(
    flag:
        "https://www.countryflags.com/wp-content/uploads/europe-flag-jpg-xl-1024x683.jpg",
    country_name: "EU",
    currency_symbol: "EUR",
  ),
  Country(
    flag: "https://flagsworld.org/img/cflags/nepal-flag.png",
    country_name: "NEP",
    currency_symbol: "NRP",
  ),
];
