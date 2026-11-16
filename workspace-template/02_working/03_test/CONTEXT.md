# Stage contract, 03 Test

Purpose: prove the build against the PRD test set.

Inputs: the promoted PRD's test set, the built components.

Outputs, written to output\ in this folder:
- Test run records, one row per test document per run, expected versus actual.
- Defects with root cause, and each fix deployed through the deployment skill (backup-before-patch), then the full set re-run.

Exit criteria:
1. Full test set executed, including every designed-to-fail document.
2. Designed-to-fail documents fail for the right reasons. A pass on one of these is a defect, not a success.
3. All defects fixed and re-verified, fix backups noted.

Gate: human approval in writing, then promote to 04_deploy.
