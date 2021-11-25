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
    
    private let repository: PicturesRepository
    
    init(repository: PicturesRepository){
        self.repository = repository
    }
    
    func loadPictures(){
        Task.init {
            let result = await repository.getPictures()
            if !self.loaded {
                self.pictures =  result.map{ item in
                     PictureUiModel(author: item.author, imageUrl: item.downloadUrl, link: item.url)
                }
                self.loaded = true
            }
            
        }
        
    }
}
