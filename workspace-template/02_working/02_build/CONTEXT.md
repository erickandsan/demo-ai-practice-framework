# Stage contract, 02 Build

Purpose: implement exactly what the promoted PRD describes, nothing more.

Entry condition: promoted PRD in 03_deliverables\prd\. When the PRD component inventory includes an agent, the approved harness decision from Discovery & Plan must sit in 03_deliverables\decisions\harness-decision.md with a non-empty "Approved by:" line. The decision was made during planning, Build only follows it.

Outputs, written to output\ in this folder:
- Build design notes per component (flow design, agent design).
- Environment record (tenant, site, library, solution, connection references, component ids).
- The components themselves in the target tenant, every flow deployment through the deployment skill so a backup snapshot exists before each change.

Exit criteria:
1. Every component in the PRD inventory built and recorded in the environment record.
2. Every deployment has a backup snapshot id noted in the design notes.
3. Agent responses are plain answer text, no reasoning shown to users.

Gate: human approval in writing, then promote to 03_test.
