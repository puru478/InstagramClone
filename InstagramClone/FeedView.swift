//
//  FeedView.swift
//  Menu
//
//  Created by Purushottam Chandra on 25/10/19.
//  Copyright © 2019 Purushottam Chandra. All rights reserved.
//

import SwiftUI

struct FeedView: View {
    
    @State private var isFavourited: Bool = false
    @State private var isHeartVisible: Bool = false
    @State private var showActionSheet = false

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("face1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipped()
                    .cornerRadius(25)
                Text("Mariana Lopez ")
                    .font(.headline)
                    .foregroundColor(.primary)

                Spacer()
                Text("38 min ago")
                    .font(.subheadline)
                    .foregroundColor(.primary)
            }
            
            ZStack {
                Image("moreTea")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width - 30, height: 300)
                .clipped()
                .cornerRadius(25)
                .gesture(
                    TapGesture(count: 2)
                        .onEnded({ (_) in
                            print("Double tapped")
                            self.isFavourited = true
                            self.isHeartVisible = true
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                                self.isHeartVisible = false
                            }
                    }))
                
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 45, height: 40)
                    .foregroundColor(. red)
                    .animation(.easeInOut)
                    .opacity(self.isHeartVisible ? 1 : 0)
            }
            
            
            HStack(spacing: 20) {
                HStack {
                    Image(systemName: self.isFavourited ? "heart.fill" : "heart")
                        .foregroundColor(self.isFavourited ? . red : .gray)
                        .gesture(
                            TapGesture()
                                .onEnded({ (value) in
                                    self.isFavourited.toggle()
                                    if self.isFavourited {
                                        self.isHeartVisible = true
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                                            self.isHeartVisible = false
                                        }
                                    } else {
                                        self.isHeartVisible = false
                                    }
                            }))
                    Text("238")
                        .font(.body)
                }
                HStack {
                    Image(systemName: "paperplane")
                        .foregroundColor(.gray)
                    Text("238")
                        .font(.body)
                }
                .actionSheet(isPresented: $showActionSheet) {
                    ActionSheet(
                        title: Text("Actions"),
                        message: Text("Available actions"),
                        buttons: [
                            .cancel { print(self.showActionSheet) },
                            .default(Text("Action")),
                            .destructive(Text("Delete"))
                        ]
                    )
                }
                .gesture(TapGesture().onEnded({ (_) in
                    self.showActionSheet.toggle()
                }))
            }.padding(.leading, 10)
                .padding(.top, 10)
        }.padding([.leading, .trailing])
            .padding(.bottom, 25)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
