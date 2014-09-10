//
//  File.swift
//  APIer
//
//  Created by Skip Wilson on 9/9/14.
//  Copyright (c) 2014 Skip Wilson. All rights reserved.
//

import Foundation

class Get {
    
    class func JSON(url:String,callback:(NSDictionary)->()) {
        requestJSON(url,callback)
    }
    
    class func requestJSON(url:String,callback:(NSDictionary)->()) {
        var nsURL = NSURL(string: url)
        let task = NSURLSession.sharedSession().dataTaskWithURL(nsURL) {
            (data,response,error) in
            var error:NSError?
            var response = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &error) as NSDictionary
            callback(response)
        }
        task.resume()
    }
}