# AI Delivery Practice, Showcase Edition

This folder is the FACTORY. It contains the practice standards, the pattern
library, the templates, and the engagement scaffold. It contains no customer data.
Customer engagements live in each customer's own workspace and receive a copy of
the practice via the Deploy operation.

## Structure

- practice-core\        Deployable. Standards and rules of engagement.
- accelerators\         Deployable. Pattern library and templates.
- workspace-template\   Deployable once per engagement. Engagement scaffold.
- scripts\              Deployment tooling, deploy-practice.ps1.
- registry.json         Deployment map, the only record of engagements and paths.
- VERSION.txt           Current practice version.
- CHANGELOG.md          Release notes, mandatory per release.

## Operations

### Deploy practice to <customer>
1. Look up the engagement in registry.json, or ask for customer, engagement, and target folder path.
2. Run scripts\deploy-practice.ps1 -Target <path>. First deploy also scaffolds from workspace-template, never overwriting existing files.
3. Update the registry entry with deployedVersion and lastUpdated.

### Release version <x.y.z>
1. Require changelog notes, refuse without them.
2. Update VERSION.txt, prepend notes to CHANGELOG.md with today's date.

## Hard rules

- Never run git anywhere under this folder or any deployment target.
- Never write customer data into this workspace.
- Deploy only ever writes the _practice subfolder of a target plus the one-time scaffold.
- Engagements may adapt their _practice copy, and every change must be registered in the workspace KNOWN_ISSUES.md at the moment of change. The update operation detects changes, snapshots them, and the practice lead harvests the registered entries into the practice before the copy is replaced.
- Every build decision with client impact passes a human review gate before execution.
