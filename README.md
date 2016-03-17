# Data_Products
The repository contains the files of the ClustersEur-App

## Intro and Supporting Documentation

The application ClustersEur-App performs a Cluster Analysis of
the 28 European Union Countries.

The analysis refers to 3 economic indicators (year 2014):
  1. Gross Domestic Product (Euro per capita)
  2. Government Debt (Percentage of Gross Domestic Product)
  3. Unemployment Rate.
  
## How the Application Works

The user chooses: 
  1. the economic indicators to plot on the 2 axes
  2. the number of centres
  
The points plotted represent the ordered pairs of 
  the chosen indicators.

We have one point for each Country.

The application creates a partition of the points into
k groups (called clusters) such that the sum of squares from 
points to the assigned cluster centres is minimized.

Each cluster is identified by a distinct color.

