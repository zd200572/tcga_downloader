########tcga downloader####
#尝试写爬虫发现网页需要javascript,暂时没有搞定，于是偷个懒把内容
#从https://xenabrowser.net/datapages/?host=https://tcga.xenahubs.net
#复制下来保存为TCGA_names.txt
###然后就是解析文本，获得地址，然后下载

import os

def get_name(file_in):
	name_list= []
	for line in file_in:
		if 'TCGA' in line:
			name_list.append(line.strip().split('(')[1].split(')')[0])
			#print(name_list)
			#break
		return name_list


def download_files(name_list):
	for name in name_list:
		file_list = ['htseq_counts', 'survival','GDC_phenotype', 'mirna', 'masked_cnv'，'muse_snv', 'mutect2_snv'] 
		for i in range(len(file_list)):
			cmd = 'wget -c https://gdc.xenahubs.net/download/TCGA-%s/Xena_Matrices/TCGA-%s.%s.tsv.gz' % (name, name, file_list[i])
			os.system(cmd)
			#break


file_in = open('TCGA_names.txt')
name_list = get_name(file_in)
download_files(name_list)
