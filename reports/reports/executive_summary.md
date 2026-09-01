# Executive Summary: DataCo Supply Chain Analytics

## Project Purpose

This project analyzed the DataCo Supply Chain dataset to evaluate delivery performance, customer experience risk, product profitability, and fulfillment operations. The goal was to identify where operational issues occur, which product categories drive business value, and where the company may have opportunities to improve customer experience and revenue flow.

The analysis was completed using Python, Pandas, Matplotlib, SQL, and SQLite. The main Python notebook was used for data cleaning, KPI creation, exploratory analysis, and visualization. A separate SQL notebook and reusable SQL scripts were created to recreate the major KPI summaries using SQL.

## Key Business Findings

### 1. Late delivery is a major customer experience issue

The dataset contains 180,519 total orders. Of those orders, 98,977 were flagged as late, resulting in an overall late delivery rate of 54.83%.

On average, orders took 3.50 days to ship compared with 2.93 scheduled shipping days, creating an average shipping delay of 0.57 days. This suggests that delivery performance is a major operational issue in the dataset.

### 2. Faster shipping modes had the highest delivery risk

First Class and Second Class shipping had the highest late delivery rates. First Class orders were late 95.32% of the time, while Second Class orders were late 76.63% of the time.

Standard Class had the lowest late delivery rate at 38.07%, despite having the largest order volume. This suggests that expedited shipping promises may be difficult to meet consistently and should be reviewed.

### 3. Late delivery was not isolated to one customer segment or market

Late delivery rates were very similar across customer segments. Home Office, Consumer, and Corporate customers all had late delivery rates around 55%.

Delivery rates were also very similar across broad markets, with Europe, Pacific Asia, USCA, Africa, and LATAM all falling within a narrow range. This suggests that late delivery is likely a broader fulfillment issue rather than a problem isolated to one customer group or geographic market.

### 4. A small group of product categories drove most sales and profit

Fishing was the highest-sales category, generating approximately $6.9 million in sales and $756,221 in profit. Cleats, Camping & Hiking, Cardio Equipment, Women’s Apparel, and Water Sports were also major revenue drivers.

The top-selling categories generally had similar average profit margins and discount rates, suggesting that differences in total sales and profit were mostly driven by order volume and demand.

### 5. Highest-margin categories were not always the highest-sales categories

Golf Bags & Carts had the highest average profit margin at 17.46%, but only had 61 orders. This shows that high margin does not always mean high total business impact.

This category may still deserve closer review because it combines high margin with a high late delivery rate of 68.85%.

### 6. Pending payment orders represented a meaningful operational risk

COMPLETE orders made up the largest share of the dataset at 32.96% of total orders. PENDING_PAYMENT was the second-largest status at 22.07%.

PENDING_PAYMENT orders represented approximately $8.1 million in sales and $843,810 in profit. This suggests that payment resolution workflows may be an important area to monitor because unresolved orders represent a large share of potential business value.

## Business Recommendations

1. Review First Class and Second Class shipping promises to determine whether current delivery timelines are realistic.
2. Prioritize fulfillment improvements for high-volume shipping modes and high-revenue product categories.
3. Monitor high-sales categories such as Fishing, Cleats, and Camping & Hiking because small operational improvements in these areas could have a large business impact.
4. Review Golf Bags & Carts separately because it combines high average margin with elevated delivery risk, despite low order volume.
5. Investigate PENDING_PAYMENT workflows to determine whether payment delays or unresolved transactions are affecting revenue flow.
6. Separate canceled and suspected fraud orders from delivery performance analysis because they likely do not move through the normal fulfillment process.

## Conclusion

This analysis found that late delivery is a widespread customer experience and operations issue in the DataCo dataset. The strongest delivery risk signal was shipping mode, especially First Class and Second Class shipping. Customer segment and broad market geography did not appear to explain the issue as strongly.

From a business perspective, the company should focus on improving fulfillment reliability for expedited shipping, monitoring high-revenue product categories, and reviewing unresolved payment workflows. These areas have the strongest potential to improve customer experience, operational performance, and revenue protection.
