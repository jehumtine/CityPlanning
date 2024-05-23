import Foundation

struct CityRule {
    var populationGrowthRate: Double
    var infrastructureDevelopmentRate: Double
    var environmentalImpactRate: Double
    var environmentalConservationRate: Double
    

    init(populationGrowthRate: Double, infrastructureDevelopmentRate: Double, environmentalImpactRate: Double, environmentalConservationRate: Double) {
        self.populationGrowthRate = populationGrowthRate
        self.infrastructureDevelopmentRate = infrastructureDevelopmentRate
        self.environmentalImpactRate = environmentalImpactRate
        self.environmentalConservationRate = environmentalConservationRate
    }
     static let possibleValues: [CityRule] = [
        CityRule(populationGrowthRate: 0.1, infrastructureDevelopmentRate: 0.1, environmentalImpactRate: 0.1, environmentalConservationRate: 0.1),
        CityRule(populationGrowthRate: 0.05, infrastructureDevelopmentRate: 0.05, environmentalImpactRate: 0.01, environmentalConservationRate: 0.1),
        CityRule(populationGrowthRate: 0.01, infrastructureDevelopmentRate: 0.1, environmentalImpactRate: 0.1, environmentalConservationRate: 0.01),
        CityRule(populationGrowthRate: 0.01, infrastructureDevelopmentRate: 0.3, environmentalImpactRate: 0.1, environmentalConservationRate: 0.01),
        CityRule(populationGrowthRate: 0.1, infrastructureDevelopmentRate: 0.1, environmentalImpactRate: 0.1, environmentalConservationRate: 0.2),
        CityRule(populationGrowthRate: 0.01, infrastructureDevelopmentRate: 0.3, environmentalImpactRate: 0.1, environmentalConservationRate: 0.01),
        CityRule(populationGrowthRate: 0.1, infrastructureDevelopmentRate: 0.1, environmentalImpactRate: 0.1, environmentalConservationRate: 0.2),
        CityRule(populationGrowthRate: 0.05, infrastructureDevelopmentRate: 0.2, environmentalImpactRate: 0.15, environmentalConservationRate: 0.05),
        CityRule(populationGrowthRate: 0.02, infrastructureDevelopmentRate: 0.25, environmentalImpactRate: 0.05, environmentalConservationRate: 0.15),
        CityRule(populationGrowthRate: 0.07, infrastructureDevelopmentRate: 0.1, environmentalImpactRate: 0.2, environmentalConservationRate: 0.05),
        CityRule(populationGrowthRate: 0.03, infrastructureDevelopmentRate: 0.15, environmentalImpactRate: 0.1, environmentalConservationRate: 0.2),
        CityRule(populationGrowthRate: 0.04, infrastructureDevelopmentRate: 0.3, environmentalImpactRate: 0.1, environmentalConservationRate: 0.1),
        CityRule(populationGrowthRate: 0.06, infrastructureDevelopmentRate: 0.2, environmentalImpactRate: 0.1, environmentalConservationRate: 0.1),
        CityRule(populationGrowthRate: 0.01, infrastructureDevelopmentRate: 0.3, environmentalImpactRate: 0.1, environmentalConservationRate: 0.01),
        CityRule(populationGrowthRate: 0.1, infrastructureDevelopmentRate: 0.1, environmentalImpactRate: 0.1, environmentalConservationRate: 0.2),
        CityRule(populationGrowthRate: 0.05, infrastructureDevelopmentRate: 0.2, environmentalImpactRate: 0.15, environmentalConservationRate: 0.05),
        CityRule(populationGrowthRate: 0.02, infrastructureDevelopmentRate: 0.25, environmentalImpactRate: 0.05, environmentalConservationRate: 0.15),
        CityRule(populationGrowthRate: 0.07, infrastructureDevelopmentRate: 0.1, environmentalImpactRate: 0.2, environmentalConservationRate: 0.05),
        CityRule(populationGrowthRate: 0.03, infrastructureDevelopmentRate: 0.15, environmentalImpactRate: 0.1, environmentalConservationRate: 0.2),
        CityRule(populationGrowthRate: 0.04, infrastructureDevelopmentRate: 0.3, environmentalImpactRate: 0.1, environmentalConservationRate: 0.1),
        CityRule(populationGrowthRate: 0.06, infrastructureDevelopmentRate: 0.2, environmentalImpactRate: 0.1, environmentalConservationRate: 0.1),
        CityRule(populationGrowthRate: 0.08, infrastructureDevelopmentRate: 0.18, environmentalImpactRate: 0.12, environmentalConservationRate: 0.08),
        CityRule(populationGrowthRate: 0.09, infrastructureDevelopmentRate: 0.22, environmentalImpactRate: 0.08, environmentalConservationRate: 0.12),
        CityRule(populationGrowthRate: 0.04, infrastructureDevelopmentRate: 0.1, environmentalImpactRate: 0.2, environmentalConservationRate: 0.15),
        CityRule(populationGrowthRate: 0.03, infrastructureDevelopmentRate: 0.2, environmentalImpactRate: 0.1, environmentalConservationRate: 0.25),
        CityRule(populationGrowthRate: 0.06, infrastructureDevelopmentRate: 0.25, environmentalImpactRate: 0.15, environmentalConservationRate: 0.1),
        CityRule(populationGrowthRate: 0.02, infrastructureDevelopmentRate: 0.3, environmentalImpactRate: 0.05, environmentalConservationRate: 0.2),
        CityRule(populationGrowthRate: 0.07, infrastructureDevelopmentRate: 0.12, environmentalImpactRate: 0.18, environmentalConservationRate: 0.06),
        CityRule(populationGrowthRate: 0.1, infrastructureDevelopmentRate: 0.2, environmentalImpactRate: 0.1, environmentalConservationRate: 0.05),
        CityRule(populationGrowthRate: 0.05, infrastructureDevelopmentRate: 0.3, environmentalImpactRate: 0.1, environmentalConservationRate: 0.15),
        CityRule(populationGrowthRate: 0.08, infrastructureDevelopmentRate: 0.15, environmentalImpactRate: 0.15, environmentalConservationRate: 0.1),
        CityRule(populationGrowthRate: 0.06, infrastructureDevelopmentRate: 0.1, environmentalImpactRate: 0.2, environmentalConservationRate: 0.08),
        CityRule(populationGrowthRate: 0.04, infrastructureDevelopmentRate: 0.2, environmentalImpactRate: 0.15, environmentalConservationRate: 0.12)
            // Add more possible values here
    ]
}



