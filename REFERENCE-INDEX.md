# DMIT 2018 - Reference Document Index

**Purpose:** Quick reference index to minimize token usage when accessing documentation

**Last Updated:** March 14, 2026 (v1.2)

---

## How to Use This Index

1. **Start Here First** — Check this index before reading full documents
2. **Use Grep for Keywords** — Search for specific terms across documents
3. **Read Targeted Sections** — Use offset/limit to read only needed sections

---

## Project Management Documents

| Document | Size | Purpose | When to Reference |
|----------|------|---------|-------------------|
| **CLAUDE.md (v1.0)** | ~60 lines | Navigation hub, essential rules, project overview | First time setup, session start |
| **SESSION-NOTES.md** | ~60 lines | Project status, next steps, session log | **START OF EVERY SESSION** |
| **BACKLOG.md** | ~50 lines | Ideas and reminders with trigger tags | When starting new work |
| **REFERENCE-INDEX.md** | This file | Token-optimized document index | Quick lookups |
| **RESOURCES.md** | ~50 lines | Quick resource navigation | When looking for files |

---

## Subsystem Documents

### Purchasing (`EBike-Jan2026/Purchase Order/`)

| Document | Format | Purpose |
|----------|--------|---------|
| **Purchasing Module Requirements.html** | HTML | Functional requirements for purchase orders |
| **Purchasing Module - Functional Mockup.html** | HTML | UI mockup screens and workflows |
| **Whats-a-Purchase-Order.pdf/.pptx** | PDF/PPTX | Student presentation — purchase order concepts |
| **purchasing_erd.png** | Image | Entity-relationship diagram for purchasing tables |

### Purchasing Process Diagrams (`EBike-Jan2026/Purchase Order/Process-Diagrams/`)

| Document | Format | Purpose |
|----------|--------|---------|
| **purchasing-viewmodel-workflow.png** | PNG | Instructor ref — view model structure with vendor selection + PO workspace |
| **purchasing-viewmodel-workflow-student.png** | PNG | Student version — conceptual layout with guiding questions |
| **purchasing-dataflow.png** | PNG | Instructor ref — 5-phase data flow (vendors, select, save, place, delete) |
| **purchasing-dataflow-student.png** | PNG | Student version — data flow with questions |

### Receiving (`EBike-Jan2026/Receiving/`)

| Document | Format | Purpose |
|----------|--------|---------|
| **Receiving Module Requirements.html** | HTML | Functional requirements for goods receipt |
| **Receiving Module - Functional Mockup.html** | HTML | UI mockup screens and workflows |
| **What-Happens-When-the-Boxes-Arrive.pdf/.pptx** | PDF/PPTX | Student presentation — receiving concepts |
| **receiving_erd.png** | Image | Primary ERD for receiving tables |
| **ReceivingAlternate_ERD.png** | Image | Alternate ERD design |

### Receiving Process Diagrams (`EBike-Jan2026/Receiving/Process-Diagrams/`)

| Document | Format | Purpose |
|----------|--------|---------|
| **receiving-viewmodel-workflow.png** | PNG | Instructor ref — view model structure with exact properties and types |
| **receiving-viewmodel-workflow-student.png** | PNG | Student version — conceptual view model layout with guiding questions |
| **receiving-dataflow.png** | PNG | Instructor ref — full 3-phase data flow with table names and transaction steps |
| **receiving-dataflow-student.png** | PNG | Student version — data flow with questions instead of answers |
| **ReceivingAlternate_ERD.png** | Image | Alternate ERD design |

### Sales & Returns (`EBike-Jan2026/SalesReturn/`)

