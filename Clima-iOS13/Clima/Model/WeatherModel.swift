

import Foundation

struct WeatherModel {
    let conditionId : Int
    let cityName : String
    let temperature : Double
    
    var tempString : String {
        return String(format: "%.1f", temperature)        
    }
    
    var conditionName : String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt.fill"
        case 500...531:
            return "cloud.rain.fill"
        case 600...622:
            return "cloud.snow.fill"
        case 701...781:
            return "cloud.fog.fill"
        case 800:
            return "sun.max.fill"
        case 300...321:
            return "cloud.drizzle.fill"
        case 801...804:
            return "cloud.bolt.fill"
        default:
            return "cloud.fill"
        }
    }
    
    
    
}
