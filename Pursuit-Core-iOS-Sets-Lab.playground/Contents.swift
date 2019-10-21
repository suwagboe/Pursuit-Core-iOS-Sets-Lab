import UIKit

// Uncomment the "assert" lines for each problem when you have a solution, and run the playground to test.  When you have uncommented out the assert lines, no error messages or print statements means that your code is working correctly.

// Question One

// Create a new array numbersWithNoDuplicates that has all of the elements from numbers without any duplicates.  It should be in the same order as the original.

let numbers = [1,1,2,4,4,4,6,6,7,8]

var numbersWithNoDuplicates = [Int]()
// Your code here

let uniques = Set(numbers)// this creates a new variable that holds the arrary of numbers inside of it to become a set
print(uniques)
numbersWithNoDuplicates = Array(uniques).sorted()// this placed the new variable that is a set inside of the array. then sorts the values of the array to be places in order.
print(numbersWithNoDuplicates)

assert(numbersWithNoDuplicates == [1,2,4,6,7,8], "Was expecting [1,2,4,6,7,8], but got \(numbersWithNoDuplicates)")

// Questions Two

// Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once.  It should be in the same order as the original. (WHY IS THIS WRONG)

let scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]

var scoresThatAppearOnce = [Int]()

// Your code here

let finalScores = Set(scores)// when placing that array after Set does that automatically take out the scores that appear more than once
print(finalScores)

scoresThatAppearOnce = Array(finalScores)
print(scoresThatAppearOnce)

//assert(scoresThatAppearOnce == [1, 99], "Was expecting [1, 99], but got \(scoresThatAppearOnce)")

// Question Three

// a.

// Given arrOne and arrTwo, create a variable arrThree which is equal to the UNION of arrOne and arrTwo.  It should not contain any duplicate elements.  Sort arrThree from smallest to greatest.

let arrOne = [1,2,3,4,5]
let arrTwo = [3,4,5,6,7]

var arrThree: [Int] = []

// Your code here
let combinded = (Set(arrOne)).union(Set(arrTwo))
print(combinded)
arrThree = combinded.sorted()

assert(arrThree == [1,2,3,4,5,6,7], "Was expecting [1,2,3,4,5,6,7], but got \(arrThree)")

// b.

// Given arrFour and arrFive, create a variable arrSix with is equal to the INTERSECTION of arrFour and arrFive.  It should not contain any duplicate elements.  Sort arrSix from smallest to greatest.

let arrFour = [1,2,3,4,5]
let arrFive = [3,4,5,6,7]

var arrSix: [Int] = []

// Your code here
let combinded2 = Set(arrFour).intersection(Set(arrFive))
arrSix = combinded2.sorted()

assert(arrSix == [3,4,5], "Was expecting [3,4,5], but got \(arrSix)")



// Question Four

// Given the 4 arrays of Ints below, create a new array, sorted in ascending order, that contains all the values without duplicates.

let numsOne = [2, 4, 5, 6, 8, 10, 12]
let numsTwo = [1, 2, 3, 4, 5, 6]
let numsThree = [5, 6, 7, 8, 9, 10, 11, 12]
let numsFour = [1, 3, 4, 5, 6, 7, 9]

var allNumsWithNoDuplicates: [Int] = []

// Your code here

let combinded3 = Set(numsOne).union(Set(numsTwo)).union(Set(numsThree)).union(Set(numsFour))
print(combinded3)
print()
allNumsWithNoDuplicates = combinded3.sorted()
print(allNumsWithNoDuplicates)
assert(allNumsWithNoDuplicates == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "Was expecting [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], but got \([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])")


// Question Five Help me please!!!!

//WHAT IS THE DIFFERENCE BETWEEN DISJOINTED AND isSubset??? - SHANIYA

// Determine if a String is a pangram. A pangram is a string that contains every letter of the alphabet at least once.

// e.g "The quick brown fox jumps over the lazy dog" is a pangram e.g "The quick brown fox jumped over the lazy dog" is NOT a pangram

let strOne = "The quick brown fox jumps over the lazy dog"
let strTwo = "The quick brown fox jumped over the lazy dog"
let strThree = "Sphinx of black quartz, judge my vow"

var strOneIsPangram: Bool = false
var strTwoIsPangram: Bool = false
var strThreeIsPangram: Bool = false

// Your code here
var strOnePangram: Set = ["The quick brown fox jumps over the lazy dog".components(separatedBy: " ").joined().lowercased()]
print()
print(strOnePangram)
print()

var strTwoPangram: Set = ["The quick brown fox jumped over the lazy dog".components(separatedBy: " ").joined().lowercased()]
print()
print(strTwoPangram)
print()

var strThreePangram: Set = ["Sphinx of black quartz, judge my vow".components(separatedBy: " ").joined().lowercased()]
print()
print(strThreePangram)
print()

var isThis: Set = ["a b c d c d e f g h i j k l m n o p q r s t u v w x y z".components(separatedBy: " ").joined()]
print(isThis)

//var isThisAPangram: Bool = true
//var alpset = Set(isThis)
let strOneDisjoint = (strOnePangram).isDisjoint(with: isThis)

 



//let strOneDisjoint = (strOnePangram).isSubset(with: isThis) - THIS ONE DOESNT WORK

let strTwoDisjoint = (strTwoPangram).isDisjoint(with: isThis)

let strThreeDisjoint = (strThreePangram).isDisjoint(with: isThis)

assert(strOneIsPangram == true, "Was expecting true, but got \(strOneIsPangram)")
//assert(strTwoIsPangram == false, "Was expecting false, but got \(strTwoIsPangram)")
//assert(strThreeIsPangram == true, “Was expecting false, but got \(strThreeIsPangram)“)

//
//let name = "The quick brown fox jumps over the lazy dog".components(separatedBy: " ").joined().lowercased()
//print(name)
