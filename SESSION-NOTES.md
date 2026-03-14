# DMIT 2018 - eBike Project Session Notes

**Purpose:** Track progress, next steps, and open questions across work sessions

**Last Updated:** March 14, 2026 (Session 3 — All subsystem process diagrams)
**Current Phase:** Student Support Document Creation

---

## Quick Status Overview

| Component | Status | Progress |
|-----------|--------|----------|
| **Project Management Files** | Complete | CLAUDE.md, SESSION-NOTES, BACKLOG, REFERENCE-INDEX, RESOURCES |
| **Student Support Documents** | In Progress | All 4 subsystems: 16 diagrams (view model + data flow, instructor + student) |
| **Marking Tools/Guides** | Not Started | Rubrics exist; marking workflow TBD |
| **Deliverable 1 Marking** | Not Started | Rubric at `EBike-Jan2026/Marking/Deliverable 1 Rubric.html` |
| **Deliverable 2 Marking** | Not Started | Rubric at `EBike-Jan2026/Marking/Deliverable 2 Rubric.html` |

### Subsystem Status

| Subsystem | Requirements | Mockup | ERD | Presentations | Support Docs |
|-----------|-------------|--------|-----|---------------|--------------|
| **Purchasing** | Yes | Yes | Yes | PDF + PPTX | 4 diagrams (view model workflow + data flow) |
| **Receiving** | Yes | Yes | Yes (2) | PDF + PPTX | 4 diagrams (view model workflow + data flow) |
| **Sales & Returns** | Yes | Yes | Yes | PDF + PPTX (x2) | 4 diagrams (view model workflow + data flow) |
| **Servicing** | Yes | Yes | Yes | PDF + PPTX | 4 diagrams (view model workflow + data flow) |

---

## Current Focus (updated Mar 14, 2026 — Session 3)

**Completed:** Process diagrams for all 4 subsystems — 16 diagrams total (4 per subsystem: view model + data flow, instructor + student versions)

**Next Steps:**
- Review all diagrams for accuracy and completeness
- Create additional student support documents based on common questions
- Prepare marking workflow for Deliverable 1 and Deliverable 2

---

## Session Log

### Session 3 — March 14, 2026
- Created process diagrams for remaining 3 subsystems (Purchasing, Sales & Returns, Servicing)
- Each subsystem: view model workflow + data flow, both instructor and student versions (12 new diagrams)
- Purchasing: vendor selection → PO workspace with suggested orders, 5-phase data flow (get vendors, select vendor with A/B path, save/update, place, delete)
- Sales & Returns: shared customer search, sales workflow (category → cart → checkout), returns workflow (invoice lookup → return entry → refund)
- Servicing: customer/vehicle selection → service job registration with service cart + parts cart + coupons + totals
- Total project diagrams: 16 (4 per subsystem × 4 subsystems)

### Session 2 — March 14, 2026
- Installed Excalidraw diagram skill (`.claude/skills/excalidraw-diagram/`) with Playwright rendering
- Connected to SQL Server from WSL2 (TCP/IP + firewall + SQL Auth) and exported all 21 table data dumps to CSV
- Created Receiving view model workflow diagram (instructor version with exact properties/types)
- Created Receiving view model workflow diagram (student version with guiding questions, no implementation details)
- Created Receiving data flow diagram (instructor version with table names, queries, transaction steps)
- Created Receiving data flow diagram (student version with conceptual flow + guiding questions)
- Moved all diagrams to `EBike-Jan2026/Receiving/Process-Diagrams/`
- Decision: maintain two versions of each diagram (instructor = full detail, student = conceptual with questions)

### Session 1 — March 14, 2026
- Set up project management structure modeled after SDEV2351-CDD
- Created: CLAUDE.md, SESSION-NOTES.md, BACKLOG.md, REFERENCE-INDEX.md, RESOURCES.md
- Set up memory system (user profile, project context)
- Inventory of existing materials complete
