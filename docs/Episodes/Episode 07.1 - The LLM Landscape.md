# Evaluating LLMs
![Episode 06.1:  Evaluating LLMs](assets/images/episode061-header.png)

??? slides "Lecture Slides"
    <div style="width:100%; height:800px;position:relative;padding-top:56.25%;height:0;overflow:hidden;">
      <iframe
        src ="https://docs.google.com/file/d/1trQjU8LeQoVsGoQszA2GeM3CpEr7HI-1/preview"
        style="position:absolute;top:0;left:0;width:100%;height:100%;border:0;"
        allow="autoplay"
        allowfullscreen>
      </iframe>
    </div>

    [Download the slides (PPTX)](assets/slides/episode061.pptx)

??? recording "Lecture recording"
    <div style="width:100%; height:600px;">
      <!-- YouTube example -->
      <p>Coming Soon</p>
      <!-- 
        <iframe
          src="https://www.youtube.com/embed/VIDEO_ID"
          title="Lecture 1 Recording"
          style="width:100%; height:100%; border:0;"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowfullscreen>
        </iframe>
      -->
    </div>
    <!-- Or Google Drive video:
    <iframe src="https://drive.google.com/file/d/DRIVE_VIDEO_ID/preview"
            style="width:100%; height:600px; border:0;" allow="autoplay" allowfullscreen></iframe>
    -->


