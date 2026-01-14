# Prime Factorization Grid Visualization

An interactive mathematical visualization that displays numbers in an infinite grid based on pseudoprimorial sequences, showing prime factorization patterns with various color schemes.

## How It Works

The grid represents an infinite positive number line where each row is offset by a pseudoprimorial number. This creates a visual pattern that reveals the distribution and properties of prime numbers and their factorizations.

- **Column 0** (center): The boundary, shown in white
- **Rows**: Extend infinitely downward from row 1
- **Columns**: Extend infinitely left and right from column 0
- **Values**: Each cell's value = pseudoprimorial[row] + column

## Color Scheme

### Composite Numbers (Lighter Colors)
Composite (non-prime) numbers are displayed in lighter colors based on their prime factorization patterns:

- **White**: No special factorization pattern
- **2,3,5 RGB**: Color components based on divisibility by 2, 3, and 5
- **Modular** (default): Unique colors for each unique factor combination
- **Factor Count**: Color based on the number of prime factors
- **Lowest Factor**: Color based on the smallest prime factor
- **Highest Factor**: Color based on the largest prime factor

### Prime Numbers (Dark Colors)
All prime numbers are shown in **black by default**. You can highlight special types of primes by checking the "Special Primes" options. These appear as dark, saturated colors:

- **Ramanujan Primes** (Red): Defined by a specific mathematical property related to prime counting
- **Fermat Primes** (Blue): Primes of the form 2^(2^n) + 1 (only 5 known: 3, 5, 17, 257, 65537)
- **Mersenne Primes** (Orange): Primes of the form 2^p - 1 where p is prime
- **Twin Primes** (Green): Primes that differ by 2 (e.g., 3 and 5, 11 and 13)
- **Cousin Primes** (Pink): Primes that differ by 4
- **Sexy Primes** (Purple): Primes that differ by 6
- **Sophie Germain Primes** (Cyan): Primes p where 2p + 1 is also prime

### Multiple Prime Types
If a prime number matches multiple selected types, its cell will flash between the colors of all matching types to highlight the special property.

## Controls

- **Rows on screen**: Adjust how many rows are visible at zoom level 1
- **Mouse wheel**: Zoom in/out (also updates the rows displayed)
- **Drag**: Pan around the grid
- **Recenter**: Snap column 0 back to center horizontally
- **Reset**: Return to default state (column 0 centered, zoom 1, 30 rows)
- **Special Primes**: Check boxes to highlight special prime types with colors

## Explore

Zoom in to examine prime factorization patterns in detail. Zoom out to see the larger distribution of primes across the number line. Use the special prime filters to identify mathematical relationships and patterns in prime distribution.
