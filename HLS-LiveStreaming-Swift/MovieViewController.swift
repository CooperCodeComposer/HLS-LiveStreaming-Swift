//
//  MovieViewController.swift
//  HLS-LiveStreaming-Swift
//
//  Created by Alistair Cooper on 6/13/16.
//  Copyright © 2016 Alistair Cooper. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class MovieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue,
                                  sender: AnyObject?) {
        let destination = segue.destinationViewController as! AVPlayerViewController
        
        let url = NSURL(string: "https://s3-us-west-2.amazonaws.com/hlsappdemo/TheAnimalVideo/theanimal.m3u8")
        
        if url != nil {
        
            destination.player = AVPlayer(URL: url!)
            
            destination.player?.play()
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
