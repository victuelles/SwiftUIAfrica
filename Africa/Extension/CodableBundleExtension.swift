//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Rom Victuelles on 5/21/21.
//

import Foundation

extension Bundle {
    
   // func decode(_ file:String) -> [CoverImage] {
        
     func decode<T: Codable>(_ file: String) -> T {
        //1. locate json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        //2. create property for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        //3. create decoder
        let decoder = JSONDecoder()
        
        //4. create property for the decoded data
     //   guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        //5. return data
        return loaded
    }
}
