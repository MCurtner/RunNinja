//
//  RNMovingGround.swift
//  Run Ninja
//
//  Created by Matthew Curtner on 7/30/15.
//  Copyright © 2015 Matthew Curtner. All rights reserved.
//

import Foundation
import SpriteKit

class RNMovingGround: SKSpriteNode {
    
    let NUM_OF_SEGMENTS: Int = 20
    let COLOR_ONE = UIColor(red: 88.0/255.0, green: 148.0/255.0, blue: 87.0/255.0, alpha: 1.0)
    let COLOR_TWO = UIColor(red: 120.0/255.0, green: 195.0/255.0, blue: 118.0/255.0, alpha: 1.0)
    
    
    init(size: CGSize) {
        super.init(texture: nil, color: .brownColor(), size: CGSizeMake(size.width * 2.0 , size.height))
        anchorPoint = CGPointMake(0, 0.5)
        
        for index in 0...NUM_OF_SEGMENTS {
            var segementColor: UIColor!
            if index % 2 == 0 {
                segementColor = COLOR_ONE
            } else {
                segementColor = COLOR_TWO
            }
            
            let segement = SKSpriteNode(color: segementColor, size: CGSizeMake(self.size.width / CGFloat(NUM_OF_SEGMENTS), self.size.height))
            segement.anchorPoint = CGPointMake(0.0, 0.5)
            segement.position = CGPointMake(CGFloat(index) * segement.size.width, 0)
            addChild(segement)
        }
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func start() {
        let moveLeft = SKAction.moveByX(-frame.size.width/2, y: 0, duration: 1.0)
        let resetPosition = SKAction.moveToX(0, duration: 0)
        let moveSequence = SKAction.sequence([moveLeft, resetPosition])
        
        runAction(SKAction.repeatActionForever(moveSequence))

    }
    
}