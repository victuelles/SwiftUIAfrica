//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Rom Victuelles on 5/23/21.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSelected: String
    var videoTitle: String
    
    var body: some View {
        VStack {
            VideoPlayer(player:playVideo(fileName: videoSelected, fileFormat:"mp4")){
               // Text(videoTitle)
            }
            .overlay(
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding(.top,6)
                .padding(.horizontal,8),
                alignment: .topLeading
            
            )
        }//:Vstack
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle,displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
