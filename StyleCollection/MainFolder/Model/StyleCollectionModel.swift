//
//  StyleCollectionModel.swift
//  StyleCollection
//
//  Created by Sumit on 29/06/24.
//

import Foundation

struct ItemsDetails : Codable, Hashable {
    var item_id: Int
    let img_Name : String
    let title : String
    let status: String
    let view: String
 }
