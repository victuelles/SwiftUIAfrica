//
//  CoverImageView.swift
//  Africa
//
//  Created by Rom Victuelles on 5/20/21.
//

import SwiftUI

struct CoverImageView: View {
    var body: some View {
        TabView{
            ForEach(0..<5){ item in
            Image("cover-lion")
                .resizable()
                .scaledToFit()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
    }
}
