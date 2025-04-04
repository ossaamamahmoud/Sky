class WeatherModel {
  WeatherModel({
    Location? location,
    Current? current,
    Forecast? forecast,
  }) {
    _location = location;
    _current = current;
    _forecast = forecast;
  }

  WeatherModel.fromJson(dynamic json) {
    _location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    _current =
        json['current'] != null ? Current.fromJson(json['current']) : null;
    _forecast =
        json['forecast'] != null ? Forecast.fromJson(json['forecast']) : null;
  }
  Location? _location;
  Current? _current;
  Forecast? _forecast;
  WeatherModel copyWith({
    Location? location,
    Current? current,
    Forecast? forecast,
  }) =>
      WeatherModel(
        location: location ?? _location,
        current: current ?? _current,
        forecast: forecast ?? _forecast,
      );
  Location? get location => _location;
  Current? get current => _current;
  Forecast? get forecast => _forecast;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    if (_current != null) {
      map['current'] = _current?.toJson();
    }
    if (_forecast != null) {
      map['forecast'] = _forecast?.toJson();
    }
    return map;
  }
}

/// forecastday : [{"date":"2025-03-10","date_epoch":1741564800,"day":{"maxtemp_c":25.5,"maxtemp_f":77.8,"mintemp_c":15.5,"mintemp_f":59.9,"avgtemp_c":19.8,"avgtemp_f":67.6,"maxwind_mph":17.9,"maxwind_kph":28.8,"totalprecip_mm":0,"totalprecip_in":0,"totalsnow_cm":0,"avgvis_km":10,"avgvis_miles":6,"avghumidity":36,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":1.4},"astro":{"sunrise":"06:11 AM","sunset":"06:00 PM","moonrise":"02:29 PM","moonset":"04:02 AM","moon_phase":"Waxing Gibbous","moon_illumination":83,"is_moon_up":1,"is_sun_up":0},"hour":[{"time_epoch":1741557600,"time":"2025-03-10 00:00","temp_c":16.9,"temp_f":62.4,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":7.2,"wind_kph":11.5,"wind_degree":65,"wind_dir":"ENE","pressure_mb":1017,"pressure_in":30.02,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":40,"cloud":24,"feelslike_c":16.9,"feelslike_f":62.3,"windchill_c":16.9,"windchill_f":62.3,"heatindex_c":16.9,"heatindex_f":62.3,"dewpoint_c":3.4,"dewpoint_f":38.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":12.7,"gust_kph":20.5,"uv":0},{"time_epoch":1741561200,"time":"2025-03-10 01:00","temp_c":16.5,"temp_f":61.6,"is_day":0,"condition":{"text":"Partly Cloudy ","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003},"wind_mph":6.3,"wind_kph":10.1,"wind_degree":68,"wind_dir":"ENE","pressure_mb":1016,"pressure_in":30.02,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":42,"cloud":41,"feelslike_c":16.5,"feelslike_f":61.6,"windchill_c":16.5,"windchill_f":61.6,"heatindex_c":16.5,"heatindex_f":61.6,"dewpoint_c":3.4,"dewpoint_f":38.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":11.5,"gust_kph":18.5,"uv":0},{"time_epoch":1741564800,"time":"2025-03-10 02:00","temp_c":16.2,"temp_f":61.2,"is_day":0,"condition":{"text":"Partly Cloudy ","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003},"wind_mph":5.8,"wind_kph":9.4,"wind_degree":73,"wind_dir":"ENE","pressure_mb":1016,"pressure_in":30.01,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":42,"cloud":27,"feelslike_c":16.2,"feelslike_f":61.2,"windchill_c":16.2,"windchill_f":61.2,"heatindex_c":16.2,"heatindex_f":61.2,"dewpoint_c":3.5,"dewpoint_f":38.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":10.9,"gust_kph":17.6,"uv":0},{"time_epoch":1741568400,"time":"2025-03-10 03:00","temp_c":15.9,"temp_f":60.6,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.7,"wind_kph":7.6,"wind_degree":82,"wind_dir":"E","pressure_mb":1016,"pressure_in":30.01,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":43,"cloud":11,"feelslike_c":15.9,"feelslike_f":60.6,"windchill_c":15.9,"windchill_f":60.6,"heatindex_c":15.9,"heatindex_f":60.6,"dewpoint_c":3.4,"dewpoint_f":38.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":9.1,"gust_kph":14.7,"uv":0},{"time_epoch":1741572000,"time":"2025-03-10 04:00","temp_c":15.7,"temp_f":60.3,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4,"wind_kph":6.5,"wind_degree":82,"wind_dir":"E","pressure_mb":1016,"pressure_in":30.01,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":43,"cloud":12,"feelslike_c":15.7,"feelslike_f":60.3,"windchill_c":15.7,"windchill_f":60.3,"heatindex_c":15.7,"heatindex_f":60.3,"dewpoint_c":3.3,"dewpoint_f":37.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":8,"gust_kph":12.9,"uv":0},{"time_epoch":1741575600,"time":"2025-03-10 05:00","temp_c":15.6,"temp_f":60,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.6,"wind_kph":5.8,"wind_degree":87,"wind_dir":"E","pressure_mb":1017,"pressure_in":30.02,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":43,"cloud":13,"feelslike_c":15.6,"feelslike_f":60,"windchill_c":15.6,"windchill_f":60,"heatindex_c":15.6,"heatindex_f":60,"dewpoint_c":3.1,"dewpoint_f":37.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":7.3,"gust_kph":11.7,"uv":0},{"time_epoch":1741579200,"time":"2025-03-10 06:00","temp_c":15.5,"temp_f":59.9,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.6,"wind_kph":5.8,"wind_degree":111,"wind_dir":"ESE","pressure_mb":1017,"pressure_in":30.03,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":43,"cloud":11,"feelslike_c":15.5,"feelslike_f":59.9,"windchill_c":15.5,"windchill_f":59.9,"heatindex_c":15.5,"heatindex_f":59.9,"dewpoint_c":2.9,"dewpoint_f":37.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":7.4,"gust_kph":12,"uv":0},{"time_epoch":1741582800,"time":"2025-03-10 07:00","temp_c":16,"temp_f":60.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.2,"wind_kph":3.6,"wind_degree":87,"wind_dir":"E","pressure_mb":1017,"pressure_in":30.03,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":42,"cloud":0,"feelslike_c":16.3,"feelslike_f":61.3,"windchill_c":16.3,"windchill_f":61.3,"heatindex_c":16.3,"heatindex_f":61.3,"dewpoint_c":3,"dewpoint_f":37.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":2.5,"gust_kph":4,"uv":0.3},{"time_epoch":1741586400,"time":"2025-03-10 08:00","temp_c":18.2,"temp_f":64.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2,"wind_kph":3.2,"wind_degree":5,"wind_dir":"N","pressure_mb":1019,"pressure_in":30.08,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":36,"cloud":18,"feelslike_c":18.2,"feelslike_f":64.8,"windchill_c":18.2,"windchill_f":64.8,"heatindex_c":18.2,"heatindex_f":64.8,"dewpoint_c":3.1,"dewpoint_f":37.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":2.7,"gust_kph":4.4,"uv":1.2},{"time_epoch":1741590000,"time":"2025-03-10 09:00","temp_c":19.5,"temp_f":67.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":1.3,"wind_kph":2.2,"wind_degree":14,"wind_dir":"NNE","pressure_mb":1019,"pressure_in":30.09,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":33,"cloud":8,"feelslike_c":19.5,"feelslike_f":67.1,"windchill_c":19.5,"windchill_f":67.1,"heatindex_c":19.5,"heatindex_f":67.1,"dewpoint_c":3,"dewpoint_f":37.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":1.7,"gust_kph":2.7,"uv":2.6},{"time_epoch":1741593600,"time":"2025-03-10 10:00","temp_c":20.9,"temp_f":69.6,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.7,"wind_kph":4.3,"wind_degree":347,"wind_dir":"NNW","pressure_mb":1019,"pressure_in":30.1,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":30,"cloud":7,"feelslike_c":20.9,"feelslike_f":69.6,"windchill_c":20.9,"windchill_f":69.6,"heatindex_c":20.9,"heatindex_f":69.6,"dewpoint_c":2.9,"dewpoint_f":37.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":3.2,"gust_kph":5.2,"uv":4.4},{"time_epoch":1741597200,"time":"2025-03-10 11:00","temp_c":22.1,"temp_f":71.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.9,"wind_kph":4.7,"wind_degree":350,"wind_dir":"N","pressure_mb":1019,"pressure_in":30.1,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":28,"cloud":6,"feelslike_c":23.1,"feelslike_f":73.6,"windchill_c":22.1,"windchill_f":71.7,"heatindex_c":23.1,"heatindex_f":73.6,"dewpoint_c":2.8,"dewpoint_f":37.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":3.4,"gust_kph":5.5,"uv":5.8},{"time_epoch":1741600800,"time":"2025-03-10 12:00","temp_c":23.2,"temp_f":73.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.6,"wind_kph":5.8,"wind_degree":348,"wind_dir":"NNW","pressure_mb":1019,"pressure_in":30.08,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":26,"cloud":6,"feelslike_c":23.4,"feelslike_f":74.1,"windchill_c":23.2,"windchill_f":73.8,"heatindex_c":23.4,"heatindex_f":74.1,"dewpoint_c":2.6,"dewpoint_f":36.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":4.1,"gust_kph":6.6,"uv":6.1},{"time_epoch":1741604400,"time":"2025-03-10 13:00","temp_c":24.2,"temp_f":75.5,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4,"wind_kph":6.5,"wind_degree":357,"wind_dir":"N","pressure_mb":1018,"pressure_in":30.05,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":24,"cloud":7,"feelslike_c":23.7,"feelslike_f":74.6,"windchill_c":24.2,"windchill_f":75.5,"heatindex_c":23.7,"heatindex_f":74.6,"dewpoint_c":2.4,"dewpoint_f":36.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":4.6,"gust_kph":7.5,"uv":5.6},{"time_epoch":1741608000,"time":"2025-03-10 14:00","temp_c":24.7,"temp_f":76.5,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.1,"wind_kph":5,"wind_degree":19,"wind_dir":"NNE","pressure_mb":1017,"pressure_in":30.04,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":23,"cloud":17,"feelslike_c":23.9,"feelslike_f":75,"windchill_c":24.7,"windchill_f":76.5,"heatindex_c":23.9,"heatindex_f":75,"dewpoint_c":2.2,"dewpoint_f":35.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":3.6,"gust_kph":5.8,"uv":3.9},{"time_epoch":1741611600,"time":"2025-03-10 15:00","temp_c":25.2,"temp_f":77.3,"is_day":1,"condition":{"text":"Partly Cloudy ","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":19,"wind_dir":"NNE","pressure_mb":1017,"pressure_in":30.02,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":22,"cloud":46,"feelslike_c":24.1,"feelslike_f":75.5,"windchill_c":25.2,"windchill_f":77.3,"heatindex_c":24.1,"heatindex_f":75.5,"dewpoint_c":2.2,"dewpoint_f":35.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":4,"gust_kph":6.4,"uv":2.2},{"time_epoch":1741615200,"time":"2025-03-10 16:00","temp_c":25.5,"temp_f":77.8,"is_day":1,"condition":{"text":"Cloudy ","icon":"//cdn.weatherapi.com/weather/64x64/day/119.png","code":1006},"wind_mph":4.9,"wind_kph":7.9,"wind_degree":29,"wind_dir":"NNE","pressure_mb":1016,"pressure_in":30.02,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":22,"cloud":80,"feelslike_c":24.3,"feelslike_f":75.7,"windchill_c":25.5,"windchill_f":77.8,"heatindex_c":24.3,"heatindex_f":75.7,"dewpoint_c":2.3,"dewpoint_f":36.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":5.9,"gust_kph":9.5,"uv":0.9},{"time_epoch":1741618800,"time":"2025-03-10 17:00","temp_c":25,"temp_f":77.1,"is_day":1,"condition":{"text":"Cloudy ","icon":"//cdn.weatherapi.com/weather/64x64/day/119.png","code":1006},"wind_mph":8.3,"wind_kph":13.3,"wind_degree":45,"wind_dir":"NE","pressure_mb":1017,"pressure_in":30.02,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":24,"cloud":81,"feelslike_c":24.2,"feelslike_f":75.6,"windchill_c":25,"windchill_f":77.1,"heatindex_c":24.2,"heatindex_f":75.6,"dewpoint_c":3,"dewpoint_f":37.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":10.4,"gust_kph":16.7,"uv":0.2},{"time_epoch":1741622400,"time":"2025-03-10 18:00","temp_c":23.8,"temp_f":74.9,"is_day":0,"condition":{"text":"Partly Cloudy ","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003},"wind_mph":11.6,"wind_kph":18.7,"wind_degree":50,"wind_dir":"NE","pressure_mb":1017,"pressure_in":30.03,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":27,"cloud":46,"feelslike_c":23.8,"feelslike_f":74.8,"windchill_c":23.8,"windchill_f":74.9,"heatindex_c":23.8,"heatindex_f":74.8,"dewpoint_c":3.6,"dewpoint_f":38.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":16.3,"gust_kph":26.3,"uv":0},{"time_epoch":1741626000,"time":"2025-03-10 19:00","temp_c":21.7,"temp_f":71.1,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":16.8,"wind_kph":27,"wind_degree":47,"wind_dir":"NE","pressure_mb":1018,"pressure_in":30.06,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":35,"cloud":9,"feelslike_c":21.7,"feelslike_f":71.1,"windchill_c":21.7,"windchill_f":71.1,"heatindex_c":23.6,"heatindex_f":74.5,"dewpoint_c":5.7,"dewpoint_f":42.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":23.9,"gust_kph":38.4,"uv":0},{"time_epoch":1741629600,"time":"2025-03-10 20:00","temp_c":19.2,"temp_f":66.6,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":17.9,"wind_kph":28.8,"wind_degree":51,"wind_dir":"NE","pressure_mb":1019,"pressure_in":30.09,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":45,"cloud":9,"feelslike_c":19.2,"feelslike_f":66.6,"windchill_c":19.2,"windchill_f":66.6,"heatindex_c":19.2,"heatindex_f":66.6,"dewpoint_c":7,"dewpoint_f":44.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":26.4,"gust_kph":42.4,"uv":0},{"time_epoch":1741633200,"time":"2025-03-10 21:00","temp_c":18.4,"temp_f":65.1,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":14.8,"wind_kph":23.8,"wind_degree":50,"wind_dir":"NE","pressure_mb":1020,"pressure_in":30.11,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":48,"cloud":10,"feelslike_c":18.4,"feelslike_f":65.1,"windchill_c":18.4,"windchill_f":65.1,"heatindex_c":18.4,"heatindex_f":65.1,"dewpoint_c":7.2,"dewpoint_f":45,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":22.5,"gust_kph":36.3,"uv":0},{"time_epoch":1741636800,"time":"2025-03-10 22:00","temp_c":17.7,"temp_f":63.9,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":12.1,"wind_kph":19.4,"wind_degree":52,"wind_dir":"NE","pressure_mb":1020,"pressure_in":30.12,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":52,"cloud":11,"feelslike_c":17.7,"feelslike_f":63.9,"windchill_c":17.7,"windchill_f":63.9,"heatindex_c":17.7,"heatindex_f":63.9,"dewpoint_c":7.7,"dewpoint_f":45.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":18.7,"gust_kph":30.2,"uv":0},{"time_epoch":1741640400,"time":"2025-03-10 23:00","temp_c":17.2,"temp_f":63,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":10.1,"wind_kph":16.2,"wind_degree":56,"wind_dir":"ENE","pressure_mb":1020,"pressure_in":30.12,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":54,"cloud":11,"feelslike_c":17.2,"feelslike_f":63,"windchill_c":17.2,"windchill_f":63,"heatindex_c":17.2,"heatindex_f":63,"dewpoint_c":7.9,"dewpoint_f":46.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":15.9,"gust_kph":25.6,"uv":0}]},{"date":"2025-03-11","date_epoch":1741651200,"day":{"maxtemp_c":26.2,"maxtemp_f":79.1,"mintemp_c":14.8,"mintemp_f":58.6,"avgtemp_c":19.8,"avgtemp_f":67.7,"maxwind_mph":15.7,"maxwind_kph":25.2,"totalprecip_mm":0,"totalprecip_in":0,"totalsnow_cm":0,"avgvis_km":10,"avgvis_miles":6,"avghumidity":42,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":1.6},"astro":{"sunrise":"06:09 AM","sunset":"06:01 PM","moonrise":"03:31 PM","moonset":"04:39 AM","moon_phase":"Waxing Gibbous","moon_illumination":90,"is_moon_up":1,"is_sun_up":0},"hour":[{"time_epoch":1741644000,"time":"2025-03-11 00:00","temp_c":16.8,"temp_f":62.2,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":8.5,"wind_kph":13.7,"wind_degree":56,"wind_dir":"ENE","pressure_mb":1020,"pressure_in":30.11,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":55,"cloud":5,"feelslike_c":16.8,"feelslike_f":62.2,"windchill_c":16.8,"windchill_f":62.2,"heatindex_c":16.8,"heatindex_f":62.2,"dewpoint_c":7.8,"dewpoint_f":46.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":13.8,"gust_kph":22.3,"uv":0},{"time_epoch":1741647600,"time":"2025-03-11 01:00","temp_c":16.4,"temp_f":61.5,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":7.2,"wind_kph":11.5,"wind_degree":55,"wind_dir":"NE","pressure_mb":1020,"pressure_in":30.11,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":57,"cloud":0,"feelslike_c":16.4,"feelslike_f":61.5,"windchill_c":16.4,"windchill_f":61.5,"heatindex_c":16.4,"heatindex_f":61.5,"dewpoint_c":7.8,"dewpoint_f":46,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":12,"gust_kph":19.3,"uv":0},{"time_epoch":1741651200,"time":"2025-03-11 02:00","temp_c":16,"temp_f":60.8,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":6.7,"wind_kph":10.8,"wind_degree":53,"wind_dir":"NE","pressure_mb":1019,"pressure_in":30.1,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":58,"cloud":0,"feelslike_c":16,"feelslike_f":60.8,"windchill_c":16,"windchill_f":60.8,"heatindex_c":16,"heatindex_f":60.8,"dewpoint_c":7.6,"dewpoint_f":45.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":11.5,"gust_kph":18.6,"uv":0},{"time_epoch":1741654800,"time":"2025-03-11 03:00","temp_c":15.6,"temp_f":60.1,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":6,"wind_kph":9.7,"wind_degree":46,"wind_dir":"NE","pressure_mb":1019,"pressure_in":30.1,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":59,"cloud":0,"feelslike_c":15.6,"feelslike_f":60.2,"windchill_c":15.6,"windchill_f":60.2,"heatindex_c":15.6,"heatindex_f":60.2,"dewpoint_c":7.6,"dewpoint_f":45.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":10.5,"gust_kph":17,"uv":0},{"time_epoch":1741658400,"time":"2025-03-11 04:00","temp_c":15.3,"temp_f":59.6,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":5.8,"wind_kph":9.4,"wind_degree":46,"wind_dir":"NE","pressure_mb":1019,"pressure_in":30.1,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":60,"cloud":0,"feelslike_c":15.3,"feelslike_f":59.6,"windchill_c":15.3,"windchill_f":59.6,"heatindex_c":15.3,"heatindex_f":59.6,"dewpoint_c":7.6,"dewpoint_f":45.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":10.4,"gust_kph":16.7,"uv":0},{"time_epoch":1741662000,"time":"2025-03-11 05:00","temp_c":15,"temp_f":59,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":5.8,"wind_kph":9.4,"wind_degree":43,"wind_dir":"NE","pressure_mb":1020,"pressure_in":30.11,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":60,"cloud":0,"feelslike_c":15,"feelslike_f":59,"windchill_c":15,"windchill_f":59,"heatindex_c":15,"heatindex_f":59,"dewpoint_c":7.4,"dewpoint_f":45.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":10.7,"gust_kph":17.2,"uv":0},{"time_epoch":1741665600,"time":"2025-03-11 06:00","temp_c":14.8,"temp_f":58.6,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":6,"wind_kph":9.7,"wind_degree":40,"wind_dir":"NE","pressure_mb":1020,"pressure_in":30.12,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":61,"cloud":0,"feelslike_c":14.4,"feelslike_f":57.9,"windchill_c":14.4,"windchill_f":57.9,"heatindex_c":14.8,"heatindex_f":58.6,"dewpoint_c":7.3,"dewpoint_f":45.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":11.2,"gust_kph":18.1,"uv":0},{"time_epoch":1741669200,"time":"2025-03-11 07:00","temp_c":15.3,"temp_f":59.6,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.8,"wind_kph":9.4,"wind_degree":39,"wind_dir":"NE","pressure_mb":1020,"pressure_in":30.13,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":59,"cloud":0,"feelslike_c":15.3,"feelslike_f":59.6,"windchill_c":15.3,"windchill_f":59.6,"heatindex_c":15.3,"heatindex_f":59.6,"dewpoint_c":7.3,"dewpoint_f":45.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":9.8,"gust_kph":15.7,"uv":0.3},{"time_epoch":1741672800,"time":"2025-03-11 08:00","temp_c":17.3,"temp_f":63.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":7.6,"wind_kph":12.2,"wind_degree":44,"wind_dir":"NE","pressure_mb":1021,"pressure_in":30.14,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":51,"cloud":0,"feelslike_c":17.3,"feelslike_f":63.2,"windchill_c":17.3,"windchill_f":63.2,"heatindex_c":17.3,"heatindex_f":63.2,"dewpoint_c":7.1,"dewpoint_f":44.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":9.8,"gust_kph":15.7,"uv":1.3},{"time_epoch":1741676400,"time":"2025-03-11 09:00","temp_c":19.3,"temp_f":66.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":9.2,"wind_kph":14.8,"wind_degree":42,"wind_dir":"NE","pressure_mb":1021,"pressure_in":30.14,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":42,"cloud":0,"feelslike_c":19.3,"feelslike_f":66.7,"windchill_c":19.3,"windchill_f":66.7,"heatindex_c":19.3,"heatindex_f":66.7,"dewpoint_c":6.2,"dewpoint_f":43.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":10.6,"gust_kph":17,"uv":3},{"time_epoch":1741680000,"time":"2025-03-11 10:00","temp_c":21.1,"temp_f":69.9,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":9.6,"wind_kph":15.5,"wind_degree":36,"wind_dir":"NE","pressure_mb":1021,"pressure_in":30.14,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":34,"cloud":0,"feelslike_c":21.1,"feelslike_f":69.9,"windchill_c":21.1,"windchill_f":69.9,"heatindex_c":23.4,"heatindex_f":74.1,"dewpoint_c":4.7,"dewpoint_f":40.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":11.1,"gust_kph":17.8,"uv":4.9},{"time_epoch":1741683600,"time":"2025-03-11 11:00","temp_c":22.6,"temp_f":72.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":9.6,"wind_kph":15.5,"wind_degree":35,"wind_dir":"NE","pressure_mb":1020,"pressure_in":30.13,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":27,"cloud":0,"feelslike_c":23.2,"feelslike_f":73.8,"windchill_c":22.6,"windchill_f":72.7,"heatindex_c":23.2,"heatindex_f":73.8,"dewpoint_c":2.8,"dewpoint_f":37,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":11.1,"gust_kph":17.8,"uv":6.4},{"time_epoch":1741687200,"time":"2025-03-11 12:00","temp_c":23.9,"temp_f":75,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":9.2,"wind_kph":14.8,"wind_degree":35,"wind_dir":"NE","pressure_mb":1019,"pressure_in":30.1,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":22,"cloud":0,"feelslike_c":23.3,"feelslike_f":73.9,"windchill_c":23.9,"windchill_f":75,"heatindex_c":23.3,"heatindex_f":73.9,"dewpoint_c":0.7,"dewpoint_f":33.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":10.6,"gust_kph":17,"uv":7},{"time_epoch":1741690800,"time":"2025-03-11 13:00","temp_c":25,"temp_f":77,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":9.4,"wind_kph":15.1,"wind_degree":34,"wind_dir":"NE","pressure_mb":1019,"pressure_in":30.08,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":19,"cloud":0,"feelslike_c":23.8,"feelslike_f":74.8,"windchill_c":25,"windchill_f":77,"heatindex_c":23.8,"heatindex_f":74.8,"dewpoint_c":-0.2,"dewpoint_f":31.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":10.8,"gust_kph":17.4,"uv":6.3},{"time_epoch":1741694400,"time":"2025-03-11 14:00","temp_c":25.7,"temp_f":78.3,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":10.3,"wind_kph":16.6,"wind_degree":39,"wind_dir":"NE","pressure_mb":1018,"pressure_in":30.05,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":18,"cloud":0,"feelslike_c":24.3,"feelslike_f":75.7,"windchill_c":25.8,"windchill_f":78.4,"heatindex_c":24.3,"heatindex_f":75.7,"dewpoint_c":0.1,"dewpoint_f":32.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":11.8,"gust_kph":19,"uv":4.6},{"time_epoch":1741698000,"time":"2025-03-11 15:00","temp_c":26.2,"temp_f":79.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":10.5,"wind_kph":16.9,"wind_degree":48,"wind_dir":"NE","pressure_mb":1017,"pressure_in":30.03,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":19,"cloud":0,"feelslike_c":24.6,"feelslike_f":76.3,"windchill_c":26.2,"windchill_f":79.1,"heatindex_c":24.6,"heatindex_f":76.3,"dewpoint_c":0.5,"dewpoint_f":32.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":12.1,"gust_kph":19.5,"uv":2.7},{"time_epoch":1741701600,"time":"2025-03-11 16:00","temp_c":26.1,"temp_f":79,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":11.4,"wind_kph":18.4,"wind_degree":56,"wind_dir":"ENE","pressure_mb":1017,"pressure_in":30.02,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":20,"cloud":0,"feelslike_c":24.6,"feelslike_f":76.2,"windchill_c":26.1,"windchill_f":79,"heatindex_c":24.6,"heatindex_f":76.2,"dewpoint_c":1.1,"dewpoint_f":34,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":13.1,"gust_kph":21.1,"uv":1.1},{"time_epoch":1741705200,"time":"2025-03-11 17:00","temp_c":25.5,"temp_f":77.9,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":12.8,"wind_kph":20.5,"wind_degree":64,"wind_dir":"ENE","pressure_mb":1017,"pressure_in":30.03,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":21,"cloud":2,"feelslike_c":24.3,"feelslike_f":75.7,"windchill_c":25.5,"windchill_f":77.9,"heatindex_c":24.3,"heatindex_f":75.7,"dewpoint_c":1.9,"dewpoint_f":35.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":15.7,"gust_kph":25.3,"uv":0.2},{"time_epoch":1741708800,"time":"2025-03-11 18:00","temp_c":23.6,"temp_f":74.4,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":13.4,"wind_kph":21.6,"wind_degree":66,"wind_dir":"ENE","pressure_mb":1017,"pressure_in":30.04,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":25,"cloud":0,"feelslike_c":23.5,"feelslike_f":74.2,"windchill_c":23.6,"windchill_f":74.4,"heatindex_c":23.5,"heatindex_f":74.2,"dewpoint_c":2.5,"dewpoint_f":36.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":20.4,"gust_kph":32.8,"uv":0},{"time_epoch":1741712400,"time":"2025-03-11 19:00","temp_c":21.6,"temp_f":70.9,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":15.2,"wind_kph":24.5,"wind_degree":60,"wind_dir":"ENE","pressure_mb":1018,"pressure_in":30.06,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":31,"cloud":0,"feelslike_c":21.6,"feelslike_f":70.9,"windchill_c":21.6,"windchill_f":70.9,"heatindex_c":23.3,"heatindex_f":73.9,"dewpoint_c":3.8,"dewpoint_f":38.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":23.7,"gust_kph":38.2,"uv":0},{"time_epoch":1741716000,"time":"2025-03-11 20:00","temp_c":19.8,"temp_f":67.7,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":15.7,"wind_kph":25.2,"wind_degree":59,"wind_dir":"ENE","pressure_mb":1018,"pressure_in":30.07,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":39,"cloud":0,"feelslike_c":19.9,"feelslike_f":67.7,"windchill_c":19.9,"windchill_f":67.7,"heatindex_c":19.9,"heatindex_f":67.7,"dewpoint_c":5.6,"dewpoint_f":42.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":24.2,"gust_kph":38.9,"uv":0},{"time_epoch":1741719600,"time":"2025-03-11 21:00","temp_c":18.4,"temp_f":65.1,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":13.9,"wind_kph":22.3,"wind_degree":61,"wind_dir":"ENE","pressure_mb":1019,"pressure_in":30.08,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":49,"cloud":0,"feelslike_c":18.4,"feelslike_f":65.1,"windchill_c":18.4,"windchill_f":65.1,"heatindex_c":18.4,"heatindex_f":65.1,"dewpoint_c":7.5,"dewpoint_f":45.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":22.1,"gust_kph":35.6,"uv":0},{"time_epoch":1741723200,"time":"2025-03-11 22:00","temp_c":17.5,"temp_f":63.6,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":11.6,"wind_kph":18.7,"wind_degree":55,"wind_dir":"NE","pressure_mb":1019,"pressure_in":30.09,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":55,"cloud":0,"feelslike_c":17.5,"feelslike_f":63.6,"windchill_c":17.5,"windchill_f":63.6,"heatindex_c":17.5,"heatindex_f":63.6,"dewpoint_c":8.5,"dewpoint_f":47.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":19.1,"gust_kph":30.7,"uv":0},{"time_epoch":1741726800,"time":"2025-03-11 23:00","temp_c":16.9,"temp_f":62.4,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":10.3,"wind_kph":16.6,"wind_degree":48,"wind_dir":"NE","pressure_mb":1019,"pressure_in":30.09,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":59,"cloud":0,"feelslike_c":16.9,"feelslike_f":62.4,"windchill_c":16.9,"windchill_f":62.4,"heatindex_c":16.9,"heatindex_f":62.4,"dewpoint_c":8.8,"dewpoint_f":47.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":17.4,"gust_kph":28,"uv":0}]},{"date":"2025-03-12","date_epoch":1741737600,"day":{"maxtemp_c":29,"maxtemp_f":84.3,"mintemp_c":14.7,"mintemp_f":58.4,"avgtemp_c":21.1,"avgtemp_f":70,"maxwind_mph":17,"maxwind_kph":27.4,"totalprecip_mm":0,"totalprecip_in":0,"totalsnow_cm":0,"avgvis_km":10,"avgvis_miles":6,"avghumidity":44,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":1.6},"astro":{"sunrise":"06:08 AM","sunset":"06:01 PM","moonrise":"04:29 PM","moonset":"05:12 AM","moon_phase":"Waxing Gibbous","moon_illumination":95,"is_moon_up":1,"is_sun_up":0},"hour":[{"time_epoch":1741730400,"time":"2025-03-12 00:00","temp_c":16.4,"temp_f":61.6,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":9.6,"wind_kph":15.5,"wind_degree":48,"wind_dir":"NE","pressure_mb":1019,"pressure_in":30.09,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":62,"cloud":0,"feelslike_c":16.4,"feelslike_f":61.6,"windchill_c":16.4,"windchill_f":61.6,"heatindex_c":16.4,"heatindex_f":61.6,"dewpoint_c":9.1,"dewpoint_f":48.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":16.4,"gust_kph":26.4,"uv":0},{"time_epoch":1741734000,"time":"2025-03-12 01:00","temp_c":16,"temp_f":60.9,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":9.4,"wind_kph":15.1,"wind_degree":42,"wind_dir":"NE","pressure_mb":1019,"pressure_in":30.08,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":65,"cloud":0,"feelslike_c":16,"feelslike_f":60.9,"windchill_c":16,"windchill_f":60.9,"heatindex_c":16,"heatindex_f":60.9,"dewpoint_c":9.4,"dewpoint_f":48.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":16.1,"gust_kph":26,"uv":0},{"time_epoch":1741737600,"time":"2025-03-12 02:00","temp_c":15.7,"temp_f":60.2,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":8.9,"wind_kph":14.4,"wind_degree":36,"wind_dir":"NE","pressure_mb":1018,"pressure_in":30.08,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":66,"cloud":0,"feelslike_c":15.7,"feelslike_f":60.2,"windchill_c":15.7,"windchill_f":60.2,"heatindex_c":15.7,"heatindex_f":60.2,"dewpoint_c":9.4,"dewpoint_f":49,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":15.6,"gust_kph":25.2,"uv":0},{"time_epoch":1741741200,"time":"2025-03-12 03:00","temp_c":15.4,"temp_f":59.7,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":8.9,"wind_kph":14.4,"wind_degree":37,"wind_dir":"NE","pressure_mb":1018,"pressure_in":30.06,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":68,"cloud":0,"feelslike_c":15.4,"feelslike_f":59.7,"windchill_c":15.4,"windchill_f":59.7,"heatindex_c":15.4,"heatindex_f":59.7,"dewpoint_c":9.4,"dewpoint_f":49,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":16,"gust_kph":25.7,"uv":0},{"time_epoch":1741744800,"time":"2025-03-12 04:00","temp_c":15.1,"temp_f":59.2,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":8.9,"wind_kph":14.4,"wind_degree":41,"wind_dir":"NE","pressure_mb":1017,"pressure_in":30.04,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":69,"cloud":0,"feelslike_c":15.1,"feelslike_f":59.2,"windchill_c":15.1,"windchill_f":59.2,"heatindex_c":15.1,"heatindex_f":59.2,"dewpoint_c":9.4,"dewpoint_f":48.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":16.4,"gust_kph":26.5,"uv":0},{"time_epoch":1741748400,"time":"2025-03-12 05:00","temp_c":14.9,"temp_f":58.9,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":8.3,"wind_kph":13.3,"wind_degree":33,"wind_dir":"NNE","pressure_mb":1018,"pressure_in":30.05,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":70,"cloud":0,"feelslike_c":14.1,"feelslike_f":57.5,"windchill_c":14.1,"windchill_f":57.5,"heatindex_c":14.9,"heatindex_f":58.9,"dewpoint_c":9.4,"dewpoint_f":49,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":15.1,"gust_kph":24.2,"uv":0},{"time_epoch":1741752000,"time":"2025-03-12 06:00","temp_c":14.7,"temp_f":58.4,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":8.3,"wind_kph":13.3,"wind_degree":33,"wind_dir":"NNE","pressure_mb":1018,"pressure_in":30.05,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":71,"cloud":0,"feelslike_c":13.8,"feelslike_f":56.9,"windchill_c":13.8,"windchill_f":56.9,"heatindex_c":14.7,"heatindex_f":58.4,"dewpoint_c":9.5,"dewpoint_f":49,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":15.2,"gust_kph":24.4,"uv":0},{"time_epoch":1741755600,"time":"2025-03-12 07:00","temp_c":15.1,"temp_f":59.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":8.9,"wind_kph":14.4,"wind_degree":32,"wind_dir":"NNE","pressure_mb":1018,"pressure_in":30.05,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":69,"cloud":0,"feelslike_c":15.1,"feelslike_f":59.2,"windchill_c":15.1,"windchill_f":59.2,"heatindex_c":15.1,"heatindex_f":59.2,"dewpoint_c":9.5,"dewpoint_f":49,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":15.2,"gust_kph":24.5,"uv":0.3},{"time_epoch":1741759200,"time":"2025-03-12 08:00","temp_c":17.5,"temp_f":63.5,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":10.5,"wind_kph":16.9,"wind_degree":39,"wind_dir":"NE","pressure_mb":1018,"pressure_in":30.07,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":59,"cloud":0,"feelslike_c":17.5,"feelslike_f":63.5,"windchill_c":17.5,"windchill_f":63.5,"heatindex_c":17.5,"heatindex_f":63.5,"dewpoint_c":9.5,"dewpoint_f":49,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":13.5,"gust_kph":21.7,"uv":1.3},{"time_epoch":1741762800,"time":"2025-03-12 09:00","temp_c":20.1,"temp_f":68.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":11.6,"wind_kph":18.7,"wind_degree":46,"wind_dir":"NE","pressure_mb":1018,"pressure_in":30.06,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":48,"cloud":0,"feelslike_c":20.1,"feelslike_f":68.1,"windchill_c":20.1,"windchill_f":68.1,"heatindex_c":20.1,"heatindex_f":68.1,"dewpoint_c":8.7,"dewpoint_f":47.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":13.4,"gust_kph":21.5,"uv":3},{"time_epoch":1741766400,"time":"2025-03-12 10:00","temp_c":22.6,"temp_f":72.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":11.2,"wind_kph":18,"wind_degree":48,"wind_dir":"NE","pressure_mb":1018,"pressure_in":30.05,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":37,"cloud":0,"feelslike_c":24.1,"feelslike_f":75.3,"windchill_c":22.6,"windchill_f":72.8,"heatindex_c":24.1,"heatindex_f":75.3,"dewpoint_c":7.3,"dewpoint_f":45.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":12.9,"gust_kph":20.7,"uv":4.9},{"time_epoch":1741770000,"time":"2025-03-12 11:00","temp_c":24.9,"temp_f":76.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":11.2,"wind_kph":18,"wind_degree":52,"wind_dir":"NE","pressure_mb":1017,"pressure_in":30.02,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":29,"cloud":0,"feelslike_c":24.6,"feelslike_f":76.2,"windchill_c":24.9,"windchill_f":76.8,"heatindex_c":24.6,"heatindex_f":76.2,"dewpoint_c":5.6,"dewpoint_f":42.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":12.9,"gust_kph":20.7,"uv":6.5},{"time_epoch":1741773600,"time":"2025-03-12 12:00","temp_c":26.7,"temp_f":80,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":11,"wind_kph":17.6,"wind_degree":55,"wind_dir":"NE","pressure_mb":1016,"pressure_in":29.99,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":23,"cloud":0,"feelslike_c":25.3,"feelslike_f":77.5,"windchill_c":26.7,"windchill_f":80,"heatindex_c":25.3,"heatindex_f":77.5,"dewpoint_c":3.8,"dewpoint_f":38.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":12.6,"gust_kph":20.3,"uv":7},{"time_epoch":1741777200,"time":"2025-03-12 13:00","temp_c":28,"temp_f":82.3,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":9.8,"wind_kph":15.8,"wind_degree":55,"wind_dir":"NE","pressure_mb":1015,"pressure_in":29.97,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":19,"cloud":0,"feelslike_c":26,"feelslike_f":78.8,"windchill_c":28,"windchill_f":82.3,"heatindex_c":26,"heatindex_f":78.8,"dewpoint_c":2.3,"dewpoint_f":36.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":11.3,"gust_kph":18.2,"uv":6.3},{"time_epoch":1741780800,"time":"2025-03-12 14:00","temp_c":28.7,"temp_f":83.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":11,"wind_kph":17.6,"wind_degree":55,"wind_dir":"NE","pressure_mb":1014,"pressure_in":29.94,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":17,"cloud":0,"feelslike_c":26.6,"feelslike_f":79.9,"windchill_c":28.7,"windchill_f":83.7,"heatindex_c":26.6,"heatindex_f":79.9,"dewpoint_c":1.5,"dewpoint_f":34.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":12.6,"gust_kph":20.3,"uv":4.6},{"time_epoch":1741784400,"time":"2025-03-12 15:00","temp_c":29,"temp_f":84.3,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":11.6,"wind_kph":18.7,"wind_degree":57,"wind_dir":"ENE","pressure_mb":1013,"pressure_in":29.92,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":17,"cloud":0,"feelslike_c":26.9,"feelslike_f":80.4,"windchill_c":29,"windchill_f":84.3,"heatindex_c":26.9,"heatindex_f":80.4,"dewpoint_c":1.3,"dewpoint_f":34.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":13.4,"gust_kph":21.5,"uv":2.6},{"time_epoch":1741788000,"time":"2025-03-12 16:00","temp_c":28.8,"temp_f":83.9,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":12.3,"wind_kph":19.8,"wind_degree":55,"wind_dir":"NE","pressure_mb":1013,"pressure_in":29.92,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":17,"cloud":0,"feelslike_c":26.7,"feelslike_f":80.1,"windchill_c":28.8,"windchill_f":83.9,"heatindex_c":26.7,"heatindex_f":80.1,"dewpoint_c":1.2,"dewpoint_f":34.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":14.2,"gust_kph":22.8,"uv":1.1},{"time_epoch":1741791600,"time":"2025-03-12 17:00","temp_c":28.1,"temp_f":82.6,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":12.5,"wind_kph":20.2,"wind_degree":54,"wind_dir":"NE","pressure_mb":1013,"pressure_in":29.92,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":18,"cloud":0,"feelslike_c":26.1,"feelslike_f":79,"windchill_c":28.1,"windchill_f":82.6,"heatindex_c":26.1,"heatindex_f":79,"dewpoint_c":1.6,"dewpoint_f":34.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":16,"gust_kph":25.8,"uv":0.2},{"time_epoch":1741795200,"time":"2025-03-12 18:00","temp_c":25.9,"temp_f":78.5,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":11.9,"wind_kph":19.1,"wind_degree":47,"wind_dir":"NE","pressure_mb":1013,"pressure_in":29.93,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":22,"cloud":15,"feelslike_c":24.6,"feelslike_f":76.2,"windchill_c":25.9,"windchill_f":78.5,"heatindex_c":24.6,"heatindex_f":76.2,"dewpoint_c":2.6,"dewpoint_f":36.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":19.9,"gust_kph":32.1,"uv":0},{"time_epoch":1741798800,"time":"2025-03-12 19:00","temp_c":23.8,"temp_f":74.8,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":14.5,"wind_kph":23.4,"wind_degree":37,"wind_dir":"NE","pressure_mb":1014,"pressure_in":29.94,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":31,"cloud":0,"feelslike_c":24.1,"feelslike_f":75.3,"windchill_c":23.8,"windchill_f":74.8,"heatindex_c":24.1,"heatindex_f":75.3,"dewpoint_c":5.5,"dewpoint_f":41.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":24,"gust_kph":38.6,"uv":0},{"time_epoch":1741802400,"time":"2025-03-12 20:00","temp_c":21.3,"temp_f":70.3,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":17,"wind_kph":27.4,"wind_degree":45,"wind_dir":"NE","pressure_mb":1015,"pressure_in":29.96,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":43,"cloud":0,"feelslike_c":21.3,"feelslike_f":70.3,"windchill_c":21.3,"windchill_f":70.3,"heatindex_c":24,"heatindex_f":75.3,"dewpoint_c":8.2,"dewpoint_f":46.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":27.2,"gust_kph":43.8,"uv":0},{"time_epoch":1741806000,"time":"2025-03-12 21:00","temp_c":20.2,"temp_f":68.3,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":15.7,"wind_kph":25.2,"wind_degree":54,"wind_dir":"NE","pressure_mb":1015,"pressure_in":29.98,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":48,"cloud":1,"feelslike_c":20.2,"feelslike_f":68.3,"windchill_c":20.2,"windchill_f":68.3,"heatindex_c":20.2,"heatindex_f":68.3,"dewpoint_c":8.7,"dewpoint_f":47.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":25.9,"gust_kph":41.8,"uv":0},{"time_epoch":1741809600,"time":"2025-03-12 22:00","temp_c":19.4,"temp_f":66.9,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":12.5,"wind_kph":20.2,"wind_degree":46,"wind_dir":"NE","pressure_mb":1015,"pressure_in":29.98,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":49,"cloud":4,"feelslike_c":19.4,"feelslike_f":66.9,"windchill_c":19.4,"windchill_f":66.9,"heatindex_c":19.4,"heatindex_f":66.9,"dewpoint_c":8.5,"dewpoint_f":47.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":22.1,"gust_kph":35.5,"uv":0},{"time_epoch":1741813200,"time":"2025-03-12 23:00","temp_c":18.9,"temp_f":66,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":11.9,"wind_kph":19.1,"wind_degree":46,"wind_dir":"NE","pressure_mb":1015,"pressure_in":29.97,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":51,"cloud":2,"feelslike_c":18.9,"feelslike_f":66,"windchill_c":18.9,"windchill_f":66,"heatindex_c":18.9,"heatindex_f":66,"dewpoint_c":8.5,"dewpoint_f":47.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":21.4,"gust_kph":34.4,"uv":0}]}]

