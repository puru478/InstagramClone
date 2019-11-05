//
//  ContentView.swift
//  InstagramClone
//
//  Created by Purushottam Chandra on 30/10/19.
//  Copyright © 2019 Purushottam Chandra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
//    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack(spacing: 0) {
//                ForEach(1..<10) { num in
//                    VStack {
//                        GeometryReader { geo in
//                            Text("Number \(num)")
//                                .font(.largeTitle)
//                            .padding()
//                            .background(Color.red)
//                            .rotation3DEffect(.degrees(-Double(geo.frame(in: .global).minX) / 8), axis: (x: 0, y: 1, z: 0))
//                        }
//                    }
//                    .frame(width: 180)
//                }
//            }
//            .padding()
//        }
//}
//    @State var dragAmount = CGSize.zero
    
//    var body: some View {
//        VStack {
//            GeometryReader { geo in
//                Rectangle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
//                    .frame(width: 300, height: 200)
//                    .clipShape(RoundedRectangle(cornerRadius: 20))
//                    .rotation3DEffect(.degrees(-Double(self.dragAmount.width) / 20), axis: (x: 0, y: 1, z: 0))
//                    .rotation3DEffect(.degrees(Double(self.dragAmount.height / 20)), axis: (x: 1, y: 0, z: 0))
//                    .offset(self.dragAmount)
//                    .gesture(
//                        D  ragGesture()
//                            .onChanged { self.dragAmount = $0.translation }
//                            .onEnded { _ in
//                                withAnimation(.spring()) {
//                                    self.dragAmount = .zero
//                                }
//                        }
//                )
//            }
//        }
//        Text("Hello World")
//        GridStack(rows: 4, columns: 8) { row, col in
//            Image(systemName: "\(row * 4 + col).circle")
//            Text("R\(row) C\(col)")
//        }
//}

    
    var body: some View {
        Text("Hello World")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//struct GridStack<Content: View>: View {
//    let rows: Int
//    let columns: Int
//    let content: (Int, Int) -> Content
//
//    var body: some View {
//        VStack {
//            ForEach(0 ..< rows) { row in
//                HStack {
//                    ForEach(0 ..< self.columns) { column in
//                        self.content(row, column)
//                    }
//                }
//            }
//        }
//    }
//
//    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
//        self.rows = rows
//        self.columns = columns
//        self.content = content
//    }
//}
