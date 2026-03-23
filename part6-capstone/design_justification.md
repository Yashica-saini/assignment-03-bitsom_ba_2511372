## Storage Systems

To support the hospital’s AI-powered data system, multiple storage systems are required because the system handles different types of data and workloads.

For predicting patient readmission risk, a data warehouse would be used to store historical patient treatment data. This structured data can include diagnoses, procedures, medications, and discharge records. A data warehouse is suitable because it allows efficient analytical queries and machine learning model training on large historical datasets.

For the natural language patient history queries, a vector database would be used. Patient records and medical notes can be converted into embeddings using NLP models. These embeddings allow doctors to search patient history using semantic similarity rather than exact keywords. This enables queries such as “Has this patient had a cardiac event before?” to retrieve relevant records quickly.

For generating monthly management reports such as bed occupancy and department costs, a data warehouse or OLAP system would also be used. This system aggregates transactional hospital data and allows efficient analytical queries for reporting dashboards and business intelligence tools.

For streaming real-time ICU vitals, a time-series database or data streaming system would be appropriate. ICU devices continuously generate data such as heart rate, oxygen levels, and blood pressure. These values must be ingested and stored efficiently with timestamps for monitoring and alert systems.

Using specialized systems for each workload ensures high performance, scalability, and reliability across the hospital’s data platform.

## OLTP vs OLAP Boundary

In this architecture, the OLTP (Online Transaction Processing) system includes the hospital’s operational databases where daily transactions occur. This includes patient registrations, treatments, prescriptions, and billing information. These systems prioritize fast inserts, updates, and data consistency because they support real-time hospital operations.

The OLAP (Online Analytical Processing) system begins once data is extracted from these transactional databases and moved into the analytical environment through ETL pipelines. The data warehouse stores historical snapshots of operational data optimized for large analytical queries rather than frequent updates.

In this design, the boundary occurs at the data ingestion and ETL layer. Operational systems feed data into a data pipeline that cleans, transforms, and loads the data into analytical storage systems such as the data warehouse and vector database.

Separating OLTP and OLAP ensures that heavy analytical queries or AI model training workloads do not slow down critical hospital operations.

## Trade-offs

One significant trade-off in this architecture is the increased complexity caused by using multiple specialized storage systems such as a data warehouse, vector database, and streaming database. While each system is optimized for its specific task, managing multiple technologies increases operational overhead and requires careful data integration.

This complexity can introduce challenges in maintaining data consistency across systems and ensuring reliable data pipelines. For example, delays or failures in the ETL process could lead to outdated data being used for analytics or AI models.

To mitigate this trade-off, the hospital can implement a robust data pipeline orchestration system and monitoring tools. Technologies such as workflow schedulers and automated data validation checks can ensure that data flows reliably between systems.

Additionally, centralized metadata management and clear data governance policies can help maintain consistency across the platform. With proper monitoring and automation, the benefits of specialized storage systems outweigh the added complexity.
