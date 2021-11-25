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
        return PictureViewModel(repository: providePictureRepository())
    }
    
    func providePictureRepository()-> PicturesRepository{
        return PicturesRepositoryImpl(dataSource: providePictureDataSource())
    }
    
    func providePictureDataSource() -> PicturesDataSource{
        return PicturesRemoteDataSource(client: provideApiClient())
    }
    
    func provideApiClient() -> ApiClient{
        return NativeApiClient()
    }
    
}
