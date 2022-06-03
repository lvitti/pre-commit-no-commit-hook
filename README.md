# pre-commit-no-commit-hook
Verify if committed file has some line with comment "no-commit"


Add this to your `.pre-commit-config.yaml`

```yaml
- repo: https://github.com/lvitti/pre-commit-no-commit-hook
  rev: main
  hooks:
  - id: no-commit
```