class CitySimulation {
    var grid: [[CellState]]
    let size: Int
    let config: Int
    var rules: [CityRule]
    var resetCounter: Int
    let explore: Bool
    var ENVIRONMENTAL_CONSERVATION_RATE:Double
    var POULATION_GROWTH_RATE:Double
    var ENVIRONMENTAL_IMPACT_RATE:Double
    var INFRASTRUCTURE_DEVELOPMENT_RATE:Double
    var cityState: Double
    init(size: Int,config: Int,explore: Bool) {
        self.size = size
        self.explore = explore
        self.config = config
        self.cityState = 0.0
        self.resetCounter = 0
        self.grid = Array(repeating: Array(repeating: CellState(state: .empty,value: 0.1), count: size), count: size)
        self.rules = CityRule.possibleValues
        switch config {
    // Empty Configuration (Experimental)    
    case 0:
        self.POULATION_GROWTH_RATE = CityRule.possibleValues[0].populationGrowthRate
        self.INFRASTRUCTURE_DEVELOPMENT_RATE = CityRule.possibleValues[0].infrastructureDevelopmentRate
        self.ENVIRONMENTAL_IMPACT_RATE = CityRule.possibleValues[0].environmentalImpactRate
        self.ENVIRONMENTAL_CONSERVATION_RATE = CityRule.possibleValues[0].environmentalConservationRate
    // Residential Configuration
    case 1:
        self.POULATION_GROWTH_RATE = CityRule.possibleValues[1].populationGrowthRate
        self.INFRASTRUCTURE_DEVELOPMENT_RATE = CityRule.possibleValues[1].infrastructureDevelopmentRate
        self.ENVIRONMENTAL_IMPACT_RATE = CityRule.possibleValues[1].environmentalImpactRate
        self.ENVIRONMENTAL_CONSERVATION_RATE = CityRule.possibleValues[1].environmentalConservationRate
    // Commercial Zone Configuration
    case 2:
        self.POULATION_GROWTH_RATE = CityRule.possibleValues[2].populationGrowthRate
        self.INFRASTRUCTURE_DEVELOPMENT_RATE = CityRule.possibleValues[2].infrastructureDevelopmentRate
        self.ENVIRONMENTAL_IMPACT_RATE = CityRule.possibleValues[2].environmentalImpactRate
        self.ENVIRONMENTAL_CONSERVATION_RATE = CityRule.possibleValues[2].environmentalConservationRate
    // Industrial Zone Configuration
    case 3:
        self.POULATION_GROWTH_RATE = CityRule.possibleValues[3].populationGrowthRate
        self.INFRASTRUCTURE_DEVELOPMENT_RATE = CityRule.possibleValues[3].infrastructureDevelopmentRate
        self.ENVIRONMENTAL_IMPACT_RATE = CityRule.possibleValues[3].environmentalImpactRate
        self.ENVIRONMENTAL_CONSERVATION_RATE = CityRule.possibleValues[3].environmentalConservationRate
    default:
        self.POULATION_GROWTH_RATE = CityRule.possibleValues[4].populationGrowthRate
        self.INFRASTRUCTURE_DEVELOPMENT_RATE = CityRule.possibleValues[4].infrastructureDevelopmentRate
        self.ENVIRONMENTAL_IMPACT_RATE = CityRule.possibleValues[4].environmentalImpactRate
        self.ENVIRONMENTAL_CONSERVATION_RATE = CityRule.possibleValues[4].environmentalConservationRate
    }
        self.randomizeCity()
    }
    
