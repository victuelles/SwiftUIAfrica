//
//  VideoModel.swift
//  Africa
//
//  Created by Rom Victuelles on 5/23/21.
//

import Foundation

struct Video: Codable, Identifiable{
    
    let id: String
    let name: String
    let headline: String
    
    //computed property
    var thumbnail:String{
        "video-\(id)"
    }
}
