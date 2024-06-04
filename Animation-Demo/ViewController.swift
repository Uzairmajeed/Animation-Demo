//
//  ViewController.swift
//  Animation-Demo
//
//  Created by Uzair Majeed on 02/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var internalView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startRotation()
        addSpringAnimation()
        fadeOutAfterDelay()
        makeVisible()
        navigateToSegmentedVC()
}
    
    private func startRotation(){
        let rotation = CABasicAnimation(keyPath: "transform.rotation")
            rotation.fromValue = 0
            rotation.toValue = CGFloat.pi * 2
            rotation.duration = 2 // Duration of one complete rotation
            rotation.repeatCount = Float.infinity // Repeat indefinitely
            internalView.layer.add(rotation, forKey: "rotateAnimation")
        
    }
    
    
    private func addSpringAnimation() {
            let spring = CASpringAnimation(keyPath: "transform.scale")
            spring.fromValue = 1.0
            spring.toValue = 1.1
            spring.duration = 0.5
            spring.initialVelocity = 0.5
            spring.damping = 1.0
            spring.repeatCount = Float.infinity
            spring.autoreverses = true
            
            internalView.layer.add(spring, forKey: "springAnimation")
        }
    
    
    func fadeOutAfterDelay() {
            DispatchQueue.global().asyncAfter(deadline: .now() + 5) {
                // Execute the fade-out on the main thread
                DispatchQueue.main.async {
                    UIView.animate(withDuration: 2.0) {
                        self.internalView.alpha = 0
                    }
                }
            }
        }
    
    
    private func makeVisible() {
        DispatchQueue.global().asyncAfter(deadline: .now() + 10) {
            // Execute the fade-out on the main thread
            DispatchQueue.main.async {
                UIView.animate(withDuration: 2.0) {
                    self.internalView.alpha = 1.0
                }
            }
        }
     
    }
    
    private func navigateToSegmentedVC(){
        
    
        
    }

}