     func randomizeCity() {
        for i in 0..<size {
            for j in 0..<size {
                grid[i][j] = CellState.random(config:config)
            }
        }
    }
    // Helper Function to Find the Cell Type with in the highest amount
    func findMaxCellType(residentialCount: Double, commercialCount: Double, industrialCount: Double, greenSpaceCount: Double) -> String {
        var maxCount = 0.0
        var maxCellType = ""
        
        // Check residential count
        if residentialCount > maxCount {
            maxCount = residentialCount
            maxCellType = "🏠"
        }
        
        // Check commercial count
        if commercialCount > maxCount {
            maxCount = commercialCount
            maxCellType = "🛍️"
        }
        
        // Check industrial count
        if industrialCount > maxCount {
            maxCount = industrialCount
            maxCellType = "🏭"
        }
        
        // Check green space count
        if greenSpaceCount > maxCount {
            maxCount = greenSpaceCount
            maxCellType = "🟧"
        }
        
        return maxCellType
}

    func findMinCellType(residentialCount: Double, commercialCount: Double, industrialCount: Double, greenSpaceCount: Double) -> String {
        var minCount = 0.0
        var minCellType = ""
        
        // Check residential count
        if residentialCount < minCount {
            minCount = residentialCount
            minCellType = "🏠"
        }
        
        // Check commercial count
        if commercialCount < minCount {
            minCount = commercialCount
            minCellType = "🛍️"
        }
        
        // Check industrial count
        if industrialCount < minCount {
            minCount = industrialCount
            minCellType = "🏭"
        }
        
        // Check green space count
        if greenSpaceCount < minCount {
            minCount = greenSpaceCount
            minCellType = "🟧"
        }
        
        return minCellType
}

