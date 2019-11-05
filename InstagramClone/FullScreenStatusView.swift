//
//  FullScreenStatusView.swift
//  Menu
//
//  Created by Purushottam Chandra on 28/10/19.
//  Copyright © 2019 Purushottam Chandra. All rights reserved.
//

import SwiftUI

struct FullScreenStatusView: View {
    var body: some View {
        ZStack(alignment: .top) {
            ZStack(alignment: .bottom) {
//            VStack {
                Image("Status")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width)
                    .edgesIgnoringSafeArea(.bottom)
//            }
                HStack(spacing: 0) {
                    ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(height: 30)
                        .padding([.top, .leading, .bottom])
                        .foregroundColor(.secondary)
                        Text("Reply")
                            .foregroundColor(.primary)
                    }
                    Image(systemName: "paperplane")
                        .foregroundColor(.gray)
                        .padding()
                }
            }
            Rectangle()
                .frame(width: UIScreen.main.bounds.width, height: 85)
                .foregroundColor(.primary).opacity(0.1)
            HStack {
                Image("face2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                    .clipped()
                    .cornerRadius(20)
                    .padding(.leading)
                Text("Jon Snow")
                    .font(.subheadline)
                Spacer()
                Image("cross")
                .padding()
            }.padding(.top)
        }.edgesIgnoringSafeArea(.top)
    }
}

struct FullScreenStatusView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenStatusView()
    }
}
