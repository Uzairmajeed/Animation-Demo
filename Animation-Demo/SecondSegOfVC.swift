//
//  SecondSegOfVC.swift
//  Animation-Demo
//
//  Created by Uzair Majeed on 04/06/24.
//

import UIKit

class SecondSegOfVC: UIViewController,UIScrollViewDelegate {

    @IBOutlet var mylabel: UILabel!
    @IBOutlet var myScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myScrollView.delegate = self

    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
            guard let parentVC = self.parent as? SegmentedVC else { return }
            let offsetY = scrollView.contentOffset.y
            
            if offsetY > 0 {
                UIView.animate(withDuration: 0.5) {
                    parentVC.segmentedControl.alpha = 0
                }
            } else {
                UIView.animate(withDuration: 0.3) {
                    parentVC.segmentedControl.alpha = 1
                }
            }
        }


   

}