    func selectParents() -> (CityRule, CityRule) {
        let parent1Index = Int.random(in: 0..<rules.count)
        let parent2Index = Int.random(in: 0..<rules.count)
        return (rules[parent1Index], rules[parent2Index])
    }
// Genetic Algorithm to produce better growth rates
    func crossover(parent1:CityRule,parent2: CityRule){
        let crossoverPoint = Int.random(in: 1..<CityRule.possibleValues.count - 1)
        var child = CityRule(populationGrowthRate: 0, infrastructureDevelopmentRate: 0, environmentalImpactRate: 0, environmentalConservationRate: 0)
        for _ in 0..<crossoverPoint{
            let randomChoice1 = Bool.random()
            child.populationGrowthRate = randomChoice1 ? parent1.populationGrowthRate : parent2.populationGrowthRate
            let randomChoice2 = Bool.random()
            child.environmentalConservationRate = randomChoice2 ? parent1.environmentalConservationRate : parent2.environmentalConservationRate
            let randomChoice3 = Bool.random()
            child.environmentalImpactRate =  randomChoice3 ? parent1.environmentalImpactRate : parent2.environmentalImpactRate
            let randomChoice4 = Bool.random()
            child.infrastructureDevelopmentRate = randomChoice4 ? parent1.environmentalImpactRate : parent2.environmentalImpactRate
            }
        self.POULATION_GROWTH_RATE = child.populationGrowthRate;
        self.ENVIRONMENTAL_CONSERVATION_RATE = child.environmentalConservationRate;
        self.ENVIRONMENTAL_IMPACT_RATE = child.environmentalImpactRate;
        self.INFRASTRUCTURE_DEVELOPMENT_RATE = child.infrastructureDevelopmentRate;
        }

    
    func evolve() {
        var newGrid = grid
        let residentialCount = countResidentialCellsState()
//        let residentialFraction = residentialCount/400

        let commercialCount = countCommercialCellsState()
//        let commercialFraction = commercialCount/400

        let industrialCount = countIndustrialCellsState()
//        let industrialFraction = industrialCount/400

        let greenSpaceCount = countGreenCellsState()
//        let greenSpaceFraction = greenSpaceCount/400

        let maxCell = findMaxCellType(residentialCount: residentialCount, commercialCount: commercialCount, industrialCount: industrialCount, greenSpaceCount: greenSpaceCount)
        let minCell = findMinCellType(residentialCount: residentialCount, commercialCount: commercialCount, industrialCount: industrialCount, greenSpaceCount: greenSpaceCount)


        cityState = sumCityStateValues()

        if (cityState>0 && cityState<70 ) {
            for i in 0..<size {
            for j in 0..<size {
                //let neighbors = countLivingNeighbors(x: i, y: j)
                let industrialNeighbors = countIndustrialNeighbors(x: i, y: j)
                let commercialNeighbors = countCommercialNeighbors(x: i, y: j)
                let residentialNeighbors = countResidentialNeighbors(x: i, y: j)
                let greenNeighbors = countGreenNeighbors(x: i, y: j)
                let currentState = grid[i][j]
                var nextState = currentState
                
                switch currentState.state {
                    case .empty:
                        // Consider residential expansion and green space conversion
                        if residentialNeighbors >= 3 && randomBool(probability:self.POULATION_GROWTH_RATE) {
                            nextState = CellState(state: .residential,value:cellStateValue(state: .residential))
                        } else if greenNeighbors == 2 && randomBool(probability: 0.1) {
                            nextState = CellState(state: .greenSpace,value:cellStateValue(state: .greenSpace))
                        } else if randomBool(probability: self.INFRASTRUCTURE_DEVELOPMENT_RATE){
                            nextState = CellState(state: .industrial, value: cellStateValue(state: .industrial))
                        } else if randomBool(probability: self.ENVIRONMENTAL_CONSERVATION_RATE){
                            nextState = CellState(state: .commercial, value: cellStateValue(state: .commercial))
                        }
                    case .residential:
                        // Implement urban sprawl and economic factors. If there are already residential areas there will more likely be more residential areas. People will build where people have built
                        if residentialNeighbors < 2 && randomBool(probability: 0.1) || residentialNeighbors > 10 {
                            nextState = CellState(state: .empty,value:cellStateValue(state: .empty))
                        } else if commercialNeighbors > 0 && randomBool(probability: 0.1) {
                            nextState = CellState(state: .commercial,value:cellStateValue(state: .commercial))
                        }else if randomBool(probability: self.POULATION_GROWTH_RATE){
                            nextState = CellState(state: .residential, value: cellStateValue(state: .residential))
                        }
                    case .commercial:
                        // Consider economic factors and infrastructure development
                        if commercialNeighbors < 2 || commercialNeighbors > 4 {
                        // If there are too few Commercial Neighbors the cell becomes empty
                            nextState = CellState(state: .empty,value:cellStateValue(state: .empty))
                        } else if residentialNeighbors > 0 && randomBool(probability: self.POULATION_GROWTH_RATE) {
                        // If there are residential neighbours and considering the population grwoth rate the next cell will be residential
                            nextState = CellState(state: .residential,value:cellStateValue(state: .residential))
                        } else if randomBool(probability: self.INFRASTRUCTURE_DEVELOPMENT_RATE){
                            nextState = CellState(state: .commercial, value: cellStateValue(state: .commercial))
                        }
                    case .industrial:
                        // Implement economic factors and environmental impact
                        if industrialNeighbors < 2 || industrialNeighbors > 4 {
                            nextState = CellState(state: .empty,value:cellStateValue(state: .empty))
                        } else if residentialNeighbors > 0 {
                            nextState = CellState(state: .residential,value:cellStateValue(state: .residential))
                        } else if randomBool(probability: self.ENVIRONMENTAL_IMPACT_RATE) {
                            nextState = CellState(state: .industrial, value: cellStateValue(state: .industrial))

                        }
                    case .greenSpace:
                        // Consider urbanization and population dynamics
                        if greenNeighbors >= 5 && randomBool(probability: 0.1) {
                            nextState = CellState(state: .residential,value:cellStateValue(state: .residential))
                        } else if greenNeighbors <= 1 && randomBool(probability: 0.1) {
                            nextState = CellState(state: .empty,value:cellStateValue(state: .empty))
                        }else if randomBool(probability: self.ENVIRONMENTAL_CONSERVATION_RATE){
                            nextState = CellState(state: .greenSpace, value: cellStateValue(state: .greenSpace))
                        }
    }
                
                newGrid[i][j] = nextState
            }
        }
        
        grid = newGrid
        }
        // reduce on undesirable aspects
        else if(cityState<0){
            
            for i in 0..<size {
                for j: Int in 0..<size{
                    let currentState = grid[i][j]
                    var nextState = currentState
                    //print("currentState.symbol: \(currentState.symbol)   MaxCell: \(maxCell)")
                    
                    if (currentState.symbol == minCell && randomBool(probability: 0.7)){
                        nextState = CellState(state: cellTypeVal(symbol: maxCell), value: cellStateValue(state: cellTypeVal(symbol: maxCell)))
                    }      
                    newGrid[i][j] = nextState      
                } 
            }
            grid = newGrid
            
            self.resetCounter += 1
            // Change the rates of development if we have broken the city too much
            if(resetCounter >= 20){
                let(c1, c2) = selectParents();
                crossover(parent1:c1, parent2: c2)
                self.resetCounter = 0
            }
        }
        // break buildings make room for city reconstruction
        else {
            for i in 0..<size {
                for j: Int in 0..<size{
                    let currentState = grid[i][j]
                    var nextState = currentState
                    
                    
                    if (currentState.symbol == maxCell && randomBool(probability: 0.4)){
                        nextState = CellState(state: .empty, value: cellStateValue(state: .empty))
                    }      
                    newGrid[i][j] = nextState      
                } 
            }
            grid = newGrid
            self.resetCounter += 1
            // Change the rates of development if we have broken the city too much
            if(resetCounter >= 20){
                let(c1, c2) = selectParents();
                crossover(parent1:c1, parent2: c2)
                self.resetCounter = 0
            }
        }
        
    
}
// Helper function to return the CellState given a symbol
func cellTypeVal(symbol: String) -> CellState.State {
    switch symbol {
    case "🏠": return CellState.State.residential
    case "🛍️": return CellState.State.commercial
    case "🏭": return CellState.State.industrial
    case "🟧": return CellState.State.greenSpace
    default: return CellState.State.empty
        
    }
}

// Helper function to return the value of state for a given type of cell based off the config
func cellStateValue(state: CellState.State) -> Double {
    switch config {
    // Empty Configuration    
    case 0:
        switch state {
        case .empty: return 0.1 
        case .residential: return 0.1
        case .commercial: return 0.1
        case .industrial: return 0.1
        case .greenSpace: return 0.1
        }
    // Residential Configuration
    case 1:
        switch state {
        case .empty: return 0.1
        case .residential: return 0.5
        case .commercial: return 0.2
        case .industrial: return -0.2
        case .greenSpace: return 0.3
        }
    // Commercial Zone Configuration
    case 2:
        switch state {
        case .empty: return 0.1
        case .residential: return -0.2
        case .commercial: return 0.5
        case .industrial: return 0.1
        case .greenSpace: return -0.2
        }
    // Industrial Zone Configuration
    case 3:
        switch state {
        case .empty: return 0.1
        case .residential: return -0.1
        case .commercial: return 0.1
        case .industrial: return 0.5
        case .greenSpace: return -0.2
        }
    default:
        switch state {
        case .empty: return 0.1
        case .residential: return 0.1
        case .commercial: return 0.1
        case .industrial: return 0.1
        case .greenSpace: return 0.1
        }
    }
}


// Helper function to generate random boolean value with given probability
func randomBool(probability: Double) -> Bool {
    return Double.random(in: 0..<1) < probability
}

    
    func countLivingNeighbors(x: Int, y: Int) -> Int {
        var count = 0
        
        for i in -1...1 {
            for j in -1...1 {
                let row = (x + i + size) % size
                let col = (y + j + size) % size
                if !(i == 0 && j == 0) && grid[row][col].isLiving {
                    count += 1
                }
            }
        }
        
        return count
    }

