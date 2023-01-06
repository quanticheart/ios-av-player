//
//  MenuView.swift
//  player
//
//  Created by Jonn Alves on 06/01/23.
//

import Foundation
import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: VideoView()) {
                    Text("Video Player")
                }
                NavigationLink(destination: AudioView()) {
                    Text("Audio Player")
                }
                NavigationLink(destination: SimpleVideoView()) {
                    Text("Simple Player")
                }
            }
        }
    }
}
