# Prime Factorization Grid Visualization

An interactive mathematical visualization that displays numbers in an infinite grid based on pseudoprimorial sequences, showing prime factorization patterns with various color schemes.

## How It Works

The grid represents an infinite positive number line where each row is offset by a pseudoprimorial number. This creates a visual pattern that reveals the distribution and properties of prime numbers and their factorizations.

- **Column 0** (center): The boundary, shown in white
- **Rows**: Extend infinitely downward from row 1
- **Columns**: Extend infinitely left and right from column 0
- **Values**: Each cell's value = A060735[row] + column, where A060735 (1, 2, 4, 6, 12, …, 210, 420, …, 2310, 4620, 6930, …, 30030, …) runs through the multiples of each primorial below the next prime

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

### My OEIS Sequences
Three of my OEIS entries can be highlighted alongside the special primes:

- **[A378018](https://oeis.org/A378018)** (Gold): Primes equal to a row center (A060735) plus or minus the smallest prime not dividing it
- **[A367182](https://oeis.org/A367182)** (Violet red): Primes of the form primorial(k) - prime(k+1)
- **[A377884](https://oeis.org/A377884)** (Bright blue): Composites sharing no prime factor with the greatest primorial below them. These color composite cells.

### Multiple Prime Types
If a number matches several selected types, its cell is split into equal vertical stripes, one per matching type, in checkbox order.

## Controls

- **Rows / Columns on screen**: How many rows and columns are visible. Columns start at whatever makes the cells square.
- **Mouse wheel**: Zoom in/out (also updates the rows displayed)
- **Drag**: Pan around the grid
- **Recenter**: Snap column 0 back to center horizontally
- **Reset**: Return to default state (column 0 centered, zoom 1, 30 rows, square cells, no special types selected)
- **Info bar**: Shows the hovered cell's row, column, value, factors, and row center. It also shows the largest primorial dividing the row center and the value's residue mod each prime in that primorial. Fields sit at fixed positions.
- **Special Primes**: Check boxes to highlight special prime types with colors

## Explore

Zoom in to examine prime factorization patterns in detail. Zoom out to see the larger distribution of primes across the number line. Use the special prime filters to identify mathematical relationships and patterns in prime distribution.
