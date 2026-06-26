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
        a[Intro · the question of detection]:::done
        b[1b · Threshold theories]:::done
        c[1c · A noisy continuum]:::done
        d[1d · The criterion]:::done
        e[1e · Sensitivity]:::done
        f[1f · Forced-choice]:::done
        g[1g · Rating-response]:::done
        h[1h · Second choice task]:::done
        i[1i · Equal variance]:::done
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

    a --> b --> c --> d --> e --> f --> g --> h --> i
    c -. noise --> p1
    g --> p2
    p2 --> s1
    e -. evidence accumulation .-> dm1
    d -. priors & bias .-> dm2

    click a "/modules/sdt-intro" "Open the Signal Detection Theory introduction"
    click b "/modules/sdt-threshold-theories" "Open module 1b"
    click c "/modules/sdt-noisy-continuum" "Open module 1c"
    click d "/modules/sdt-criterion" "Open module 1d"
    click e "/modules/sdt-sensitivity" "Open module 1e"
    click f "/modules/sdt-forced-choice" "Open module 1f"
    click g "/modules/sdt-rating-response" "Open module 1g"
    click h "/modules/sdt-second-choice" "Open module 1h"
    click i "/modules/sdt-equal-variance" "Open module 1i"
```

:::{note}
This map is hand-drawn for the proof-of-concept. As modules are added, it can be
generated automatically from the links between pages.
:::
