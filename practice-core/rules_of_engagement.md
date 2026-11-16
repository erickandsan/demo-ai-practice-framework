# Rules of Engagement

## 1. Outputs stay in the engagement folder, never in the factory

Every deliverable a build produces belongs in the customer's engagement workspace, not in this practice folder. The factory holds standards, patterns, and templates only, and it never accumulates customer files, drafts, or working data from a live engagement.

## 2. Every flow deployment goes through the deployment skill, which backs up the current definition first

No flow is published or updated by hand. The deployment skill captures a backup of the existing definition before it writes any change, so a failed or unwanted deployment can always be rolled back to a known good state.

## 3. Every agent build starts from an approved PRD. No PRD, no build.

A product requirements document is the starting point of any agent work, and it must be reviewed and approved before a single component is built. Work that starts without an approved PRD is stopped and sent back for one.

## 4. Pattern checkpoints are human gates. The agent recommends, the human approves in writing before execution.

At each pattern checkpoint the agent presents its recommendation, and a human reviewer records written approval before the agent proceeds. The agent never treats its own recommendation as sufficient authorization to continue.

## 5. Test sets must include at least one document designed to fail. A suite that cannot fail proves nothing.

Every validation suite includes at least one input built to expose a known failure mode, alongside the inputs expected to pass. A test set where every case is expected to pass demonstrates nothing about the system's ability to detect and handle real problems.
