//
//  HTMLVideoViewController.swift
//  HLS-LiveStreaming-Swift
//
//  Created by Alistair Cooper on 6/13/16.
//

import UIKit

class HTMLVideoViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.delegate = self
        
        let url = Bundle.main.url(forResource: "htmlView", withExtension:"html")
        
        if let url = url {
            
            let myRequest = URLRequest(url: url)
            
            webView.loadRequest(myRequest)
            activityIndicator.startAnimating()

        }
    }
}

extension HTMLVideoViewController: UIWebViewDelegate {
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        activityIndicator.stopAnimating()
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        activityIndicator.stopAnimating()
        print("Error loading movie")
    }
}