class Forecast {
  Forecast({
    List<Forecastday>? forecastday,
  }) {
    _forecastday = forecastday;
  }

  Forecast.fromJson(dynamic json) {
    if (json['forecastday'] != null) {
      _forecastday = [];
      json['forecastday'].forEach((v) {
        _forecastday?.add(Forecastday.fromJson(v));
      });
    }
  }
  List<Forecastday>? _forecastday;
  Forecast copyWith({
    List<Forecastday>? forecastday,
  }) =>
      Forecast(
        forecastday: forecastday ?? _forecastday,
      );
  List<Forecastday>? get forecastday => _forecastday;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_forecastday != null) {
      map['forecastday'] = _forecastday?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// date : "2025-03-10"
/// date_epoch : 1741564800
/// day : {"maxtemp_c":25.5,"maxtemp_f":77.8,"mintemp_c":15.5,"mintemp_f":59.9,"avgtemp_c":19.8,"avgtemp_f":67.6,"maxwind_mph":17.9,"maxwind_kph":28.8,"totalprecip_mm":0,"totalprecip_in":0,"totalsnow_cm":0,"avgvis_km":10,"avgvis_miles":6,"avghumidity":36,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":1.4}
/// astro : {"sunrise":"06:11 AM","sunset":"06:00 PM","moonrise":"02:29 PM","moonset":"04:02 AM","moon_phase":"Waxing Gibbous","moon_illumination":83,"is_moon_up":1,"is_sun_up":0}
/// hour : [{"time_epoch":1741557600,"time":"2025-03-10 00:00","temp_c":16.9,"temp_f":62.4,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":7.2,"wind_kph":11.5,"wind_degree":65,"wind_dir":"ENE","pressure_mb":1017,"pressure_in":30.02,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":40,"cloud":24,"feelslike_c":16.9,"feelslike_f":62.3,"windchill_c":16.9,"windchill_f":62.3,"heatindex_c":16.9,"heatindex_f":62.3,"dewpoint_c":3.4,"dewpoint_f":38.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":12.7,"gust_kph":20.5,"uv":0},{"time_epoch":1741561200,"time":"2025-03-10 01:00","temp_c":16.5,"temp_f":61.6,"is_day":0,"condition":{"text":"Partly Cloudy ","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003},"wind_mph":6.3,"wind_kph":10.1,"wind_degree":68,"wind_dir":"ENE","pressure_mb":1016,"pressure_in":30.02,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":42,"cloud":41,"feelslike_c":16.5,"feelslike_f":61.6,"windchill_c":16.5,"windchill_f":61.6,"heatindex_c":16.5,"heatindex_f":61.6,"dewpoint_c":3.4,"dewpoint_f":38.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":11.5,"gust_kph":18.5,"uv":0},{"time_epoch":1741564800,"time":"2025-03-10 02:00","temp_c":16.2,"temp_f":61.2,"is_day":0,"condition":{"text":"Partly Cloudy ","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003},"wind_mph":5.8,"wind_kph":9.4,"wind_degree":73,"wind_dir":"ENE","pressure_mb":1016,"pressure_in":30.01,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":42,"cloud":27,"feelslike_c":16.2,"feelslike_f":61.2,"windchill_c":16.2,"windchill_f":61.2,"heatindex_c":16.2,"heatindex_f":61.2,"dewpoint_c":3.5,"dewpoint_f":38.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":10.9,"gust_kph":17.6,"uv":0},{"time_epoch":1741568400,"time":"2025-03-10 03:00","temp_c":15.9,"temp_f":60.6,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.7,"wind_kph":7.6,"wind_degree":82,"wind_dir":"E","pressure_mb":1016,"pressure_in":30.01,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":43,"cloud":11,"feelslike_c":15.9,"feelslike_f":60.6,"windchill_c":15.9,"windchill_f":60.6,"heatindex_c":15.9,"heatindex_f":60.6,"dewpoint_c":3.4,"dewpoint_f":38.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":9.1,"gust_kph":14.7,"uv":0},{"time_epoch":1741572000,"time":"2025-03-10 04:00","temp_c":15.7,"temp_f":60.3,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4,"wind_kph":6.5,"wind_degree":82,"wind_dir":"E","pressure_mb":1016,"pressure_in":30.01,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":43,"cloud":12,"feelslike_c":15.7,"feelslike_f":60.3,"windchill_c":15.7,"windchill_f":60.3,"heatindex_c":15.7,"heatindex_f":60.3,"dewpoint_c":3.3,"dewpoint_f":37.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":8,"gust_kph":12.9,"uv":0},{"time_epoch":1741575600,"time":"2025-03-10 05:00","temp_c":15.6,"temp_f":60,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.6,"wind_kph":5.8,"wind_degree":87,"wind_dir":"E","pressure_mb":1017,"pressure_in":30.02,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":43,"cloud":13,"feelslike_c":15.6,"feelslike_f":60,"windchill_c":15.6,"windchill_f":60,"heatindex_c":15.6,"heatindex_f":60,"dewpoint_c":3.1,"dewpoint_f":37.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":7.3,"gust_kph":11.7,"uv":0},{"time_epoch":1741579200,"time":"2025-03-10 06:00","temp_c":15.5,"temp_f":59.9,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.6,"wind_kph":5.8,"wind_degree":111,"wind_dir":"ESE","pressure_mb":1017,"pressure_in":30.03,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":43,"cloud":11,"feelslike_c":15.5,"feelslike_f":59.9,"windchill_c":15.5,"windchill_f":59.9,"heatindex_c":15.5,"heatindex_f":59.9,"dewpoint_c":2.9,"dewpoint_f":37.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":7.4,"gust_kph":12,"uv":0},{"time_epoch":1741582800,"time":"2025-03-10 07:00","temp_c":16,"temp_f":60.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.2,"wind_kph":3.6,"wind_degree":87,"wind_dir":"E","pressure_mb":1017,"pressure_in":30.03,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":42,"cloud":0,"feelslike_c":16.3,"feelslike_f":61.3,"windchill_c":16.3,"windchill_f":61.3,"heatindex_c":16.3,"heatindex_f":61.3,"dewpoint_c":3,"dewpoint_f":37.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":2.5,"gust_kph":4,"uv":0.3},{"time_epoch":1741586400,"time":"2025-03-10 08:00","temp_c":18.2,"temp_f":64.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2,"wind_kph":3.2,"wind_degree":5,"wind_dir":"N","pressure_mb":1019,"pressure_in":30.08,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":36,"cloud":18,"feelslike_c":18.2,"feelslike_f":64.8,"windchill_c":18.2,"windchill_f":64.8,"heatindex_c":18.2,"heatindex_f":64.8,"dewpoint_c":3.1,"dewpoint_f":37.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":2.7,"gust_kph":4.4,"uv":1.2},{"time_epoch":1741590000,"time":"2025-03-10 09:00","temp_c":19.5,"temp_f":67.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":1.3,"wind_kph":2.2,"wind_degree":14,"wind_dir":"NNE","pressure_mb":1019,"pressure_in":30.09,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":33,"cloud":8,"feelslike_c":19.5,"feelslike_f":67.1,"windchill_c":19.5,"windchill_f":67.1,"heatindex_c":19.5,"heatindex_f":67.1,"dewpoint_c":3,"dewpoint_f":37.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":1.7,"gust_kph":2.7,"uv":2.6},{"time_epoch":1741593600,"time":"2025-03-10 10:00","temp_c":20.9,"temp_f":69.6,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.7,"wind_kph":4.3,"wind_degree":347,"wind_dir":"NNW","pressure_mb":1019,"pressure_in":30.1,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":30,"cloud":7,"feelslike_c":20.9,"feelslike_f":69.6,"windchill_c":20.9,"windchill_f":69.6,"heatindex_c":20.9,"heatindex_f":69.6,"dewpoint_c":2.9,"dewpoint_f":37.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":3.2,"gust_kph":5.2,"uv":4.4},{"time_epoch":1741597200,"time":"2025-03-10 11:00","temp_c":22.1,"temp_f":71.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.9,"wind_kph":4.7,"wind_degree":350,"wind_dir":"N","pressure_mb":1019,"pressure_in":30.1,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":28,"cloud":6,"feelslike_c":23.1,"feelslike_f":73.6,"windchill_c":22.1,"windchill_f":71.7,"heatindex_c":23.1,"heatindex_f":73.6,"dewpoint_c":2.8,"dewpoint_f":37.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":3.4,"gust_kph":5.5,"uv":5.8},{"time_epoch":1741600800,"time":"2025-03-10 12:00","temp_c":23.2,"temp_f":73.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.6,"wind_kph":5.8,"wind_degree":348,"wind_dir":"NNW","pressure_mb":1019,"pressure_in":30.08,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":26,"cloud":6,"feelslike_c":23.4,"feelslike_f":74.1,"windchill_c":23.2,"windchill_f":73.8,"heatindex_c":23.4,"heatindex_f":74.1,"dewpoint_c":2.6,"dewpoint_f":36.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":4.1,"gust_kph":6.6,"uv":6.1},{"time_epoch":1741604400,"time":"2025-03-10 13:00","temp_c":24.2,"temp_f":75.5,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4,"wind_kph":6.5,"wind_degree":357,"wind_dir":"N","pressure_mb":1018,"pressure_in":30.05,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":24,"cloud":7,"feelslike_c":23.7,"feelslike_f":74.6,"windchill_c":24.2,"windchill_f":75.5,"heatindex_c":23.7,"heatindex_f":74.6,"dewpoint_c":2.4,"dewpoint_f":36.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":4.6,"gust_kph":7.5,"uv":5.6},{"time_epoch":1741608000,"time":"2025-03-10 14:00","temp_c":24.7,"temp_f":76.5,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.1,"wind_kph":5,"wind_degree":19,"wind_dir":"NNE","pressure_mb":1017,"pressure_in":30.04,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":23,"cloud":17,"feelslike_c":23.9,"feelslike_f":75,"windchill_c":24.7,"windchill_f":76.5,"heatindex_c":23.9,"heatindex_f":75,"dewpoint_c":2.2,"dewpoint_f":35.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":3.6,"gust_kph":5.8,"uv":3.9},{"time_epoch":1741611600,"time":"2025-03-10 15:00","temp_c":25.2,"temp_f":77.3,"is_day":1,"condition":{"text":"Partly Cloudy ","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":19,"wind_dir":"NNE","pressure_mb":1017,"pressure_in":30.02,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":22,"cloud":46,"feelslike_c":24.1,"feelslike_f":75.5,"windchill_c":25.2,"windchill_f":77.3,"heatindex_c":24.1,"heatindex_f":75.5,"dewpoint_c":2.2,"dewpoint_f":35.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":4,"gust_kph":6.4,"uv":2.2},{"time_epoch":1741615200,"time":"2025-03-10 16:00","temp_c":25.5,"temp_f":77.8,"is_day":1,"condition":{"text":"Cloudy ","icon":"//cdn.weatherapi.com/weather/64x64/day/119.png","code":1006},"wind_mph":4.9,"wind_kph":7.9,"wind_degree":29,"wind_dir":"NNE","pressure_mb":1016,"pressure_in":30.02,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":22,"cloud":80,"feelslike_c":24.3,"feelslike_f":75.7,"windchill_c":25.5,"windchill_f":77.8,"heatindex_c":24.3,"heatindex_f":75.7,"dewpoint_c":2.3,"dewpoint_f":36.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":5.9,"gust_kph":9.5,"uv":0.9},{"time_epoch":1741618800,"time":"2025-03-10 17:00","temp_c":25,"temp_f":77.1,"is_day":1,"condition":{"text":"Cloudy ","icon":"//cdn.weatherapi.com/weather/64x64/day/119.png","code":1006},"wind_mph":8.3,"wind_kph":13.3,"wind_degree":45,"wind_dir":"NE","pressure_mb":1017,"pressure_in":30.02,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":24,"cloud":81,"feelslike_c":24.2,"feelslike_f":75.6,"windchill_c":25,"windchill_f":77.1,"heatindex_c":24.2,"heatindex_f":75.6,"dewpoint_c":3,"dewpoint_f":37.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":10.4,"gust_kph":16.7,"uv":0.2},{"time_epoch":1741622400,"time":"2025-03-10 18:00","temp_c":23.8,"temp_f":74.9,"is_day":0,"condition":{"text":"Partly Cloudy ","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003},"wind_mph":11.6,"wind_kph":18.7,"wind_degree":50,"wind_dir":"NE","pressure_mb":1017,"pressure_in":30.03,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":27,"cloud":46,"feelslike_c":23.8,"feelslike_f":74.8,"windchill_c":23.8,"windchill_f":74.9,"heatindex_c":23.8,"heatindex_f":74.8,"dewpoint_c":3.6,"dewpoint_f":38.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":16.3,"gust_kph":26.3,"uv":0},{"time_epoch":1741626000,"time":"2025-03-10 19:00","temp_c":21.7,"temp_f":71.1,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":16.8,"wind_kph":27,"wind_degree":47,"wind_dir":"NE","pressure_mb":1018,"pressure_in":30.06,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":35,"cloud":9,"feelslike_c":21.7,"feelslike_f":71.1,"windchill_c":21.7,"windchill_f":71.1,"heatindex_c":23.6,"heatindex_f":74.5,"dewpoint_c":5.7,"dewpoint_f":42.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":23.9,"gust_kph":38.4,"uv":0},{"time_epoch":1741629600,"time":"2025-03-10 20:00","temp_c":19.2,"temp_f":66.6,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":17.9,"wind_kph":28.8,"wind_degree":51,"wind_dir":"NE","pressure_mb":1019,"pressure_in":30.09,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":45,"cloud":9,"feelslike_c":19.2,"feelslike_f":66.6,"windchill_c":19.2,"windchill_f":66.6,"heatindex_c":19.2,"heatindex_f":66.6,"dewpoint_c":7,"dewpoint_f":44.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":26.4,"gust_kph":42.4,"uv":0},{"time_epoch":1741633200,"time":"2025-03-10 21:00","temp_c":18.4,"temp_f":65.1,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":14.8,"wind_kph":23.8,"wind_degree":50,"wind_dir":"NE","pressure_mb":1020,"pressure_in":30.11,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":48,"cloud":10,"feelslike_c":18.4,"feelslike_f":65.1,"windchill_c":18.4,"windchill_f":65.1,"heatindex_c":18.4,"heatindex_f":65.1,"dewpoint_c":7.2,"dewpoint_f":45,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":22.5,"gust_kph":36.3,"uv":0},{"time_epoch":1741636800,"time":"2025-03-10 22:00","temp_c":17.7,"temp_f":63.9,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":12.1,"wind_kph":19.4,"wind_degree":52,"wind_dir":"NE","pressure_mb":1020,"pressure_in":30.12,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":52,"cloud":11,"feelslike_c":17.7,"feelslike_f":63.9,"windchill_c":17.7,"windchill_f":63.9,"heatindex_c":17.7,"heatindex_f":63.9,"dewpoint_c":7.7,"dewpoint_f":45.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":18.7,"gust_kph":30.2,"uv":0},{"time_epoch":1741640400,"time":"2025-03-10 23:00","temp_c":17.2,"temp_f":63,"is_day":0,"condition":{"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":10.1,"wind_kph":16.2,"wind_degree":56,"wind_dir":"ENE","pressure_mb":1020,"pressure_in":30.12,"precip_mm":0,"precip_in":0,"snow_cm":0,"humidity":54,"cloud":11,"feelslike_c":17.2,"feelslike_f":63,"windchill_c":17.2,"windchill_f":63,"heatindex_c":17.2,"heatindex_f":63,"dewpoint_c":7.9,"dewpoint_f":46.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10,"vis_miles":6,"gust_mph":15.9,"gust_kph":25.6,"uv":0}]

class Forecastday {
  Forecastday({
    String? date,
    num? dateEpoch,
    Day? day,
    Astro? astro,
    List<Hour>? hour,
  }) {
    _date = date;
    _dateEpoch = dateEpoch;
    _day = day;
    _astro = astro;
    _hour = hour;
  }

  Forecastday.fromJson(dynamic json) {
    _date = json['date'];
    _dateEpoch = json['date_epoch'];
    _day = json['day'] != null ? Day.fromJson(json['day']) : null;
    _astro = json['astro'] != null ? Astro.fromJson(json['astro']) : null;
    if (json['hour'] != null) {
      _hour = [];
      json['hour'].forEach((v) {
        _hour?.add(Hour.fromJson(v));
      });
    }
  }
  String? _date;
  num? _dateEpoch;
  Day? _day;
  Astro? _astro;
  List<Hour>? _hour;
  Forecastday copyWith({
    String? date,
    num? dateEpoch,
    Day? day,
    Astro? astro,
    List<Hour>? hour,
  }) =>
      Forecastday(
        date: date ?? _date,
        dateEpoch: dateEpoch ?? _dateEpoch,
        day: day ?? _day,
        astro: astro ?? _astro,
        hour: hour ?? _hour,
      );
  String? get date => _date;
  num? get dateEpoch => _dateEpoch;
  Day? get day => _day;
  Astro? get astro => _astro;
  List<Hour>? get hour => _hour;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['date_epoch'] = _dateEpoch;
    if (_day != null) {
      map['day'] = _day?.toJson();
    }
    if (_astro != null) {
      map['astro'] = _astro?.toJson();
    }
    if (_hour != null) {
      map['hour'] = _hour?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// time_epoch : 1741557600
/// time : "2025-03-10 00:00"
/// temp_c : 16.9
/// temp_f : 62.4
/// is_day : 0
/// condition : {"text":"Clear ","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000}
/// wind_mph : 7.2
/// wind_kph : 11.5
/// wind_degree : 65
/// wind_dir : "ENE"
/// pressure_mb : 1017
/// pressure_in : 30.02
/// precip_mm : 0
/// precip_in : 0
/// snow_cm : 0
/// humidity : 40
/// cloud : 24
/// feelslike_c : 16.9
/// feelslike_f : 62.3
/// windchill_c : 16.9
/// windchill_f : 62.3
/// heatindex_c : 16.9
/// heatindex_f : 62.3
/// dewpoint_c : 3.4
/// dewpoint_f : 38.1
/// will_it_rain : 0
/// chance_of_rain : 0
/// will_it_snow : 0
/// chance_of_snow : 0
/// vis_km : 10
/// vis_miles : 6
/// gust_mph : 12.7
/// gust_kph : 20.5
/// uv : 0

class Hour {
  Hour({
    num? timeEpoch,
    String? time,
    num? tempC,
    num? tempF,
    num? isDay,
    Condition? condition,
    num? windMph,
    num? windKph,
    num? windDegree,
    String? windDir,
    num? pressureMb,
    num? pressureIn,
    num? precipMm,
    num? precipIn,
    num? snowCm,
    num? humidity,
    num? cloud,
    num? feelslikeC,
    num? feelslikeF,
    num? windchillC,
    num? windchillF,
    num? heatindexC,
    num? heatindexF,
    num? dewpointC,
    num? dewpointF,
    num? willItRain,
    num? chanceOfRain,
    num? willItSnow,
    num? chanceOfSnow,
    num? visKm,
    num? visMiles,
    num? gustMph,
    num? gustKph,
    num? uv,
  }) {
    _timeEpoch = timeEpoch;
    _time = time;
    _tempC = tempC;
    _tempF = tempF;
    _isDay = isDay;
    _condition = condition;
    _windMph = windMph;
    _windKph = windKph;
    _windDegree = windDegree;
    _windDir = windDir;
    _pressureMb = pressureMb;
    _pressureIn = pressureIn;
    _precipMm = precipMm;
    _precipIn = precipIn;
    _snowCm = snowCm;
    _humidity = humidity;
    _cloud = cloud;
    _feelslikeC = feelslikeC;
    _feelslikeF = feelslikeF;
    _windchillC = windchillC;
    _windchillF = windchillF;
    _heatindexC = heatindexC;
    _heatindexF = heatindexF;
    _dewpointC = dewpointC;
    _dewpointF = dewpointF;
    _willItRain = willItRain;
    _chanceOfRain = chanceOfRain;
    _willItSnow = willItSnow;
    _chanceOfSnow = chanceOfSnow;
    _visKm = visKm;
    _visMiles = visMiles;
    _gustMph = gustMph;
    _gustKph = gustKph;
    _uv = uv;
  }

  Hour.fromJson(dynamic json) {
    _timeEpoch = json['time_epoch'];
    _time = json['time'];
    _tempC = json['temp_c'];
    _tempF = json['temp_f'];
    _isDay = json['is_day'];
    _condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    _windMph = json['wind_mph'];
    _windKph = json['wind_kph'];
    _windDegree = json['wind_degree'];
    _windDir = json['wind_dir'];
    _pressureMb = json['pressure_mb'];
    _pressureIn = json['pressure_in'];
    _precipMm = json['precip_mm'];
    _precipIn = json['precip_in'];
    _snowCm = json['snow_cm'];
    _humidity = json['humidity'];
    _cloud = json['cloud'];
    _feelslikeC = json['feelslike_c'];
    _feelslikeF = json['feelslike_f'];
    _windchillC = json['windchill_c'];
    _windchillF = json['windchill_f'];
    _heatindexC = json['heatindex_c'];
    _heatindexF = json['heatindex_f'];
    _dewpointC = json['dewpoint_c'];
    _dewpointF = json['dewpoint_f'];
    _willItRain = json['will_it_rain'];
    _chanceOfRain = json['chance_of_rain'];
    _willItSnow = json['will_it_snow'];
    _chanceOfSnow = json['chance_of_snow'];
    _visKm = json['vis_km'];
    _visMiles = json['vis_miles'];
    _gustMph = json['gust_mph'];
    _gustKph = json['gust_kph'];
    _uv = json['uv'];
  }
  num? _timeEpoch;
  String? _time;
  num? _tempC;
  num? _tempF;
  num? _isDay;
  Condition? _condition;
  num? _windMph;
  num? _windKph;
  num? _windDegree;
  String? _windDir;
  num? _pressureMb;
  num? _pressureIn;
  num? _precipMm;
  num? _precipIn;
  num? _snowCm;
  num? _humidity;
  num? _cloud;
  num? _feelslikeC;
  num? _feelslikeF;
  num? _windchillC;
  num? _windchillF;
  num? _heatindexC;
  num? _heatindexF;
  num? _dewpointC;
  num? _dewpointF;
  num? _willItRain;
  num? _chanceOfRain;
  num? _willItSnow;
  num? _chanceOfSnow;
  num? _visKm;
  num? _visMiles;
  num? _gustMph;
  num? _gustKph;
  num? _uv;
  Hour copyWith({
    num? timeEpoch,
    String? time,
    num? tempC,
    num? tempF,
    num? isDay,
    Condition? condition,
    num? windMph,
    num? windKph,
    num? windDegree,
    String? windDir,
    num? pressureMb,
    num? pressureIn,
    num? precipMm,
    num? precipIn,
    num? snowCm,
    num? humidity,
    num? cloud,
    num? feelslikeC,
    num? feelslikeF,
    num? windchillC,
    num? windchillF,
    num? heatindexC,
    num? heatindexF,
    num? dewpointC,
    num? dewpointF,
    num? willItRain,
    num? chanceOfRain,
    num? willItSnow,
    num? chanceOfSnow,
    num? visKm,
    num? visMiles,
    num? gustMph,
    num? gustKph,
    num? uv,
  }) =>
      Hour(
        timeEpoch: timeEpoch ?? _timeEpoch,
        time: time ?? _time,
        tempC: tempC ?? _tempC,
        tempF: tempF ?? _tempF,
        isDay: isDay ?? _isDay,
        condition: condition ?? _condition,
        windMph: windMph ?? _windMph,
        windKph: windKph ?? _windKph,
        windDegree: windDegree ?? _windDegree,
        windDir: windDir ?? _windDir,
        pressureMb: pressureMb ?? _pressureMb,
        pressureIn: pressureIn ?? _pressureIn,
        precipMm: precipMm ?? _precipMm,
        precipIn: precipIn ?? _precipIn,
        snowCm: snowCm ?? _snowCm,
        humidity: humidity ?? _humidity,
        cloud: cloud ?? _cloud,
        feelslikeC: feelslikeC ?? _feelslikeC,
        feelslikeF: feelslikeF ?? _feelslikeF,
        windchillC: windchillC ?? _windchillC,
        windchillF: windchillF ?? _windchillF,
        heatindexC: heatindexC ?? _heatindexC,
        heatindexF: heatindexF ?? _heatindexF,
        dewpointC: dewpointC ?? _dewpointC,
        dewpointF: dewpointF ?? _dewpointF,
        willItRain: willItRain ?? _willItRain,
        chanceOfRain: chanceOfRain ?? _chanceOfRain,
        willItSnow: willItSnow ?? _willItSnow,
        chanceOfSnow: chanceOfSnow ?? _chanceOfSnow,
        visKm: visKm ?? _visKm,
        visMiles: visMiles ?? _visMiles,
        gustMph: gustMph ?? _gustMph,
        gustKph: gustKph ?? _gustKph,
        uv: uv ?? _uv,
      );
  num? get timeEpoch => _timeEpoch;
  String? get time => _time;
  num? get tempC => _tempC;
  num? get tempF => _tempF;
  num? get isDay => _isDay;
  Condition? get condition => _condition;
  num? get windMph => _windMph;
  num? get windKph => _windKph;
  num? get windDegree => _windDegree;
  String? get windDir => _windDir;
  num? get pressureMb => _pressureMb;
  num? get pressureIn => _pressureIn;
  num? get precipMm => _precipMm;
  num? get precipIn => _precipIn;
  num? get snowCm => _snowCm;
  num? get humidity => _humidity;
  num? get cloud => _cloud;
  num? get feelslikeC => _feelslikeC;
  num? get feelslikeF => _feelslikeF;
  num? get windchillC => _windchillC;
  num? get windchillF => _windchillF;
  num? get heatindexC => _heatindexC;
  num? get heatindexF => _heatindexF;
  num? get dewpointC => _dewpointC;
  num? get dewpointF => _dewpointF;
  num? get willItRain => _willItRain;
  num? get chanceOfRain => _chanceOfRain;
  num? get willItSnow => _willItSnow;
  num? get chanceOfSnow => _chanceOfSnow;
  num? get visKm => _visKm;
  num? get visMiles => _visMiles;
  num? get gustMph => _gustMph;
  num? get gustKph => _gustKph;
  num? get uv => _uv;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time_epoch'] = _timeEpoch;
    map['time'] = _time;
    map['temp_c'] = _tempC;
    map['temp_f'] = _tempF;
    map['is_day'] = _isDay;
    if (_condition != null) {
      map['condition'] = _condition?.toJson();
    }
    map['wind_mph'] = _windMph;
    map['wind_kph'] = _windKph;
    map['wind_degree'] = _windDegree;
    map['wind_dir'] = _windDir;
    map['pressure_mb'] = _pressureMb;
    map['pressure_in'] = _pressureIn;
    map['precip_mm'] = _precipMm;
    map['precip_in'] = _precipIn;
    map['snow_cm'] = _snowCm;
    map['humidity'] = _humidity;
    map['cloud'] = _cloud;
    map['feelslike_c'] = _feelslikeC;
    map['feelslike_f'] = _feelslikeF;
    map['windchill_c'] = _windchillC;
    map['windchill_f'] = _windchillF;
    map['heatindex_c'] = _heatindexC;
    map['heatindex_f'] = _heatindexF;
    map['dewpoint_c'] = _dewpointC;
    map['dewpoint_f'] = _dewpointF;
    map['will_it_rain'] = _willItRain;
    map['chance_of_rain'] = _chanceOfRain;
    map['will_it_snow'] = _willItSnow;
    map['chance_of_snow'] = _chanceOfSnow;
    map['vis_km'] = _visKm;
    map['vis_miles'] = _visMiles;
    map['gust_mph'] = _gustMph;
    map['gust_kph'] = _gustKph;
    map['uv'] = _uv;
    return map;
  }
}

/// text : "Clear "
/// icon : "//cdn.weatherapi.com/weather/64x64/night/113.png"
/// code : 1000

class Condition {
  Condition({
    String? text,
    String? icon,
    num? code,
  }) {
    _text = text;
    _icon = icon;
    _code = code;
  }

  Condition.fromJson(dynamic json) {
    _text = json['text'];
    _icon = json['icon'];
    _code = json['code'];
  }
  String? _text;
  String? _icon;
  num? _code;
  Condition copyWith({
    String? text,
    String? icon,
    num? code,
  }) =>
      Condition(
        text: text ?? _text,
        icon: icon ?? _icon,
        code: code ?? _code,
      );
  String? get text => _text;
  String? get icon => _icon;
  num? get code => _code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['icon'] = _icon;
    map['code'] = _code;
    return map;
  }
}

/// sunrise : "06:11 AM"
/// sunset : "06:00 PM"
/// moonrise : "02:29 PM"
/// moonset : "04:02 AM"
/// moon_phase : "Waxing Gibbous"
/// moon_illumination : 83
/// is_moon_up : 1
/// is_sun_up : 0

class Astro {
  Astro({
    String? sunrise,
    String? sunset,
    String? moonrise,
    String? moonset,
    String? moonPhase,
    num? moonIllumination,
    num? isMoonUp,
    num? isSunUp,
  }) {
    _sunrise = sunrise;
    _sunset = sunset;
    _moonrise = moonrise;
    _moonset = moonset;
    _moonPhase = moonPhase;
    _moonIllumination = moonIllumination;
    _isMoonUp = isMoonUp;
    _isSunUp = isSunUp;
  }

  Astro.fromJson(dynamic json) {
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
    _moonrise = json['moonrise'];
    _moonset = json['moonset'];
    _moonPhase = json['moon_phase'];
    _moonIllumination = json['moon_illumination'];
    _isMoonUp = json['is_moon_up'];
    _isSunUp = json['is_sun_up'];
  }
  String? _sunrise;
  String? _sunset;
  String? _moonrise;
  String? _moonset;
  String? _moonPhase;
  num? _moonIllumination;
  num? _isMoonUp;
  num? _isSunUp;
  Astro copyWith({
    String? sunrise,
    String? sunset,
    String? moonrise,
    String? moonset,
    String? moonPhase,
    num? moonIllumination,
    num? isMoonUp,
    num? isSunUp,
  }) =>
      Astro(
        sunrise: sunrise ?? _sunrise,
        sunset: sunset ?? _sunset,
        moonrise: moonrise ?? _moonrise,
        moonset: moonset ?? _moonset,
        moonPhase: moonPhase ?? _moonPhase,
        moonIllumination: moonIllumination ?? _moonIllumination,
        isMoonUp: isMoonUp ?? _isMoonUp,
        isSunUp: isSunUp ?? _isSunUp,
      );
  String? get sunrise => _sunrise;
  String? get sunset => _sunset;
  String? get moonrise => _moonrise;
  String? get moonset => _moonset;
  String? get moonPhase => _moonPhase;
  num? get moonIllumination => _moonIllumination;
  num? get isMoonUp => _isMoonUp;
  num? get isSunUp => _isSunUp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sunrise'] = _sunrise;
    map['sunset'] = _sunset;
    map['moonrise'] = _moonrise;
    map['moonset'] = _moonset;
    map['moon_phase'] = _moonPhase;
    map['moon_illumination'] = _moonIllumination;
    map['is_moon_up'] = _isMoonUp;
    map['is_sun_up'] = _isSunUp;
    return map;
  }
}

