#!/bin/bash

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
  echo "Test passed! bíblia matt 16 24 27"
else
  echo "Test failed! bíblia matt 16 24 27"
  exit 1
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
  echo "Test passed! bíblia -e matt 16 24 27"
else
  echo "Test failed! bíblia -e matt 16 24 27"
  exit 1
fi
}
test_e_option_book_verse_to_verse

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
  echo "Test passed! bíblia -l"
else
  echo "Test failed! bíblia -l"
  exit 1
fi
}
test_l_option_list_books

#########################################################################
######################## bíblia -l john #################################
#########################################################################
result3=$(bíblia -l john)
read -r -d '' expected3 <<- EOF
Evangeliið eftir Jóhannes           |     John
Hitt fyrsta almenna bræv Jóhannesar |     1 John
Annað bræv Jóhannesar               |     2 John
Triðja bræv Jóhannesar              |     3 John
EOF
if [[ "${result3}" == "${expected3}" ]]; then
  echo "Test passed! bíblia -l john"
else
  echo "Test failed! bíblia -l john"
  exit 1
fi



#########################################################################
######################## bíblia jóhan 3 16 ##############################
#########################################################################
# #!/usr/bin/expect -f
# set timeout -1
# spawn ./questions
# expect "Hello, who are you?\r"
# send -- "Im Adam\r"
# expect "Can I ask you some questions?\r"
# send -- "Sure\r"
# expect "What is your favorite topic?\r"
# send -- "Technology\r"
# expect eof

result4=$(echo 1 | bash bíblia jóhan 3 16 1)
read -r -d '' expected3 <<- EOF
1) Evangeliið eftir Jóhannes
2) Hitt fyrsta almenna bræv Jóhannesar
3) Annað bræv Jóhannesar
4) Triðja bræv Jóhannesar
5) Jóhannesar opinbering
Choose a book (enter number): 1
v16 Tí at so elskaði Guð heimin, at hann gav son sín, hin einborna, til tess at ein og hvør, sum trýr á hann, ikki skal glatast, men hava ævigt lív.
EOF
echo result4
if [[ "${result4}" == "${expected4}" ]]; then
  echo "Test passed! bíblia jóhan 3 16"
else
  echo "Test failed! bíblia jóhan 3 16"
  exit 1
fi
