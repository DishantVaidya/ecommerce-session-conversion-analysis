# E-commerce Session Engagement & Purchase Conversion Analysis

## Business Case Study

### 1. Overview

An e-commerce business wants to understand why some website sessions result in purchases while others do not.

The management team wants to investigate browsing behaviour, product engagement, visitor categories and website performance to identify patterns associated with purchasing.

This project analyses historical e-commerce session data to identify conversion patterns and provide recommendations for further investigation.

### 2. Business Objectives

- Measure overall purchase conversion.
- Compare browsing behaviour between purchasing and non-purchasing sessions.
- Investigate the relationship between product engagement and purchasing.
- Evaluate visitor and traffic category performance.
- Analyse website engagement metrics.
- Identify monthly, weekend and technical performance patterns.
- Provide evidence-based business recommendations.

### 3. Dataset

**Dataset:** Online Shoppers Purchasing Intention Dataset  
**Source:** UCI Machine Learning Repository  
**Dataset Link:** https://archive.ics.uci.edu/dataset/468/online

| Attribute | Details |
|---|---|
| Total Records | 12,330 |
| Original Features | 18 |
| Data Level | Shopping session |
| Target Variable | Revenue |
| Format | CSV |

Each row represents a shopping session. The Revenue variable indicates whether the session resulted in a purchase.

### 4. Tools & Technologies

- Microsoft Excel
- Microsoft Word
- Power Query
- MySQL
- Python
- Jupyter Noebook
- Microsoft Power BI

### 5. Methodology

**Business Analysis – MySQL**

Used SQL to investigate:

- Overall purchase conversion.
- Purchasing versus non-purchasing browsing behaviour.
- Product engagement and conversion.
- Visitor type performance.
- Traffic category performance.
- Bounce rates, exit rates and PageValues.
- Monthly and weekend purchasing patterns.
- Special-day purchasing behaviour.
- Regional, browser and operating system performance.

**Dashboard Development – Power BI**

Developed an interactive three-page dashboard:

1. **Business Overview:** Session KPIs, purchase distribution, monthly conversion and weekend performance.
2. **Customer Engagement Analysis:** Product engagement, browsing behaviour, browsing duration, bounce rates, exit rates and PageValues.
3. **Segment & Technical Analysis:** Visitor types, traffic categories, regions, browsers and operating systems.

The dashboard includes interactive slicers and bookmark-based page navigation.

### 6. Key Business Findings

**Overall Purchase Conversion**

- Total sessions: 12,330
- Purchase sessions: 1,908
- Non-purchase sessions: 10,422
- Purchase conversion rate: 15.47%

**Product Engagement**

Purchasing sessions viewed an average of 48.21 product-related pages, compared with 28.71 for non-purchasing sessions.

High-engagement sessions demonstrated 21.07% conversion, compared with 4.12% for low-engagement sessions.

**Visitor Behaviour**

New visitors demonstrated 24.91% conversion, compared with 13.93% for returning visitors.

Returning visitors contributed approximately 77% of all purchasing sessions.

**Traffic Performance**

Traffic Type 2 generated 847 purchases with 21.65% conversion.

Traffic Types 1, 3 and 13 demonstrated comparatively lower conversion.

**Website Engagement**

Non-purchasing sessions demonstrated higher average bounce and exit rates than purchasing sessions.

**Monthly Performance**

November recorded the highest conversion rate at 25.35%, with 760 purchases.

**Weekend Performance**

Weekend sessions demonstrated 17.40% conversion, compared with 14.89% on weekdays.

### 7. Business Recommendations

Based on the analysis:

- Investigate product discovery and website navigation.
- Examine high-volume traffic categories with lower conversion.
- Investigate browsing differences between new and returning visitors.
- Review website engagement and exit behaviour.
- Investigate monthly and weekend purchasing patterns.
- Examine browser and operating system segments with comparatively lower conversion.

These recommendations identify areas for further investigation. The analysis does not establish causation or prove that implementing these changes would increase purchases.

### 8. Data Limitations

The dataset has the following limitations:

- No actual sales or transaction amounts.
- No individual product identifiers or product categories.
- No add-to-cart or checkout-stage information.
- No payment success or failure information.
- No exact session timestamps.
- No complete traffic-source mapping.
- Region, Browser and OperatingSystems are encoded identifiers.
- No customer identifier for tracking longitudinal customer behaviour.

**Analytical Limitations:**

- Purchase conversion is measured at session level.
- Correlation between engagement and purchasing does not establish causation.
- PageValues is not actual sales revenue and is associated with completed transactions.
- Small segment sizes may produce misleading conversion percentages.
- The findings describe historical dataset patterns and may not represent current e-commerce behaviour.

### 9. Conclusion

The analysis identified meaningful differences in browsing engagement and purchasing behaviour across several session categories.

Product engagement, visitor type and traffic performance emerged as important areas for further investigation.

The project demonstrates a complete data analytics workflow, from data preparation and SQL analysis to interactive Power BI reporting and business recommendations.

**Dataset:** UCI Machine Learning Repository  
