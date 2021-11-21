//
//  PicturesRepository.swift
//  ios-arch-template
//
//  Created by Santiago Mattiauda on 21/11/21.
//

import Foundation

protocol PicturesRepository {
    
    func getPictures() async -> [Picture]
}
