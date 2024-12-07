//
//  OnBoarding.swift
//  eCommerce App
//
//  Created by Abdulrahman isk on 06/06/1446 AH.
//

import SwiftUI

struct OnBoarding: View {
    var body: some View {
        ZStack {
            VStack {
            } .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Color("AEAFF7")
                    .ignoresSafeArea()
            }
            HStack {
                Image("Image 23")
                    .resizable()
                    .frame(width: 300, height: 400)
                    .aspectRatio(contentMode: .fill)
                Spacer()
            }
            VStack {
                Spacer()
                Image("Image 24")
                    .resizable()
                    .frame(width: 325, height: 700)
            } .ignoresSafeArea()
            VStack (alignment: .center) {
                Text("It’s Ok Not To Be OKAY!!")
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 108)
                    .foregroundColor(.white) .bold()
                    .font(.system(size: 40))
                Spacer()
                ZStack {
                    Rectangle() .fill(Color("371B34")) .frame(width: 293, height: 70) .cornerRadius(10);
                    Text("Let Us Help You")
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 25))
                }
            } .padding()
        }
    }
}

#Preview {
    OnBoarding()
}
