# Exposure Plot: Rotated Geometry Visualization

## Overview

This project visualizes the relationship between **aperture (Av)**, **shutter speed (Tv)**, and **exposure value (EV)** using proper logarithmic geometry with a **45° rotation** to make the exposure trade-off visually obvious.

**Key Educational Goal**: Demonstrate that **sensor size (crop factor) affects effective aperture equivalence**, not actual aperture. A crop sensor with f/2.8 is NOT equivalent to full-frame f/2.8 in terms of depth-of-field—it's equivalent to full-frame f/4.2. This chart teaches that distinction clearly through the "After Crop Factor" adjustment mode.

## Key Files

- **`exposure_plot.html`** - Interactive JavaScript/Canvas visualization (45° rotated)
- **`exposure_plot.py`** - Reference Python/matplotlib implementation (non-rotated)

## Visualization Features

### UI Customization

**All visual parameters (colors, line widths, spacing) are defined in centralized constants:**
- **CSS Variables** (`:root`) - Control all UI styling, fonts, and spacing
- **JavaScript Constants** (`COLORS`, `LINE_WIDTHS`, `EV_RANGE`) - Control canvas rendering and visualization parameters
- Easy theme customization by editing a single location

### Pre-Rotation Coordinate System

**X-axis: Aperture Value (Av)**
- Formula: `Av = 2 × log₂(f-number)`
- Linear in stops
- Standard f-stops: f/1.0 to f/32

**Y-axis: Time Value (Tv)**
- Formula: `Tv = log₂(1/t)` where t is in seconds  
- Linear in stops
- Standard shutter speeds: 1/8000s to 30s

### Exposure Value Contours

EV lines follow: `Tv = -Av + EV`

These are **diagonal with slope -1** in pre-rotation space.

**After 45° Counter-Clockwise Rotation:** EV contours become **HORIZONTAL**

This rotation reveals the true geometry:
- **Horizontal movement** = trade aperture for shutter at constant exposure
- **Vertical movement** = change exposure level
- **Diagonal movement** (↗) = increase both aperture and shutter (change exposure + aperture)

### Color Scheme (Aircraft Instrument Feel)

- **EV Contours**: Magenta (`#ff00ff`) - primary exposure reference (flight director style)
- **Aperture Grid**: Green (`#00cc44`) - safe/approachable reference
- **Shutter Speed Grid**: Cyan (`#00aaff`) - secondary reference
- **Reference Point Indicators**: Yellow circular targets with crosshairs (optional, toggleable)
- **Background**: Dark (`#0a0f1a`) - instrument-style dark panel
- **Gradient Background**: Black to white (EV -3 to EV 16)

### Reference Points (Toggleable, Aircraft Indicator Style)

Photography-specific shooting conditions marked with aircraft-style circular target indicators (circle + crosshairs):
- **Sunny 16**: f/16 @ 1/125s (EV 15) - classic outdoor photography rule
- **Golden Hour**: ~f/2.8 @ 1/15s (EV 12-13) - warm evening/morning light
- **Blue Hour**: ~f/2.8 @ 1/4s (EV 6-8) - twilight professional photography
- **Overcast**: ~f/5.6 @ 1/30s (EV 10-11) - cloudy day shooting
- **Tungsten/Studio**: ~f/4 @ 1/8s (EV 9-10) - indoor artificial light

**Indicator Design**: Flight director-style targets with circular outline, crosshairs, and compact labels. Visually distinct from contour lines and grid.

### EV Gradient Background (Toggleable, EV Mode Only)

A visualization layer showing exposure intensity as a brightness gradient:
- **Black at bottom** (EV -3) - very dark scenes (starlight)
- **White at top** (EV 16) - very bright scenes (sun on snow)
- **Smooth gradient polygon** - bounded by EV -3 and EV 16 contour lines plus plot edges, forming the intersection region
- **Overlaid elements** - gridlines, contours, and labels remain visible on top for reference
- Only available in **EV contour mode** (disabled in ISO mode for clarity)

The gradient shape adapts to show only the photographically relevant exposure range.

### Exposure Compass (Aircraft-Style Indicator)

A cardinal direction compass in the upper right corner showing the exposure/aperture trade-off:
- **Up**: Brighter (higher EV)
- **Down**: Darker (lower EV)
- **Right**: Slower shutter / Tighter aperture (narrower aperture, slower shutter = more depth-of-field)
- **Left**: Faster shutter / Wider aperture (wider aperture, faster shutter = less depth-of-field)

This teaches that **horizontal movement in the rotated chart exchanges aperture for shutter speed** while maintaining constant exposure. The compass uses aircraft heading indicator aesthetics with arrows and labels for pedagogical clarity.

## Mathematical Correctness

### Rotation Formula (45° CCW)

Standard 2D rotation:
```
Av' = (Av - Tv) / √2     [horizontal axis: aperture-shutter trade-off]
Tv' = (Av + Tv) / √2     [vertical axis: exposure level]
```

