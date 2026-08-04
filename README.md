------------------------------------------------------------------------

editor_options: markdown: wrap: 72 ---

# South East Queensland Address Density Analysis

A spatial data analysis project exploring address density across localities in South East Queensland, using R, spatial joins, and interactive mapping.

## View the Report

[**Live interactive report →**](https://ashleepoep.github.io/qld-address-density-analysis/)

## Objective

Which localities in South East Queensland have the highest density of addresses relative to land area?

## Overview

This project was built as a self-directed learning exercise to demonstrate R and spatial analysis skills, using Queensland Government open data on addresses and locality boundaries. Key techniques include:

- Spatial joins (`sf`) to assign addresses to locality boundaries
- Live data retrieval via ArcGIS Feature Service REST API
- Data validation and disambiguation of duplicate locality names
- Interactive mapping with `leaflet`
- Reproducible reporting with R Markdown

## Data Sources

- **Locality Boundaries**: [Queensland Government ArcGIS Feature Service](https://spatial-gis.information.qld.gov.au/arcgis/rest/services/Boundaries/AdministrativeBoundaries/MapServer/2)
- **Property Address Queensland**: [Queensland Government Data Portal](https://www.data.qld.gov.au/dataset/property-address-queensland-by-area-of-interest)

Note: raw address data is not included in this repository due to file size. See the report's Data Sources section for download instructions.

## Tools & Skills Demonstrated

- R

- R Markdown

- sf

- dplyr

- ggplot2

- leaflet

- Git/GitHub

- ArcGIS REST API

## Acknowledgements

Claude (Anthropic) was used to assist with code generation, debugging, and troubleshooting throughout development. All analysis, interpretation, and conclusions are my own.
