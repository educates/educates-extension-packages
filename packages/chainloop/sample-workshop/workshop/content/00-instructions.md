---
title: Instructions
---

This workshop is a sample that shows how to configure and run the
[Chainloop](https://chainloop.dev) CLI.

To add the Chainloop CLI Extension Package to a workshop,
merely add the following excerpt to the workshop manifest file,
or `workshop.yaml` file:

```yaml
spec:
  ...
  workshop:
    ...
    packages:
      - name: github
        files:
          - path: .
            image:
              url: $(image_repository)/chainloop:v1.89.8
```

Once the chainloop CLI extension pack is configured in your workshop manifest,
it will be injected and staged into your workshop session during its start up,
placed in the PATH, and with auto-completion enabled.

To verify the CLI functions correctly,

```execute
chainloop version
```

For bonus points,
try out autocomplete by typing the partial `chainloop` command and `--version` flag.

Congratulations,
you now can use the chainloop CLI in your Educates workshops!