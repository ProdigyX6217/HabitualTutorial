//
//  String+isBlank.swift
//  Habitual
//
//  Created by Student Laptop_7/19_1 on 1/1/21.
//  Copyright © 2021 Makeschool. All rights reserved.
//

import Foundation

extension String {
  var isBlank: Bool {
    return allSatisfy({ $0.isWhitespace })
  }
}
