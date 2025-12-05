---
title: Instructions
---

This workshop is a sample that shows how to configure and run the
[vCluster](https://www.vcluster.com/docs/vcluster/) CLI.

To add the vCluster CLI Extension Package to a workshop,
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
              url: $(image_repository)/vcluster:v0.30.2
```

Once the vCluster CLI extension pack is configured in your workshop manifest,
it will be injected and staged into your workshop session during its start up,
placed in the PATH, and with auto-completion enabled.

To verify the CLI functions correctly,

```execute
vcluster version
```

For bonus points,
try out autocomplete by typing the partial `vcluster` command and `--version` flag.

Congratulations,
you now can use the vCluster CLI in your Educates workshops!