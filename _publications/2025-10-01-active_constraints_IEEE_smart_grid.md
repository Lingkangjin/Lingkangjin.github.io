---
title: "Learning Active Constraints for Bilevel Optimization: Evaluating Classification Metrics on Real-World Distribution System Data"
collection: publications
category: manuscripts
permalink: /publication/2025-jin-active-constraints-bilevel
excerpt: "ML-based active-constraint learning for bilevel optimization, evaluated on real-world distribution system data."
date: 2025-01-01
venue: "IEEE Transactions on Smart Grid"
paperurl: "https://doi.org/10.1109/TSG.2025.3632419"
citation: "L. Jin, L. Bliek, and N. G. Paterakis, “Learning Active Constraints for Bilevel Optimization: Evaluating Classification Metrics on Real-World Distribution System Data,” *IEEE Transactions on Smart Grid*, pp. 1–1, 2025."
---

## Abstract
Bilevel optimization provides a useful power system modeling framework, but it is computationally demanding due to its NP-hard nature and the need for frequent solutions under uncertainty. To mitigate this, machine learning can be used to predict active constraints, enabling the deduction of a reduced problem formulation. However, prediction errors are inevitable, and synthetic training data may not fully reflect real-world conditions. This paper presents a structured approach to managing uncertainty by classifying constraints into three sets – active, inactive, and unpredictable – where each constraint is modeled using a separate binary classifier. The method is applied to a real-world bilevel distribution system optimization problem: the upper level solves an AC Optimal Power Flow, while the lower level minimizes residential photovoltaic power curtailment. Training data are generated from daily exact bilevel solutions, incorporating variability in electricity prices, consumption, and photovoltaic power generation. Results show that the reduced formulation effectively solves the problem, up to 10 times faster with a marginal objective value deviation (-3% to +4%).
## Keywords
Bilevel optimization, active constraints, ML-based surrogate, classification metric evaluation, AC optimal
power flow.

