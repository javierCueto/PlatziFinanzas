//
//  Shadow.swift
//  PlatziFinanzas
//
//  Created by José Javier Cueto Mejía on 18/02/20.
//  Copyright © 2020 José Javier Cueto Mejía. All rights reserved.
//

import UIKit

extension UIView{
    var borserUIColor: UIColor{
        get{
            guard let color = layer.borderColor else{
                      return UIColor.black
                  }
                  return UIColor(cgColor: color)
        }
        set{
            layer.borderColor = newValue.cgColor
        }
      
    }
}
