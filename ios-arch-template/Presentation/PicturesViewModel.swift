//
//  PicturesViewModel.swift
//  ios-arch-template
//
//  Created by Santiago Mattiauda on 21/11/21.
//

import Foundation
import Combine

class PictureViewModel:ObservableObject{
    
    @Published public var pictures:[PictureUiModel] = []
}
