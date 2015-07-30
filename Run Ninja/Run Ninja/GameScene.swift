//
//  GameScene.swift
//  Run Ninja
//
//  Created by Matthew Curtner on 7/30/15.
//  Copyright (c) 2015 Matthew Curtner. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var movingGround: RNMovingGround!
    
    
    override func didMoveToView(view: SKView) {
        backgroundColor = UIColor(red: 159.0/255.0, green: 201.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        
        movingGround = RNMovingGround(size: CGSizeMake(view.frame.width, 20))
        movingGround.position = CGPointMake(0, view.frame.size.height/2)
        addChild(movingGround)
        
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        movingGround.start()
    }
   
    override func update(currentTime: CFTimeInterval) {
    }
}
