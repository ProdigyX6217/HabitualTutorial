//
//  UIViewControllerExtensions.swift
//  Habitual
//
//  Created by Student Laptop_7/19_1 on 4/28/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

extension UIViewController {
  static func instantiate() -> Self {
    return self.init(nibName: String(describing: self), bundle: nil)
  }
}
