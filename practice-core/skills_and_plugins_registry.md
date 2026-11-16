# Skills and Plugins Registry

The tooling on the assembly line. One entry per tool: what it is, when the practice reaches for it, and its boundary. Consultants install these once per machine, the practice assumes they are present.

## Deployment skill, Power Automate (flowagent plugin)

- What: creates, updates, runs, and restores cloud flows through the management APIs, and snapshots a backup before every mutation.
- When: every flow deployment and every patch, no exceptions. The backup-before-change behavior is a practice rule made mechanical.
- Boundary: it deploys what a promoted PRD describes. It never invents flow logic that is not in the build design notes.

## Copilot Studio plugin

- What: authoring, validation, and testing helpers for Copilot Studio agents, topics, and agent flows.
- When: Build and Test stages of any engagement whose PRD component inventory includes an agent.
- Boundary: agent instructions and topics follow the promoted PRD and the harness decision, the plugin does not choose the harness.

## Chrome browser extension

- What: drives the maker portals when an operation has no API surface, portal-only settings, visual verification, test chats.
- When: last resort after the API path, and for on-screen verification during Test.
- Boundary: read the target before changing it, screenshot evidence into the stage output folder.

## Microsoft Learn MCP server

- What: searches and fetches official Microsoft documentation.
- When: any claim about platform behavior, licensing, or limits that ends up in a PRD, pattern, or decision file. Facts get verified, not remembered.
- Boundary: patterns cite their verification date, stale facts are practice defects, register them in KNOWN_ISSUES.

## Practice rule

A tool that mutates a client environment must leave a trail: a backup id, a run id, or a screenshot in the stage output. If a needed tool is missing from this registry, that is a practice gap, register it in KNOWN_ISSUES.md.