??? homework "HW problems"
    # Episode 06.1 Homework Problems
    ## 061.1: LLM Arena model comparison

    **Background**:
    This assignment uses [Arena](arena.ai) to compare multiple models using the same prompts. You will practice evaluating qualitative performance (clarity, correctness, instruction-followinlying only on benchmark scores.

    **Instructions**:

    1. Pick 3 categories from the list below

        - search
        - image generation
        - reasoning
        - creative writing
        - coding
        - math
        - hard problems (MMLU-Pro, GPQA, or another similar dataset)
        - instruction following

    2. Come up with 9 prompts total (3 prompts per category) and ask the prompts to Arena.

    3. Fill out the table below (one row per prompt).

    Prepare a short report that includes:

    * the completed table
    * Which category had the biggest quality differences and why?
    * What failures did you observed (hallucination, refusal, missing constraints, wrong tone, etc.)

    Table to fill out (copy/paste into your report and complete it):

    | Prompt (paste exact text) | Category | Models compared (A vs B) | Best model (A or B) | Why was it better (be specific) | What did the losing model do wrong (be specific) |
    | ------------------------- | -------- | ------------------------ | ------------------- | ------------------------------- | ------------------------------------------------ |
    | 1                         |          |                          |                     |                                 |                                                  |
    | 2                         |          |                          |                     |                                 |                                                  |
    | 3                         |          |                          |                     |                                 |                                                  |
    | 4                         |          |                          |                     |                                 |                                                  |
    | 5                         |          |                          |                     |                                 |                                                  |
    | 6                         |          |                          |                     |                                 |                                                  |
    | 7                         |          |                          |                     |                                 |                                                  |
    | 8                         |          |                          |                     |                                 |                                                  |
    | 9                         |          |                          |                     |                                 |                                                  |

    ---

    ## 061.2: Should I use This AI Tool

    **Background**:
    Before using AI tools with sensitive data, you should evaluate security, privacy, compliance, and vendor governance.  The University of Miami publishes a “Known AI Tools” list that identifies commonly used tools across campus.

    **Instructions**:

    1. Open the University’s [Known AI Tools list](ai.it.miami.edu) and select one AI tool from that list.

    2. Identify the hierarchy for your selected tool:

        - company
        - application
        - model family (it may be multiple)

    3. Research, determine, and document:

        - where the company is based
        - where they keep/process data (regions, countries)
        - whether they train on user data (default vs opt-in/opt-out)
        - whether humans review user data (and under what conditions)
        - compliance claims relevant to sensitive contexts: HIPAA, FERPA, PCI, or other standards the company explicitly claims
        - cost (free tiers, student licensing, subscription, usage-based, etc.) 
        - news: find at least 2 recent news articles about the company and characterize the sentiment, with a short justification

    4. Make a recommendation: would you recommend this tool?

        - recommend / recommend with constraints / do not recommend
        - explain why, using your evidence

    Table to fill out (copy/paste into your report and complete it):

    | Field                                                                     | Your findings (fill in) |
    | ------------------------------------------------------------------------- | ----------------------- |
    | AI tool (from UM list)                                                    |                         |
    | Company                                                                   |                         |
    | Application                                                               |                         |
    | Model family/families used (if known)                                     |                         |
    | Company HQ (country/state)                                                |                         |
    | Where data is stored/processed (what evidence says)                       |                         |
    | Trains on user data (yes/no/unclear + evidence)                           |                         |
    | Humans review data (yes/no/unclear + evidence)                            |                         |
    | Compliance claims (HIPAA/FERPA/PCI/other)                                 |                         |
    | Cost (plan/pricing notes)                                                 |                         |
    | News sentiment (2 links + positive/mixed/negative)                        |                         |
    | Recommendation (recommend / recommend w constraints / do not) + rationale |                         |


    ---

    ## 061.3: Build a qualitative rubric and run a blinded “model shootout”

    **Background**:
    Qualitative eve when you define criteria before you judge outputs. This assignment connects to the slides’ emphasis on qualitative performance and comparing models in practice. 

    **Instructions**:

    1. Create a rubric with 5 criteria (each scored 1–5). Example criteria:

        * correctness instruction following (constraints met)
        * clarity and structure
        * reasoning quality (justification, steps, handling ambiguity)
        * safety/ethics (appropriate refusal, avoids risky guidance)

    2. Pick 2 models and write 6 prompts (2 prompts from 3 different categories).

    3. Blind yourself to model identity during scoring:

        * paste outputs into a doc labeled Output A and Output B (no model names)
        * score using your rubric first
        * only then reveal which model produced which output

    Prepare a short report that includes:

      * your rubric (criteria + scoring definitions)
      * your prompt set
      * a score table (A vs B for each prompt)
      * 1 paragraph: did your “preference” match your rubric scores? why or why not?

    ---

    ## 061.4: Benchmark literacy lab (MMLU-Pro vs GPQA)

    **Background**:
    Benchmarks are useful, but you neesure and what they miss. The slides highlight MMLU-Pro and GPQA as quantitative performance examples. 

    **Instructions**:

    1. Read a description of MMLU-Pro and GPQA from a primary source (paper or dataset card).
    2. For each benchmark, answer:

        * what skill(s) it is intended to measure
        * what the question format is (multiple choice, domains, etc.)
        * 3 limitations or ways the benchmark can mislead people (example: test-taking artifacts, domain mismatch, contamination, prompt sensitivity, multiple-choice guessing dynamics, etc.)
    3. Design 2 “real-world” evaluation tasks you would add to supplement these benchmarks for a university student use case.

    Prepare a short report that includes:

      * one section for MMLU-Pro
      * one section for GPQA
      * one section proposing your 2 supplemental evaluations
      * citations to your sources

    ---

    ## 061.5: Security, privacy, compliance data lifecycle diagram

    **Background**:
    Security and privacy questions are easiest to reason about when you map the full data lifecycle: what goes in, where it goes, who can access it, and how long it persists. This is directly aligned with the slides’ security, privacy, and compliance section. 

    **Instructions**:

    1. Choose one AI tool you personally use (or one from UM’s tool list).

    2. Draw a data lifecycle diagram that incl data a user might paste/upload)

        * processing (what the system does with it)
        * storage (does anything get retained; where; how long)
        * training use (yes/no/unclear)
        * human review (yes/no/unclear)
        * user controls (delete/export/opt-out)

    3. Write 8 “pre-use questions” a student should ask before using the tool with:

        * student information (FERPA-like data)
        * healthcare data (HIPAA-like data)
        * payment data (PCI-like data)

    Prepare a short report that includes:

      * your diagram
      * your 8 questions
      * 1 paragraph: what part of the lifecycle was most unclear from public documentation?

    ---

    ## 061.9: Intangibles scorecard + model risk register

    **Background**:
    Even if a model performs well, you still need to consider transparency, governance, product stability, and safety culture. 

    **Instructions**:

    1. Build an intangibles scorecard with 6 categories (1–5 scoring each):

        * company reputation
        * ESG/ethica and openness
        * governance and accountability
        * product stability and direction
        * research and safety culture 

    2. Apply your scorecard to two AI providers/tools (your choice).

    3. Create a risk register with at least 6 risks (3 per provider)  - risk statement

        * likelihood (low/med/high)
        * impact (low/med/high)
        * mitigation (what you would do to reduce risk)

    Prepare a short report that includes:

      * your scorecard and scores
      * your risk register
      * 1 paragraph recommendation: which provider would you choose for UM students and why?

    ---

    ## 061.10: Choose-the-right-model decision memo (multi-criteria decision analysis)

    **Background**:
    There is no universally “best” model. The best choice depends on use case, privacy constraints, cost, and risk tolerance. The slide deck frames evaluation as combining qualitative judgment with quantitative evidence and practical constraints. 

    **Instructions**:

    1. Choose one use case:

        * study buddy / tutoring for a specific course
        * writing assistant for a class papea small project
        * research assistant for summarizing sources
        * creative tool (images or writing)

    2. Select 3 candidate tools/models you might use.

    3. Create a weighted decision matrix with at least 8 criteria. You must include:

        * qualitative performance (your own tests)
        * privacy/security posture (based on documentation)
        * compliance fit (FERPA/HIPAA/PCI relevance, if applicable)
        * cost (subscription vs usage-based, if applicable) 
        * at least 2 intangibles (from 061.9) 

    4. Score each candidate, compute weighted totals, and makepare a short report that includes:

      * your candidates
      * your decision matrix (with weights and scores)
      * your recommendation (recommend / recommend with constraints / do not recommend) and why


