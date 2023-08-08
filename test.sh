#!/bin/bash

# add color to test outputs
. ANSIcolor
initializeANSI

function assertEQ
{
  local result="$1"
  local expected="$2"
  local command="$3"
if [[ "${result}" == "${expected}" ]]; then
  echo "${greenb}${whitef}Test Passed!${reset} ${command}"
else
  echo "${redb}${whitef}Test Failed!${reset} ${command}"
fi
}

#########################################################################
######################## bíblia sálm 108 ################################
#########################################################################
function test_default_book_chapter(){
local result=$(bíblia sálm 108)
local expected
local command="bíblia sálm 108"
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
assertEQ "$result" "$expected" "$command"
}
test_default_book_chapter

#########################################################################
######################## bíblia matt 16 24 ##############################
#########################################################################
function test_default_book_verse(){
local result=$(bíblia matt 15 8)
local expected
local command="bíblia matt 15 8"
read -r -d '' expected <<- EOF
v8 «Hetta fólkið ærir meg við vørrunum; men hjarta teirra er langt burtur frá mær.
EOF
assertEQ "$result" "$expected" "$command"
}
test_default_book_verse

#########################################################################
######################## bíblia matt 16 24 27 ###########################
#########################################################################
function test_default_book_verse_to_verse(){
local result=$(bíblia matt 16 24 27)
local expected
local command="bíblia matt 16 24 27"
read -r -d '' expected <<- EOF
v24 Tá segði Jesus við lærusveinar sínar: «Vil nakar ganga aftan á meg, tá avnokti hann sjálvan seg og taki upp kross sín og fylgi mær!
v25 Tí at tann, ið vil bjarga lívi sínum, skal missa tað; men tann, ið missir lív sítt fyri mínar sakir, skal finna tað.
v26 Tí hvat gagnar tað manni, um hann vinnur allan heimin, men má bøta afturfyri við sál síni? Ella hvat skal maður geva í viðurlag fyri sál sína?
v27 Tí at menniskjusonurin skal koma í faðirs síns dýrd við einglum sínum, og tá skal hann gjalda einum og hvørjum eftir virki hansara!
EOF
assertEQ "$result" "$expected" "$command"
}
test_default_book_verse_to_verse

#########################################################################
######################## bíblia -e matt 16 24 27 ########################
#########################################################################
function test_e_option_book_verse_to_verse(){
local result=$(bíblia -e matt 16 24 27)
local expected
local command="bíblia -e matt 16 24 27"
read -r -d '' expected <<- EOF
EN: Matthew
FO: Evangeliið eftir Matteus
v24 Tá segði Jesus við lærusveinar sínar: «Vil nakar ganga aftan á meg, tá avnokti hann sjálvan seg og taki upp kross sín og fylgi mær!
v25 Tí at tann, ið vil bjarga lívi sínum, skal missa tað; men tann, ið missir lív sítt fyri mínar sakir, skal finna tað.
v26 Tí hvat gagnar tað manni, um hann vinnur allan heimin, men má bøta afturfyri við sál síni? Ella hvat skal maður geva í viðurlag fyri sál sína?
v27 Tí at menniskjusonurin skal koma í faðirs síns dýrd við einglum sínum, og tá skal hann gjalda einum og hvørjum eftir virki hansara!
EOF
assertEQ "$result" "$expected" "$command"
}
test_e_option_book_verse_to_verse


#########################################################################
######################## bíblia -f ######################################
#########################################################################
function test_f_option_search_verse(){
local result=$(bíblia -f "Vil nakar ganga aftan á meg")
local expected
local command="bíblia -f \"Vil nakar ganga aftan á meg\""
read -r -d '' expected <<- EOF
Evangeliið eftir Matteus 16 v24 Tá segði Jesus við lærusveinar sínar: «Vil nakar ganga aftan á meg, tá avnokti hann sjálvan seg og taki upp kross sín og fylgi mær!
EOF
assertEQ "$result" "$expected" "$command"
}
test_f_option_search_verse

