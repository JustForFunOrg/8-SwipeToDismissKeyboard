//
//  MainViewController.swift
//  SwipeToDismissKeyboard
//
//  Created by Alice Aponasko on 2/26/16.
//  Copyright © 2016 justForFun. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    var swipeGestureRecognizer = UISwipeGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.becomeFirstResponder()
        automaticallyAdjustsScrollViewInsets = false
                
        swipeGestureRecognizer.addTarget(self, action: "dismissKeyboard:")
        swipeGestureRecognizer.direction = .Down
        view.addGestureRecognizer(swipeGestureRecognizer)
    }

    // MARK: Actions
    
    func dismissKeyboard(sender: AnyObject) {
        textView.resignFirstResponder()
    }    
}

