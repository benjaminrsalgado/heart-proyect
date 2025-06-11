//
//  ContentView.swift
//  heart proyect
//
//  Created by Benjamin Rojo on 10/06/25.
//

import SwiftUI

struct ContentView: View {
    @State private var heartColor: Bool = false
    @State private var likeCount = 0
    var body: some View {
        LikeButtonView(heartColor: $heartColor, likeCount: $likeCount)
    }
}

struct LikeButtonView: View{
    @Binding var heartColor: Bool
    @Binding var likeCount: Int
    var body: some View{
        Button(action:{
            if heartColor == false {
                heartColor = true
                likeCount += 1
            } else {
                heartColor = false
                likeCount -= 1
            }
        }){ Image(systemName: "heart.fill")
            .foregroundColor(heartColor ? .red: .gray)
            Text("Likes: \(likeCount)")
                .font(.headline)
                .foregroundColor(.blue)
        }
    }
}
#Preview {
    ContentView()
}
