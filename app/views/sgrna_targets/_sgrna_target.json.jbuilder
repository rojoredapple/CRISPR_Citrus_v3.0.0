json.extract! sgrna_target, :id, :sgRNA_ID, :Gene_ID, :bp_diff, :pprox, :PAM, :gene_direction, :gene_cutsite, :genome_direction, :genomeStart, :genomeEnd, :target, :created_at, :updated_at
json.url sgrna_target_url(sgrna_target, format: :json)
