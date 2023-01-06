//
//  SimpleImpl.swift
//  player
//
//  Created by Jonn Alves on 06/01/23.
//

import Foundation

import SwiftUI
import AVKit

struct SimpleVideoView: View {
    private let player = AVPlayer(url: URL(string: "https://bit.ly/swswift")!)
    
    var body: some View {
        VideoPlayer(player: player)
            .onAppear() {
                // Start the player going, otherwise controls don't appear
                player.play()
            }
            .onDisappear() {
                // Stop the player when the view disappears
                player.pause()
            }
    }
}

struct SimpleVideoView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
