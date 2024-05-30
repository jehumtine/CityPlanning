CitySimulation code:

CityRule

This struct defines the possible growth rate values that can be used in the city simulation. It contains variables for population growth rate, infrastructure development rate, environmental impact rate, and environmental conservation rate.

The possibleValues constant defines an array of all possible CityRule options with random values assigned.

CitySimulation

This class initializes and runs the city simulation.

    size: Size of the grid representing the city
    config: Configuration type (residential, commercial, etc)
    grid: 2D array storing the CellState of each cell
    rules: Possible CityRule options to select growth rates from
    resetCounter: Counts number of times rates need to be reset
    environmental/population/infrastructure rates: Current growth rates
    cityState: Current overall state value of the city

Methods:

    init() sets up the initial grid with random cells
    evolve() runs one generation - updates each cell based on neighbors
    printCity() outputs grid and stats to file
    count*() helper methods to calculate cell types
    findMax/MinCellType() finds most/least common cell type
    selectParents()/crossover() implements genetic algorithm
    cellStateValue() maps cell type to value based on config

CellState

Represents the state of an individual cell - type, value and helpers.

main()

Handles input, initializes simulation, runs generations and outputs results.

This models the growth dynamics of a city over time based on configurable residential/commercial rules and a genetic algorithm. The rates and grid evolve each generation based on neighborhood factors.

Here are more detailed descriptions of some key methods:

**evolve()**

For each cell:

1. Finds the cell's neighbors of each type 
2. Checks the current state
3. Based on rules for that state and neighbor counts, determines a new random state 
   - For example, residential cells spread to empty neighbors 
   - Commercial cells stay/spread based on other commercial neighbors
4. Mutates the growth rates using genetic algorithm if city is unstable
5. Updates the grid with the new states

**selectParents()/crossover()** 

Genetic algorithm:

1. selectParents randomly chooses two CityRule options 
2. crossover picks a random point and swaps parts of each rule 
   - E.g. use parent1's population rate and parent2's others
3. Sets the simulation's rates to the new "child" rule 

This introduces randomness to find better stable rate combinations.

**printCity()**

1. Calculates stat metrics like cell counts
2. Writes stats and grid to file 
   - Loops through grid, appending each row
   - Also prints to console
3. Handles file creation/writing safely

**count*()**

Helper methods to efficiently count the number/total value of each cell type by:

1. Looping through each cell  
2. Incrementing the count if it matches the type
3. Returning the final count

Using these avoids nested looping when evaluating neighbors.
