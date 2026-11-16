# Stage contract, 01 Discovery & Plan

Purpose: turn the evidence in 01_inputs\ into an approved, buildable plan.

Inputs: 01_inputs\ (PRD draft, discovery transcripts, samples).

Outputs, written to output\ in this folder:
- The completed PRD, every template section filled. The component inventory, security requirements, and licensing constraints sections are the most commonly missed, check them explicitly.
- A proposed solution diagram built from `_practice\accelerators\templates\diagram_templates\proposed_solution_simple.html`.
- When the PRD component inventory includes an agent: the harness decision, produced by running `_practice\accelerators\patterns\copilot-studio-agent-type.md` against the PRD. The harness choice is a planning decision, there is no transfer path between harnesses.
- Open questions with owners.

Exit criteria (the Promote operation checks these):
1. PRD complete on the practice template, no empty sections.
2. Proposed solution diagram present in output\.
3. When the PRD includes an agent: harness decision written with a non-empty "Approved by:" line.
4. Transcripts processed, requirements traced to evidence.
5. Test set defined with at least one designed-to-fail document.

Gate: human approval in writing. Promotion copies the PRD to 03_deliverables\prd\, the diagram to 03_deliverables\diagrams\, and the harness decision to 03_deliverables\decisions\, then sets the stage marker to 02_build.
