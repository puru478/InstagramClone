//
//  TwoButtonHView.swift
//  InstagramClone
//
//  Created by Purushottam Chandra on 04/11/19.
//  Copyright © 2019 Purushottam Chandra. All rights reserved.
//

import SwiftUI

struct TwoButtonHView: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Rectangle()
                .frame(height: 0.5)
                .foregroundColor(.gray)
            
            HStack {
                Spacer()
                Button(action: {
                    print("Grid")
                }) {
                    Image("grid")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(.black)
                        .frame(width: 20, height: 20)
                        .scaledToFit()
                }
                Spacer()
                Button(action: {
                    print("Grid")
                }) {
                    Image("fav")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(.secondary)
                        .frame(width: 20, height: 20)
                        .scaledToFit()
                }
                Spacer()
            }.frame(height: 45)
            
            Rectangle()
                .frame(height: 0.5)
                .foregroundColor(.gray)
        }
    }
}

struct TwoButtonHView_Previews: PreviewProvider {
    static var previews: some View {
        TwoButtonHView()
    }
}
