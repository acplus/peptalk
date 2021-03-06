load /home/assaf/workspace/peptalk/classifiers/classifier3_castp/results_b0.3/1NVR.results.pdb;bg white;hide everything;select receptor, chain A;deselect;select peptide, chain B;deselect;color yellow, peptide;show sticks, peptide;show spheres, receptor;
color white, receptor
select cluster0_ca, receptor and name CB and (resi 82,84,85,125); deselect
select cluster0_red, br. cluster0_ca; deselect
delete cluster0_ca
color red, cluster0_red
select cluster1_ca, receptor and name CB and (resi 139,142); deselect
select cluster1_orange, br. cluster1_ca; deselect
delete cluster1_ca
color orange, cluster1_orange
select cluster2_ca, receptor and name CB and (resi 42,45); deselect
select cluster2_yellow, br. cluster2_ca; deselect
delete cluster2_ca
color yellow, cluster2_yellow
select cluster3_ca, receptor and name CB and (resi 64,65,66,67,72); deselect
select cluster3_forest, br. cluster3_ca; deselect
delete cluster3_ca
color forest, cluster3_forest
select cluster4_ca, receptor and name CB and (resi 17,18); deselect
select cluster4_green, br. cluster4_ca; deselect
delete cluster4_ca
color green, cluster4_green
select cluster5_ca, receptor and name CB and (resi 1,2,4,5,7); deselect
select cluster5_cyan, br. cluster5_ca; deselect
delete cluster5_ca
color cyan, cluster5_cyan
select cluster6_ca, receptor and name CB and (resi 152,153,154,156,157); deselect
select cluster6_blue, br. cluster6_ca; deselect
delete cluster6_ca
color blue, cluster6_blue
select cluster7_ca, receptor and name CB and (resi 162,197); deselect
select cluster7_violet, br. cluster7_ca; deselect
delete cluster7_ca
color violet, cluster7_violet
select cluster8_ca, receptor and name CB and (resi 133,134,264); deselect
select cluster8_magenta, br. cluster8_ca; deselect
delete cluster8_ca
color magenta, cluster8_magenta
select cluster9_ca, receptor and name CB and (resi 10,12,13); deselect
select cluster9_pink, br. cluster9_ca; deselect
delete cluster9_ca
color pink, cluster9_pink
select cluster10_ca, receptor and name CB and (resi 208,219); deselect
select cluster10_black, br. cluster10_ca; deselect
delete cluster10_ca
color black, cluster10_black
select cluster11_ca, receptor and name CB and (resi 258,261); deselect
select cluster11_teal, br. cluster11_ca; deselect
delete cluster11_ca
color teal, cluster11_teal
select cluster12_ca, receptor and name CB and (resi 224,226); deselect
select cluster12_brown, br. cluster12_ca; deselect
delete cluster12_ca
color brown, cluster12_brown
