# Commit Message Instructions

## Format

Follow the conventional commit format:

```
<type>(<scope>): <subject>

<body>

<footer>
```

## Type

Must be one of the following:

- **feat**: A new feature
- **fix**: A bug fix
- **docs**: Documentation only changes
- **style**: Changes that do not affect code meaning (formatting, missing semicolons, etc.)
- **refactor**: A code change that neither fixes a bug nor adds a feature
- **perf**: A code change that improves performance
- **test**: Adding missing tests or correcting existing tests
- **chore**: Changes to build process, dependencies, or tooling

## Subject

- Use the imperative, present tense: "add" not "added" or "adds"
- Do not capitalize the first letter
- Do not use a period (.) at the end
- Limit to 50 characters
- Be specific and clear about what the commit does

## Body

- Wrap at 72 characters
- Use imperative, present tense
- Explain what and why, not how
- Separate from subject with a blank line
- Optional but recommended for non-trivial changes

## Footer

- Use for breaking changes or issue references
- Breaking changes: start with `BREAKING CHANGE:`
- Close issues: `Closes #123` or `Fixes #123`
- Optional

## Examples

### Good Examples

```
feat(auth): add JWT token refresh mechanism

Implement automatic token refresh before expiration to improve
user session management and reduce authentication failures.

Closes #456
```

```
fix(api): handle null response in user endpoint

Add validation to prevent null pointer exceptions when the API
returns empty user data.
```

```
docs: update installation guide
```

```
refactor(database): simplify connection pooling logic
```

### Bad Examples

```
Updated stuff
Fixed bug
WIP
changes
```

## Tips

- Make atomic commits (one logical change per commit)
- Commit early and often
- Review your changes before committing
- Write clear, descriptive messages that help future developers understand the context