### Verification: EV Contours Become Horizontal

For any EV line where `Av + Tv = EV`:
```
Tv' = (Av + Tv) / √2 = EV / √2  ← Constant!
```

All points on the same EV line have identical `Tv'`, making them perfectly horizontal. ✓

## Why This Matters

The traditional **"exposure triangle"** metaphor suggests aperture, shutter, and ISO are equal partners. This visualization shows the actual geometry:

1. **Aperture and shutter are INDEPENDENT controls** (orthogonal axes in pre-rotation space)
2. **Exposure is a DEPENDENT constraint** (linear combination: EV = Av + Tv)
3. **The trade-off along constant EV is a straight line** (horizontal after rotation)
4. **Sunny 16 emerges naturally** at EV ≈ 15, not as a memorized rule

### Sensor Size & Crop Factor Education

A key insight this tool teaches: **Crop factor affects effective aperture equivalence, not actual aperture.**

**Without crop factor adjustment** (Actual mode):
- An APS-C f/2.8 lens shows the same exposure as a Full Frame f/2.8 lens
- Same shutter speed, same ISO, same EV reading

**With crop factor adjustment** (After Crop Factor mode):
- An APS-C f/2.8 lens is equivalent to Full Frame f/4.2 (f/2.8 × 1.5)
- The effective aperture for depth-of-field purposes is narrower
- This is why crop sensor users need wider apertures to achieve the same depth-of-field

The visualization reveals **why photographers on crop sensors often say "I need faster lenses"**—they're trading the crop factor's teleconverter effect against the shallower depth-of-field. This chart makes that trade-off mathematically and visually explicit.

## Usage

### Open in Browser

```bash
# Open exposure_plot.html in any modern web browser
open exposure_plot.html
# or
firefox exposure_plot.html
# or
chrome exposure_plot.html
```

The visualization will render automatically on page load.

### Features

- **Equal aspect ratio** - one stop in Av = one unit distance in rotated space
- **Grid background** - optional visual reference in pre-rotation space
- **Readable labels** - aperture and shutter tick labels positioned after rotation
- **Interactive legend** - explains color coding and what the rotation shows

## Python Reference Implementation

The Python version (`exposure_plot.py`) shows the same data without rotation:

```bash
python exposure_plot.py
```

This generates the unrotated chart and saves it as `exposure_with_contours.png`.

## Customization

### Theme Customization

All colors and styling can be modified in one place:

**CSS Colors** (in `:root` style block):
```css
--color-grid-aperture: #00cc44;    /* Green */
--color-grid-shutter: #00aaff;     /* Cyan */
--color-contour-ev: #ff00ff;       /* Magenta */
--color-label-ev: #ffff00;         /* Yellow */
/* ... more color variables */
```

**JavaScript Constants** (at top of script):
```javascript
const COLORS = {
  gridAperture: "#00cc44",
  gridShutter: "#00aaff",
  contourEv: "#ff00ff",
  // ... more colors
};

const LINE_WIDTHS = {
  grid: 0.5,
  contour: 1.5,
  axis: 2
};

const EV_RANGE = {
  gradientBottom: -3,
  gradientTop: 16
};
```

Change any value in either location to instantly update the visualization.

## Technical Implementation (JavaScript)

### Architecture

**Fixed Viewport Design** (like professional charting software):
- Plot area is a fixed screen rectangle (viewport) with margins for axes
- Pan/zoom adjusts which portion of data space is visible within the viewport
- Axes stay fixed at viewport edges for stable reference
- All content within viewport is clipped to prevent overflow
- Compass indicator pinned to fixed screen position (upper right)

**Coordinate Pipeline**:
1. **Data Space**: Pre-rotation coordinates (Av, Tv) representing f-stop and shutter speed
2. **Rotated Space**: 45° CCW rotation for horizontal EV contours
3. **Viewport**: Fixed screen rectangle mapping rotated data to visible pixels
4. **Screen Space**: Final canvas coordinates after pan/zoom transform

The transformation `dataToCanvas()` handles all three steps, automatically respecting the viewport bounds.

### Rendering Details

- **Grid drawing** - vertical (aperture) and horizontal (shutter) lines in pre-rotation space
- **EV contours** - drawn as straight horizontal lines in rotated space
- **Reference points** - flight director-style circular targets with crosshairs
- **Clipping** - canvas clipping masks all viewport content to prevent overflow
- **Fixed overlays** - axes and compass drawn after clipping to remain always visible

## Educational Value

This visualization is uniquely useful for:
- **Photography students** learning the exposure triangle
- **Optical engineers** understanding aperture-shutter reciprocity
- **Visual learners** who benefit from geometric relationships
- **Anyone** who wants to understand why Sunny 16 works and where it comes from

---

Created with the principle that **visualization should reveal, not obscure, mathematical truth.**
