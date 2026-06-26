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

    subgraph SDT [Signal Detection Theory]
        a[Intro · the question of detection]:::done
        b[Threshold theories]:::done
        d[The criterion]:::done
        e[Sensitivity]:::done
        f[Forced-choice]:::done
        g[Rating-response]:::done
        h[Second choice task]:::done
        i[Equal variance]:::done
    end

    subgraph NOISE [What is noise?]
        nn[Noisy neurons]:::done
        nv[Noise variance]:::done
    end

    subgraph PSY [Psychometrics]
        p1[Psychometric function]:::todo
        p2[Slope, threshold, bias]:::todo
    end

    subgraph SCALE [Scales & appearance]
        s1[The JND]:::todo
    end

    subgraph DM [Decision models]
        dm1[Diffusion models]:::todo
        dm2[Bayesian inference]:::todo
    end

    a --> b --> d --> e --> f --> g --> h --> i
    d -. what is noise? .-> nn
    i -. why unequal? .-> nv
    nn --> nv
    nn -. noise --> p1
    g --> p2
    p2 --> s1
    e -. evidence accumulation .-> dm1
    d -. priors & bias .-> dm2

    click a "/modules/sdt-intro" "Open the Signal Detection Theory introduction"
    click b "/modules/sdt-threshold-theories" "Open Threshold theories"
    click d "/modules/sdt-criterion" "Open The criterion"
    click e "/modules/sdt-sensitivity" "Open Sensitivity"
    click f "/modules/sdt-forced-choice" "Open Forced-choice"
    click g "/modules/sdt-rating-response" "Open Rating-response"
    click h "/modules/sdt-second-choice" "Open Second choice task"
    click i "/modules/sdt-equal-variance" "Open Equal variance"
    click nn "/modules/noise-noisy-neurons" "Open Noisy neurons"
    click nv "/modules/noise-variance" "Open Noise variance"
```

:::{note}
This map is hand-drawn for the proof-of-concept. As modules are added, it can be
generated automatically from the links between pages.
:::
