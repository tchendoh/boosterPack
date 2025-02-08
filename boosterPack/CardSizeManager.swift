//
//  CardSizeManager.swift
//  boosterPack
//
//  Created by Eric Chandonnet on 2025-02-07.
//

import Foundation

class CardSizeManager {
    var cardWidth: CGFloat
    let realWidth: CGFloat = 2.5 // real physical card in 2.5 in / 3.5 in
    let realHeight: CGFloat = 3.5
    let realBleedSize: CGFloat = 0.078740 // 2mm (25.4mm = 1 inch)
    let realCardCornerRadius: CGFloat = 0.125
    let safeCardCornerRadius: CGFloat = 0.11
    var cardAspectRatio: CGFloat {
        realHeight / realWidth
    }
    var cardHeight: CGFloat {
        cardWidth * realHeight / realWidth
    }
    var safeWidth: CGFloat {
        cardWidth - (widthBleedSize * 2)
    }

    var safeHeight: CGFloat {
        cardHeight - (heightBleedSize * 2)
    }

    var widthBleedSize: CGFloat {
        realBleedSize / realWidth * cardWidth
    }
    var heightBleedSize: CGFloat {
        realBleedSize / realHeight * cardHeight
    }
    
    var cardCornerRadius: CGFloat {
        realCardCornerRadius / realWidth * cardWidth
    }

    var safeCornerRadius: CGFloat {
        safeCardCornerRadius / realWidth * cardWidth
    }

    init(cardWidth: CGFloat = 300) {
        self.cardWidth = cardWidth
    }
}