/// maxtemp_c : 25.5
/// maxtemp_f : 77.8
/// mintemp_c : 15.5
/// mintemp_f : 59.9
/// avgtemp_c : 19.8
/// avgtemp_f : 67.6
/// maxwind_mph : 17.9
/// maxwind_kph : 28.8
/// totalprecip_mm : 0
/// totalprecip_in : 0
/// totalsnow_cm : 0
/// avgvis_km : 10
/// avgvis_miles : 6
/// avghumidity : 36
/// daily_will_it_rain : 0
/// daily_chance_of_rain : 0
/// daily_will_it_snow : 0
/// daily_chance_of_snow : 0
/// condition : {"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000}
/// uv : 1.4

class Day {
  Day({
    num? maxtempC,
    num? maxtempF,
    num? mintempC,
    num? mintempF,
    num? avgtempC,
    num? avgtempF,
    num? maxwindMph,
    num? maxwindKph,
    num? totalprecipMm,
    num? totalprecipIn,
    num? totalsnowCm,
    num? avgvisKm,
    num? avgvisMiles,
    num? avghumidity,
    num? dailyWillItRain,
    num? dailyChanceOfRain,
    num? dailyWillItSnow,
    num? dailyChanceOfSnow,
    Condition? condition,
    num? uv,
  }) {
    _maxtempC = maxtempC;
    _maxtempF = maxtempF;
    _mintempC = mintempC;
    _mintempF = mintempF;
    _avgtempC = avgtempC;
    _avgtempF = avgtempF;
    _maxwindMph = maxwindMph;
    _maxwindKph = maxwindKph;
    _totalprecipMm = totalprecipMm;
    _totalprecipIn = totalprecipIn;
    _totalsnowCm = totalsnowCm;
    _avgvisKm = avgvisKm;
    _avgvisMiles = avgvisMiles;
    _avghumidity = avghumidity;
    _dailyWillItRain = dailyWillItRain;
    _dailyChanceOfRain = dailyChanceOfRain;
    _dailyWillItSnow = dailyWillItSnow;
    _dailyChanceOfSnow = dailyChanceOfSnow;
    _condition = condition;
    _uv = uv;
  }