| Document | Format | Purpose |
|----------|--------|---------|
| **Sales & Returns Module.html** | HTML | Functional requirements for sales and returns |
| **Sales & Returns Module - Functional Mockup.html** | HTML | UI mockup screens and workflows |
| **How-Do-We-Make-a-Sale.pdf/.pptx** | PDF/PPTX | Student presentation — sales process |
| **How-Do-We-Do-a-Sales-Return.pdf/.pptx** | PDF/PPTX | Student presentation — returns process |
| **salesreturns_erd.png** | Image | ERD for sales and returns tables |

### Sales & Returns Process Diagrams (`EBike-Jan2026/SalesReturn/Process-Diagrams/`)

| Document | Format | Purpose |
|----------|--------|---------|
| **sales-returns-viewmodel-workflow.png** | PNG | Instructor ref — view models for both sales and returns workflows |
| **sales-returns-viewmodel-workflow-student.png** | PNG | Student version — conceptual layout with guiding questions |
| **sales-returns-dataflow.png** | PNG | Instructor ref — data flow for sales (search → cart → checkout) and returns |
| **sales-returns-dataflow-student.png** | PNG | Student version — data flow with questions |

### Servicing (`EBike-Jan2026/Servicing/`)

| Document | Format | Purpose |
|----------|--------|---------|
| **Service Module Requirements.html** | HTML | Functional requirements for service records |
| **Servicing Module - Functional Mockup.html** | HTML | UI mockup screens and workflows |
| **How-Do-We-Record-a-Service.pdf/.pptx** | PDF/PPTX | Student presentation — servicing concepts |
| **Servicing_ERD.png** | Image | ERD for servicing tables |

### Servicing Process Diagrams (`EBike-Jan2026/Servicing/Process-Diagrams/`)

| Document | Format | Purpose |
|----------|--------|---------|
| **servicing-viewmodel-workflow.png** | PNG | Instructor ref — view models for customer/vehicle + service job registration |
| **servicing-viewmodel-workflow-student.png** | PNG | Student version — conceptual layout with guiding questions |
| **servicing-dataflow.png** | PNG | Instructor ref — 4-phase data flow (search, vehicles, lookups, register transaction) |
| **servicing-dataflow-student.png** | PNG | Student version — data flow with questions |

---

## Marking & Assessment

| Document | Format | Purpose |
|----------|--------|---------|
| **Deliverable 1 Rubric.html** | HTML | Grading rubric for Deliverable 1 |
| **Deliverable 2 Rubric.html** | HTML | Grading rubric for Deliverable 2 |

**Location:** `EBike-Jan2026/Marking/`

---

## Database & Security

| Document | Format | Purpose |
|----------|--------|---------|
| **TableCreation.sql** | SQL | Full database schema creation script (UTF-16; UTF-8 version also available) |
| **TableCreation-UTF8.sql** | SQL | UTF-8 converted version of the schema script |
| **Tables/*.sql** | SQL | Individual table DDL files (21 tables, each with FKs) |
| **Data/*.csv** | CSV | Data dumps of all 21 tables (exported from live database) |
| **eBike_2026-Clean.bacpac** | BACPAC | Clean database backup for student setup |
| **eBike-Auth.bacpac** | BACPAC | Authentication database backup |
| **Creating AuthDB database.html** | HTML | Instructions for setting up the auth database |
| **Solution and Folder Layout.html** | HTML | Expected project structure |
| **Security for Deliverable #2.html** | HTML | Security requirements for Deliverable 2 |
| **Why don't I need an Admin role.html** | HTML | Explanation of role-based security decisions |
| **ProjectTemplate.zip** | ZIP | Starter project template for students |

**Locations:** `EBike-Jan2026/Database/`, `EBike-Jan2026/Security/`, `EBike-Jan2026/Other/`, `EBike-Jan2026/`

---

## Shared Resources

| Document | Format | Purpose |
|----------|--------|---------|
| **Example of Purchase Order and Receiving.xlsx** | Excel | Sample data for purchase order and receiving workflows |
| **image_20241009134001212.png** | Image | Reference diagram |
| **image_20241009134001496.png** | Image | Reference diagram |
