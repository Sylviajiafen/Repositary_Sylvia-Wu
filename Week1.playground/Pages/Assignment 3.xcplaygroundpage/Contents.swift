// Assignment 3
// 1.
var myFriends: [String] = []

// 2.
myFriends.append("Ian")
myFriends.append("Bomi")
myFriends.append("Kevin")

// 3.
myFriends.append("Michael")

// 4.
myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)

// 5.
for myFriend in myFriends {
    print(myFriend)
}

// 6.
// Unable to find who is at index 5 in the myFriends array because there's only four names(string) in the array, and the index starts with 0 , so in this case , the index ends at 3.
// To count how many elements are in a array, just add ".count" to the array's name. For example:
myFriends.count
// So we get to know there's 4 elements in the myFriends array, as I mentioned. And the index always ends at the count minus 1 because index starts  with 0.

// 7.
// For example
myFriends[0]

// 8.
// For example
myFriends[3]
// Beware of that if you want to get the last element , the index should be the count minus 1.

// 9.~10.
var myCountryNumber​: [String:Int] = [
    "US": 1,
    "GB": 44,
    "JP": 81
]

// 11.
myCountryNumber​["GB"] = 0

// 12.
var emptyDictionary:[String:Int] = [:]

// 13.
// By subscripting
myCountryNumber​["GB"] = nil
// By using a method
myCountryNumber​.removeValue(forKey: "US")
