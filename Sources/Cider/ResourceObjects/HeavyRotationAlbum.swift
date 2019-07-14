//
//  HeavyRotation.swift
//  Cider
//
//  Created by Janik Steegmüller on 14.07.19.
//  Copyright © 2019 Scott Hoyt. All rights reserved.
//

import Foundation

// MARK: - heavyRotationAlbum
public struct HeavyRotationAlbum: Codable {
    public let data: [heavyRotationDatum]
    public let href, next: String
    
    public init(data: [heavyRotationDatum], href: String, next: String) {
        self.data = data
        self.href = href
        self.next = next
    }
}

// MARK: - heavyRotationDatum
public struct heavyRotationDatum: Codable {
    public let attributes: heavyRotationAttributes
    public let href, id, type: String
    
    public init(attributes: heavyRotationAttributes, href: String, id: String, type: String) {
        self.attributes = attributes
        self.href = href
        self.id = id
        self.type = type
    }
}

// MARK: - heavyRotationAttributes
public struct heavyRotationAttributes: Codable {
    public let artistName: String
    public let artwork: heavyRotationArtwork
    public let copyright: String
    public let genreNames: [String]
    public let isComplete, isMasteredForItunes, isSingle: Bool
    public let name: String
    public let playParams: heavyRotationPlayParams
    public let releaseDate: String
    public let trackCount: Int
    public let url: String
    
    public init(artistName: String, artwork: heavyRotationArtwork, copyright: String, genreNames: [String], isComplete: Bool, isMasteredForItunes: Bool, isSingle: Bool, name: String, playParams: heavyRotationPlayParams, releaseDate: String, trackCount: Int, url: String) {
        self.artistName = artistName
        self.artwork = artwork
        self.copyright = copyright
        self.genreNames = genreNames
        self.isComplete = isComplete
        self.isMasteredForItunes = isMasteredForItunes
        self.isSingle = isSingle
        self.name = name
        self.playParams = playParams
        self.releaseDate = releaseDate
        self.trackCount = trackCount
        self.url = url
    }
}

// MARK: - heavyRotationArtwork
public struct heavyRotationArtwork: Codable {
    public let bgColor: String
    public let height: Int
    public let textColor1, textColor2, textColor3, textColor4: String
    public let url: String
    public let width: Int
    
    public init(bgColor: String, height: Int, textColor1: String, textColor2: String, textColor3: String, textColor4: String, url: String, width: Int) {
        self.bgColor = bgColor
        self.height = height
        self.textColor1 = textColor1
        self.textColor2 = textColor2
        self.textColor3 = textColor3
        self.textColor4 = textColor4
        self.url = url
        self.width = width
    }
}

// MARK: - heavyRotationPlayParams
public struct heavyRotationPlayParams: Codable {
    public let id, kind: String
    
    public init(id: String, kind: String) {
        self.id = id
        self.kind = kind
    }
}
