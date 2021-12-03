//
//  DependencyProvider.swift
//  ios-arch-template
//
//  Created by Santiago Mattiauda on 21/11/21.
//

import Foundation

final class DependencyProvider {
    
    static let shared = DependencyProvider()
    
    private init(){}
    
    func providePictureViewModel() -> PictureViewModel {
        return PictureViewModel(getPictures: provideGetPictures())
    }
    
    private func provideGetPictures() -> GetPictures{
        return GetPictures(repository: providePictureRepository())
    }
    private func providePictureRepository()-> PicturesRepository{
        return PicturesRepositoryImpl(dataSource: providePictureDataSource())
    }
    
    private func providePictureDataSource() -> PicturesDataSource{
        return PicturesRemoteDataSource(client: provideApiClient())
    }
    
    private func provideApiClient() -> ApiClient{
        return NativeApiClient()
    }
    
}
