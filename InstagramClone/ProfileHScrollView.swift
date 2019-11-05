//
//  ProfileHScrollView.swift
//  Menu
//
//  Created by Purushottam Chandra on 25/10/19.
//  Copyright © 2019 Purushottam Chandra. All rights reserved.
//

import SwiftUI

struct ProfileHScrollView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Top 20 today")
                    .font(Font.system(size: 22, weight: .bold, design: .rounded))
                    .padding(.leading)
                    .foregroundColor(.primary)
                Spacer()
                Button(action: {
                    print("Done")
                }) {
                    Text("View All")
                        .foregroundColor(.primary)
                        .font(.subheadline)
                        .padding([.leading, .trailing], 10)
                        .padding([.top, .bottom], 5)
                }
                
                .background(Color.secondary.opacity(0.5))
                .cornerRadius(10)
                .padding(.trailing)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(0...10, id: \.self) { _ in
                        ProfileImageNameView()
                    }
                }
            }
        }
        
    }
}

struct ProfileHScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHScrollView()
    }
}

extension Color {
    
    /// To get UIColor from the hex color
    init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        
        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 1.0
        
        let length = hexSanitized.count
        
        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }
        
        if length == 6 {
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
            
        } else if length == 8 {
            r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            a = CGFloat(rgb & 0x000000FF) / 255.0
            
        } else {
            return nil
        }
        
        self.init(.sRGB, red: Double(r), green: Double(g), blue: Double(b), opacity: Double(a))
    }
}
