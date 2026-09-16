# README

This repo is a file store and version control for a manuscript on the bias within total opioid burden metrics. 

> ## Submission status
>
> This paper is currently being drafted and has not been submitted

## How to run

1. Clone the repo
2. Install key packages
3. Render with one of the two Quarto profiles:

| Command | Output |
|---|---|
| `quarto render` | Full book (website profile, the default): HTML with hyperlinked cross-references, plus PDF and DOCX downloads, in `_book/` |
| `quarto render --profile submission` | `supplement.docx`, `manuscript.docx` and `cover-letter.docx` in `_submission/submission/` |

### How it is set up

- `_quarto.yml` holds shared settings only. Do not add lists (`chapters`, `render`, `filters`) here: profile lists are appended, not replaced.
- `_quarto-website.yml` holds the book configuration and a copy of the author block.
- `_quarto-submission.yml` renders the wrappers in `submission/`. Each wrapper uses `{{< include >}}`, so chapter files must not have their own YAML front matter.
- The supplement renders first because it writes `data/shared_objects_*.rds`, which `communication.qmd` reads.
- Authors for the Word documents live in `_authors.yml`. Keep it in sync with `_quarto-website.yml`.
- Chunk labels and top-level R object names must be unique across the files included in one wrapper.

### Cross-references in the Word documents

References that point to the other document are replaced with fixed text by `xref-hardcode.lua`. The text is set under `xref-hardcode:` in `submission/manuscript.qmd` and `submission/supplement.qmd`. If supplement sections or equations are added or reordered, update those numbers and check them against `supplement.docx`.

### Word styling

`submission/reference.docx` is the Word template. It defines an `Address` style, right-aligned, which the cover letter's address block uses. Add journal formatting (fonts, spacing) to this file.

### Bibliography

`bibliography` points at an absolute OneDrive path, so it only works on this machine. A Better BibTeX auto-export into the project folder would make the project portable.
