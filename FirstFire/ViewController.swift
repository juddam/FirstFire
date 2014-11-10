//
//  ViewController.swift
//  HelloWorld
//
//  Created by Mick Swagger on 11/9/14.
//  Copyright (c) 2014 Mick Swagger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Create a reference to a Firebase location
        var myRootRef = Firebase(url:"https://lawayla.firebaseio.com/vTesting/front-page/features")
        
        // Read data and react to changes
        myRootRef.observeEventType(.Value, withBlock: {
            snapshot in
            println("\(snapshot.key) -> \(snapshot.value)")
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

