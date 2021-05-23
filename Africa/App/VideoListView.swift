//
//  VideoListView.swift
//  Africa
//
//  Created by Rom Victuelles on 5/20/21.
//

import SwiftUI

struct VideoListView: View {
    
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    var body: some View {
        NavigationView {
            List {
                
                ForEach(videos) { item in
                    VideoListItemView(video:item)
                        .padding(.vertical,8)
                }
            } //:List
            .listStyle(InsetListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    Button( action: {
                        videos.shuffle()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        } //:Navigation
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
            .previewDevice("iPhone 12 Pro")
    }
}
