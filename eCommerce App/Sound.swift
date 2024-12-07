//
//  Sound.swift
//  eCommerce App
//
//  Created by Abdulrahman isk on 06/06/1446 AH.
//

import SwiftUI

struct Sound: View {
    var body: some View {
        VStack {
        HStack {
            Image("Image 21")
                .resizable()
                .frame(width: 30, height: 30)
            Spacer()
            Image("Image 22")
                .resizable()
                .frame(width: 30, height: 30)
        } .padding(.horizontal)
            VStack (alignment: .center){
                NormalText(text: "Calming Playlist", fontSize: 30) .fontWeight(.medium)
                Image("Image 14")
                    .resizable()
                    .frame(width: 300, height: 300)
                Text("Rain On Glass") .font(.system(size: 35)) .fontWeight(.medium)
                Text("By: Painting with Passion").font(.system(size: 16)) .fontWeight(.ultraLight) .padding(.bottom, 30)
            } .padding()
            HStack {
                Image("Image 17").resizable()
                    .frame(width: 300, height: 75)
            } .padding()
            Spacer()
        } .padding()
        HStack {
            BottomNavItem(iconName: "Image 19")
            BottomNavItem(iconName: "Image 18")
            BottomNavItem(iconName: "Image 11")
            BottomNavItem(iconName: "Image 12")
        }
        .frame(height: 35)
        .padding(.horizontal, 30)
    }
}

#Preview {
    Sound()
}
