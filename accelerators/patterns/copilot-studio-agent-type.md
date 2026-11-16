# Copilot Studio Agent Type, Decision Pattern

This is a Discovery & Plan pattern, and its approved decision is an exit requirement of that stage whenever the PRD component inventory includes an agent. The harness choice is a planning decision because no transfer path exists between harnesses. The agent recommends, the human approves in writing, and no build work ever starts on the strength of the agent's own recommendation.

Facts below were verified against Microsoft Learn on 2026-08-07. The GitHub Copilot harness reached general availability on 2026-08-03. Use these facts as given, do not add facts from outside this pattern.

## Comparison table

| | GitHub Copilot harness | Standard harness | Copilot chat harness |
|---|---|---|---|
| Best for | Complex, multi-step, autonomous business processes | Rule-based agents, structured conversations, predictable behavior | Extending M365 Copilot Chat with enterprise knowledge |
| How it works | Takes a goal, decomposes it into steps, retries and reroutes on failure | Follows the topics, rules, and paths you define | Grounds M365 Copilot Chat in your content |
| Billing start | Copilot Credits from build time. Authoring, Preview testing, and Evaluations all consume credits | Classic licensing plus credit meters. Billing starts after publish. Test chat and designer runs are free | Consumption, or included in an M365 Copilot license |
| Publishing | Internal or external | Internal or external | Internal only |
| ALM tooling | No .mcs.yml lifecycle | .mcs.yml YAML lifecycle, a VS Code extension, and solution-based ALM, all targeting the standard harness | Declarative knowledge config only |

## Decision rules

- Long-horizon, autonomous, multi-step processes with ambiguous decision points favour the GitHub Copilot harness.
- Rule-based validation, deterministic behavior, a requirement to behave identically on identical input, structured conversation, a solution ALM requirement, or a requirement for predictable run cost after publish, since standard harness billing starts only after publish while the GitHub Copilot harness consumes credits from build time, all favour the standard harness.
- Knowledge-only extension of M365 Copilot Chat favours the chat harness.
- No transfer path exists between harnesses, in either direction. A wrong choice is a rebuild, not a migration. Decide the harness first, before any build work starts.

## Output contract

The recommendation is drafted in the Discovery & Plan stage output and promoted to `03_deliverables\decisions\harness-decision.md`. That file contains the recommendation, the reasons mapped one to one against the PRD requirements, and an "Approved by:" line left empty for the human. Discovery & Plan cannot exit, and build steps cannot start, until "Approved by:" is non-empty.
