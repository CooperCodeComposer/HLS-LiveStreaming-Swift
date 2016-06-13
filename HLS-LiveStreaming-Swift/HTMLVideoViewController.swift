//
//  HTMLVideoViewController.swift
//  HLS-LiveStreaming-Swift
//
//  Created by Alistair Cooper on 6/13/16.
//  Copyright © 2016 Alistair Cooper. All rights reserved.
//

import UIKit

class HTMLVideoViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSBundle.mainBundle().URLForResource("htmlView", withExtension:"html")
        
        let myRequest = NSURLRequest(URL: url!)
        
        webView.loadRequest(myRequest)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
