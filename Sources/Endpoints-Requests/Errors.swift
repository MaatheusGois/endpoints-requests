//
//  File.swift
//  
//
//  Created by Matheus Silva on 29/03/20.
//

import Foundation

protocol MyErrorProtocol: LocalizedError {
    var title: String? { get }
}

struct NotURLError: MyErrorProtocol {
    var title: String?
    var errorDescription: String? { return _description }
    var failureReason: String? { return _description }

    private var _description: String

    init(title: String?, description: String) {
        self.title = title ?? "Invalid parse to URL"
        self._description = description
    }
}


