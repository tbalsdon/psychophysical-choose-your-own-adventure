---
title: Module map
---

# Module map

Here is how the tutorials connect. Solid arrows are the suggested "default path";
the web of links between modules lets you explore in whatever order suits you.

Modules in **colour** are finished; greyed-out modules are planned.

```{mermaid}
flowchart TD
    classDef done fill:#d1495b,stroke:#7a2230,color:#fff;
    classDef todo fill:#eee,stroke:#bbb,color:#888;

    subgraph SDT [1 · Signal Detection Theory]
        b[1b · Threshold theories]:::todo
        c[1c · A noisy continuum]:::done
        d[1d · The criterion]:::todo
        e[1e · Sensitivity]:::todo
    end

    subgraph PSY [2 · Psychometrics]
        p1[2b · Psychometric function]:::todo
        p2[2d · Slope, threshold, bias]:::todo
    end

    subgraph SCALE [3 · Scales & appearance]
        s1[3a · The JND]:::todo
    end

    subgraph DM [Decision models]
        dm1[Diffusion models]:::todo
        dm2[Bayesian inference]:::todo
    end

    b --> c --> d --> e
    c -. noise --> p1
    e --> p2
    p2 --> s1
    e -. evidence accumulation .-> dm1
    d -. priors & bias .-> dm2

    click c "/modules/sdt-noisy-continuum" "Open module 1c"
```

:::{note}
This map is hand-drawn for the proof-of-concept. As modules are added, it can be
generated automatically from the links between pages.
:::
