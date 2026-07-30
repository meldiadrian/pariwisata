# Implementation Plan

- [ ] 1. Write bug condition exploration test
  - **Property 1: Bug Condition** - Heroicon SvgNotFound Error Test
  - **CRITICAL**: This test MUST FAIL on unfixed code - failure confirms the bug exists
  - **DO NOT attempt to fix the test or the code when it fails**
  - **NOTE**: This test encodes the expected behavior - it will validate the fix when it passes after implementation
  - **GOAL**: Surface counterexamples that demonstrate the bug exists
  - **Scoped PBT Approach**: For this deterministic bug, scope the property to the concrete failing cases to ensure reproducibility
  - Test that accessing SliderResource table with 'heroicon-o-trash-2' throws SvgNotFound exception
  - Test that DeleteImageAction with 'heroicon-o-trash-2' throws SvgNotFound exception
  - Test that 'heroicon-o-trash-2' does NOT exist in heroicons library (from Bug Condition in design)
  - Run test on UNFIXED code
  - **EXPECTED OUTCOME**: Test FAILS (this is correct - it proves the bug exists)
  - Document counterexamples found to understand root cause
  - Mark task complete when test is written, run, and failure is documented
  - _Requirements: 1.1, 1.2, 1.3_

- [ ] 2. Write preservation property tests (BEFORE implementing fix)
  - **Property 2: Preservation** - Image Management Functionality Preservation
  - **IMPORTANT**: Follow observation-first methodology
  - Observe behavior on UNFIXED code for image operations that don't involve icon rendering
  - Observe image upload functionality works correctly on unfixed code
  - Observe image deletion logic (file operations) works correctly on unfixed code
  - Observe form validation and submission processes work correctly on unfixed code
  - Write property-based tests capturing observed behavior patterns from Preservation Requirements
  - Property-based testing generates many test cases for stronger guarantees
  - Run tests on UNFIXED code
  - **EXPECTED OUTCOME**: Tests PASS (this confirms baseline behavior to preserve)
  - Mark task complete when tests are written, run, and passing on unfixed code
  - _Requirements: 3.1, 3.2, 3.3_

- [ ] 3. Fix Heroicon naming errors

  - [ ] 3.1 Update SliderResource.php icon reference
    - Navigate to app/Filament/Admin/Resources/SliderResource.php
    - Locate line 99 in the table() method where deleteImage action is defined
    - Change 'heroicon-o-trash-2' to 'heroicon-o-trash'
    - Verify the icon name matches Heroicon v2 specification
    - Preserve all other action properties unchanged
    - _Bug_Condition: isBugCondition(input) where input.iconName = 'heroicon-o-trash-2'_
    - _Expected_Behavior: Icons render correctly without SvgNotFound exceptions_
    - _Preservation: Image upload/deletion functionality remains unchanged_
    - _Requirements: 1.1, 1.2, 2.1, 2.2_

  - [ ] 3.2 Update DeleteImageAction.php icon reference
    - Navigate to app/Filament/Admin/Actions/DeleteImageAction.php
    - Locate line 26 in the make() static method where Action icon is configured
    - Change 'heroicon-o-trash-2' to 'heroicon-o-trash'
    - Verify the icon name matches Heroicon v2 specification
    - Preserve all other action configuration parameters unchanged
    - _Bug_Condition: isBugCondition(input) where input.iconName = 'heroicon-o-trash-2'_
    - _Expected_Behavior: DeleteImageAction displays correct trash icon_
    - _Preservation: Image deletion logic and file operations remain unchanged_
    - _Requirements: 1.3, 2.3_

  - [ ] 3.3 Verify bug condition exploration test now passes
    - **Property 1: Expected Behavior** - Heroicon Trash Icon Renders Correctly
    - **IMPORTANT**: Re-run the SAME test from task 1 - do NOT write a new test
    - The test from task 1 encodes the expected behavior
    - When this test passes, it confirms the expected behavior is satisfied
    - Run bug condition exploration test from step 1
    - **EXPECTED OUTCOME**: Test PASSES (confirms bug is fixed)
    - Verify SliderResource table displays trash icon correctly without errors
    - Verify DeleteImageAction displays trash icon correctly without errors
    - _Requirements: 2.1, 2.2, 2.3_

  - [ ] 3.4 Verify preservation tests still pass
    - **Property 2: Preservation** - Image Management Functionality Unchanged
    - **IMPORTANT**: Re-run the SAME tests from task 2 - do NOT write new tests
    - Run preservation property tests from step 2
    - **EXPECTED OUTCOME**: Tests PASS (confirms no regressions)
    - Confirm image upload functionality still works identically
    - Confirm image deletion logic still works identically
    - Confirm form behavior remains unchanged
    - Confirm all other Heroicon usage throughout application continues working

- [ ] 4. Checkpoint - Ensure all tests pass
  - Ensure all tests pass, ask the user if questions arise.
  - Verify SliderResource admin page loads without SvgNotFound errors
  - Verify PhotoGallery edit page with DeleteImageAction displays correct icons
  - Verify all image management operations continue to work properly
  - Verify no regressions have been introduced to existing functionality