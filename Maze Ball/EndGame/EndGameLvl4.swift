import Foundation
import SpriteKit
import GameplayKit
import CoreMotion
import GameKit

class EndGameLvl4 : SKScene
{
    var EndgamelblNode:SKLabelNode!

    
    override func didMove(to view: SKView) {
        _ = SKTransition.fade(withDuration: 0.5)
        EndgamelblNode = self.childNode(withName: "Endgamelbl") as? SKLabelNode
    }
    
    func restart()
    {
        let scene = SKScene(fileNamed: "level11")
        scene!.scaleMode = .aspectFill
        view?.presentScene(scene)
    }
        
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        restart()
    }
    
}
