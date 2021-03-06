//
//  MovieViewController.swift
//  HLS-LiveStreaming-Swift
//
//  Created by Alistair Cooper on 6/13/16.
//

import UIKit
import AVKit
import AVFoundation

class MovieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue,
                                  sender: Any?) {
        
        let destination = segue.destination as! AVPlayerViewController
        
        let url = URL(string: "https://s3-us-west-2.amazonaws.com/hlsappdemo/TheAnimalVideo/theanimal.m3u8")
        
        if let url = url {
            
            destination.player = AVPlayer(url: url)
            
            destination.player?.play()
            
        }
        
    }


}
