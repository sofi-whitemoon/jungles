//
//  Plant.swift
//  Jungles
//
//  Created by Sonia on 02.12.2024.
//

import Foundation
let dateFormatter = ISO8601DateFormatter()

struct Plant: Identifiable, Hashable, Codable {
    var id: Int
    var name: String
    var species: String
    private var lastWatered: String
    var lastWateredDate: Date {
        dateFormatter.date(from: lastWatered)!
    }
    var wateringRecommendationDays: Int
    var careNotes: String
    
    func needsWatering() -> Bool {
        print(self.name, wateringCoeficient())
        if wateringCoeficient() <= 0.25 {
            return true
        }
        else{
            return false
        }
        
    }
    
    func daysPassedSinceLastWatered() -> Int? {
            let calendar = Calendar.current
            let now = Date()
            let components = calendar.dateComponents([.day], from: lastWateredDate, to: now)
            return components.day
    }
    
    func wateringCoeficient() -> Double { //add NULL checker
        let res: Double = Double((wateringRecommendationDays - daysPassedSinceLastWatered()!))/Double(wateringRecommendationDays)
        return res
    }
    
    func wateringCoeficientPercentage() -> Double {
        var wateringCoeficient = wateringCoeficient()
        if(wateringCoeficient < -1){
            wateringCoeficient = -1
        }
        else if (wateringCoeficient > 1) {
            wateringCoeficient = 1

        }
        let persentage = (wateringCoeficient + 1)/2  //shoud i place shift instead???
        return persentage
    }


}
