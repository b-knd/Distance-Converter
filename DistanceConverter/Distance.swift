//
//  Distance.swift
//  DistanceConverter
//
//  Created by Jing Ru Ang on 04/09/2022.
//

import Foundation

class Distance {
    static let kmPerMiles: Double = 1.60934
    var miles: Double
    var km: Double {
        get {
            Distance.toKm(miles: miles)
        }
        set(newKm){
            miles = Distance.toMiles(km: newKm)
        }
    }
    init(miles: Double) {
        self.miles = miles
    }
    init(km: Double) {
        self.miles = Distance.toMiles(km: km)
    }
    static func toKm(miles: Double) -> Double {
        return miles * kmPerMiles
    }
    static func toMiles(km: Double) -> Double {
        return km / kmPerMiles
    }
}

//extension of distance class
extension Distance {
    //type property
    static let feetPerMiles: Double = 5280
    //computed property
    var feet: Double {
        get {
            return Distance.toFeet(miles: miles)
        }
        set(newFeet) {
            miles = Distance.toMiles(feet: newFeet)
        }
    }
    //initializer
    convenience init(feet:Double) {
        self.init(miles: Distance.toMiles(feet:feet))
    }
    
    //methods
    static func toMiles(feet: Double) -> Double {
        return feet / feetPerMiles
    }
    static func toKm(feet: Double) -> Double {
        return toKm(miles: toMiles(feet: feet))
    }
    static func toFeet(miles: Double) -> Double {
        return miles * feetPerMiles
    }
}

//extension of another measuring distance
extension Distance {
    static let yardPerMiles: Double = 1760
    var yard: Double {
        get {
            return Distance.toYard(miles: miles)
        }
        set(newYard) {
            miles = Distance.toMiles(yard: newYard)
        }
    }
    convenience init(yard: Double) {
        self.init(miles: Distance.toMiles(yard: yard))
    }
    
    static func toMiles(yard: Double) -> Double {
        return yard / yardPerMiles
    }
    static func toKm(yard: Double) -> Double {
        return toKm(miles: toMiles(yard: yard))
    }
    static func toYard(miles: Double) -> Double {
        return miles * yardPerMiles
    }
}