#########################################################################
######################## bíblia -l ######################################
#########################################################################
function test_l_option_list_books() {
local result=$(bíblia -l)
local expected
local command="bíblia -l"
read -r -d '' expected <<- EOF
Fyrsta Mósebók                                     | Genesis
Onnur Mósebók                                      | Exodus
Triðja Mósebók                                     | Leviticus
Fjórða Mósebók                                     | Numbers
Fimta Mósebók                                      | Deuteronomy
Jósvabók                                           | Joshua
Dómarabókin                                        | Judges
Rutarbók                                           | Ruth
Fyrra Sámuelsbók                                   | 1 Samuel
Seinna Sámuelsbók                                  | 2 Samuel
Fyrra Kongabók                                     | 1 Kings
Seinna Kongabók                                    | 2 Kings
Fyrra Krýnikubók                                   | 1 Chronicles
Seinna Krýnikubók                                  | 2 Chronicles
Ezra                                               | Ezra
Nehemia                                            | Nehemiah
Esterarbók                                         | Esther
Jobsbók                                            | Job
Sálmarnir                                          | Psalms
Orðtøk Sálomons                                    | Proverbs
Prædikarin                                         | Ecclesiastes
Hásongurin                                         | Song of Solomon
Jesaja                                             | Isaiah
Jeremia                                            | Jeremiah
Harmljóðini                                        | Lamentations
Ezekiel                                            | Ezekiel
Dánjal                                             | Daniel
Hósea                                              | Hosea
Jóel                                               | Joel
Ámos                                               | Amos
Óbadia                                             | Obadiah
Jónas                                              | Jonah
Mika                                               | Micah
Náhum                                              | Nahum
Hábakkuk                                           | Habakkuk
Sefanja                                            | Zephaniah
Haggai                                             | Haggai
Zakarja                                            | Zechariah
Málaki                                             | Malachi
Evangeliið eftir Matteus                           | Matthew
Evangeliið eftir Markus                            | Mark
Evangeliið eftir Lukas                             | Luke
Evangeliið eftir Jóhannes                          | John
Ápostlasøgan                                       | Acts
Bræv Paulusar ápostuls til Rómverja                | Romans
Fyrra bræv Paulusar ápostuls til Korintmanna       | 1 Corinthians
Seinna bræv Paulusar ápostuls til Korintmanna      | 2 Corinthians
Bræv Paulusar ápostuls til Galatamanna             | Galatians
Bræv Paulusar ápostuls til Efesusmanna             | Ephesians
Bræv Paulusar ápostuls til Filippimanna            | Philippians
Bræv Paulusar ápostuls til Kolossumanna            | Colossians
Fyrra bræv Paulusar ápostuls til Tessalónikumanna  | 1 Thessalonians
Seinna bræv Paulusar ápostuls til Tessalónikumanna | 2 Thessalonians
Fyrra bræv Paulusar ápostuls til Timoteusar        | 1 Timothy
Seinna bræv Paulusar ápostuls til Timoteusar       | 2 Timothy
Bræv Paulusar ápostuls til Titusar                 | Titus
Bræv Paulusar ápostuls til Filemons                | Philemon
Brævið til Hebreara                                | Hebrews
Hitt almenna bræv Jákups                           | James
Hitt fyrra almenna bræv Pæturs                     | 1 Peter
Hitt seinna almenna bræv Pæturs                    | 2 Peter
Hitt fyrsta almenna bræv Jóhannesar                | 1 John
Annað bræv Jóhannesar                              | 2 John
Triðja bræv Jóhannesar                             | 3 John
Hitt almenna bræv Judasar                          | Jude
Jóhannesar opinbering                              | Revelation
EOF
assertEQ "$result" "$expected" "$command"
}
test_l_option_list_books

#########################################################################
######################## bíblia -l john #################################
#########################################################################
function test_l_option_search_books() {
local result=$(bíblia -l john)
local expected
local command="bíblia -l john"
read -r -d '' expected <<- EOF
Evangeliið eftir Jóhannes           |     John
Hitt fyrsta almenna bræv Jóhannesar |     1 John
Annað bræv Jóhannesar               |     2 John
Triðja bræv Jóhannesar              |     3 John
EOF
assertEQ "$result" "$expected" "$command"
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
local command="bíblia jóhan 3 16"
read -r -d '' expected <<- EOF
v16 Tí at so elskaði Guð heimin, at hann gav son sín, hin einborna, til tess at ein og hvør, sum trýr á hann, ikki skal glatast, men hava ævigt lív.
EOF
assertEQ "$result" "$expected" "$command"
echo "##################################################"
}
test_multiple_book_matches_default

#########################################################################
######################## bíblia -k mark 1 14 15 #########################
#########################################################################
function test_kjv_default_search(){
local result=$(bíblia -k mark 1 14 15)
local expected
local command="bíblia -k mark 1 14 15"
read -r -d '' expected <<- EOF
v14 Now after that John was put in prison, Jesus came into Galilee, preaching the gospel of the kingdom of God,
v15 And saying, The time is fulfilled, and the kingdom of God is at hand: repent ye, and believe the gospel.
EOF
assertEQ "$result" "$expected" "$command"
}
test_kjv_default_search

