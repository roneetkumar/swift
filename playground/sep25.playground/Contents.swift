import UIKit

let dict:[Int:String] = [1:"Hello",2:"World!"];

for x in dict{ print(x.key, x.value)}

let arrCities = ["Tokyo","New York","Chicago","New Delhi","Kanpur"];
let arrArea = [223,554,667,700,100];

let cityDict = Dictionary(uniqueKeysWithValues: zip(arrArea, arrCities));

print(cityDict);

let filtered = cityDict.filter{$0.key > 600};
print(filtered.values);


var groupCities = Dictionary(grouping: arrCities){$0.first!};
print(groupCities["N"]![0]);

groupCities["N"]![0] = "New City";

print(groupCities["N"]![0]);

//groupCities.updateValue("NEW CITY", forKey: "N");

//print(groupCities["N"]![0]);
