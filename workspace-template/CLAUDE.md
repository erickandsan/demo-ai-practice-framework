# Engagement Workspace

This folder is an engagement workspace for a client of Steeves and Associates. It is scaffolded once from the practice hub's workspace-template, then it grows with the engagement. The folder structure is the agent architecture: read the folders, follow their contracts.

- Client: <ClientName>
- Engagement: <EngagementName>
- Current stage: 01_discovery_plan

## Routing

- MAP.md files answer where do I go, CONTEXT.md files answer what do I do.
- For standards, rules of engagement, and delivery methodology, read _practice\practice-core\MAP.md first, then open only the file it points to.
- For patterns and pattern checkpoints, read _practice\accelerators\patterns\MAP.md first, then open only the file it points to.
- For templates, read _practice\accelerators\templates\MAP.md.
- For the current stage's contract, read 02_working\<current stage>\CONTEXT.md.

## Folder layout

- 01_inputs\        Customer evidence. PRD drafts, discovery transcripts, examples. Drop zone, never edited.
- 02_working\       One folder per stage, drafts in each stage's output\ subfolder.
- 03_deliverables\  Promoted source of truth. Only the Promote operation writes here.
- KNOWN_ISSUES.md   Register of every adaptation of the deployed practice copy.

At the start of a working session, read _practice\VERSION.txt and mention the practice version in the first reply. The tooling the practice relies on (deployment skill, plugins, MCP servers) is listed in _practice\practice-core\skills_and_plugins_registry.md.

## Operations

The stage-promotion skill in .claude\skills\ runs the promotion, its instructions live in _practice\practice-core\engagement\skills\.

### What is missing to move to the next stage
Read the current stage's CONTEXT.md contract, compare its exit criteria against what exists in 01_inputs\ and the stage output\ folder, and report the gaps as a short checklist. Do not fix anything unless asked.

### Promote to <stage>
1. Run the gap check above. If any exit criterion is open, stop and report, do not promote.
2. Ask the human for written approval and wait for it.
3. Copy the promoted artifacts into 03_deliverables\, update "Current stage:" in this file, and list the work items the new stage contract expects.
4. The harness decision belongs to Discovery & Plan: if the PRD component inventory includes an agent, the Copilot Studio agent type pattern runs during that stage and its approved decision is an exit requirement, promoted to 03_deliverables\decisions\harness-decision.md. Build steps are blocked until its "Approved by:" line is non-empty.

## Hard rules

- _practice may be adapted for this engagement when the practice does not fit, on one condition: every change gets an entry in KNOWN_ISSUES.md at the moment of change, naming the file, what changed, and why. The next practice update detects changes, snapshots them so nothing is lost, and the practice lead reviews the entries and adopts what belongs in the practice. Undocumented changes surface as unexplained drift.
- Every build starts from a promoted PRD and, when an agent is involved, an approved harness decision.
- Every flow deployment and patch goes through the deployment skill, which snapshots a backup first.
