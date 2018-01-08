library(shiny)

# Define UI for miles per gallon application
shinyUI(list(
  
  # Application title
  headerPanel("TCGA download url tool"),
  
  fluidPage(
    sidebarPanel(
    selectInput("variable", "Select One Caner:",
                list("Acute Myeloid Leukemia" = "LAML", 
                     "Adrenocortical Cancer" = "ACC", 
                     "Bile Duct Cancer" = "CHOL",
                     "Bladder Cancer" = "BLCA",
                     "Breast Cancer" = "BRCA",
                     "Cervical Cancer" = "CESC",
                     "Colon and Rectal Cancer" = "COADREAD",
                     "Colon Cancer" = "COAD",
                     "Endometrioid Cancer" = "UCEC",
                     "Esophageal Cancer" = "ESCA",
                     "Formalin Fixed Paraffin-Embedded Pilot Phase II" = "FPPP",
                     "Glioblastoma" = "GBM",
                     "Head and Neck Cancer" = "HNSC",
                     "Kidney Chromophobe" = "KICH",
                     "Kidney Clear Cell Carcinoma" = "KIRC",
                     "Kidney Papillary Cell Carcinoma" = "KIRP", 
                     "Large B-cell Lymphoma" = "DLBC", 
                     "Liver Cancer" = "LIHC",
                     "Lower Grade Glioma" = "LGG",
                     "lower grade glioma and glioblastoma" = "GBMLGG",
                     "Lung Adenocarcinoma" = "LUAD",
                     "Lung Cancer" = "LUNG",
                     "Lung Squamous Cell Carcinoma" = "LUSC",
                     "Melanoma" = "SKCM",
                     "Mesothelioma" = "MESO",
                     "Ocular melanomas" = "UVM",
                     "Ovarian Cancer" = "OV",
                     "Pan-Cancer" = "PANCAN",
                     "PANCAN12" = "PANCAN12",
                     "Pancreatic Cancer" = "PAAD",
                     "Pheochromocytoma & Paraganglioma" = "PCPG", 
                     "Prostate Cancer" = "PRAD", 
                     "Rectal Cancer" = "READ",
                     "Sarcoma" = "SARC",
                     "Stomach Cancer" = "STAD",
                     "Testicular Cancer" = "TGCT",
                     "Thymoma" = "THYM",
                     "Thyroid Cancer" = "THCA",
                     "Uterine Carcinosarcoma" = "UCS"
                     )),
    selectInput("var", "Select One Data:",
                list("gene expression RNAseq(HTSeq)" = "htseq_counts", 
                     "survival" = "survival", 
                     "phenotype" = "GDC_phenotype",
                     "miRNA Expression Quantification" = "mirna",
                     "copy number" = "masked_cnv",
                     "MuSE Variant Aggregation and Masking" = "muse_snv",
                     "MuTect2 Variant Aggregation and Masking" = "mutect2_snv")),
    
    checkboxInput("outliers", "Show outliers", FALSE)
  ),
  
    mainPanel(htmlOutput("mySite"))
  
)))
