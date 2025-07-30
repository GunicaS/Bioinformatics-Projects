# Analysis of TP53BP2 Gene Expression in Common Cancer Tissues

This project investigates the variability in the expression of the gene **TP53BP2** across different demographic groups in common cancer-prone tissues. The goal is to identify potential correlations between gene expression, age, and sex that could inform personalized cancer treatments.

---

## Background

The protein **p53**, a product of the TP53 gene, is a critical tumor suppressor. It helps combat cancerous cells by preventing the proliferation of damaged cells, inducing apoptosis (cell death), and regulating the immune system.

Recent research has focused on genes that regulate p53's effectiveness, such as **TP53BP2**. This gene codes for binding proteins that regulate both the p53 protein and its corresponding gene, TP53. Understanding how TP53BP2 expression varies among different populations could provide insight into new, personalized therapeutic strategies.

This project specifically analyzes TP53BP2 expression in **colon, breast, and lung tissues** to find patterns related to patient age and sex.

---

## Methodology

### Data Acquisition and Integration
* **Data Sources:** Two primary databases were used:
    * The **GTEx Portal**, which provided gene expression data for TP53BP2.
    * **The Human Protein Atlas**, which provided corresponding demographic data (age and sex) for the patients.
* **Tools:** The analysis was performed using **R**, with the `ggplot2`, `dplyr`, and `tidyr` packages.
* **Process:** Data from both sources were cleaned, formatted, and then merged using the shared Patient ID as a primary key. This process was repeated for each of the three tissue types (colon, breast, and lung).

### Visualization
The integrated data was visualized using bar plots to show the mean expression level of TP53BP2, separated by age groups (in 10-year intervals) and sex.

---

## Results and Key Observations

The analysis revealed different expression patterns across the three tissue types:

* **Colon Tissue:** No clear, consistent trend was observed across age groups or sexes. However, there was a slightly higher expression level in males aged 20-29 and a notable peak in females aged 70-79.
* **Breast Tissue:** A clear pattern emerged where females consistently exhibited higher TP53BP2 expression levels compared to males across all age groups.
* **Lung Tissue:** There was a very large and evident spike in TP53BP2 expression in females aged 70-79, with a smaller increase in females aged 60-69.

---

## Discussion and Future Work

### Interpretation of Results
* The higher expression of TP53BP2 in females' breast tissue might indicate a sex-specific protective mechanism against breast cancer, possibly influenced by hormones like estrogen and progesterone.
* The high expression in older females in lung tissue could be related to various factors, including aging-related changes in the p53 pathway, postmenopausal hormonal shifts, or unrecorded environmental factors.

### Limitations and Next Steps
This project serves as a great starting point, but it has several limitations:
* **Lack of Statistical Analysis:** While trends were observed, statistical tests (like t-tests) are needed to confirm their significance.
* **Limited Scope:** The analysis could be expanded to include more cancer-prone tissues and a comparison between normal and cancerous tissues.
* **Data Constraints:** The study was limited by the available sample size and the lack of detailed patient metadata, which makes it hard to account for potential biases. The analysis was also cross-sectional, capturing only a single point in time.

Future studies using more thorough metadata and a wider range of tissues could provide deeper insights into TP53BP2's role in cancer development and guide new treatment strategies.