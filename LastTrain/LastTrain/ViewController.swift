//
//  ViewController.swift
//  LastTrain
//
//  Created by Hikaru Takemura on 2015/04/29.
//  Copyright (c) 2015 Hikaru Takemura. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var railScrollView: UIScrollView!
    @IBOutlet weak var railMediatorView: UIView!
    @IBOutlet weak var sampleLabel: UILabel!
    
    @IBAction func sampleButton(sender: AnyObject) {
        print("OK")
        sampleLabel.alpha = 0.5
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        railScrollView.delegate = self
        railScrollView.minimumZoomScale = 1
        railScrollView.maximumZoomScale = 3
        railScrollView.showsHorizontalScrollIndicator = false
        railScrollView.showsVerticalScrollIndicator = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return railMediatorView
    }
}