  Day.fromJson(dynamic json) {
    _maxtempC = json['maxtemp_c'];
    _maxtempF = json['maxtemp_f'];
    _mintempC = json['mintemp_c'];
    _mintempF = json['mintemp_f'];
    _avgtempC = json['avgtemp_c'];
    _avgtempF = json['avgtemp_f'];
    _maxwindMph = json['maxwind_mph'];
    _maxwindKph = json['maxwind_kph'];
    _totalprecipMm = json['totalprecip_mm'];
    _totalprecipIn = json['totalprecip_in'];
    _totalsnowCm = json['totalsnow_cm'];
    _avgvisKm = json['avgvis_km'];
    _avgvisMiles = json['avgvis_miles'];
    _avghumidity = json['avghumidity'];
    _dailyWillItRain = json['daily_will_it_rain'];
    _dailyChanceOfRain = json['daily_chance_of_rain'];
    _dailyWillItSnow = json['daily_will_it_snow'];
    _dailyChanceOfSnow = json['daily_chance_of_snow'];
    _condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    _uv = json['uv'];
  }
  num? _maxtempC;
  num? _maxtempF;
  num? _mintempC;
  num? _mintempF;
  num? _avgtempC;
  num? _avgtempF;
  num? _maxwindMph;
  num? _maxwindKph;
  num? _totalprecipMm;
  num? _totalprecipIn;
  num? _totalsnowCm;
  num? _avgvisKm;
  num? _avgvisMiles;
  num? _avghumidity;
  num? _dailyWillItRain;
  num? _dailyChanceOfRain;
  num? _dailyWillItSnow;
  num? _dailyChanceOfSnow;
  Condition? _condition;
  num? _uv;
  Day copyWith({
    num? maxtempC,
    num? maxtempF,
    num? mintempC,
    num? mintempF,
    num? avgtempC,
    num? avgtempF,
    num? maxwindMph,
    num? maxwindKph,
    num? totalprecipMm,
    num? totalprecipIn,
    num? totalsnowCm,
    num? avgvisKm,
    num? avgvisMiles,
    num? avghumidity,
    num? dailyWillItRain,
    num? dailyChanceOfRain,
    num? dailyWillItSnow,
    num? dailyChanceOfSnow,
    Condition? condition,
    num? uv,
  }) =>
      Day(
        maxtempC: maxtempC ?? _maxtempC,
        maxtempF: maxtempF ?? _maxtempF,
        mintempC: mintempC ?? _mintempC,
        mintempF: mintempF ?? _mintempF,
        avgtempC: avgtempC ?? _avgtempC,
        avgtempF: avgtempF ?? _avgtempF,
        maxwindMph: maxwindMph ?? _maxwindMph,
        maxwindKph: maxwindKph ?? _maxwindKph,
        totalprecipMm: totalprecipMm ?? _totalprecipMm,
        totalprecipIn: totalprecipIn ?? _totalprecipIn,
        totalsnowCm: totalsnowCm ?? _totalsnowCm,
        avgvisKm: avgvisKm ?? _avgvisKm,
        avgvisMiles: avgvisMiles ?? _avgvisMiles,
        avghumidity: avghumidity ?? _avghumidity,
        dailyWillItRain: dailyWillItRain ?? _dailyWillItRain,
        dailyChanceOfRain: dailyChanceOfRain ?? _dailyChanceOfRain,
        dailyWillItSnow: dailyWillItSnow ?? _dailyWillItSnow,
        dailyChanceOfSnow: dailyChanceOfSnow ?? _dailyChanceOfSnow,
        condition: condition ?? _condition,
        uv: uv ?? _uv,
      );
  num? get maxtempC => _maxtempC;
  num? get maxtempF => _maxtempF;
  num? get mintempC => _mintempC;
  num? get mintempF => _mintempF;
  num? get avgtempC => _avgtempC;
  num? get avgtempF => _avgtempF;
  num? get maxwindMph => _maxwindMph;
  num? get maxwindKph => _maxwindKph;
  num? get totalprecipMm => _totalprecipMm;
  num? get totalprecipIn => _totalprecipIn;
  num? get totalsnowCm => _totalsnowCm;
  num? get avgvisKm => _avgvisKm;
  num? get avgvisMiles => _avgvisMiles;
  num? get avghumidity => _avghumidity;
  num? get dailyWillItRain => _dailyWillItRain;
  num? get dailyChanceOfRain => _dailyChanceOfRain;
  num? get dailyWillItSnow => _dailyWillItSnow;
  num? get dailyChanceOfSnow => _dailyChanceOfSnow;
  Condition? get condition => _condition;
  num? get uv => _uv;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['maxtemp_c'] = _maxtempC;
    map['maxtemp_f'] = _maxtempF;
    map['mintemp_c'] = _mintempC;
    map['mintemp_f'] = _mintempF;
    map['avgtemp_c'] = _avgtempC;
    map['avgtemp_f'] = _avgtempF;
    map['maxwind_mph'] = _maxwindMph;
    map['maxwind_kph'] = _maxwindKph;
    map['totalprecip_mm'] = _totalprecipMm;
    map['totalprecip_in'] = _totalprecipIn;
    map['totalsnow_cm'] = _totalsnowCm;
    map['avgvis_km'] = _avgvisKm;
    map['avgvis_miles'] = _avgvisMiles;
    map['avghumidity'] = _avghumidity;
    map['daily_will_it_rain'] = _dailyWillItRain;
    map['daily_chance_of_rain'] = _dailyChanceOfRain;
    map['daily_will_it_snow'] = _dailyWillItSnow;
    map['daily_chance_of_snow'] = _dailyChanceOfSnow;
    if (_condition != null) {
      map['condition'] = _condition?.toJson();
    }
    map['uv'] = _uv;
    return map;
  }
}

