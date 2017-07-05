//
//  ViewController.swift
//  RailsMemoApp
//
//  Created by 後閑諒一 on 2017/07/05.
//  Copyright © 2017年 ryoichi.gokan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapSaveButton(_ sender: UIButton) {
        let memo = Memo()
        memo.text = textView.text
        
        StockMemos.postMemo(memo: memo)
    }

}

