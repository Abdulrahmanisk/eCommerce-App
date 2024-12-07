//
//  ContentView.swift
//  eCommerce App
//
//  Created by Abdulrahman Iskandar on 05/06/1446 AH.
//

import SwiftUI

struct ContentView: View {
    var username: String
    
    var body: some View {
        VStack {
            // Top bar with profile and settings icons
            HStack {
                Image("Image 8")
                Spacer()
                Image("Image 20")
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 45, height: 45)
                    .shadow(radius: 5)
            }
            .padding(.horizontal)
            
            ScrollView (showsIndicators: false) {
                // Greeting Section
                VStack(alignment: .leading) {
                    HStack {
                        Text("Welcome back,")
                        Text("\(username)!").bold()
                        Spacer()
                    }
                    .font(.system(size: 30))
                    .padding()
                    
                    NormalText(text: "How are you feeling today?", fontSize: 22)
                }
                
                // Horizontal Scroll for Feeling Cards
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        FeelingCard(colorHex: "EF5DA8", imageName: "Image", title: "Happy")
                        FeelingCard(colorHex: "AEAFF7", imageName: "Image 1", title: "Calm")
                        FeelingCard(colorHex: "F09E54", imageName: "Image 2", title: "Relax")
                        FeelingCard(colorHex: "A0E3E2", imageName: "Image 3", title: "Focus")
                    }
                    .padding(.horizontal)
                }
                
                NormalText(text: "Today's Task", fontSize: 22)
                
                // Task Cards
                TaskCard(
                    backgroundColorHex: "EDE6FC",
                    title: "Peer Group Meetup",
                    description: "Let’s open up to the things that matter among the people.",
                    buttonTitle: "Join Now",
                    buttonColorHex: "EF5DA8",
                    buttonIconName: "Image 5",
                    taskIconName: "Image 4",
                    opacity: 0.9
                )
                
                TaskCard(
                    backgroundColorHex: "F09E54",
                    title: "Meditation",
                    description: "Aura is the most important thing that matters to you.",
                    buttonTitle: "06:00 PM",
                    buttonColorHex: "F09A59",
                    buttonIconName: "Image 7",
                    taskIconName: "Image 6",
                    opacity: 0.3
                )
            }
        }
        .padding()
        
        // Bottom Navigation Bar
        HStack {
            BottomNavItem(iconName: "Image 9")
            BottomNavItem(iconName: "Image 10")
            BottomNavItem(iconName: "Image 11")
            BottomNavItem(iconName: "Image 12")
        }
        .frame(height: 35)
        .padding(.horizontal, 30)
    }
}

// Reusable Text Component
struct NormalText: View {
    var text: String
    var fontSize: Int
    
    var body: some View {
        HStack {
            Text(text)
                .font(.system(size: CGFloat(fontSize)))
            Spacer()
        }
        .padding()
    }
}

// Reusable Task Card Component
struct TaskCard: View {
    var backgroundColorHex: String
    var title: String
    var description: String
    var buttonTitle: String
    var buttonColorHex: String
    var buttonIconName: String
    var taskIconName: String
    var opacity: Double
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(backgroundColorHex))
                .opacity(opacity)
                .frame(width: 350, height: 180)
            
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text(title)
                        .font(.system(size: 25))
                        .bold()
                    Text(description)
                        .fontWeight(.light)
                    
                    HStack {
                        Text(buttonTitle)
                            .font(.system(size: 20))
                            .foregroundColor(Color(buttonColorHex))
                            .bold()
                        Image(buttonIconName)
                            .resizable()
                            .frame(width: 20, height: 20)
                            .offset(y: 3)
                    }
                }
                .padding(.leading, 30)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Image(taskIconName)
                    .resizable()
                    .frame(width: 85, height: 80)
                    .offset(x: -25)
            }
        }
        .padding()
    }
}

// Reusable Feeling Card Component
struct FeelingCard: View {
    var colorHex: String
    var imageName: String
    var title: String
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(colorHex))
                    .frame(width: 70, height: 73)
                Image(imageName)
                    .resizable()
                    .frame(width: 39, height: 39)
            }
            Text(title)
                .font(.system(size: 15))
        }
        .padding(.horizontal, 8)
    }
}

// Reusable Bottom Navigation Item Component
struct BottomNavItem: View {
    var iconName: String
    
    var body: some View {
        Spacer()
        Image(iconName)
            .resizable()
            .frame(width: 52, height: 52)
        Spacer()
    }
}

#Preview {
    ContentView(username: "isk")
}
