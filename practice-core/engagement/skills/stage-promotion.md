# Stage promotion

The one ceremony of an engagement workspace. Validates the current stage against its contract and, with written approval, promotes its outputs.

1. Read "Current stage:" from the workspace CLAUDE.md and the stage contract in 02_working\<current stage>\CONTEXT.md.
2. Check every exit criterion against 01_inputs\ and the stage output\ folder. If any criterion is open, stop, report the gaps as a checklist with the single next action, and do not promote.
3. All criteria met: present the promotion summary, what gets copied where and what the next stage contract expects, then ask the human for written approval and wait for it.
4. On approval: copy the promoted artifacts into 03_deliverables\, update "Current stage:" in CLAUDE.md, and list the work items the new stage expects.

Reminders that live in the contracts, repeated here because they are missed most:
- Discovery & Plan cannot exit without the completed PRD (security requirements and licensing constraints filled), the proposed solution diagram, and, when the PRD component inventory includes an agent, the harness decision with a non-empty "Approved by:" line.
- A designed-to-fail test case that passes is a defect, not a success.
