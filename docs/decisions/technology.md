# Technology Decisions

## We Want to Be a Software 3.0 Product

Andrej Karpathy’s keynote at the 2025 AI Startup School in San Francisco outlined a major transformation in software development, marking the arrival of what he calls “Software 3.0” — a paradigm shift driven by large language models (LLMs) and natural language programming [^1][^2][^3]. Below is a detailed summary of his presentation:

## Software Evolution: From 1.0 to 3.0

Karpathy began by tracing the evolution of software:

* **Software 1.0**: Traditional code written by humans.
* **Software 2.0**: Machine learning models trained on data, where humans specify the desired behavior through examples rather than explicit logic.
* **Software 3.0**: Programming is now done in plain English (or any natural language) via prompts, with LLMs acting as the new “computers” that execute these instructions [^1][^2][^3].

He emphasized that Software 3.0 is not just an incremental improvement but a **fundamental change** in how software is created, used, and understood. In this new era, “prompts are programs,” and LLMs serve as utilities, factories ("fabs"), and operating systems for digital products [^1][^4].

## LLMs: Utilities, Fabs, and Operating Systems

Karpathy described LLMs as:

* **Utilities**: General-purpose tools for a wide range of tasks.
* **Fabs**: Factories for generating code, text, and other outputs at scale.
* **Operating Systems**: Platforms that manage resources, orchestrate workflows, and provide APIs for other software components [^1][^5].

He compared the current moment to the 1960s of computing — an era of rapid innovation and foundational changes, where new abstractions and tools are being invented [^6][^5].

## Psychology and Limitations of LLMs

Karpathy noted that LLMs exhibit a kind of “people spirit,” simulating human-like reasoning but with notable quirks:

* **Jagged Intelligence**: LLMs can excel at complex tasks but fail at seemingly simple ones (e.g., solving advanced math but struggling with basic comparisons like “which is bigger, 9.11 or 9.9?”) [^5].
* **Anterograde Amnesia**: LLMs have limited memory and context retention, making long conversations or workflows challenging [^4][^5].

These issues, he argued, are not fundamental but require advances in model architecture, post-training, and system design to address.

## Partial Autonomy and the Iron Man Analogy

Karpathy introduced the concept of **partial autonomy** for AI systems, using the Iron Man suit as a metaphor:

* **Augmentation**: AI enhances human capabilities by providing tools, information, and environmental awareness.
* **Autonomy**: AI can act independently, taking initiative to complete tasks [^4][^5].

He proposed implementing an **autonomy slider** — a control mechanism that allows users to adjust how much autonomy AI has in a given context. Examples include:

* **Cursor**: From simple code completion to agent-driven development.
* **Perplexity**: From basic search to advanced research modes.
* **Tesla Autopilot**: From driver assistance to near-full autonomy [^4][^5].

Karpathy stressed the importance of balancing feature richness with reliability, noting that the gap between a working demo and a robust product is significant. *“Demo is works.any(), product is works.all(),”* he quipped [^5].

## Human-AI Collaboration Loops

He highlighted the need for fast, efficient loops between human verification and AI generation. The goal is to keep AI on a **tight leash** during generation and make verification as easy and fast as possible, ensuring reliability and trust [^5].

## Vibe Coding and the New Developer Ecosystem

Karpathy coined the term **vibe coding**, describing a new style of programming where developers work alongside AI co-pilots, rapidly iterating and building products. This has led to a surge in AI-driven startups and tools, but also revealed the fragmented state of web development — some tools are AI-friendly, others are not [^4][^5].

## Building for Agents

Karpathy argued that the future of software is about building for **agents** — AI systems that manipulate digital information on behalf of humans or other systems. He encouraged toolmakers to design for this new category of user, ensuring that digital infrastructure is agent-ready [^5].

## Summary and Call to Action

Karpathy concluded by emphasizing that we are in the “1960s of LLMs,” a time of immense opportunity and rapid change. He urged the audience to embrace partial autonomy, improve human-AI collaboration loops, and build digital products and infrastructure that are ready for the agent-driven future [^6][^5][^3].

---

## Key Takeaways

* **Software 3.0 is here**: LLMs enable programming in natural language, transforming how software is built and used.
* **LLMs are utilities, fabs, and operating systems**: They are foundational to the new software stack.
* **Partial autonomy is key**: AI systems should augment and assist humans, with adjustable levels of autonomy.
* **Human-AI collaboration loops**: Fast and reliable feedback loops are essential for building trustworthy products.
* **Build for agents**: The future of software is agent-driven, requiring new tools and infrastructure.

Karpathy’s keynote was a call to action for founders, developers, and entrepreneurs to rethink software in the age of AI — and to seize the opportunities of this new era [^1][^2][^3].

---

## References

[^1]: [https://blockchain.news/ainews/ai-startup-school-talk-by-andrej-karpathy-highlights-large-language-models-as-the-new-software-paradigm](https://blockchain.news/ainews/ai-startup-school-talk-by-andrej-karpathy-highlights-large-language-models-as-the-new-software-paradigm)

[^2]: [https://podcasts.apple.com/in/podcast/andrej-karpathy-software-is-changing-again/id1236907421?i=1000713636573](https://podcasts.apple.com/in/podcast/andrej-karpathy-software-is-changing-again/id1236907421?i=1000713636573)

[^3]: [https://podcasters.spotify.com/pod/show/ycombinator/episodes/Andrej-Karpathy-Software-Is-Changing-Again-e34flk1](https://podcasters.spotify.com/pod/show/ycombinator/episodes/Andrej-Karpathy-Software-Is-Changing-Again-e34flk1)

[^4]: [https://eu.36kr.com/en/p/3343287291558407](https://eu.36kr.com/en/p/3343287291558407)

[^5]: [https://www.latent.space/p/s3](https://www.latent.space/p/s3)

[^6]: [https://www.youtube.com/watch?v=LCEmiRjPEtQ](https://www.youtube.com/watch?v=LCEmiRjPEtQ)
