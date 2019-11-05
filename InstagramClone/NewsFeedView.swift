//
//  NewsFeedView.swift
//  Menu
//
//  Created by Purushottam Chandra on 25/10/19.
//  Copyright © 2019 Purushottam Chandra. All rights reserved.
//

import SwiftUI

struct NewsFeedView: View {
    
    @State private var isRecentSelected: Bool = true
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ZStack(alignment: .top) {
                    Image("header")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 0)
                    
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(Color("backgroundColour"))
                        .padding(.top)
                    
                    VStack(alignment: .leading) {
                        ProfileHScrollView()
                            .padding(.top, 40)
                        
                        Rectangle()
                            .frame(height: 0.5)
                            .padding()
                            .foregroundColor(.secondary)
                        
                        HStack(alignment: .center, spacing: 20) {
                            VStack(alignment: .center) {
                                Button(action: {
                                    self.isRecentSelected = true
                                }) {
                                    Text("Recent Posts")
                                        .foregroundColor(self.isRecentSelected ? .primary : .secondary)
                                        .font(Font.system(size: 16, weight: .bold, design: .rounded))
                                }
                                Rectangle()
                                    .frame(height: 2)
                                    .foregroundColor(self.isRecentSelected ? .primary : .clear)
                            }
                            VStack {
                                Button(action: {
                                    self.isRecentSelected = false
                                }) {
                                    Text("Most Popular")
                                        .foregroundColor(!self.isRecentSelected ? .primary : .secondary)
                                        .font(Font.system(size: 16, weight: .semibold, design: .rounded))
                                }
                                Rectangle()
                                    .frame(height: 2)
                                    .foregroundColor(!self.isRecentSelected ? .primary : .clear)
                            }
                            Spacer()
                        }.padding([.leading, .trailing, .bottom])
                        
                        VStack {
                            ForEach(0...10, id: \.self) { _ in
                                FeedView()
                            }
                        }.padding(.top)
                        
                        
                    }
                    .padding(.top)
                }
            }.navigationBarTitle("Feed")
        }.onAppear {
            UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.label]
            
            UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        }
    }
}

struct NewsFeedView_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeedView()
    }
}
