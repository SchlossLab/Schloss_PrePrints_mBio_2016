# README

The field of microbiology has experienced significant growth due to transformative advances in technology and the influx of scientists driven by a curiosity to understand how microbes sustain myriad biochemical processes that maintain the Earth. With this explosion in scientific output, a significant bottleneck has been the ability to rapidly disseminate new knowledge to peers and the public. Preprints have emerged as a tool that a growing number of microbiologists are using to overcome this bottleneck. Posting preprints can help to transparently recruit a more diverse pool of reviewers prior to submitting to a journal for formal peer-review. Although use of preprints is still limited in the biological sciences, early indications are that preprints are a robust tool that can complement and enhance peer-reviewed publications. As publishing moves to embrace advances in internet technology, there are many opportunities for preprints and peer-reviewed journals to coexist in the same ecosystem.


### Dependencies and locations

* GNU bash (v.4.1.2)
* Gnu Make (v.3.81) should be located in the user's PATH
* R (v. 3.3.2) should be located in the user's PATH
* The following R packages should be installed:
	* cowplot (v.0.6.9990)
	* dplyr (v.0.5.0)
	* ggplot2 (v.2.1.0.9001)
	* httr (v.1.2.1)
	* RCurl (v.1.95-4.8),
  * rentrez (v.1.0.4)
  * RJSONIO (v.1.3-0)
  * rvest (v.0.3.2)
  * sportcolors (v.0.0.1)
  * tidyr (v.0.6.0)

```
install.packages(c("cowplot", "dplyr", "ggplot2", "httr", "RCurl", "rentrez", "RJSONIO", "rvest",
									"sportcolors", "tidyr"))
```

### Running analysis

```
git clone https://github.com/SchlossLab/Schloss_PrePrints_mBio_2017.git
make write.paper
```
