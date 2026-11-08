# Lessons Learned from Photo Plotting Refactor

## Key Takeaways

1. **Removing features without testing breaks the whole system**
   - Don't rip out multiple features at once (crop factor, adjustment mode)
   - Test each removal in the browser before moving on
   - One change = one test cycle

2. **The coordinate system is fragile and tightly coupled**
   - Data → rotated → canvas pipeline has many interdependencies
   - Changing one part cascades failures downstream
   - A complex but working system is better than a simplified broken one
   - Document the coordinate system dependencies before refactoring

3. **Should test incrementally in the browser**
   - Don't make 10+ changes before testing
   - Each change should be validated before the next
   - Makes it easy to isolate which change caused a failure

4. **Mathematical correctness on paper ≠ correct implementation**
   - What looks right mathematically can fail in actual coordinate transforms
   - The subtle interactions between scale factors, pan offsets, and viewport bounds are error-prone
   - Test edge cases (panning to extremes, zooming in/out, different aspect ratios)

5. **Clamping and limiting is harder than expected**
   - Tried to hard-limit axes but kept failing because scale factors weren't accounted for
   - Simple "clamp visible range" works for display but doesn't prevent panning outside limits
   - Need to limit the *input* (pan offsets) not just the *output* (visible labels)
   - This requires understanding the full transform pipeline

6. **Don't add UI before the underlying logic works**
   - Added crop factor selector before verifying the calculations were correct
   - Created confusion about where bugs came from
   - Build the feature fully before exposing it to the UI

7. **The working version was better than I thought**
   - 45° rotated system was complex but actually *working*
   - Trying to simplify it introduced more bugs than it fixed
   - Sometimes keeping complexity is the right call if it's stable

## Future Approach

- Make a branch before major refactors
- Test in browser after every 2-3 logical changes
- Document the coordinate system first (what are the edges, what transforms are applied, what's the data flow)
- Keep the working version as reference
- Isolate one feature at a time when removing/adding
