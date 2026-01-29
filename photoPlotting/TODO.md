# Exposure Plot TODO

## UI/Responsiveness
- [ ] Test on mobile devices and different screen sizes - see what's broken

## Labeling
- [ ] When sensor is Full Frame (1.0), don't show "[FF equiv]" label on aperture axis - only show equivalence label for non-FF sensors

## Core Math Rework
- [ ] EV and ISO should be functions of (aperture, shutter, ev/iso, nd filter, crop factor)
- [ ] Don't move apertures on the axis when changing sensor size
- [ ] Instead, EV/ISO values change as a function of sensor size (crop factor affects the result, not the input axis)

## Visualization Fixes
- [ ] Fix the EV gradient background (currently broken/not rendering correctly)

## Reference Points
- [ ] Make reference points that actually make sense for real photography scenarios
- [ ] Research and find EV labels with accurate, meaningful descriptions (not AI-generated generic text)

---

*Keep the current UI aesthetic - it's looking good*