/// last_updated_epoch : 1741583700
/// last_updated : "2025-03-10 07:15"
/// temp_c : 16
/// temp_f : 60.8
/// is_day : 1
/// condition : {"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000}
/// wind_mph : 2.2
/// wind_kph : 3.6
/// wind_degree : 87
/// wind_dir : "E"
/// pressure_mb : 1017
/// pressure_in : 30.03
/// precip_mm : 0
/// precip_in : 0
/// humidity : 42
/// cloud : 0
/// feelslike_c : 16
/// feelslike_f : 60.8
/// windchill_c : 16.3
/// windchill_f : 61.3
/// heatindex_c : 16.3
/// heatindex_f : 61.3
/// dewpoint_c : 3
/// dewpoint_f : 37.4
/// vis_km : 10
/// vis_miles : 6
/// uv : 0.3
/// gust_mph : 2.5
/// gust_kph : 4
/// air_quality : {"co":462.5,"no2":54.39,"o3":37,"so2":67.525,"pm2_5":56.98,"pm10":103.23,"us-epa-index":3,"gb-defra-index":7}

class Current {
  Current({
    num? lastUpdatedEpoch,
    String? lastUpdated,
    num? tempC,
    num? tempF,
    num? isDay,
    Condition? condition,
    num? windMph,
    num? windKph,
    num? windDegree,
    String? windDir,
    num? pressureMb,
    num? pressureIn,
    num? precipMm,
    num? precipIn,
    num? humidity,
    num? cloud,
    num? feelslikeC,
    num? feelslikeF,
    num? windchillC,
    num? windchillF,
    num? heatindexC,
    num? heatindexF,
    num? dewpointC,
    num? dewpointF,
    num? visKm,
    num? visMiles,
    num? uv,
    num? gustMph,
    num? gustKph,
    AirQuality? airQuality,
  }) {
    _lastUpdatedEpoch = lastUpdatedEpoch;
    _lastUpdated = lastUpdated;
    _tempC = tempC;
    _tempF = tempF;
    _isDay = isDay;
    _condition = condition;
    _windMph = windMph;
    _windKph = windKph;
    _windDegree = windDegree;
    _windDir = windDir;
    _pressureMb = pressureMb;
    _pressureIn = pressureIn;
    _precipMm = precipMm;
    _precipIn = precipIn;
    _humidity = humidity;
    _cloud = cloud;
    _feelslikeC = feelslikeC;
    _feelslikeF = feelslikeF;
    _windchillC = windchillC;
    _windchillF = windchillF;
    _heatindexC = heatindexC;
    _heatindexF = heatindexF;
    _dewpointC = dewpointC;
    _dewpointF = dewpointF;
    _visKm = visKm;
    _visMiles = visMiles;
    _uv = uv;
    _gustMph = gustMph;
    _gustKph = gustKph;
    _airQuality = airQuality;
  }

