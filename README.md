# Showcase Practice

This folder holds a sanitized, generic copy of the Steeves and Associates AI Delivery Practice, structured to show how the practice is built, stored, and deployed. It contains the standards, the pattern library, the templates, and the engagement scaffold that the practice uses on every engagement, with all client detail replaced by generic content.

The practice runs on a hub and spoke model. The factory hub, this folder, holds the standards, the pattern library, the templates, and the engagement scaffold in one place, kept current by the practice team. Each customer engagement is a spoke, a separate workspace that receives a deployed copy of the practice in a `_practice` subfolder. When the practice updates, every spoke is updated centrally from the hub. Engagements may adapt their `_practice` copy when the practice does not fit, and every adaptation is registered in the workspace KNOWN_ISSUES.md, so the update can snapshot the changes and the practice lead can harvest the improvements back into the practice.

This is the showcase edition built for the Vancouver Microsoft 365 Summit 2026 session. It demonstrates the architecture of the Steeves AI Delivery Practice with generic content. For how to run the Deploy and Release operations, see CLAUDE.md in this folder.
