//
//  OtherViewModel.swift
//  starbucks
//
//  Created by 신연주 on 4/9/25.
//

import Foundation
import SwiftUI

@Observable
class OtherViewModel{
    let otherUserModel: [OtherModel] = [
        .init(menuIcon: .init(.starHistoryIcon), menuName: "별히스토리"),
        .init(menuIcon: .init(.receiptIcon), menuName: "전자영수증"),
        .init(menuIcon: .init(.myIcon), menuName: "나만의 메뉴"),
    ]
    
    let otherPayModel: [OtherModel] = [
        .init(menuIcon: .init(.cardIcon), menuName: "스타벅스 카드 등록"),
        .init(menuIcon: .init(.cardChangeIcon), menuName: "카드 교환권 등록"),
        .init(menuIcon: .init(.couponIcon), menuName: "쿠폰 등록"),
        .init(menuIcon: .init(.couponHistoryIcon), menuName: "쿠폰 히스토리"),
    ]
    
    let otherCustomerModel: [OtherModel] = [
        .init(menuIcon: .init(.storeCareIcon), menuName: "스토어 케어"),
        .init(menuIcon: .init(.coustomerIcon), menuName: "고객의 소리"),
        .init(menuIcon: .init(.storeInfoIcon), menuName: "매장 정보"),
        .init(menuIcon: .init(.returnInfoIcon), menuName: "반납기 정보"),
        .init(menuIcon: .init(.myReviewIcon), menuName: "마이 스타벅스 리뷰"),
    ]
}
