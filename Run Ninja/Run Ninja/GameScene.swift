//
//  GameScene.swift
//  Run Ninja
//
//  Created by Matthew Curtner on 7/30/15.
//  Copyright (c) 2015 Matthew Curtner. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        backgroundColor = UIColor(red: 159.0/255.0, green: 201.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        
        let ground = RNMovingGround(size: CGSizeMake(view.frame.width, 20))
        ground.position = CGPointMake(0, view.frame.size.height/2)
        addChild(ground)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {

    }
   
    override func update(currentTime: CFTimeInterval) {
    }
}
