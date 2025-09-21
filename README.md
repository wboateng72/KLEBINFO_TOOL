# 🧬 KLEBINFO TOOL
**This tool was primarily constructed to analyze genomes of ***Klebsiella pneumoniae*** from blood cultures**
---
## Bioinformatics Tools / Dependencies

### 1. Kleborate 
- Used for:
  - Species confirmation  
  - Detection of antimicrobial resistance (AMR) genes  
  - Identification of virulence factors  
  - Multilocus sequence typing (MLST)  
  - Core genome MLST (cgMLST)  
  - Clonal group identification  
  - Detection of hypermucoidy-associated genes (*rmpA*, *rmpA2*)  
  - Prediction of capsular (K) and lipopolysaccharide (O) serotypes
     
### 2. Abricate
- Used for screening assembled genomes against multiple databases, including:  
  - **VFDB (Virulence Factor Database)** – virulence-associated genes  
  - **PlasmidFinder** – plasmid replicons  
  - **ResFinder** – antimicrobial resistance genes  
  - **CARD (Comprehensive Antibiotic Resistance Database)** – AMR determinants
    
### 3. BactInspector
- Used for selecting an appropriate reference genome for alignment in phylogenetic tree construction.  

### 4. ParSNP
- Used for constructing a single-nucleotide polymorphism (SNP)-based phylogenetic tree from the assembled genomes.  
---
