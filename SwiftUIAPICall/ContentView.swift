//
//  ContentView.swift
//  SwiftUIAPICall
//
//  Created by Sergey Lukaschuk on 2023-07-18.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.courses, id: \.self) { course in
                    HStack {
                        Image("")
                            .frame(width: 100, height: 70)
                            .background(Color.gray)
                        
                        Text(course.name)
                    }
                    .padding()
                }
            }
            .navigationTitle("Games News")
            .onAppear {
                viewModel.fetch()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