    func countIndustrialCells() -> Int {
        var count = 0
    
        for i in 0..<size {
            for j in 0..<size {
                if grid[i][j].state == .industrial {
                    count += 1
            }
        }
        }
    
        return count
    }

    func countIndustrialCellsState() -> Double {
        var count = 0.0
    
        for i in 0..<size {
            for j in 0..<size {
                if grid[i][j].state == .industrial {
                    count += grid[i][j].value
                }
            }
        }
    
        return count
    }

    func countIndustrialNeighbors(x: Int, y: Int) -> Int {
        var count = 0
        
        for i in -1...1 {
            for j in -1...1 {
                let row = (x + i + size) % size
                let col = (y + j + size) % size
                if !(i == 0 && j == 0) && (grid[row][col].state == .industrial) {
                    count += 1
                }
            }
        }
        
        return count
    }

    func countResidentialCells() -> Int {
        var count = 0
    
        for i in 0..<size {
            for j in 0..<size {
                if grid[i][j].state == .residential {
                    count += 1
            }
        }
        }
    
        return count
    }

    func countResidentialCellsState() -> Double {
        var count = 0.0
    
        for i in 0..<size {
            for j in 0..<size {
                if grid[i][j].state == .residential {
                    count += grid[i][j].value
                }
            }
        }
    
        return count
    }

