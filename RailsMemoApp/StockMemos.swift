//
//  StockMemos.swift
//  RailsMemoApp
//
//  Created by 後閑諒一 on 2017/07/05.
//  Copyright © 2017年 ryoichi.gokan. All rights reserved.
//

import UIKit
import Alamofire

class StockMemos: NSObject {
    
    // 保存ボタンが押された時に呼ばれるメソッドを定義
    class func postMemo(memo: Memo) {

        let apiUrl = "http://localhost:3000/api/memos"
        let method: HTTPMethod
        
        var params: [String: Any] = [
            "text": memo.text
        ]
        
        // HTTP通信
//        Alamofire.request(apiUrl, method: method, parameters: params).responseJSON { (request, response, JSON, error ) in
        Alamofire.request(apiUrl, method: .post, parameters: params).responseJSON { response in
            
            print(response.request as Any)  // original URL request
            print(response.response as Any) // URL response
            print(response.result.value as Any) // result of response serialization

        }
    }
}
