import UIKit


func gradingStudents(grades: [Int]) -> [Int] {
    var finnalArr: [Int] = []
    
    for point in grades {
        if point >= 38 && point < 100{
            var spaceNumber: Int = 0
            var nextNUmber: Int = 0
            var lastCharecter: Int = 0
            
            let numberToprepare: Int = 3
            
            if ((point % 10) != 0) && ((point % 10) != 5) {
                lastCharecter = point % 10
                if lastCharecter > 5 {
                    nextNUmber = (point - lastCharecter) + 10
                    spaceNumber = nextNUmber - point
                    if spaceNumber < numberToprepare {
                        finnalArr.append(nextNUmber)
                    } else {
                        finnalArr.append(point)
                    }
                } else {
                    nextNUmber = (point - lastCharecter) + 5
                    spaceNumber = nextNUmber - point
                    if spaceNumber < numberToprepare {
                        finnalArr.append(nextNUmber)
                    } else {
                        finnalArr.append(point)
                    }
                }
            } else {
                finnalArr.append(point)
            }
        } else {
            finnalArr.append(point)
        }
    }
    return finnalArr
}

let arr = gradingStudents(grades: [40,41,42,43,44,45,46,47,48,49,50])







