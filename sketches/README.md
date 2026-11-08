# Processing Sketches Archive (2013-2015)

These are interactive generative art sketches I made in Processing during grad school, converted to p5.js for the web. Move your mouse around to interact with them.

## The Collection

### Pixel Math Experiments
These sketches manipulate individual pixels using mathematical functions. The visual patterns emerge from bitwise operations, trigonometric functions, and distance calculations.

- **dynamicTriangleFlower.html** - XOR operations with sine waves create hypnotic patterns
- **sketch_feb23a.html** - Distance-based radial gradients (with 30+ commented experiments)
- **sketch_feb25a.html** - Logarithmic color mixing across RGB channels
- **exponents.html** - Generalized p-norm circles (mouse Y controls the exponent)
- **squareShade.html** - XOR patterns in blue channel only
- **sketch_feb24b.html** - Static multiplicative gradient

### Recursive/Fractal
- **Tree.html** - Classic recursive fractal tree (based on Daniel Shiffman example)
  - Mouse X: branching angle
  - Mouse Y: branch length scaling

### Geometric
- **superCircle.html** - Rotating pentagonal symmetry with color shifts
  - Mouse movement: controls size and color
  - Left click: sets rotation
  - Right click: clears canvas
  - Mouse wheel: shifts color values

## Technical Notes

Original sketches were written in Processing (Java) between February 2013 and January 2015. Converted to p5.js for web compatibility in 2026.

All sketches use pixel-level manipulation, which is computationally intensive. Performance varies by browser/device.

## Usage on Blog

Each HTML file is standalone - just include the file and it will load p5.js from CDN. To embed:

```html
<iframe src="sketch-name.html" width="520" height="520" style="border:none;"></iframe>
```

Or link directly for full-page viewing.

## Archaeological Notes

Looking back at this code 12+ years later:

- The commented-out experiments in `sketch_feb23a` are a perfect record of the generative art exploration process
- Heavy use of modulo for wrapping values shows I hadn't discovered better normalization techniques yet
- The `println("monkeys")` debug message is inexplicable
- Mouse-driven parameter control was the standard interaction pattern
- No attempt at optimization - just brute force pixel iteration
- The naming convention degraded from descriptive ("dynamicTriangleFlower") to generic ("sketch_feb24b") as deadlines approached

## What I Was Thinking

These sketches explore emergent complexity from simple mathematical operations. The goal was to find interesting visual patterns by combining:
- Spatial functions (distance, angle, coordinate operations)
- Mathematical operations (trig, logarithms, exponents, bitwise XOR/AND)
- Interactive parameters (mouse position as continuous input)
- Color mixing strategies

The recursive tree is the only "traditional" generative art piece - everything else is pixel-level mathematical experimentation.