    func countResidentialNeighbors(x: Int, y: Int) -> Int {
        var count = 0
        
        for i in -1...1 {
            for j in -1...1 {
                let row = (x + i + size) % size
                let col = (y + j + size) % size
                if !(i == 0 && j == 0) && (grid[row][col].state == .residential) {
                    count += 1
                }
            }
        }
        
        return count
    }

    func countCommercialCells() -> Int {
        var count = 0
    
        for i in 0..<size {
            for j in 0..<size {
                if grid[i][j].state == .commercial {
                    count += 1
            }
        }
        }
    
        return count
    }


    func countCommercialCellsState() -> Double {
        var count = 0.0
    
        for i in 0..<size {
            for j in 0..<size {
                if grid[i][j].state == .commercial {
                    count += grid[i][j].value
                }
            }
        }
    
        return count
    }

    func countCommercialNeighbors(x: Int, y: Int) -> Int {
        var count = 0
        
        for i in -1...1 {
            for j in -1...1 {
                let row = (x + i + size) % size
                let col = (y + j + size) % size
                if !(i == 0 && j == 0) && (grid[row][col].state == .commercial) {
                    count += 1
                }
            }
        }
        
        return count
    }

    func countGreenCells() -> Int {
        var count = 0
    
        for i in 0..<size {
            for j in 0..<size {
                if grid[i][j].state == .greenSpace {
                    count += 1
                }
            }
        }
    
        return count
    }

    func countGreenCellsState() -> Double {
        var count = 0.0
    
        for i in 0..<size {
            for j in 0..<size {
                if grid[i][j].state == .greenSpace {
                    count += grid[i][j].value
                }
            }
        }
    
        return count
    }