  Current.fromJson(dynamic json) {
    _lastUpdatedEpoch = json['last_updated_epoch'];
    _lastUpdated = json['last_updated'];
    _tempC = json['temp_c'];
    _tempF = json['temp_f'];
    _isDay = json['is_day'];
    _condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    _windMph = json['wind_mph'];
    _windKph = json['wind_kph'];
    _windDegree = json['wind_degree'];
    _windDir = json['wind_dir'];
    _pressureMb = json['pressure_mb'];
    _pressureIn = json['pressure_in'];
    _precipMm = json['precip_mm'];
    _precipIn = json['precip_in'];
    _humidity = json['humidity'];
    _cloud = json['cloud'];
    _feelslikeC = json['feelslike_c'];
    _feelslikeF = json['feelslike_f'];
    _windchillC = json['windchill_c'];
    _windchillF = json['windchill_f'];
    _heatindexC = json['heatindex_c'];
    _heatindexF = json['heatindex_f'];
    _dewpointC = json['dewpoint_c'];
    _dewpointF = json['dewpoint_f'];
    _visKm = json['vis_km'];
    _visMiles = json['vis_miles'];
    _uv = json['uv'];
    _gustMph = json['gust_mph'];
    _gustKph = json['gust_kph'];
    _airQuality = json['air_quality'] != null
        ? AirQuality.fromJson(json['air_quality'])
        : null;
  }
  num? _lastUpdatedEpoch;
  String? _lastUpdated;
  num? _tempC;
  num? _tempF;
  num? _isDay;
  Condition? _condition;
  num? _windMph;
  num? _windKph;
  num? _windDegree;
  String? _windDir;
  num? _pressureMb;
  num? _pressureIn;
  num? _precipMm;
  num? _precipIn;
  num? _humidity;
  num? _cloud;
  num? _feelslikeC;
  num? _feelslikeF;
  num? _windchillC;
  num? _windchillF;
  num? _heatindexC;
  num? _heatindexF;
  num? _dewpointC;
  num? _dewpointF;
  num? _visKm;
  num? _visMiles;
  num? _uv;
  num? _gustMph;
  num? _gustKph;
  AirQuality? _airQuality;
  Current copyWith({
    num? lastUpdatedEpoch,
    String? lastUpdated,
    num? tempC,
    num? tempF,
    num? isDay,
    Condition? condition,
    num? windMph,
    num? windKph,
    num? windDegree,
    String? windDir,
    num? pressureMb,
    num? pressureIn,
    num? precipMm,
    num? precipIn,
    num? humidity,
    num? cloud,
    num? feelslikeC,
    num? feelslikeF,
    num? windchillC,
    num? windchillF,
    num? heatindexC,
    num? heatindexF,
    num? dewpointC,
    num? dewpointF,
    num? visKm,
    num? visMiles,
    num? uv,
    num? gustMph,
    num? gustKph,
    AirQuality? airQuality,
  }) =>
      Current(
        lastUpdatedEpoch: lastUpdatedEpoch ?? _lastUpdatedEpoch,
        lastUpdated: lastUpdated ?? _lastUpdated,
        tempC: tempC ?? _tempC,
        tempF: tempF ?? _tempF,
        isDay: isDay ?? _isDay,
        condition: condition ?? _condition,
        windMph: windMph ?? _windMph,
        windKph: windKph ?? _windKph,
        windDegree: windDegree ?? _windDegree,
        windDir: windDir ?? _windDir,
        pressureMb: pressureMb ?? _pressureMb,
        pressureIn: pressureIn ?? _pressureIn,
        precipMm: precipMm ?? _precipMm,
        precipIn: precipIn ?? _precipIn,
        humidity: humidity ?? _humidity,
        cloud: cloud ?? _cloud,
        feelslikeC: feelslikeC ?? _feelslikeC,
        feelslikeF: feelslikeF ?? _feelslikeF,
        windchillC: windchillC ?? _windchillC,
        windchillF: windchillF ?? _windchillF,
        heatindexC: heatindexC ?? _heatindexC,
        heatindexF: heatindexF ?? _heatindexF,
        dewpointC: dewpointC ?? _dewpointC,
        dewpointF: dewpointF ?? _dewpointF,
        visKm: visKm ?? _visKm,
        visMiles: visMiles ?? _visMiles,
        uv: uv ?? _uv,
        gustMph: gustMph ?? _gustMph,
        gustKph: gustKph ?? _gustKph,
        airQuality: airQuality ?? _airQuality,
      );
  num? get lastUpdatedEpoch => _lastUpdatedEpoch;
  String? get lastUpdated => _lastUpdated;
  num? get tempC => _tempC;
  num? get tempF => _tempF;
  num? get isDay => _isDay;
  Condition? get condition => _condition;
  num? get windMph => _windMph;
  num? get windKph => _windKph;
  num? get windDegree => _windDegree;
  String? get windDir => _windDir;
  num? get pressureMb => _pressureMb;
  num? get pressureIn => _pressureIn;
  num? get precipMm => _precipMm;
  num? get precipIn => _precipIn;
  num? get humidity => _humidity;
  num? get cloud => _cloud;
  num? get feelslikeC => _feelslikeC;
  num? get feelslikeF => _feelslikeF;
  num? get windchillC => _windchillC;
  num? get windchillF => _windchillF;
  num? get heatindexC => _heatindexC;
  num? get heatindexF => _heatindexF;
  num? get dewpointC => _dewpointC;
  num? get dewpointF => _dewpointF;
  num? get visKm => _visKm;
  num? get visMiles => _visMiles;
  num? get uv => _uv;
  num? get gustMph => _gustMph;
  num? get gustKph => _gustKph;
  AirQuality? get airQuality => _airQuality;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['last_updated_epoch'] = _lastUpdatedEpoch;
    map['last_updated'] = _lastUpdated;
    map['temp_c'] = _tempC;
    map['temp_f'] = _tempF;
    map['is_day'] = _isDay;
    if (_condition != null) {
      map['condition'] = _condition?.toJson();
    }
    map['wind_mph'] = _windMph;
    map['wind_kph'] = _windKph;
    map['wind_degree'] = _windDegree;
    map['wind_dir'] = _windDir;
    map['pressure_mb'] = _pressureMb;
    map['pressure_in'] = _pressureIn;
    map['precip_mm'] = _precipMm;
    map['precip_in'] = _precipIn;
    map['humidity'] = _humidity;
    map['cloud'] = _cloud;
    map['feelslike_c'] = _feelslikeC;
    map['feelslike_f'] = _feelslikeF;
    map['windchill_c'] = _windchillC;
    map['windchill_f'] = _windchillF;
    map['heatindex_c'] = _heatindexC;
    map['heatindex_f'] = _heatindexF;
    map['dewpoint_c'] = _dewpointC;
    map['dewpoint_f'] = _dewpointF;
    map['vis_km'] = _visKm;
    map['vis_miles'] = _visMiles;
    map['uv'] = _uv;
    map['gust_mph'] = _gustMph;
    map['gust_kph'] = _gustKph;
    if (_airQuality != null) {
      map['air_quality'] = _airQuality?.toJson();
    }
    return map;
  }
}

