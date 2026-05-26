---
title: "From PRD to prototype in one meeting: an AI workflow for enterprise PMs"
date: 2026-04-20
status: draft
tags: [AI in PM, B2B PM, product discovery]
summary: "A practical workflow for using AI to turn messy enterprise requests into a usable prototype fast. The point isn’t to replace judgment — it’s to shrink the time between customer pain and something real enough to test."
---

# From PRD to prototype in one meeting: an AI workflow for enterprise PMs

## Overview

The best use of AI in product management isn’t writing prettier docs. It’s collapsing the gap between “we think users want this” and “here’s something they can react to.” In enterprise PM work, that gap is usually where momentum goes to die. A customer asks for a workflow tweak, sales escalates it, engineering says “sounds vague,” and three weeks later you’re still arguing about the problem statement.

What I’ve seen work is using AI as a force multiplier for the annoying middle: turning notes into a first-pass PRD, breaking a broad request into smaller bets, drafting rough UX, and getting to a prototype before everyone has over-committed to their favorite interpretation. OpenAI’s own guidance for product teams leans in this direction, with examples like drafting launch materials, writing PRD-like structures, and using Deep Research for competitive teardown and user-feedback synthesis. OpenAI also highlighted LaunchDarkly’s internal approach, where Claire Vo describes using a “customer story GPT” and a broader anti-to-do list to remove repetitive PM work and get to drafts faster. 

That said, this is not a “let the model run the meeting” situation. In my experience, the teams that get real value keep the human in charge of framing, tradeoffs, and quality gates. AI is great at producing options. It is much worse at knowing which constraint actually matters. If you don’t impose structure, you’ll just get faster at being vaguely wrong. That’s not progress.

## Key Insights

- **Start with the mess, not the polished ask.** Feed the model raw notes from customer calls, Slack threads, support tickets, and sales escalations. Then ask it to group the request into 3-5 underlying jobs-to-be-done. That’s where the signal usually is.
- **Use AI to draft the first 70%, not the final 100%.** The fastest teams I’ve seen use AI to produce a rough PRD, a problem statement, a scope cut, and a prototype brief. Humans still decide what ships, what gets cut, and what’s too risky to fake.
- **Prototypes are better than debates.** A clickable Figma mock, a thin workflow demo, or even a scripted “fake door” experience gets you better feedback than another 45-minute alignment meeting. OpenAI’s product resources explicitly point product teams toward early drafts, clear acceptance criteria, and fast validation loops. 
- **Enterprise PMs need to protect context, not just speed.** If you’re working across admin roles, permissions, integrations, and workflow complexity, the model needs constraints. Otherwise it’ll produce a consumer-grade answer to an enterprise problem, which is almost always useless.
- **Treat AI output like an intern who reads very fast.** Helpful, sharp sometimes, and occasionally confidently wrong. Good PMs review it like adults.

## Real-World Examples

One of the clearest examples is **LaunchDarkly**. In OpenAI’s conversation with Claire Vo, she describes building a “customer story GPT” that loads company stories so the team can stop asking her for the same examples over and over. That’s a tiny use case on the surface, but the PM lesson is big: automate repeatable context work so you can spend more time on judgment-heavy decisions. 

Another useful example is **Wix**, which has used OpenAI-powered tools to let users create websites conversationally and generate content like product descriptions and SEO metadata from inside the platform. That’s not “PM prototyping” in the narrow sense, but it’s a good reminder that AI shines when it compresses a multi-step workflow into something people can explore quickly instead of waiting for a perfect version. 

A third example is **Retool**, which built Retool AI on top of OpenAI models and positioned it around fast internal app creation and workflow automation. For PMs, the takeaway is straightforward: if the product already sits close to operational work, AI can be used to prototype business workflows faster than traditional UI-only thinking allows. 

## Practical Takeaways

- **Run a 60-minute “PRD to prototype” session.** First 15 minutes: dump raw input. Next 15: ask AI to cluster it into themes and risks. Next 15: draft a one-page PRD. Final 15: sketch the first prototype flow and decide what you’re testing.
- **Force the model to show assumptions.** Ask it to separate facts, guesses, and open questions. If it can’t do that cleanly, your team probably isn’t ready to use the output.
- **Use a standard prompt template.** I like: “Here are the notes. Turn this into: problem, target user, current workaround, proposed flow, top risks, and a prototype script. Keep it short and mark anything uncertain.” Simple beats clever.
- **Ship a testable artifact, not a document museum.** The doc is only useful if it leads to a customer conversation, an internal review, or an experiment. If it just sits in Notion looking thoughtful, you’ve wasted the win.

My blunt opinion: enterprise PMs spend too much time trying to make their first draft sound authoritative. I’d rather see a scrappy prototype and a list of questions than a beautiful PRD that nobody has tested. The teams that move fastest are the ones willing to say, “This is the current best guess — prove it wrong.”

## Further Reading

- **OpenAI: LaunchDarkly’s approach to AI-powered product management** — a good look at how a senior product leader is using AI to remove repetitive work and move faster. 
- **OpenAI Academy: ChatGPT for product** — useful prompts and examples for product managers working through launch docs, customer pain points, and planning. 
- **OpenAI Academy: Deep Research** — helpful when you want AI to do structured synthesis across web and internal sources before you commit to a prototype direction. 