    func countGreenNeighbors(x: Int, y: Int) -> Int {
        var count = 0
        
        for i in -1...1 {
            for j in -1...1 {
                let row = (x + i + size) % size
                let col = (y + j + size) % size
                if !(i == 0 && j == 0) && (grid[row][col].state == .greenSpace) {
                    count += 1
                }
            }
        }
        
        return count
    }

func sumCityStateValues() -> Double {
    var sum = 0.0
    
    for i in 0..<size {
        for j in 0..<size {
            sum += grid[i][j].value
        }
    }
    return sum
}



    
    func printCity(filePath: String, generation: Int) {
        let residentialCount = countResidentialCells()
        let commercialCount = countCommercialCells()
        let industrialCount = countIndustrialCells()
        let greenSpaceCount = countGreenCells()
        let cityState = sumCityStateValues()
/*
        // Create a file handle for writing
        guard let fileHandle = FileHandle(forWritingAtPath: filePath) else {
            print("Could Not open file at \(filePath) for writing to.")
            return
        }
        fileHandle.seekToEndOfFile()*/
        
        // Check if file already exists
        if !FileManager.default.fileExists(atPath: filePath) {
  // Create a new file
  FileManager.default.createFile(atPath: filePath, contents: nil, attributes: nil)
  print("Successfully created a new file at \(filePath).")
} else {
  // Handle existing file scenario (e.g., print a message)
  print("File already exists at \(filePath).")
}
// Rest of your code to write to the file (assuming the file is created)
        guard let fileHandle = FileHandle(forWritingAtPath: filePath) else {
        print("Could not open file for writing.")
        return
        }
        fileHandle.seekToEndOfFile()
        // Write statistics to file
        let statsString = """
        \nStatistics:
        Generation : \(generation)
        City State Value: \(cityState)
        Residential: \(residentialCount)
        Commercial: \(commercialCount)
        Industrial: \(industrialCount)
        Green Space: \(greenSpaceCount)
        POPULATION GROWTH RATE: \(self.POULATION_GROWTH_RATE)
        INFRASTRUCTURE DEVELOPMENT RATE: \(self.INFRASTRUCTURE_DEVELOPMENT_RATE)
        ENVIRONMENTAL CONSERVATION RATE: \(self.ENVIRONMENTAL_CONSERVATION_RATE)
        ENVIRONMENTAL IMPACT RATE: \(self.ENVIRONMENTAL_IMPACT_RATE)
        \n
        """
        if let statsData = statsString.data(using: .utf8){
            fileHandle.write(statsData)
        }

        
        for i in 0..<size {
            var rowString = ""
            for j in 0..<size {
                let cell = grid[i][j]
                rowString += "\(cell.symbol)"
                
                
                print(cell.symbol, terminator: " ")
            }
            // Write row to file
            rowString += "\n"
            /*if let data = rowString.data(using: .utf8){
                    fileHandle.write(data)
                }*/
            print()
        }

        print("\nStatistics:")
        print("City State Value: \(cityState)")
        print("Residential: \(residentialCount)")
        print("Commercial: \(commercialCount)")
        print("Industrial: \(industrialCount)")
        print("Green Space: \(greenSpaceCount)")
        print("POPULATION GROWTH RATE: \(self.POULATION_GROWTH_RATE)")
        print("INFRASTRUCTURE DEVELOPMENT RATE: \(self.INFRASTRUCTURE_DEVELOPMENT_RATE)")
        print("ENVIRONMENTAL CONSERVATION RATE: \(self.ENVIRONMENTAL_CONSERVATION_RATE)")
        print("ENVIRONMENTAL IMPACT RATE: \(self.ENVIRONMENTAL_IMPACT_RATE)")
        print("DEVELOPMENT RATE MUTATATION: \(self.resetCounter)")
        
        
        
        
        fileHandle.closeFile()
    }
}

class CellState {
    enum State: String {
        case empty = "◻️"
        case residential = "🏠"
        case commercial = "🛍️"
        case industrial = "🏭"
        case greenSpace = "🟧"
    }
    
    var state: State
    var value: Double

    init(state: State,value: Double) {
        self.state = state
        self.value = value
    }
    
    var symbol: String {
        return state.rawValue
    }
    
    var isLiving: Bool {
        return state != .empty
    }
    
