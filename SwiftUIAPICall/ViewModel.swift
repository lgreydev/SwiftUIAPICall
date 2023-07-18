//
//  ViewModel.swift
//  SwiftUIAPICall
//
//  Created by Sergey Lukaschuk on 2023-07-18.
//

import Foundation

// API
// https://iosacademy.io/api/v1/courses/index.php


class ViewModel: ObservableObject {
    
    func fetch() {
        guard let url = URL(string: "https://iosacademy.io/api/v1/courses/index.php") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                
                return
            }
        }
    }
}
