## Vector DB Use Case

A traditional keyword-based database search would not be sufficient for a system that allows lawyers to search large legal contracts using natural language questions. Keyword search works by matching exact words or phrases in the document. However, legal documents often use complex language and synonyms. For example, a user might search for "termination clauses," but the contract might describe the same concept using phrases like "agreement cancellation conditions" or "contract ending provisions." A keyword search might miss these relevant sections.

Vector databases solve this problem by using embeddings, which represent text as numerical vectors that capture semantic meaning. Instead of matching exact words, the system converts both the user’s query and the document sections into embeddings. These embeddings are then stored in a vector database. When a user asks a question, the system generates an embedding for the query and finds the most semantically similar sections of the document using similarity search.

In this architecture, the contract would first be broken into smaller sections or paragraphs. Each section would be converted into an embedding and stored in the vector database. When a lawyer asks a question, the system retrieves the most relevant sections based on cosine similarity between embeddings.

This approach allows the system to understand meaning rather than just keywords, making it far more effective for searching complex documents like legal contracts.
