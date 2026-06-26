---
title: Module map
---

# Module map

Here is how the tutorials connect. Solid arrows are the suggested "default path";
the web of links between modules lets you explore in whatever order suits you.

Modules in **colour** are finished; greyed-out modules are planned.

```{mermaid}
flowchart TD
    subgraph SDT [Signal Detection Theory]
        a[Introduction]
        b[Threshold theories]
        d[The criterion]
        e[Sensitivity]
        f[Forced-choice]
        g[Rating-response]
        h[Second choice task]
        i[Equal variance]
    end

    subgraph NOISE [What is noise]
        nn[Noisy neurons]
        nv[Noise variance]
    end

    subgraph PSY [Psychometrics]
        pdec[Types of decisions]
        pst[Slope and threshold]
        pme[Measuring]
        pex[Extended functions]
        pdk[Double-knob]
    end

    subgraph SCALE [Scales and appearance]
        sjnd[The JND]
        sst[Measuring JNDs]
        sask[Asking what it is like]
        sctrl[The big controversy]
        smlds[MLDS]
    end

    subgraph DM [Decision models]
        dm1[Diffusion models]
        dm2[Bayesian inference]
    end

    a --> b --> d --> e --> f --> g --> h --> i
    d -.-> nn
    i -.-> nv
    nn --> nv
    d -.-> pdec
    pdec --> pst --> pme --> pex --> pdk
    pst --> sjnd
    sjnd --> sst --> sask --> sctrl --> smlds
    e -.-> dm1
    d -.-> dm2

    classDef done fill:#d1495b,stroke:#7a2230,color:#fff;
    classDef todo fill:#eee,stroke:#bbb,color:#888;
    class a,b,d,e,f,g,h,i,nn,nv,pdec,pst,pme,pex,pdk,sjnd,sst,sask,sctrl done;
    class smlds,dm1,dm2 todo;

    click a "../modules/sdt-intro"
    click b "../modules/sdt-threshold-theories"
    click d "../modules/sdt-criterion"
    click e "../modules/sdt-sensitivity"
    click f "../modules/sdt-forced-choice"
    click g "../modules/sdt-rating-response"
    click h "../modules/sdt-second-choice"
    click i "../modules/sdt-equal-variance"
    click nn "../modules/noise-noisy-neurons"
    click nv "../modules/noise-variance"
    click pdec "../modules/psy-decisions"
    click pst "../modules/psy-slope-threshold-bias"
    click pme "../modules/psy-measuring"
    click pex "../modules/psy-extended"
    click pdk "../modules/psy-double-knob"
    click sjnd "../modules/scales-jnd"
    click sst "../modules/scales-staircase"
    click sask "../modules/scales-magnitude"
    click sctrl "../modules/scales-controversy"
```

:::{note}
This map is hand-drawn for the proof-of-concept. As modules are added, it can be
generated automatically from the links between pages.
:::
