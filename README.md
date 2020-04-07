MiniVelos Staging Environment: Extraction Queries
=================================================

Summary
-------

The UNMCCC needs a good system for Clinical Trial Reports. Our current system,
the Clinical Trial Management System (CTMS) eVelos, lacks the reporting
flexibility we would like to have.

This repository and others offered by our UNM Comprehensive Cancer Center
contain the pieces we used to construct a customizable staging environment of
the clinical trials data.

We use Tableau to create visualizations using this MV staging environment. We
created better ad-hoc reporting for our clinical trial resource managers, data
coordinators, research and nurse coordinators and leadership. Our staging
environment produces *datamarts* that feed one or more Tableau reporting
dashboards.

Specifically, this repository contains queries we use to extract data-feeds from
the production system onto the staging environment.

Structure and files
-------------------

You will see a number of t-sql queries in flat files that we use to extract raw
data from a number of containers in the production UNMCCC eVelos Oracle
database. You will also see a couple of examples of metascripts we use to
automate the extraction, using the sqlplus interpreter and the windows task
scheduler.
