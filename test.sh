#!/bin/bash

# add color to test outputs
. ANSIcolor
initializeANSI



#########################################################################
######################## bíblia sálm 108 ################################
#########################################################################
function test_default_book_chapter(){
local result=$(bíblia sálm 108)
local expected
read -r -d '' expected <<- EOF
v1 Ein songur, ein sálmur, av Dávidi.
v2 Trygt er hjarta mítt, Guð, syngja eg vil og leika, o, tú sál mín, vakna!
v3 Vakna saltur og harpa, eg morgunroðan vil vekja!
v4 Fólkanna millum eg tær, Harri, vil lova, blant fólkasløg eg um teg vil syngja,
v5 tí til himna upp røkkur tín miskunn og til skýggja trúfesti tín!
v6 Sýn teg, Guð, í hátign á himni, um allan heimin veri tín dýrd!
v7 Til tess at tínir vinir mega bjargaðir vera, hjálp tú við høgru hond tíni og bønhoyr meg!
v8 Guð hevur talað í halgidómi sínum: «Í sigursgleði eg vil Sikem býta sundur, Sukkots-dal vil eg skifta.
v9 Mítt er Gilead, og mítt er Manasse, Efraim er verja fyri høvdi mínum, Júda mín veldisstavur.
v10 Móab er mín tváttarskál, til Edóm eg skógvar mínar blaki, rópi fagnaðarróp yvir Filistaland.» –
v11 Men hvør skal meg føra til hin fasta stað, hvør vil meg leiða til Edóm?
v12 Tú hevur, Guð, jú rikið okkum burtur, við herum várum tú, o Guð, ikki fylgir út!
v13 Veit tú okkum móti fíggindanum hjálp, bert eitt eiti er mannahjálp!
v14 Við Guðs hjálp vit skulu stórverk vinna, várar fíggindar hann í mold treður niður.
EOF
if [[ "${result}" == "${expected}" ]]; then
  echo "${greenb}${whitef}Test Passed!${reset} bíblia sálm 108"
else
  echo "${redb}${whitef}Test Failed!${reset} bíblia sálm 108"
fi
}
test_default_book_chapter

#########################################################################
######################## bíblia matt 16 24 ##############################
#########################################################################
function test_default_book_verse(){
local result=$(bíblia matt 15 8)
local expected
read -r -d '' expected <<- EOF
v8 «Hetta fólkið ærir meg við vørrunum; men hjarta teirra er langt burtur frá mær.
EOF
if [[ "${result}" == "${expected}" ]]; then
  echo "${greenb}${whitef}Test Passed!${reset} bíblia matt 15 8"
else
  echo "${redb}${whitef}Test Failed!${reset} bíblia matt 15 8"
fi
}
test_default_book_verse

#########################################################################
######################## bíblia matt 16 24 27 ###########################
#########################################################################
function test_default_book_verse_to_verse(){
local result=$(bíblia matt 16 24 27)
local expected
read -r -d '' expected <<- EOF
v24 Tá segði Jesus við lærusveinar sínar: «Vil nakar ganga aftan á meg, tá avnokti hann sjálvan seg og taki upp kross sín og fylgi mær!
v25 Tí at tann, ið vil bjarga lívi sínum, skal missa tað; men tann, ið missir lív sítt fyri mínar sakir, skal finna tað.
v26 Tí hvat gagnar tað manni, um hann vinnur allan heimin, men má bøta afturfyri við sál síni? Ella hvat skal maður geva í viðurlag fyri sál sína?
v27 Tí at menniskjusonurin skal koma í faðirs síns dýrd við einglum sínum, og tá skal hann gjalda einum og hvørjum eftir virki hansara!
EOF
if [[ "${result}" == "${expected}" ]]; then
  echo "${greenb}${whitef}Test Passed!${reset} bíblia matt 16 24 27"
else
  echo "${redb}${whitef}Test Failed!${reset} bíblia matt 16 24 27"
fi
}
test_default_book_verse_to_verse

