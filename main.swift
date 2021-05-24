//
//  main.swift
//  HomeworkDay3
//
//  Created by Apple on 22/05/2021.
//

import Foundation

//MARK: - Bài 1
// Cách 1: Nhập tháng, nhập năm.
func soNgay (nhapThang: Int, nhapNam: Int) {
    if nhapThang < 0 || nhapThang > 12 {
        print("Nhập sai tháng")
    }
    if nhapThang%2 == 0 && nhapThang != 2 {
        print("Tháng \(nhapThang) của năm \(nhapNam) có 30 ngày")
    } else if nhapThang%2 != 0 {
        print("Tháng \(nhapThang) của năm \(nhapNam) có 31 ngày")
    } else if nhapNam%4 != 0 || nhapNam%400 != 0 {
        print("Tháng \(nhapThang) của năm \(nhapNam) có 28 ngày")
    } else {
        print("Tháng \(nhapThang) của năm \(nhapNam) có 29 ngày")
    }
}

soNgay(nhapThang: 12, nhapNam: 1000)

// Cách 2: Nhập năm. In ra số ngày trong 12 tháng của năm đó.
print("---------------------------")


//MARK: - Bài 2
func tinhTong (nhapSo: Int) {
    var temp = 0
    var temp2 = 0
    var temp3 = nhapSo
    while temp3 != 0 {
        temp2 = temp3%10
        temp3 = temp3/10
        temp = temp + temp2
        temp2 = 0
    }
    print("Tổng các số là \(temp)")
}

tinhTong(nhapSo: 13456)

//MARK: - Bài 3
print("----------------------------")
func inChuoi (nhapChuoi: String) {
    if nhapChuoi.count <= 10 {
        let catChuoi1 = nhapChuoi.prefix(9)
        print("\(catChuoi1)")
    } else {
        let catChuoi2 = nhapChuoi.prefix(9)
        var catChuoi3 = nhapChuoi.suffix(10)
        catChuoi3 = "..."
        print("\(catChuoi2)\(catChuoi3)")
    }
}

inChuoi(nhapChuoi: "123456789abcnnnnnn")

//MARK: - Bài 4
print("----------------------------")
func timMinMax() {
    var numberArrays = [1, 2, 7, 3, 8, 9, 0, -3, -4]
    var soMin = numberArrays[0]
    var soMax = numberArrays[0]
    for (index, value) in numberArrays.enumerated() {
        if soMin > value {
            soMin = value
        }
        if soMax < value {
            soMax = value
        }
    }
    print("Số min là \(soMin)")
    print("Số max là \(soMax)")
}

timMinMax()

//MARK: - Bài 5
print("----------------------------")
func timMaxThu2() {
    let numberArrays = [1, 7, 8, -3, 8, 10, 0, -3, -4, 9]
    var soMax = numberArrays[0]
    var soMax2 = 0
    
    for (index, value) in numberArrays.enumerated() {
        if numberArrays[index] > soMax {
            soMax2 = soMax
            soMax = numberArrays[index]
            
        } else if numberArrays[index] > soMax2 {
            soMax2 = numberArrays[index]
        }
    }
    print(soMax2)
}

timMaxThu2()

//MARK: - Bài 6
print("----------------------------")

func daoChuoi() {
    let nhapChuois: String = "Hello"
    for i in nhapChuois.reversed() {
        print(i)
    }
}

daoChuoi()

//MARK: - Bài 7

func tamGiacCan(n: Int) {
    var i = 1
    var j = 1
    
    for i in 0..<n {
        for j in 0...2*n {
            if (abs(n - i)) <= (j - 1) {
                print(" * ")
            } else {
                print(" ")
            }
        }
    }
}

tamGiacCan(n: 3)

