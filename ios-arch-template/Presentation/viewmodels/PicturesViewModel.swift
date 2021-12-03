//
//  PicturesViewModel.swift
//  ios-arch-template
//
//  Created by Santiago Mattiauda on 21/11/21.
//

import Foundation
import Combine

final class PictureViewModel:ObservableObject{
    
    @Published public var pictures:[PictureUiModel] = []
    
    private var loaded = false
    
    private let getPictures: GetPictures
    
    init(getPictures:GetPictures){
        self.getPictures = getPictures
    }
    
    func loadPictures(){
        Task.init {
            let result = await getPictures.invoke()
            if !self.loaded {
                self.pictures =  result.map{ item in
                     PictureUiModel(author: item.author, imageUrl: item.downloadUrl, link: item.url)
                }
                self.loaded = true
            }
            
        }
        
    }
}
