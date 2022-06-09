//
//  DetailViewDataProvider.swift
//  Atthelic App
//
//  Created by Emanuel Martinez on 7/6/22.
//

import Foundation
import Networking
import Services

class DetailViewDataProvider {
    
    // MARK: - Dependencies
    var apiClient: APIClient
    
    // MARK: - Inits
    init(_ apiClient: APIClient) {
        self.apiClient = apiClient
    }
    
    // MARK: - Methods
    func getAttleteDetailById(attleteId: String, completion: @escaping(Result<AttheleteDTO, Error>) -> ()) {
        let request = AttleteProfileRequestById(attleteId)
        apiClient.send(request, completion: completion)
    }
    
}
