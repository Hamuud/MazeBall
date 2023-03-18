import Foundation
import SpriteKit
import GameplayKit
import CoreMotion
import GameKit

class LevelComplete : SKScene
{
    var EndgamelblNode:SKLabelNode!
    var ConglblNode:SKLabelNode!
    var lvlCompletelblNode:SKLabelNode!
    
    override func didMove(to view: SKView) {
    
        EndgamelblNode = self.childNode(withName: "Endgamelbl") as? SKLabelNode
        ConglblNode = self.childNode(withName: "Conglbl") as? SKLabelNode
        lvlCompletelblNode = self.childNode(withName: "lvlCompletelbl") as? SKLabelNode
        
    }
    
    func restart()
    {
        let scene = SKScene(fileNamed: "MainMenu")
        scene!.scaleMode = .aspectFill
        view?.presentScene(scene)
    }
        
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        restart()
    }
    
}
