//
//  PotocolOrientedUIKitTests.swift
//  PotocolOrientedUIKitTests
//
//  Created by Bertuğ Horoz on 17.11.2022.
//

import XCTest
@testable import PotocolOrientedUIKit

final class PotocolOrientedUIKitTests: XCTestCase {

    private var userViewModel : userViewModel!
    private var userService : MockUserService!
    
    override func setUpWithError() throws {
        userService = MockUserService()
        userViewModel = userViewModel(userService: userService)
        
    }

    
    override func tearDownWithError() throws {
        
    }

    
    func testUpdateView_whenAPISucces_showEmailName() throws {
        
    }

    
    func testUpdateView_whenAPIFailure_showNoUser() throws {
        
    }

}

class MockUserService : UserService {
    var fetcUserMockResult : Result<PotocolOrientedUIKit.User, Error>?
    func fetchUser(completion: @escaping (Result<PotocolOrientedUIKit.User, Error>) -> Void) {
        if let result = fetcUserMockResult {
            completion(result)
        }
    }
    
}