??? references "References"
    - [LLM Arena](https://arena.ai/)
    - [Awesome AI Benchmarks and Evaluations](https://github.com/awesomelistsio/awesome-ai-benchmarks-evaluation)
    - [MMLU-Pro](https://arxiv.org/abs/2406.01574)
    - [MMLU-Pro Github](https://github.com/TIGER-AI-Lab/MMLU-Pro)
    - [MMLU-Pro Dataset](https://huggingface.co/datasets/TIGER-Lab/MMLU-Pro)
    - [vals.ai MMLU-Pro](https://www.vals.ai/benchmarks/mmlu-pro)
    - [GPQA A Graduate-Level Google-Proof Q&A Benchmark](https://arxiv.org/abs/2311.12022)
    - [GPQA Dataset](https://huggingface.co/datasets/Idavidrein/gpqa)
    - [vals.ai GPQA](https://www.vals.ai/benchmarks/gpqa)
    - [ChatGPT Pricing](https://chatgpt.com/pricing)
    - [Gemini Pricing](https://gemini.google/subscriptions/)
    - [Claude Pricing](https://claude.com/pricing)
    - [Grok Pricing](https://grok.com/plans)
    - [Kimi Pricing](https://kimik2ai.com/pricing/)
    - [Reconciling the contrasting narratives on the environmental impact of large language models](https://www.nature.com/articles/s41598-024-76682-6)
    - [HuggingFace Energy Score](https://huggingface.co/spaces/AIEnergyScore/Leaderboard)
    - [Energy and Policy Considerations for Deep Learning in NLP](https://arxiv.org/abs/1906.02243)
    - [Making AI Less Thirsty](https://dl.acm.org/doi/full/10.1145/3724499)
    - [The growing energy footprint of artificial intelligence](https://www.cell.com/joule/fulltext/S2542-4351(23)00365-3)