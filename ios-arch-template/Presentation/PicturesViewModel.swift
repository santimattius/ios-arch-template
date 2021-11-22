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
    
    private let repository: PicturesRepository
    
    init(repository: PicturesRepository){
        self.repository = repository
    }
    
    func loadPictures(){
        Task.init {
            let result = await repository.getPictures()
            self.pictures =  result.map{ item in
                 PictureUiModel(author: item.author, imageUrl: item.url, link: item.downloadUrl)
            }
        }
        
    }
}