#########################################################################
######################## bíblia -ke mark 1 14 15 #########################
#########################################################################
function test_kjv_e_option_search(){
local result=$(bíblia -ke mark 1 14 15)
local expected
local command="bíblia -ke mark 1 14 15"
read -r -d '' expected <<- EOF
EN: Mark
FO: Evangeliið eftir Markus
v14 Now after that John was put in prison, Jesus came into Galilee, preaching the gospel of the kingdom of God,
v15 And saying, The time is fulfilled, and the kingdom of God is at hand: repent ye, and believe the gospel.
EOF
assertEQ "$result" "$expected" "$command"
}
test_kjv_e_option_search

#########################################################################
######################## bíblia -kf #####################################
#########################################################################
function test_kjf_f_option_search_verse(){
local result=$(bíblia -kf "For God so loved the world")
local expected
local command="bíblia -kf \"For God so loved the world\""
read -r -d '' expected <<- EOF
John 3 v16 For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life.
EOF
assertEQ "$result" "$expected" "$command"
}
test_kjf_f_option_search_verse


#########################################################################
######################## bíblia -s ######################################
#########################################################################
function test_s_option_search_verse(){
local result=$(bíblia -s matt 15 8)
local expected
local command="bíblia -s matt 15 8"
read -r -d '' expected <<- EOF
v8 «Hetta fólkið ærir meg við vørrunum; men hjarta teirra er langt burtur frá mær.

King James Version
v8 This people draweth nigh unto me with their mouth, and honoureth me with their lips; but their heart is far from me.
EOF
assertEQ "$result" "$expected" "$command"
}
test_s_option_search_verse



#########################################################################
######################## bíblia -s ######################################
#########################################################################
function test_s_option_search_verse_to_verse(){
local result=$(bíblia -s matt 16 24 27)
local expected
local command="bíblia -s matt 16 24 27"
read -r -d '' expected <<- EOF
v24 Tá segði Jesus við lærusveinar sínar: «Vil nakar ganga aftan á meg, tá avnokti hann sjálvan seg og taki upp kross sín og fylgi mær!
v25 Tí at tann, ið vil bjarga lívi sínum, skal missa tað; men tann, ið missir lív sítt fyri mínar sakir, skal finna tað.
v26 Tí hvat gagnar tað manni, um hann vinnur allan heimin, men má bøta afturfyri við sál síni? Ella hvat skal maður geva í viðurlag fyri sál sína?
v27 Tí at menniskjusonurin skal koma í faðirs síns dýrd við einglum sínum, og tá skal hann gjalda einum og hvørjum eftir virki hansara!

King James Version
v24 Then said Jesus unto his disciples, If any man will come after me, let him deny himself, and take up his cross, and follow me.
v25 For whosoever will save his life shall lose it: and whosoever will lose his life for my sake shall find it.
v26 For what is a man profited, if he shall gain the whole world, and lose his own soul? or what shall a man give in exchange for his soul?
v27 For the Son of man shall come in the glory of his Father with his angels; and then he shall reward every man according to his works.
EOF
assertEQ "$result" "$expected" "$command"
}
test_s_option_search_verse_to_verse

#########################################################################
######################## bíblia -se ######################################
#########################################################################
function test_s_option_with_e_option(){
local result=$(bíblia -se "1 John" 3 16)
local expected
local command="bíblia -se \"1 John\" 3 16"
read -r -d '' expected <<- EOF
EN: 1 John
FO: Hitt fyrsta almenna bræv Jóhannesar
v16 Av hesum kenna vit kærleikan, at hann læt lívið fyri okkum; so eiga vit eisini at lata lívið fyri brøðurnar.

King James Version
v16 Hereby perceive we the love of God, because he laid down his life for us: and we ought to lay down our lives for the brethren.
EOF
assertEQ "$result" "$expected" "$command"
}
test_s_option_with_e_option

#########################################################################
######################## bíblia -a ######################################
#########################################################################
function test_a_option(){
local result=$(bíblia -a ecc 3 20)
local expected
local command="bíblia -a ecc 3 20"
read -r -d '' expected <<- EOF
v20 For the power of the Lord is great, and he is honoured of thelowly.
EOF
assertEQ "$result" "$expected" "$command"
echo "$result"
echo "$expected"
}
test_a_option
