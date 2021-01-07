//
//  BuildConfig.swift
//  DemoMutipleTarget
//
//  Created by Menute on 6/1/2564 BE.
//  Copyright © 2564 Menute. All rights reserved.
//

import Foundation

class BuildConfig {

    static let LICENSE_KEY = BuildConfig().getBuildConfigWithKey(key: "LICENSE_KEY")
    static let URL_KEY = BuildConfig().getBuildConfigWithKey(key: "URL_KEY")

    // MARK: Build Config
    static var bundleId: String {
        return Bundle.main.bundleIdentifier ?? ""
    }
    
    static var buildConfigDict: NSDictionary {
        var buildConfigDict: NSDictionary!
        if let path = Bundle.main.path(forResource: "BuildConfig", ofType: "plist") {
           buildConfigDict  = NSDictionary(contentsOfFile: path)
        }

        return buildConfigDict
    }
    
    static var defaultBuildConfig: NSDictionary {
        return buildConfigDict.object(forKey: "default") as! NSDictionary
    }
    
    static var productBuildConfig: NSDictionary {
        return buildConfigDict.object(forKey: bundleId) as! NSDictionary
    }
    
    static var bundleDisplayName: String {
        let bundleDisplayName = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") ?? ""
        return bundleDisplayName as! String
    }
    
    func getBuildConfigWithKey(key: String) -> String {
        if let value = BuildConfig.productBuildConfig.object(forKey: key) {
            return value as! String
        }

        return BuildConfig.defaultBuildConfig.object(forKey: key) as! String
    }
}
