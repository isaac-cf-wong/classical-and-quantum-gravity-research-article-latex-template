# Contributing to classical-and-quantum-gravity-research-article-latex-template

🎉 Thank you for your interest in contributing to
`classical-and-quantum-gravity-research-article-latex-template`! Your ideas,
fixes, and improvements are welcome and appreciated.

Whether you are a co-author revising the manuscript, fixing a typo, reporting a
build problem, or improving the template, this guide will help you get started.

## How to Contribute

<!-- prettier-ignore-start -->

1. Open an Issue

    - Have a suggested revision, build problem, or template improvement?
    [Open an issue](https://github.com/isaac-cf-wong/classical-and-quantum-gravity-research-article-latex-template/issues/new/choose)
    and choose the matching template.
    - Check for existing issues before opening a new one.

2. Fork and Clone the Repository

    ```shell
    git clone git@github.com:<username>/classical-and-quantum-gravity-research-article-latex-template.git
    cd classical-and-quantum-gravity-research-article-latex-template
    ```

3. Set Up Your Environment

    You need a TeX distribution with `latexmk` (e.g., [TeX Live](https://tug.org/texlive/)
    or [MiKTeX](https://miktex.org/)).

    We use uv to manage the tooling environment. If you don't have uv installed, see the
    [uv docs](https://docs.astral.sh/uv/) or install it with pip:
    `pip install --upgrade pip && pip install uv`.

    ```shell
    uv sync
    ```

4. Set Up Pre-commit Hooks

    We use **prek** (a fast drop-in replacement for pre-commit) to run formatting,
    linting, spell checking, and bibliography checks. After syncing dependencies, run:

    ```shell
    uv run prek install
    ```

    The `bibsync` hook fetches reference metadata from
    [NASA ADS](https://ui.adsabs.harvard.edu/) and writes `references.bib`. It needs an
    ADS API token in the `ADS_API_TOKEN` environment variable. In CI the token is read
    from the `ADS_API_TOKEN` repository secret.

    Pull request titles are validated in GitHub Actions (see
    `.github/workflows/semantic_pull_request.yml`) using the same Conventional
    Commit vocabulary described under [Commit Message Guidelines](#commit-message-guidelines).

    !!!important
        The changelog and release notes are auto-generated from commits. Use
        Conventional Commits locally so `git-cliff` can classify changes, and match
        that style in PR titles so CI passes.

5. Create a New Branch

    Give it a meaningful name like `fix-typo-in-abstract` or `feat-add-convergence-figure`.

6. Make Changes

    - Follow the [CQG author guidelines](https://publishingsupport.iopscience.iop.org/journals/classical-and-quantum-gravity/).
    - Put figures in `figures/` and follow `figures/README.md`.
    - Cite with ADS bibcodes (e.g., `\cite{2016PhRvL.116f1102A}`); `bibsync` fills in
      `references.bib`.
    - Keep one sentence per line in `main.tex` where practical, so diffs stay readable.
    - Keep scripts that produce numbers or figures in `scripts/`, so every result can be
      reproduced.
    - **Keep changes atomic and focused**: one type of change per commit
      (e.g., do not mix rewording with a new result).

7. Build and Check

    Ensure the manuscript compiles without errors or undefined references, and that the
    hooks pass, before opening a pull request:

    ```shell
    make
    uv run prek run --all-files
    ```

    Read the changed pages in `main.pdf`. To check the flat file set used for the
    journal upload, run `make submission`.

8. Open a Pull Request

    Clearly describe the motivation and scope of your change, and fill in the pull
    request template. Link it to the relevant issue if applicable. The pull request
    titles should match the [Conventional Commits spec](https://www.conventionalcommits.org/).

<!-- prettier-ignore-end -->

## Commit Message Guidelines

**Why this matters:** Our changelog and the release notes archived on Zenodo are
automatically generated from commit messages using git-cliff. Commit messages
must follow the Conventional Commits format and adhere to strict rules.

### Rules

<!-- prettier-ignore-start -->

1. **One type of change per commit**

    - Do not mix different types of changes (e.g., new content, fixes, restructuring) in a single commit.
    - Example: if you restructure a section AND add a new result, make two separate commits.

2. **Descriptive and meaningful messages**

    - Describe _what_ changed and _why_, not just _what_ was edited.
    - Avoid vague messages like "fix typo" or "update paper";
      instead use "fix(abstract): remove undefined acronym" or "feat(results): add mismatch figure for precessing binaries".

3. **Follow Conventional Commits format**

    - All commit messages must follow the [Conventional Commits](https://www.conventionalcommits.org/) standard.
    - Format: `<type>(<scope>): <subject>`
    - Use the section, figure, or file as the scope (e.g., `intro`, `methods`, `fig2`, `bib`).
    - Allowed types:
        - build: Changes to the build (e.g., `Makefile`, class file, `latexmk`)
        - chore: Maintenance (e.g., dependency updates)
        - ci: Changes to our CI configuration files and scripts
        - docs: Changes to the repository documentation (e.g., README), not the manuscript
        - feat: New manuscript content (e.g., a section, figure, table, or result)
        - fix: A correction (e.g., typo, wrong equation, broken reference, compilation error)
        - perf: Faster builds or scripts
        - refactor: Restructuring or rewording that does not change the content
        - revert: Reverting an earlier commit
        - style: Formatting only (e.g., whitespace, `latexindent`)
        - test: Adding or correcting checks
    - Example:

        ```text
        feat(results): add mismatch figure for precessing binaries

        Adds figure 3 comparing the surrogate against numerical relativity,
        produced by scripts/plot_mismatch.py.
        ```

    - PR titles are checked automatically in the **Lint PR** workflow.

<!-- prettier-ignore-end -->

### Examples

✅ **Good commits:**

```text
feat(methods): derive the effective stress-energy tensor
fix(eq4): correct sign of the cosmological constant term
refactor(intro): shorten the literature overview
fix(bib): replace arXiv entry with published version
```

❌ **Bad commits:**

```text
fixed stuff
wip: many changes
update paper
more edits (no type/scope)
```

## 💡 Tips

- Be kind and constructive in your communication, and follow our
  [Code of Conduct](CODE_OF_CONDUCT.md).
- Keep PRs focused and atomic—smaller changes are easier to review.
- Tag your PR with relevant labels if you can.

## Licensing

By contributing, you agree that your contributions will be licensed under the
project’s 3-Clause BSD License.

---

Thanks again for being part of the
`classical-and-quantum-gravity-research-article-latex-template` community!

---