/// co : 462.5
/// no2 : 54.39
/// o3 : 37
/// so2 : 67.525
/// pm2_5 : 56.98
/// pm10 : 103.23
/// us-epa-index : 3
/// gb-defra-index : 7

class AirQuality {
  AirQuality({
    num? co,
    num? no2,
    num? o3,
    num? so2,
    num? pm25,
    num? pm10,
    num? usepaindex,
    num? gbdefraindex,
  }) {
    _co = co;
    _no2 = no2;
    _o3 = o3;
    _so2 = so2;
    _pm25 = pm25;
    _pm10 = pm10;
    _usepaindex = usepaindex;
    _gbdefraindex = gbdefraindex;
  }

  AirQuality.fromJson(dynamic json) {
    _co = json['co'];
    _no2 = json['no2'];
    _o3 = json['o3'];
    _so2 = json['so2'];
    _pm25 = json['pm2_5'];
    _pm10 = json['pm10'];
    _usepaindex = json['us-epa-index'];
    _gbdefraindex = json['gb-defra-index'];
  }
  num? _co;
  num? _no2;
  num? _o3;
  num? _so2;
  num? _pm25;
  num? _pm10;
  num? _usepaindex;
  num? _gbdefraindex;
  AirQuality copyWith({
    num? co,
    num? no2,
    num? o3,
    num? so2,
    num? pm25,
    num? pm10,
    num? usepaindex,
    num? gbdefraindex,
  }) =>
      AirQuality(
        co: co ?? _co,
        no2: no2 ?? _no2,
        o3: o3 ?? _o3,
        so2: so2 ?? _so2,
        pm25: pm25 ?? _pm25,
        pm10: pm10 ?? _pm10,
        usepaindex: usepaindex ?? _usepaindex,
        gbdefraindex: gbdefraindex ?? _gbdefraindex,
      );
  num? get co => _co;
  num? get no2 => _no2;
  num? get o3 => _o3;
  num? get so2 => _so2;
  num? get pm25 => _pm25;
  num? get pm10 => _pm10;
  num? get usepaindex => _usepaindex;
  num? get gbdefraindex => _gbdefraindex;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['co'] = _co;
    map['no2'] = _no2;
    map['o3'] = _o3;
    map['so2'] = _so2;
    map['pm2_5'] = _pm25;
    map['pm10'] = _pm10;
    map['us-epa-index'] = _usepaindex;
    map['gb-defra-index'] = _gbdefraindex;
    return map;
  }
}

