wget -O covid_data.txt https://www.data.gouv.fr/fr/datasets/r/dc7663c7-5da9-4765-a98b-ba4bc9de9079
awk -F ';' '{if(NR>1){grouped[$2]+=$4}}END{for (key in grouped) { print key "\t" grouped[key] } }' covid_data.txt | sort > covid_aggregated.txt
