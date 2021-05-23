//
//  LocationModel.swift
//  Africa
//
//  Created by Rom Victuelles on 5/23/21.
//

import Foundation
import MapKit

struct NationalParkLocation : Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude:Double
    
    //computed property
    
    var location:CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
}
