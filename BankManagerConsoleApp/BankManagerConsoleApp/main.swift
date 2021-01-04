//
//  BankManagerConsoleApp - main.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

private func generateRandomNumberOfCustomer() -> Int {
    let randomNumber = Int.random(in: 10...30)
    return randomNumber
}

private func getUserInput() -> String {
    guard let input = readLine() else {
        return BankError.noEnterFromUser.localizedDescription
    }
    return input
}

private func setUpCustomer() -> [Customer] {
    let todayCustomerNumber = generateRandomNumberOfCustomer()
    var customers = [Customer(waitNumber: 1)]
    for index in 2...todayCustomerNumber {
        customers.append(Customer(waitNumber: index))
    }
    return customers
}
