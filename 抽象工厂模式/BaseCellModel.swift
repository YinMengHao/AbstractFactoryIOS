//
//  BaseCellModel.swift
//  抽象工厂模式
//
//  Created by menghao on 2023/4/29.
//

import Foundation
import UIKit

struct CellModel {
    var id: String?
    var string: String = "aaaa"
    init(id: String? = nil, string: String) {
        self.id = id
        self.string = string
    }
}

extension CellModel {
    var name: String {
        get {
            return "Yellow"
        }
    }
}
