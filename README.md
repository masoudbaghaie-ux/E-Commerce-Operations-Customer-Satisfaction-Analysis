# E-Commerce-Operations-Customer-Satisfaction-Analysis
End-to-end SQL &amp; Power BI analytics dashboard tracking e-commerce logistics and customer satisfaction failures.


## 🚀 Project Overview
An end-to-end data analytics project using an e-commerce dataset of 97K orders. This project extracts, cleans, and structures complex business data to uncover critical operational bottlenecks directly impacting company revenue and customer satisfaction scores.

## 🛠️ Tech Stack
* **Database Engine:** PostgreSQL (Data aggregation, schema joins, and advanced window functions/tie-breaker metrics)
* **BI Platform:** Power BI (Data modeling, cross-filtering, and executive-level interactive visualization)

## 📊 Core Dashboards & Layout
## 🔍 Comprehensive Dashboard Breakdown & Analytical Insights

### 📊 Page 1: Sales & Revenue Performance
This view serves as the financial and transactional baseline for executive stakeholders, tracking top-line growth metrics across the entire product spectrum.

* **Asset Reference:** `dashboard_page_1_sales.png`
* **Key Visual Analysis:**
  * **Top 10 Product Categories by Revenue:** Focuses on value generation. `Health Beauty` stands out as our absolute market leader, generating the highest share of the company's total $13.22M revenue pipeline.
  * **Order Volume Distribution (Top 5):** Establishes velocity. Even though `Health Beauty` leads in raw dollar revenue, `Bed Bath Table` dominates checkout volume, capturing 24.22% of all orders among our top five high-velocity categories.
  * **Order Volume vs. Total Freight Expenses (Combo Chart):** This dual-axis visual exposes hidden margin erosion. Notice the trend change around `Furniture Decor`—its line for freight costs spikes dramatically relative to its lower order volume column. This highlights that bulky, low-density products are disproportionately consuming our logistics budget.

---

### 🚚 Page 2: Logistics Efficiency & Shipping Analysis
Fulfillment delays are a primary risk factor for customer churn. This page acts as an operational health assessment to isolate carrier and category-specific bottlenecks.

* **Asset Reference:** `dashboard_page_2_logistics.png`
* **Key Visual Analysis:**
  * **Top 10 Longest Delivery Delays:** Isolates extreme fulfillment lag. `Office Furniture` averages a massive 20-day delivery cycle, severely underperforming compared to the company-wide average baseline of 11.42 days.
  * **Actual Delivery Time vs. Promised Buffer Time (Combo Chart):** Maps supply chain resilience. The dark blue line tracking "Days Ahead of Schedule" plummets sharply for `Furniture Mattress And Upholstery`. This tells us that while we are still technically meeting our customer-facing delivery estimates, the operational safety buffer is thinnest here, leaving zero margin for carrier errors.

---

### ⭐ Page 3: Customer Feedback & Quality Control
This dashboard closes the loop by correlating operational performance directly with customer satisfaction. It uncovers exactly *why* certain product sectors underperform.

* **Asset Reference:** `dashboard_page_3_feedback.png`
* **Key Visual Analysis:**
  * **Bottom 10 Lowest Reviewed Categories:** Flags poor-performing segments. `Security And Services` is a critical focus area, anchoring the entire dataset with the lowest review trend line.
  * **Performance Matrix Table (The Operational "Smoking Gun"):** This granular table bridges the gap between shipping delays and brand loyalty. Look at the highlighted row for `Diapers And Hygiene`—it holds an unacceptable average review score of 2.95★. Because the matrix tracks this alongside its 11.00-day delivery latency, it provides clear, data-driven proof that shipping bottlenecks, rather than product quality, are driving down customer satisfaction.

---

## 💡 Executive Summary & Strategic Roadmap
Based on this multi-layered analysis, the business should immediately prioritize three core actions:
1. **Re-engineer Heavy Freight Logistics:** Transition bulky items (`Office Furniture`, `Furniture Decor`) to alternative shipping networks to cut down the current 20-day latency period.
2. **Implement Dynamic Buffer Calculations:** Update customer checkout estimates for items with thin fulfillment margins to prevent unmet expectations from damaging review scores.
3. **Perform Vendor Audits:** Investigate the underlying product quality or service parameters for the `Security And Services` category before committing additional marketing spend to it.
