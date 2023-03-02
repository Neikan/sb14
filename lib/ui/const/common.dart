const double minSunny = 0.0;
const double maxSunny = 0.5;

const double minCloudiness = 0.2;
const double maxCloudiness = 1.0;

const double minRainy = 0.8;

Map<double, String> weatherDescription = {
  0.0: 'Very sunny',
  0.1: 'Sunny',
  0.2: 'Сlear, cloudy',
  0.3: 'Light cloudy',
  0.4: 'Сloudy',
  0.5: 'Mainly cloudy',
  0.6: 'Heavy cloud cover',
  0.7: 'Сloudy with a chance of rain',
  0.8: 'Light rain',
  0.9: 'Heavy rain',
  1.0: 'Perfect day for the Apocalypse!',
};
