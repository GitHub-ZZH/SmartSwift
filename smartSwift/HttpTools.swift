//
//  HttpTools.swift
//  smartSwift
//
//  Created by abovelink on 2020/11/23.
//

import Foundation

class HttpTools: NSObject {
    
    static let shareInstance: HttpTools = HttpTools()
//    open class var shared: HttpTools {}
    
//    let shared = HttpTools()
    
    var response: (()->())?
    
    
    func signInWithAccountAndPassword(_ account: NSString, _ password: NSString) {
        
//        let frame = CGRect.
        
    }
    
    func getSignUpCode(account: NSString) -> NSString {
        
        
        
        return "404"
    }
    
    func closeBlock(aa: ()->()) {
        aa()
    }
    
    
//        aa()
//        )
    
//    func get(url: String) -> (()->()) {
//
//
//        return aa()
//    }
    
    func post(url: String, reponse callback: (()->())) -> Void {
        
        
        callback()
    }
    
    func put(url: String) -> Void {
        
        
        
    }
    
    func delete(url: String) -> Void {
        
        
        
    }
    
    
    private func sendRequest(request: URLRequest) {
        
        let config: URLSessionConfiguration = URLSessionConfiguration.ephemeral
        
//        let delegate: URLSessionDelegate = URLSessionDelegate
        let session: URLSession = URLSession(configuration: config, delegate: self, delegateQueue: OperationQueue.current)
        
        let task: URLSessionTask = session.dataTask(with: request)
        
        task.resume()
        
    }
    
//    - (void)sendRequest:(NSMutableURLRequest *)request
//    {
//        NSURLSessionConfiguration *config = [NSURLSessionConfiguration ephemeralSessionConfiguration];
//        NSURLSession *session = [NSURLSession sessionWithConfiguration:config delegate:self delegateQueue:[NSOperationQueue currentQueue]];
//        NSURLSessionTask *task = [session dataTaskWithRequest:request];
//        [task resume];
//    }
}

extension HttpTools: URLSessionDelegate {
    
}
