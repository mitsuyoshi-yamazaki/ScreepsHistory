//
//  ScreepsHistoryView.swift
//  ScreepsHistory
//
//  Created by mitsuyoshi.yamazaki on 2018/04/18.
//  Copyright © 2018年 Mitsuyoshi. All rights reserved.
//

import Foundation
import ScreenSaver
import WebKit

class ScreepsHistoryView: ScreenSaverView {
  
  let webView: WKWebView
  
  // MARK: - Lifecycle
  override init?(frame: NSRect, isPreview: Bool) {
    
    let webConfiguration = WKWebViewConfiguration()
    webView = WKWebView.init(frame: .zero, configuration: webConfiguration)

    super.init(frame: frame, isPreview: isPreview)
   
    webView.navigationDelegate = self
    webView.frame = bounds
    webView.autoresizingMask = [ .viewWidthSizable, .viewHeightSizable ]
    addSubview(webView)

    let urlRequest = URLRequest.init(url: URL.init(string: "https://screeps.com/a/#!/history/shard1/E8S51?t=7763100")!)
    webView.load(urlRequest)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - ScreenSaverView
  override var animationTimeInterval: TimeInterval {
    set {}
    get {
      return 2.0
    }
  }
  
  override func startAnimation() {
    super.startAnimation()
  }
  
  override func stopAnimation() {
    super.stopAnimation()
  }
  
  override func animateOneFrame() {

  }
  
  override func hasConfigureSheet() -> Bool {
    return false
  }
  
  override func configureSheet() -> NSWindow? {
    return nil
  }
}

extension ScreepsHistoryView: WKNavigationDelegate {
  func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
    Swift.print(#function)

    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
      let javaScript = "$(\".play-pause\").triggerHandler(\"click\")" //"Game.play()"
      self.webView.evaluateJavaScript(javaScript) { (data, error) in
        Swift.print(data)
        Swift.print(error)
      }
    }
  }
}

