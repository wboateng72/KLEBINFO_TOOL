# 🧬 PIPELINE
**This pipeline was primarily constructed to analyze genomes of ***Klebsiella pneumoniae*** from blood cultures**
---
### 1. Kleborate v3.1.3 
-	for species confirmation, detection of antimicrobial resistance (AMR) genes, virulence factors, multilocus sequence typing (MLST), core genome MLST (cgMLST), clonal group identification, hypermucoidy-associated genes (rmpA, rmpA2), and capsular (K) and lipopolysaccharide (O) serotype prediction.
### 2. PHYLOVIZ package
-	Clonal complexes were also inferred using the goeBURST algorithm based on MLST data in the PHYLOVIZ package. 
### 3. K-PAM
-	Hypervirulent strains were further confirmed. 
### 4. Virulence Factor Database (VFDB) in Abricate
-	Additional virulence-associated genes were identified.
### 5. PlasmidFinder
-	Plasmid replicon types were identified.
### 6. BactInspector
-	Used to select an appropriate reference genome for alignment in phylogenetic tree.
### 7. CSI Phylogeny
-	 Used to construct a single nucleotide polymorphism (SNP)-based phylogenetic tree from the assembled genomes. 
### 8. ggtree package
-	The resulting phylogenetic tree was annotated and visualized.
---
