//
//  CoverImageView.swift
//  Africa
//
//  Created by Rom Victuelles on 5/20/21.
//

import SwiftUI

struct CoverImageView: View {
    //MARk: Properties
    
    let coverImages :[CoverImage] = Bundle.main.decode("covers.json")
    var body: some View {
        TabView{
            ForEach(coverImages){ item in
                Image(item.name)
                .resizable()
                .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
        .previewLayout(.fixed(width: 400, height: 300))
    }
}
