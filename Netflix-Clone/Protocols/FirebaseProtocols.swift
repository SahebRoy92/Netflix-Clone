//
//  FirebaseProtocols.swift
//  Netflix-Clone
//
//  Created by sahebroy on 15/06/22.
//

import Foundation

protocol FirebaseProtocol {
    
    func configue()
    func login(_ email: String, pass: String, result: @escaping Result)
    func signup(_ email: String, pass: String, phn: String, result: @escaping Result)
    func resetPass(_ email: String, result: @escaping Result)
    func saveToList()
    func uploadImage(_ imagePath: String, result: @escaping Result)
    func updateUser()
}
