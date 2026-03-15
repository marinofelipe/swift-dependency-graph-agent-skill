---
name: swift-dependency-graph-agent-skill
description: Design, review, and refactor Swift module dependency graphs for scalability, clean boundaries, and build performance. Use when Codex is asked to modularize a Swift codebase, analyze cycles, define module layering, propose target structures, or plan dependency-graph migrations.
---

# Swift Dependency Graph Agent Skill

## Overview

Provide an actionable dependency-graph design and migration plan for Swift projects. Focus on module boundaries, layering, cycles, and build-time impact while keeping changes incremental and testable.

## Workflow

1. Clarify scope and constraints.
Identify app targets, frameworks, build system, current pain points, and non-negotiable boundaries (e.g., platform targets, API stability, ownership).

2. Map the current dependency graph.
Summarize existing modules/targets, key dependency edges, and any cycles. Call out high-fan-in and high-fan-out nodes.

3. Propose the target architecture.
Define layers (e.g., App/UI, Features, Domain, Data, Platform) and allowed edges. Highlight boundaries, shared modules, and stable interfaces.

4. Identify refactors and migrations.
List concrete steps to break cycles, introduce interfaces, split modules, or extract shared code. Sequence steps to keep builds and tests green.

5. Validate and iterate.
Define measurable outcomes: reduced build time, fewer cycles, clearer ownership, and improved testability. Suggest checks and guardrails.

## Design Heuristics

- Prefer acyclic layering; if cycles exist, break via protocols or dependency inversion.
- Limit fan-out from high-level modules; move shared code downward.
- Use small, stable interfaces for shared dependencies; avoid leaking concrete implementations.
- Avoid “God modules” by splitting by responsibility or feature.
- Keep migration incremental; favor additive modules before deleting legacy paths.

## Outputs to Provide

- A concise current-state graph summary (modules + key edges + cycles).
- A target-state layering diagram (textual is fine).
- A step-by-step migration plan with risks and rollbacks.
- Optional: sample module map or dependency rules to enforce boundaries.

## Resources (optional)

Use these directories for reusable materials as the skill evolves. Remove any directories that remain unused.

### scripts/
Place automation for parsing build graphs, extracting module metadata, or generating reports.

### references/
Store project-specific architecture rules, module policies, or tooling docs that Codex should reference.

### assets/
Include templates for architecture docs, diagrams, or reports.