    static func random(config: Int) -> CellState {
        let rand = Int.random(in: 0..<100)
        switch config {
        // Empty Configuration    
        case 0:
            
            switch rand {
            case 0..<50: return CellState(state: .empty, value: 0.1)
            case 50..<70: return CellState(state: .residential, value: 0.1)
            case 70..<85: return CellState(state: .commercial, value: 0.1)
            case 85..<95: return CellState(state: .industrial, value: 0.1)
            default: return CellState(state: .greenSpace, value: 0.1)
            }
            
        // Residential Configuration
        case 1:
             
            switch rand {
            case 0..<50: return CellState(state: .residential, value: 0.5)
            case 50..<70: return CellState(state: .empty, value: -0.1)
            case 70..<85: return CellState(state: .commercial,value: 0.2)
            case 85..<95: return CellState(state: .industrial,value: -0.2)
            default: return CellState(state: .greenSpace,value: 0.3)
            }
            
        // Commercial Zone Configuration
        case 2:
             
            switch rand {
            case 0..<50: return CellState(state: .commercial,value: 0.5)
            case 50..<70: return CellState(state: .empty,value: -0.2)
            case 70..<85: return CellState(state: .residential,value: -0.2)
            case 85..<95: return CellState(state: .industrial,value: 0.1)
            default: return CellState(state: .greenSpace,value:-0.2)
            }
            
        // Industrial Zone Configuration
        case 3:
             
            switch rand {
            case 0..<50: return CellState(state: .industrial,value: 0.5)
            case 50..<70: return CellState(state: .empty, value: -0.1)
            case 70..<85: return CellState(state: .residential, value: -0.1)
            case 85..<95: return CellState(state: .commercial,value:0.1)
            default: return CellState(state: .greenSpace,value: -0.2)
            }
            
        default:
            switch rand {
            case 0..<50: return CellState(state: .empty,value: 0.1)
            case 50..<70: return CellState(state: .residential,value: 0.1)
            case 70..<85: return CellState(state: .commercial,value: 0.1)
            case 85..<95: return CellState(state: .industrial,value: 0.1)
            default: return CellState(state: .greenSpace,value: 0.1)
            }
            
        }
        
    }
}
func main() {
    let size = 20
    //let config = 0
    
    let welcomeMessage = """
        ***********************************
        *           CitySim              *
        ***********************************
        Input configuration:
        0 - Default Configuration
        1 - Residential Configuration
        2 - Commercial Zone Configuration
        3 - Industrial Zone Configuration
        """
    let chooseGenerationMessage = """
        ***********************************
        *           CitySim              *
        ***********************************
        Choose the amount of generations you would like to simulate (recommended = 10000):
        """

    let chooseTimeMessage = """
        ***********************************
        *           CitySim              *
        ***********************************
        Choose the amount of time between each generation display (in milliseconds):
        """
    let endOfSimulationMessage = """
        ***********************************
        *           CitySim              *
        ***********************************
        The Simulation is done! The Generation by Generation progression of the city growth can be found in the generated results.txt file
        These are the final stable growth values:
        """

    print(welcomeMessage)

    var config = 0
    if let userConfig = readLine(), let configValue = Int(userConfig), configValue >= 0 && configValue <= 4 {
    config = configValue
    } else  {
        print("Invalid input. Please enter a number between 0 and 4.")
    }
    #if os(Windows)
        system("cls")
    #else
        system("clear")
    #endif
    print(chooseGenerationMessage)
    var generations = 0
    if let userGenerations = readLine(), let Generations = Int(userGenerations), Generations >= 0{
        generations = Generations
    }

    #if os(Windows)
        system("cls")
    #else
        system("clear")
    #endif
    print(chooseTimeMessage)
    var time = 0
    if let userTime = readLine(), let Time = Int(userTime), Time >= 0{
        time = Time
    }
    
    let city = CitySimulation(size: size,config:config,explore: true)
    let timems = 1000 * time
    for generation in 0..<generations {
        print("Config \(config):")
        print("Generation \(generation + 1):")
        city.printCity(filePath: "results + \(city.config).txt",generation: generation)
        print("\n")
        city.evolve()
        usleep(__useconds_t(timems))
        #if os(Windows)
            system("cls")
        #else
            system("clear")
        #endif
    }
    let statsString = """
        \nStatistics:
        POPULATION GROWTH RATE: \(city.POULATION_GROWTH_RATE)
        INFRASTRUCTURE DEVELOPMENT RATE: \(city.INFRASTRUCTURE_DEVELOPMENT_RATE)
        ENVIRONMENTAL CONSERVATION RATE: \(city.ENVIRONMENTAL_CONSERVATION_RATE)
        ENVIRONMENTAL IMPACT RATE: \(city.ENVIRONMENTAL_IMPACT_RATE)
        DEVELOPMENT RATE MUTATATION: \(city.resetCounter)
        \n
        """
    print(endOfSimulationMessage)
    print("Config \(config)")
    print(statsString)
    
    
       


}

main()
