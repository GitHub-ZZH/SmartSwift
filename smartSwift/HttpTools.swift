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
        
        self.get(url: "www.baidu.com")
    }
    
    func getSignUpCode(account: NSString) -> NSString {
        
        
        
        return "404"
    }
    
    func closeBlock(aa: ()->()) {
        aa()
    }
    
    func get(url: String) -> () {

//        NSMutableURLRequest *request = [self formatRequestWithURL:url];
//        [request setHTTPMethod:@"GET"];
//        [self sendRequest:request];
        guard let urlStr = URL(string: url) else {
            return
        }
        var request = URLRequest(url: urlStr);
        request.httpMethod = "GET"
        sendRequest(request: request)

//        return aa()
    }
    
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
    
    func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        print("============")
    }
    
    func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) {
        
    }
    
    func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) {
        
    }
    
}
