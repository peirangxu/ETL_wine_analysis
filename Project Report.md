## Project Report

* **E**xtract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).

  * The sources of data:

    * 1st source: CSV file from Kaggle

      * ```
        Resources/winemag-data-130k-v2.csv
        ```

    * 2nd source: Web scraping

      * ```
        https://www.winemag.com/
        ```

* **T**ransform: what data cleaning or transformation was required.

  * The type of transformations utilized:
    * Cleaning
    * Deduplication
    * Key restructuring
    * Filtering
    * Joining
    * Aggregation

* **L**oad: the final database, tables/collections, and why this was chosen.

  * Our production database:
    *  **PostgreSQL**  - Relational Database 
      * Why: Our data project had a clear idea on how to connect our production database via the title of the wine. 
      * Also: Thinking into the scenario as a business, any additional data will be implement after being reviewed and vetted.
  * The final tables or collections that will be used in the production database.
    * Wine Info
      * Columns: title, variety
    * location
      * Columns: title, winery, region, province, country
    * designation
      * Columns: title, designation, winery
    * taster_review
      * Columns: title, taster_name, taster_twitter_handle, points, description, price
    * winemag_same_wine_review
      * Column: title, description, points, price