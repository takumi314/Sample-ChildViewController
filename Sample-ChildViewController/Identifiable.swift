//
//  Identifiable.swift
//  Sample-ChildViewController
//
//  Created by NishiokaKohei on 2018/05/30.
//  Copyright © 2018年 Takumi. All rights reserved.
//

import UIKit

protocol Identifiable {
    static var identidier: String { get }
    var className: String { get }
}

extension Identifiable {

    static var identidier: String {
        return "\(self)"
    }

    var className: String {
        return "\(self)"
    }

}

extension UIViewController: Identifiable {
    
}
