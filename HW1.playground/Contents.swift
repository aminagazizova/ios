class Car {
    var brand: String
    var model: String
    var year: Int
    
    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }
    
    func getInfo() -> String {
        return "Марка: \(brand), Модель: \(model), Год выпуска: \(year)"
    }
}

class BMW: Car {
    var enginePower: Int
    var fuelConsumption: Double
    
    init(model: String, year: Int, enginePower: Int, fuelConsumption: Double) {
        self.enginePower = enginePower
        self.fuelConsumption = fuelConsumption
        super.init(brand: "BMW", model: model, year: year)
    }
    
    override func getInfo() -> String {
        return super.getInfo() + ", Мощность двигателя: \(enginePower) л.с., Расход топлива: \(fuelConsumption) л/100км"
    }
}

class Mercedes: Car {
    var enginePower: Int
    var comfortLevel: Int
    
    init(model: String, year: Int, enginePower: Int, comfortLevel: Int) {
        self.enginePower = enginePower
        self.comfortLevel = comfortLevel
        super.init(brand: "Mercedes", model: model, year: year)
    }
    
    override func getInfo() -> String {
        return super.getInfo() + ", Мощность двигателя: \(enginePower) л.с., Уровень комфорта: \(comfortLevel)"
    }
}

class Audi: Car {
    var enginePower: Int
    var safetyRating: Int
    
    init(model: String, year: Int, enginePower: Int, safetyRating: Int) {
        self.enginePower = enginePower
        self.safetyRating = safetyRating
        super.init(brand: "Audi", model: model, year: year)
    }
    
    override func getInfo() -> String {
        return super.getInfo() + ", Мощность двигателя: \(enginePower) л.с., Рейтинг безопасности: \(safetyRating)"
    }
}

class Tesla: Car {
    var batteryRange: Int
    var autopilot: Bool
    
    init(model: String, year: Int, batteryRange: Int, autopilot: Bool) {
        self.batteryRange = batteryRange
        self.autopilot = autopilot
        super.init(brand: "Tesla", model: model, year: year)
    }
    
    override func getInfo() -> String {
        return super.getInfo() + ", Запас хода: \(batteryRange) км, Автопилот: \(autopilot ? "Да" : "Нет")"
    }
}

import Foundation

func createCars() -> [Car] {
    var cars = [Car]()
    cars.append(BMW(model: "X5", year: 2020, enginePower: 300, fuelConsumption: 8.5))
    cars.append(BMW(model: "X3", year: 2021, enginePower: 280, fuelConsumption: 7.5))
    cars.append(Mercedes(model: "S-Class", year: 2019, enginePower: 400, comfortLevel: 10))
    cars.append(Mercedes(model: "E-Class", year: 2020, enginePower: 350, comfortLevel: 9))
    cars.append(Audi(model: "Q7", year: 2021, enginePower: 320, safetyRating: 5))
    cars.append(Audi(model: "Q5", year: 2020, enginePower: 290, safetyRating: 4))
    cars.append(Tesla(model: "Model S", year: 2022, batteryRange: 600, autopilot: true))
    cars.append(Tesla(model: "Model 3", year: 2021, batteryRange: 500, autopilot: true))
    return cars
}

func race(car1: Car, car2: Car) -> Car {
    if let car1 = car1 as? BMW, let car2 = car2 as? BMW {
        return car1.enginePower > car2.enginePower ? car1 : car2
    } else if let car1 = car1 as? Mercedes, let car2 = car2 as? Mercedes {
        return car1.enginePower > car2.enginePower ? car1 : car2
    } else if let car1 = car1 as? Audi, let car2 = car2 as? Audi {
        return car1.enginePower > car2.enginePower ? car1 : car2
    } else if let car1 = car1 as? Tesla, let car2 = car2 as? Tesla {
        return car1.batteryRange > car2.batteryRange ? car1 : car2
    } else {
        // Если разные марки, то
        return car1.year > car2.year ? car1 : car2
    }
}
func conductRaces(cars: [Car]) {
    var raceCars = cars.shuffled()
    while raceCars.count > 1 {
        let car1 = raceCars.removeFirst()
        let car2 = raceCars.removeFirst()
        let winner = race(car1: car1, car2: car2)
        print("Гонка между \(car1.getInfo()) и \(car2.getInfo()) - Победитель: \(winner.getInfo())")
        raceCars.append(winner)
    }
    
    if let finalWinner = raceCars.first {
        print("Итоговый победитель: \(finalWinner.getInfo())")
    }
}

// Пример использования
let cars = createCars()
conductRaces(cars: cars)
