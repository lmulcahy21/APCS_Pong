//
//  MenuVC.swift
//  pong
//
//  Created by liam mulcahy on 5/24/19.
//  Copyright © 2019 liam mulcahy. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import GameKit
enum gameType {
    case easy
    case medium
    case hard
    case player2
}

class MenuVC : UIViewController {
    @IBAction func Player2(_ sender: Any){
        moveToGame(game: .player2)
  }
    @IBAction func Easy(_ sender: Any){
        moveToGame(game: .easy)
    }
    @IBAction func Medium(_ sender: Any){
        moveToGame(game: .medium)
    }
    @IBAction func Hard(_ sender: Any){
        moveToGame(game: .hard)
    }
    func moveToGame(game : gameType){
        let gameVC = self.storyboard?.instantiateViewController(withIdentifier:"gameVC") as! GameViewController
        currentGameType = game
        self.navigationController?.pushViewController(gameVC, animated: true)
    }
}
