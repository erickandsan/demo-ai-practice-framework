## 1.6.1, 2026-08-26

Deploy fix: the deploy operation now copies VERSION.txt and CHANGELOG.md into the engagement's _practice folder. The workspace CLAUDE.md asks for the practice version to be mentioned at session start, and the file it points at did not exist in deployed copies.

## 1.6.0, 2026-08-26

Slash commands removed, the workspace ships skills instead. The stage-promotion skill lands in the workspace .claude\skills\ as a thin pointer whose instructions live in practice-core\engagement\skills\, so skill behavior updates with every deploy. Workspace CLAUDE.md and the practice-core MAP updated accordingly. The skills, plugins, and MCP registry from 1.5.0 stays.

## 1.5.0, 2026-08-26

Tooling machinery ported from the master practice, sanitized. practice-core gains skills_and_plugins_registry.md (deployment skill, Copilot Studio plugin, Chrome extension, Microsoft Learn MCP server, each with its boundary) and engagement\commands\ holding the workspace slash commands. workspace-template ships .claude\commands\ with /stage (read-only gap report) and /promote (the promotion ceremony). Workspace CLAUDE.md now asks for the practice version to be mentioned at session start and points at the registry. Hooks intentionally not ported to the showcase.

## 1.4.0, 2026-08-26

The harness decision moves into Discovery & Plan. When the PRD component inventory includes an agent, running the Copilot Studio agent type pattern and getting its decision approved in writing is now an exit requirement of Discovery & Plan, not a Build entry step. Rationale: no transfer path exists between harnesses, so the platform choice is a planning decision. Build's entry condition now simply verifies the approved decision exists in 03_deliverables\decisions\. Methodology, stage contracts, pattern header, patterns MAP, and workspace CLAUDE.md updated.

## 1.3.0, 2026-08-26

Naming split resolves the overloaded CONTEXT name from the ICM paper: MAP.md now answers "where do I go" (the routing indexes in practice-core, accelerators\patterns, and accelerators\templates), CONTEXT.md keeps answering "what do I do" (the stage contracts in 02_working and the drop zone and deliverables conventions). Workspace CLAUDE.md routing updated to state the convention and point at the MAP files.

## 1.2.0, 2026-08-26

Lifecycle restructured to 4 stages: Discovery & Plan, Build, Test, Deploy. Workspace template rebuilt around them: 01_inputs drop zone, 02_working with one contract folder per stage, 03_deliverables as the promoted source of truth, Promote operation with gap checks and written gates. PRD template gains component inventory, security requirements, and licensing constraints sections, the latter two required to exit Discovery & Plan. Proposed solution simple diagram template added. Harness pattern now triggers at the Build gate whenever the PRD component inventory includes an agent.

## 1.1.0, 2026-08-26

Adaptation policy updated to match the current practice: engagements may adapt their _practice copy, every change is registered in the workspace KNOWN_ISSUES.md at the moment of change, the update snapshots changes and the practice lead harvests registered entries into the practice. KNOWN_ISSUES.md template added to workspace-template. Hub CLAUDE.md, README, and workspace-template CLAUDE.md updated accordingly.

## 1.0.0, 2026-08-21

Initial showcase edition for the Vancouver Microsoft 365 Summit 2026.
