# Economic and Carbon Impacts of Potential Illinois Nuclear Plant Closures
This repository holds the data, report text, and analysis related to a report 
by the Advanced Reactors and Fuel Cycles group at the University of Illinois at 
Urbana-Champaign. This repository is open in order to enable interested readers 
to explore the data, question the assumptions, and engage with the work. We 
welcome your comments. If you would like to make a comment, correction, or 
improvement, please open an issue in this repository. 


## Purpose of the report
On August 27, 2020, Exelon Generation announced planned premature closures of 
two Illinois nuclear plants (4 reactor units) which compete economically with 
fossil fueled plants within the Pennsylvania-New Jersey-Maryland (PJM) 
interconnection [1]. This report quantitatively explores how these closures 
would undermine economic and decarbonization goals in the state of Illinois, 
such as an aggressive target to achieve a zero carbon electric grid by 2030.


Previous energy systems research has shown that such clean energy goals cannot 
be reached if nuclear plants prematurely retire. In particular, the February 
2021 National Academy of Sciences, Engineering, and Medicine consensus report, 
“Accelerating Decarbonization of the U.S. Energy System,” determined 
unequivocally that US decarbonization will require keeping existing nuclear 
plants open [2]. Consistent with that liter-ture, our simulations indicate that 
decarbonization in Illinois will require not only maintenance but expansion of 
nuclear energy capacity. The simulations in this report minimize future 
Illinois electric system cost in the context of potential policy constraints 
and demonstrate that:

- nuclear energy is necessary to reach Illinois’ carbon reduction goals,
- without existing nuclear power, reaching zero carbon would require
solar deployments to displace 10, 000km2 of critical Illinois farmland.
- and deploying new advanced nuclear generation is the least expensive way to 
  allow Illinois farmland to remain farmland while reaching zero-carbon by 
  2030.


These simulations also revealed many specific, complementary conclusions, such as:

- Keeping Illinois’ existing nuclear plants open through 2050 avoids 25 million 
  metric tons of life-cycle CO2 emissions and 600,000 metric tons of e-waste.
- Even if advanced nuclear deployments experienced 200% capitalcost overruns, 
  total system cost impacts would be negligible.
- Deploying advanced nuclear avoids approximately 900,000metrictons of e-waste.
- Significant grid-scale battery storage is required to meet any zero- carbon target.


intended as a template to standardize and ease the initialization 
Purpose of this Repository:
process for Technical Reports from members of the Advanced Reactors and Fuel 
Cycles group at the University of Illinois at Urbana-Champaign. While this version 
of the template is geared towards an ARFC Member's report, it can be adapted to 
any individual's needs.


# How to Build The Report
1. Clone your repository with SSH keys.
	* Open a command line or terminal on your device and enter the directory into which you want to clone your template based repository. 
	* Enter `git clone git@github.com:arfc/2021-04-nm-illinois`. 
2. The report directory holds the report. You can build it with LaTeX using 
   the `make` command. 
3. The pdf will appear in your report directory. 

# How to Run The Models
1. Clone your repository with SSH keys.
	* Open a command line or terminal on your device and enter the directory into which you want to clone your template based repository. 
	* Enter `git clone git@github.com:arfc/2021-04-nm-illinois`. 
3. You will need to install the Temoa tool. Use the instructions at 
   [https://temoacloud.com/](https://temoacloud.com/).
2. In the temoa-illinois directory you will find sql input files for all Temoa simulations.
3. Once Temoa is installed, you can run our configured model using the `.sql` 
   input files in this repository. 

# How to Cite this Work
TBD
