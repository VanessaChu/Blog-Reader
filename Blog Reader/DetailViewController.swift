//
//  DetailViewController.swift
//  Blog Reader
//
//  Created by Vanessa Chu on 2017-07-13.
//  Copyright © 2017 Vanessa Chu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var blogWebView: UIWebView!

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            self.title = detail.value(forKey: "title") as! String
            if let webView = self.blogWebView {
                webView.loadHTMLString(detail.value(forKey: "content") as! String, baseURL: nil)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

