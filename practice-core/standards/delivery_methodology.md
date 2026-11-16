# Delivery Methodology

The practice runs every engagement through a 4 stage lifecycle. The lifecycle is the same for a 2 week agent prototype and a 6 month program, only the artifact depth changes. Each stage has a contract in `workspace-template\02_working\<stage>\CONTEXT.md` naming its inputs, outputs, exit criteria, and gate. Work happens in `02_working\<stage>\output\` drafts, and only the Promote operation moves results into `03_deliverables\`.

## The 4 stages

1. Discovery & Plan (`01_discovery_plan`)
2. Build (`02_build`)
3. Test (`03_test`)
4. Deploy (`04_deploy`)

## Stage 1, Discovery & Plan

Purpose: turn customer evidence into an approved, buildable plan.

Inputs: everything in `01_inputs\`, at minimum a PRD draft on the practice template and the discovery session transcripts.

Outputs in `02_working\01_discovery_plan\output\`:
- The completed PRD, every template section filled, including the component inventory, security requirements, and licensing constraints.
- A proposed solution diagram, built from `_practice\accelerators\templates\diagram_templates\proposed_solution_simple.html`.
- When the PRD component inventory includes an agent: the harness decision, produced by the Copilot Studio agent type pattern (`_practice\accelerators\patterns\copilot-studio-agent-type.md`). The harness choice is a planning decision, there is no transfer path between harnesses, so it is made here, not at build time.
- Open questions with owners.

Exit criteria, all of them, before the gate:
- PRD complete on the practice template with no empty sections. Security requirements and licensing constraints are the two most commonly missed, check them explicitly.
- Proposed solution diagram present in the output folder.
- When the PRD includes an agent: harness decision written with a non-empty "Approved by:" line.
- Discovery transcripts processed, requirements traced back to evidence.
- Test set defined with at least one designed-to-fail document.

Gate: the human approves promotion in writing. Promotion copies the PRD, the diagram, and the harness decision into `03_deliverables\` and sets the workspace stage marker to `02_build`.

## Stage 2, Build

Purpose: implement exactly what the promoted PRD describes.

Entry condition: the promoted PRD, and, when it includes an agent, the approved harness decision from Discovery & Plan in `03_deliverables\decisions\harness-decision.md`. No approved decision, no build.

Outputs in `02_working\02_build\output\`: build design notes, environment records, and the actual components in the target tenant, deployed through the deployment skill so every change has a backup snapshot.

Exit criteria: every PRD component built and recorded, every deployment backed up, build design notes current.

Gate: human approves promotion to Test.

## Stage 3, Test

Purpose: prove the build against the PRD test set.

Outputs in `02_working\03_test\output\`: test run records, one row per test document per run, defects and their fixes, each fix deployed through the deployment skill with backup-before-patch.

Exit criteria: the full test set passes, including the designed-to-fail documents failing for the right reasons. A suite that cannot fail proves nothing.

Gate: human approves promotion to Deploy.

## Stage 4, Deploy

Purpose: hand over a running solution.

Outputs in `02_working\04_deploy\output\`: deployment record, environment configuration, handover notes, and the operations contacts.

Exit criteria: solution live in the target environment, handover accepted by the client.

Gate: engagement close, human sign off.

## Promotion

The Promote operation is the only way work leaves `02_working`. It checks the stage exit criteria, reports gaps instead of promoting when any are open, requires the human approval, copies the promoted artifacts into `03_deliverables\`, updates the stage marker in the workspace CLAUDE.md, and then lists the work items the new stage contract expects.