#########################################################################
######################## bíblia -e matt 16 24 27 ########################
#########################################################################
function test_e_option_book_verse_to_verse(){
local result=$(bíblia -e matt 16 24 27)
local expected
read -r -d '' expected <<- EOF
EN: Matthew
FO: Evangeliið eftir Matteus
v24 Tá segði Jesus við lærusveinar sínar: «Vil nakar ganga aftan á meg, tá avnokti hann sjálvan seg og taki upp kross sín og fylgi mær!
v25 Tí at tann, ið vil bjarga lívi sínum, skal missa tað; men tann, ið missir lív sítt fyri mínar sakir, skal finna tað.
v26 Tí hvat gagnar tað manni, um hann vinnur allan heimin, men má bøta afturfyri við sál síni? Ella hvat skal maður geva í viðurlag fyri sál sína?
v27 Tí at menniskjusonurin skal koma í faðirs síns dýrd við einglum sínum, og tá skal hann gjalda einum og hvørjum eftir virki hansara!
EOF
if [[ "${result}" == "${expected}" ]]; then
  echo "${greenb}${whitef}Test Passed!${reset} bíblia -e matt 16 24 27"
else
  echo "${redb}${whitef}Test Failed!${reset} bíblia -e matt 16 24 27"
fi
}
test_e_option_book_verse_to_verse


#########################################################################
######################## bíblia -f ######################################
#########################################################################
function test_f_option_search_verse(){
local result=$(bíblia -f "Vil nakar ganga aftan á meg")
local expected
read -r -d '' expected <<- EOF
Evangeliið eftir Matteus 16 v24 Tá segði Jesus við lærusveinar sínar: «Vil nakar ganga aftan á meg, tá avnokti hann sjálvan seg og taki upp kross sín og fylgi mær!
EOF
if [[ "${result}" == "${expected}" ]]; then
  echo "${greenb}${whitef}Test Passed!${reset} bíblia -f"
else
  echo "${redb}${whitef}Test Failed!${reset} bíblia -f"
fi
}
test_f_option_search_verse

#########################################################################
######################## bíblia -l ######################################
#########################################################################
function test_l_option_list_books() {
local result=$(bíblia -l)
local expected
read -r -d '' expected <<- EOF
Fyrsta Mósebók                                     |     Genesis
Triðja Mósebók                                     |     Leviticus
Fimta Mósebók                                      |     Deuteronomy
Dómarabókin                                        |     Judges
Fyrra Sámuelsbók                                   |     1 Samuel
Fyrra Kongabók                                     |     1 Kings
Fyrra Krýnikubók                                   |     1 Chronicles
Ezra                                               |     Ezra
Esterarbók                                         |     Esther
Sálmarnir                                          |     Psalms
Prædikarin                                         |     Ecclesiastes
Jesaja                                             |     Isaiah
Harmljóðini                                        |     Lamentations
Dánjal                                             |     Daniel
Jóel                                               |     Joel
Óbadia                                             |     Obadiah
Mika                                               |     Micah
Hábakkuk                                           |     Habakkuk
Haggai                                             |     Haggai
Málaki                                             |     Malachi
Evangeliið eftir Markus                            |     Mark
Evangeliið eftir Jóhannes                          |     John
Bræv Paulusar ápostuls til Rómverja                |     Romans
Seinna bræv Paulusar ápostuls til Korintmanna      |     2 Corinthians
Bræv Paulusar ápostuls til Efesusmanna             |     Ephesians
Bræv Paulusar ápostuls til Kolossumanna            |     Colossians
Seinna bræv Paulusar ápostuls til Tessalónikumanna |     2 Thessalonians
Seinna bræv Paulusar ápostuls til Timoteusar       |     2 Timothy
Bræv Paulusar ápostuls til Filemons                |     Philemon
Hitt almenna bræv Jákups                           |     James
Hitt seinna almenna bræv Pæturs                    |     2 Peter
Annað bræv Jóhannesar                              |     2 John
Hitt almenna bræv Judasar                          |     Jude
EOF
if [[ "${result}" == "${expected}" ]]; then
  echo "${greenb}${whitef}Test Passed!${reset} bíblia -l"
else
  echo "${redb}${whitef}Test Failed!${reset} bíblia -l"
fi
}
test_l_option_list_books

