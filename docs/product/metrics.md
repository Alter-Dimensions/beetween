# Metrics

*This is not a report. It is the real-time telemetry of the Beet machine. We track these numbers because they are the fundamental indicators of our health, velocity, and probability of success. We will be brutally honest about what this data tells us.*

**Guiding Principle: Signal Over Noise**
We only track metrics that are direct inputs to a decision. Vanity metrics like social media followers, press mentions, or total sign-ups are noise. We will not track them.

---

## **1. The North Star Metric**

This is the single metric that best captures the core value we deliver to our users. Our collective energy is focused on moving this number up and to the right.

* **Weekly Valued Users (WVU):** The number of unique users who perform at least one high-value action (save an event, click 'buy tickets', or share content) in a 7-day period.
  * **Why it matters:** This measures valuable engagement, not just passive browsing. It is the truest indicator of product-market fit.
  * **Current:** `[Number]`
  * **Target (This Quarter):** `[Number]`

---

### **2. Core System Inputs (Is the Machine Being Fueled?)**

These metrics measure our ability to feed the machine with high-quality product and content at a high velocity.

* **Content Freshness & Breadth:**
  * **Metric:** Number of new, high-quality events and offers added to the platform per week.
  * **This number answers:** "Do our users have a compelling reason to open the app this week?"
  * **Status:** `[Number]` | **Target:** `[Number]`

* **Development Velocity:**
  * **Metric:** Cycle Time - The median time from the start of work on a feature to its deployment in production.
  * **This number answers:** "How fast can we translate an idea into value for our users?"
  * **Status:** `[X Days]` | **Target:** `[Y Days]`

---

### **3. Core System Throughput (Is the Machine Working?)**

These metrics measure the core health of our user growth and engagement engine.

* **User Acquisition & Activation:**
  * **Metric:** New WVUs per week.
  * **This number answers:** "Are we successfully converting new people into engaged users?"
  * **Status:** `[Number]` | **Target:** `[Number]`

* **User Retention (The Leaky Bucket Test):**
  * **Metric:** Week 4 Retention of New Users. (The % of new users who are still a WVU four weeks after their first high-value action).
  * **This number answers:** "Is the product valuable enough to make people stick around?"
  * **Status:** `[X]%` | **Target:** `[Y]%`

---

### **4. Core System Outputs (Is the Output High Quality?)**

These metrics measure the ultimate result of our efforts: user happiness and business viability.

* **User Happiness:**
  * **Metric:** Net Promoter Score (NPS), surveyed quarterly.
  * **This number answers:** "Do our users love the product enough to recommend it?"
  * **Status:** `[Number]` | **Target:** `>50`

* **System Reliability & Performance:**
  * **Metric:** Uptime & API Response Time (P95).
  * **This number answers:** "Is the product fast and reliable?"
  * **Status:** `[X.XX]%` & `[Y]ms` | **Target:** `99.9%` & `<200ms`

* **Capital Efficiency (The "Can we survive?" metric):**
  * **Metric:** Monthly Burn Rate / Number of New WVUs.
  * **This number answers:** "How much are we paying to acquire a truly engaged user?"
  * **Status:** `[$X per WVU]` | **Target:** `[$Y per WVU]`

---

### **5. Operational Protocol**

**Dashboard Review Cadence:**
The core telemetry dashboard is reviewed at the beginning of our weekly team meeting. There is no waiting for a monthly report.

**Action Protocol:**
1. **If a metric is GREEN (at or above target):** We briefly state why we believe it's working and move on.
2. **If a metric is YELLOW (below target but not critical):** The owner of that metric states their hypothesis for the cause and their plan to address it this week.
3. **If a metric is RED (critically below target or trending down):** All non-essential work is questioned. A focused team immediately swarms the problem. We treat a red metric like a critical production bug.

*This document is intentionally sparse. It is our focusing mechanism. If a metric is not on this page, we do not spend significant time on it unless it is a direct driver of one of these core numbers.*