/// name : "Cairo"
/// region : "Al Qahirah"
/// country : "Egypt"
/// lat : 30.05
/// lon : 31.25
/// tz_id : "Africa/Cairo"
/// localtime_epoch : 1741583836
/// localtime : "2025-03-10 07:17"

class Location {
  Location({
    String? name,
    String? region,
    String? country,
    num? lat,
    num? lon,
    String? tzId,
    num? localtimeEpoch,
    String? localtime,
  }) {
    _name = name;
    _region = region;
    _country = country;
    _lat = lat;
    _lon = lon;
    _tzId = tzId;
    _localtimeEpoch = localtimeEpoch;
    _localtime = localtime;
  }

  Location.fromJson(dynamic json) {
    _name = json['name'];
    _region = json['region'];
    _country = json['country'];
    _lat = json['lat'];
    _lon = json['lon'];
    _tzId = json['tz_id'];
    _localtimeEpoch = json['localtime_epoch'];
    _localtime = json['localtime'];
  }
  String? _name;
  String? _region;
  String? _country;
  num? _lat;
  num? _lon;
  String? _tzId;
  num? _localtimeEpoch;
  String? _localtime;
  Location copyWith({
    String? name,
    String? region,
    String? country,
    num? lat,
    num? lon,
    String? tzId,
    num? localtimeEpoch,
    String? localtime,
  }) =>
      Location(
        name: name ?? _name,
        region: region ?? _region,
        country: country ?? _country,
        lat: lat ?? _lat,
        lon: lon ?? _lon,
        tzId: tzId ?? _tzId,
        localtimeEpoch: localtimeEpoch ?? _localtimeEpoch,
        localtime: localtime ?? _localtime,
      );
  String? get name => _name;
  String? get region => _region;
  String? get country => _country;
  num? get lat => _lat;
  num? get lon => _lon;
  String? get tzId => _tzId;
  num? get localtimeEpoch => _localtimeEpoch;
  String? get localtime => _localtime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['region'] = _region;
    map['country'] = _country;
    map['lat'] = _lat;
    map['lon'] = _lon;
    map['tz_id'] = _tzId;
    map['localtime_epoch'] = _localtimeEpoch;
    map['localtime'] = _localtime;
    return map;
  }
}