#########################################################################
######################## bíblia -l john #################################
#########################################################################
function test_l_option_search_books() {
local result=$(bíblia -l john)
local expected
read -r -d '' expected <<- EOF
Evangeliið eftir Jóhannes           |     John
Hitt fyrsta almenna bræv Jóhannesar |     1 John
Annað bræv Jóhannesar               |     2 John
Triðja bræv Jóhannesar              |     3 John
EOF
if [[ "${result}" == "${expected}" ]]; then
  echo "${greenb}${whitef}Test Passed!${reset} bíblia -l john"
else
  echo "${redb}${whitef}Test Failed!${reset} bíblia -l john"
fi
}
test_l_option_search_books

#########################################################################
######################## bíblia jóhan 3 16 ##############################
#########################################################################
function test_multiple_book_matches_default(){
echo "############ Test user input - ignore ############"
local result=$(bash bíblia jóhan 3 16 <<< "1") 
echo "1"
local expected
read -r -d '' expected <<- EOF
v16 Tí at so elskaði Guð heimin, at hann gav son sín, hin einborna, til tess at ein og hvør, sum trýr á hann, ikki skal glatast, men hava ævigt lív.
EOF
if [[ "${result}" == "${expected}" ]]; then
  echo "${greenb}${whitef}Test Passed!${reset} bíblia jóhan 3 16"
else
  echo "${redb}${whitef}Test Failed!${reset} bíblia jóhan 3 16"
fi
echo "##################################################"
}
test_multiple_book_matches_default

#########################################################################
######################## bíblia -k mark 1 14 15 #########################
#########################################################################
function test_kjv_default_search(){
local result=$(bíblia -k mark 1 14 15)
local expected
read -r -d '' expected <<- EOF
v14 Now after that John was put in prison, Jesus came into Galilee, preaching the gospel of the kingdom of God,
v15 And saying, The time is fulfilled, and the kingdom of God is at hand: repent ye, and believe the gospel.
EOF
if [[ "${result}" == "${expected}" ]]; then
  echo "${greenb}${whitef}Test Passed!${reset} bíblia -k mark 1 14 15"
else
  echo "${redb}${whitef}Test Failed!${reset} bíblia -k mark 1 14 15"
fi
}
test_kjv_default_search

#########################################################################
######################## bíblia -ke mark 1 14 15 #########################
#########################################################################
function test_kjv_e_option_search(){
local result=$(bíblia -ke mark 1 14 15)
local expected
read -r -d '' expected <<- EOF
EN: Mark
FO: Evangeliið eftir Markus
v14 Now after that John was put in prison, Jesus came into Galilee, preaching the gospel of the kingdom of God,
v15 And saying, The time is fulfilled, and the kingdom of God is at hand: repent ye, and believe the gospel.
EOF
if [[ "${result}" == "${expected}" ]]; then
  echo "${greenb}${whitef}Test Passed!${reset} bíblia -ke mark 1 14 15"
else
  echo "${redb}${whitef}Test Failed!${reset} bíblia -ke mark 1 14 15"
fi
}
test_kjv_e_option_search

#########################################################################
######################## bíblia -kf #####################################
#########################################################################
function test_kjf_f_option_search_verse(){
local result=$(bíblia -kf "For God so loved the world")
local expected
read -r -d '' expected <<- EOF
v16 For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life.
EOF
if [[ "${result}" == "${expected}" ]]; then
  echo "${greenb}${whitef}Test Passed!${reset} bíblia -ke mark 1 14 15"
else
  echo "${redb}${whitef}Test Failed!${reset} bíblia -ke mark 1 14 15"
fi
echo "expected: "$expected
echo "actual: "$actual
}
test_kjf_f_option_search_verse



