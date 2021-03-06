//
//  DragImg.swift
//  MyPetMonster
//
//  Created by Paul Defilippi on 8/14/16.
//  Copyright © 2016 Paul Defilippi. All rights reserved.
//

import Foundation
import UIKit

class DragImg: UIImageView {
    
    var originalTouchPosition: CGPoint!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        originalTouchPosition = self.center
        
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            let position = touch.locationInView(self.superview)
            self.center = CGPointMake(position.x, position.y)
        }
        
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.center = originalTouchPosition
        
        
    }
    
    
    
    





}
