#!/bin/bash

#tutti i colleghi mi hanno detto di limitarmi unicamente alla consegna senza aggiungere parti inutili dicendo che lei non avrebbe gradito
#però imparare programmando dovrebbe essere anche qualcosa che ci si diverte a fare, altrimenti perché continuare?
#spero si goda lo script

echo "got some time to waiste?"
printf "[y/n] -> "
read -r q

if [ "$q" = "y" ]
then
	echo "slow version selected"

	#modifiche ai normali cmd
	#_lista colori_
	#    tput setaf 0: Nero
	#    tput setaf 1: Rosso
	#    tput setaf 2: Verde
	#    tput setaf 3: Giallo
	#    tput setaf 4: Blu
	#    tput setaf 5: Magenta (Rosa)
	#    tput setaf 6: Ciano
	#    tput setaf 7: Grigio chiaro
	#    tput setaf 8: Grigio scuro
	#    tput setaf 9: Rosso chiaro
	#    tput setaf 10: Verde chiaro
	#    tput setaf 11: Giallo chiaro
	#    tput setaf 12: Blu chiaro
	#    tput setaf 13: Magenta chiaro
	#    tput setaf 14: Ciano chiaro
	#    tput setaf 15: Bianco

	#cambio colori
	red=$(tput setaf 1)
	green=$(tput setaf 2)
	pink=$(tput setaf 5)
	reset=$(tput sgr0)

	echo "want it to go fast?" && read speed
	if [ "$speed" = "no" ] || [ "$speed" = "don't" ] || [ "$speed" = "do not" ] || [ "$speed" = "nup" ] || [ "$speed" = "nope" ] || [ "$speed" = 0 ] || [ 				"$speed" = "nop" ] || [ "$speed" = "nyo" ] || [ "$speed" = "n" ]
	then
		# Sovrascrive il comando echo con un ritardo
		echo() {
		local delay=0.05  # Ritardo predefinito in secondi
		local arg
		for arg in "$@"
		do
			local i
			for ((i = 0; i < ${#arg}; i++))
			do
				builtin echo -n "${arg:$i:1}"
				sleep "$delay"
			done
			builtin echo  # Vai a capo alla fine
		done
		}
		# Sovrascrive il comando printf con un ritardo
		printf() {
		local delay=0.05  # Ritardo predefinito in secondi
		local arg
		for arg in "$@"; do
			local i
			for ((i = 0; i < ${#arg}; i++)); do
				builtin printf "%s" "${arg:$i:1}"
				sleep "$delay"
			done
		done
		}
	fi
	#_____________________________________________________________________________
	#________________________________PRORAMMA_____________________________________
	#_____________________________________________________________________________
	echo " "
	printf "insert numerical administrator's key: " && read -s skip
	echo " "
	printf "the input is..."

	# Verifica se la key è un numero
	if [[ "$skip" =~ ^[0-9]+$ ]]
	then
		echo " ${green}acceptable${reset}"
	else
		echo " ${red}invalid..."
		echo "program is shutting down.${reset}"
		exit 1
	fi

	#verifica che la key sia corretta
	psw=160718
	#_if key wrong_
	if [ "$skip" -ne "$psw" ]
	then
		echo "the inserted key is... ${red}wrong${reset}"
		printf "skip dialogue? " && read -r dialogue

		#_usless dialogue_
		if [ "$dialogue" = "skip" ] || [ "$dialogue" = "yeah" ] || [ "$dialogue" = "yep" ] || [ "$dialogue" = "yes" ] || [ "$dialogue" = "yup" ] || [ "$dialogue" = 1 ] || [ "$dialogue" = "k" ] || [ "$dialogue" = "y" ] || [ "$dialogue" = "k" ]
		then
			echo "uffi.."
			echo " "
			printf "nvmd"
			echo " "
		else

			#a stands for assitant
			echo " "
			printf "Hi, would you like to give me a name? " && read -r a
			echo " "
			printf "${pink}nice to meet you" && sleep 0.2 && printf "." && sleep 0.2 && printf "." && sleep 0.2 && printf ".${reset}"
			echo " "
			printf "user's name: " && read -r user
			echo "${pink}nice to meet you ${reset}$user"
			echo "${pink}I'm $a....	"
			echo "even though you already know... giggles"
			printf "." && sleep 0.2 && printf "." && sleep 0.2 && printf "." && sleep 0.2 && printf "."
			echo " "
			echo "okay, let's get some shit done.${reset}"
			echo " "
			printf "program ${pink}$a${reset} is starting" && sleep 0.2 && printf "." && sleep 0.2 && printf "." && sleep 0.2 && printf "."
			echo " "
		fi

		#_actual important program start_
		printf "insert file's name: " && read -r input
		echo "oky, input taken"
		sleep 1
		echo " "
		echo "the given file is: '$input'"
		echo "we will verify:"
		echo "1. correct arguments number?"
		echo "2. does it even exist in the current dir?"
		echo "3. correct file_type (.gbk)?"
		echo " "
		printf "wanna check it? " && read -r key

		#_when key wrong -> not allowing test -> sus -> ends program__
		if [ "$key" = "no" ] || [ "$key" = "don't" ] || [ "$key" = "do not" ] || [ "$key" = "nup" ] || [ "$key" = "nope" ] || [ "$key" = 0 ] || [ "$key" = "nop" 				] || [ "$key" = "nyo" ] || [ "$key" = "n" ]
		then
			echo "that actually was a test" && sleep 0.2 && printf "." && sleep 0.2 && printf "." && sleep 0.2 && printf "."
			sleep 1
			echo  "and gueuss what?"
			sleep 1
			echo " "
			printf "${red}y" && sleep 0.4 && printf "o" && sleep 0.4 && printf "u" && sleep 0.4 && printf " " && sleep 0.4 && printf "f" && sleep 					0.4 && printf "a" && sleep 0.4 && printf "i" && sleep 0.4 && printf "l" && sleep 0.4 && printf "e" && sleep 0.4 && printf "d" && sleep 					0.4 && printf ".${reset}"
			echo " "
			exit 1
		fi

		echo " "
		printf "proceeding..."
		echo " "

		#_file checks -> when key wrong_
		if [ ! -f "$input" ] || [ "$(echo "$input" | grep -c '\.gbk$')" -ne 1 ]
		then
			echo "${red}Sorry, at least one of them ddidn't match expectances"
			echo " "
			echo "terminating all operations"
			echo "program $a is shutting down...... ${reset} "
			exit 1
		else
			echo "1. arguments number.......... ${green}matched${reset}"
			echo "2. existance................. ${green}matched${reset}"
			echo "3. file type .gbk............  ${green}matched${reset}"
		fi

		#_#1st output: conta ricorrenze (puoi scegliere quali occorrenze cerca)_
		echo "${pink}now we have to prepare the #1 output"
		echo "how many occurrences should we look for?${reset}"
		printf "number of occurrences: " && read -r n
		counter=1
		for (( counter = 1; counter < n +1 ; counter++))
		do
			echo " "
			printf "Insert #$counter occurrence: " && read -r "O_$counter"
			echo " "

			# Ottieni il valore della variabile O_$counter usando eval
			O_value=$(eval echo " \$O_$counter ")

			# Ottieni il numero di occorrenze di O_value nel file input
			# NOTA: bisogna mettere spazio sennò conta anche le volte in cui l'input compare come parte di altro e non sè stesso e basta
			num=$(grep -o -i "  $O_value  " "$input" | wc -l)
			output="$O_value number -> $num"
			echo "$O_value -> $output"
			echo " "
		done

		# Estrai ceppo e sottoceppo dal nome del file
		# Trova la riga contenente "DEFINITION" e utilizza awk per estrarre str e substr
		str=$(grep "DEFINITION" "$input" | awk 'match($0, /str\. ([^ ]+)/, m) {print m[1]}')
		substr=$(grep "DEFINITION" "$input" | awk 'match($0, /substr\. ([^,]*)/, m) {print m[1]}')
		of1="$str-$substr.txt"
		of2="$str-$substr.xml"

		#_select prefered output -> terminale - .txt - .xml
		echo "${pink}you want output in a file?${reset}"
		printf "answer: " && read -r file
		if [ "$file" = "no" ] || [ "$file" = "don't" ] || [ "$file" = "do not" ] || [ "$file" = "nup" ] || [ "$file" = "nope" ] || [ "$file" = 0 ] || [ "$file" = "nop" ] 			|| [ "$file" = "nyo" ] || [ "$file" = "n" ]
		then
			#__________su terminale__________
			awk -F '[= "]' '
			BEGIN { print "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" }
			BEGIN { print "<root>" }
			/^ *gene/ { gene = $(NF-1); next }
			/^ * *CDS/ { tipo = "CDS"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("<data><gene>%s</gene><tipo>%s</tipo><locus>					%s</locus></data>\n", gene, tipo, locus) }
			/^ * *tRNA/ { tipo = "tRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("<data><gene>%s</gene><tipo>%s</tipo><locus>					%s</locus></data>\n", gene, tipo, locus) }
			/^ * *ncRNA/ { tipo = "ncRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("<data><gene>%s</gene><tipo>						%s</tipo><locus>%s</locus></data>\n", gene, tipo, locus) }
			END { print "</root>" }
			' "$input"
		else
			echo "what extension would you prefer?"
			printf ".txt or .xml -> " && read -r e

			#____________.txt_____________
			if [ "$e" = ".txt" ]
			then
				{
				awk -F '[= "]' '
				BEGIN { printf("%-20s%-20s%-20s\n", "gene", "tipo", "locus") }
				/^ *gene/ { gene = $(NF-1); next }
				/^ *CDS/ { tipo = "CDS"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *tRNA/ { tipo = "tRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *ncRNA/ { tipo = "ncRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				' "$input"
				awk -F '[= "]' '
				BEGIN { printf("%-20s%-20s%-20s\n", "gene", "tipo", "locus") }
				/^ *gene/ { gene = $(NF-1); next }
				/^ *CDS/ { tipo = "CDS"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *tRNA/ { tipo = "tRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *ncRNA/ { tipo = "ncRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				' "$input"
				} > "$of1"
				echo "${pink}check the current folder${reset}"

			#___________.xml____________
			elif [ "$e" = ".xml" ]
			then
				{
				awk -F '[= "]' '
				BEGIN { printf("%-20s%-20s%-20s\n", "gene", "tipo", "locus") }
				/^ *gene/ { gene = $(NF-1); next }
				/^ *CDS/ { tipo = "CDS"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *tRNA/ { tipo = "tRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *ncRNA/ { tipo = "ncRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				' "$input"
				awk -F '[= "]' '
				BEGIN { printf("%-20s%-20s%-20s\n", "gene", "tipo", "locus") }
				/^ *gene/ { gene = $(NF-1); next }
				/^ *CDS/ { tipo = "CDS"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *tRNA/ { tipo = "tRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *ncRNA/ { tipo = "ncRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				' "$input"
				} > "$of2"
				echo "${pink}check the current folder${reset}"
			
			#_______otherwise________
			else
				echo "${red}invalid input${reset}"
				echo "all operations are terminated."
				echo "program ${pink}$a${reset} shutting down...... ${pink}Bye <3 ${reset}"
				exit 1
			fi
		fi
		

	else
		#_if key right_
		#_faster mode -> can skip some parts_
		#_useless dialogue_
		echo "the key is... ${green}correct${reset}"
		a=Monika
		u=Momo
		echo "Hi $u, I'm ${pink}$a"
		echo " "
		printf "insert file's name: ${reset}" && read -r input
		echo " "
		echo "${pink}now we'll check it${reset}"

		#_checks automatically the file_
		if [ ! -f "$input" ] || [ "$(echo "$input" | grep -c '\.gbk$')" -ne 1 ]
		then
			echo "${red}Sorry, at least one of them ddidn't match expectances"
			echo
			echo "terminating all operations"
			echo "program ${pink}$a ${red}is shutting down...... ${reset} "
			exit 1
		else
			echo "1. arguments number.......... ${green}matched${reset}"
			echo "2. existance................. ${green}matched${reset}"
			echo "3. file type .gbk............ ${green}matched${reset}"
		fi

		#_ #1st output -> skippable_
		printf "${pink}skip the #1 output? ${reset}" && read -r s
		if [ "$s" = "no" ] || [ "$s" = "don't" ] || [ "$s" = "do not" ] || [ "$s" = "nup" ] || [ "$s" = "nope" ] || [ "$s" = 0 ] || [ "$s" = "nop" ] || [ "$s" = "nyo" 			] || [ "$s" = "n" ]
		then
			echo "${pink}now we have to prepare the #1 output ${reset}"
			# Ciclo per ciascun pattern
			patterns=("  CDS  " "  tRNA  " "  ncRNA  ")
			for pattern in "${patterns[@]}"
			do
			# Conta il numero di occorrenze del pattern nel file di input
			num=$(grep -o -i "  $pattern  " "$input" | wc -l)
			output="$pattern number -> $num"
			awk -v pattern="$pattern" '$2 == pattern' "$input"
			echo "$output"
			done
		fi

		#_#2nd output_

		# Estrai ceppo e sottoceppo dal nome del file
		# Trova la riga contenente "DEFINITION" e utilizza awk per estrarre str e substr
		str=$(grep "DEFINITION" "$input" | awk 'match($0, /str\. ([^ ]+)/, m) {print m[1]}')
		substr=$(grep "DEFINITION" "$input" | awk 'match($0, /substr\. ([^,]*)/, m) {print m[1]}')
		of1="$str-$substr.txt"
		of2="$str-$substr.xml"

		#_select prefered output -> terminale - .txt - .xml
		echo "${pink}you want output in a file?${reset}"
		printf "answer: " && read -r file
		if [ "$file" = "no" ] || [ "$file" = "don't" ] || [ "$file" = "do not" ] || [ "$file" = "nup" ] || [ "$file" = "nope" ] || [ "$file" = 0 ] || [ "$file" = "nop" ] 			|| [ "$file" = "nyo" ] || [ "$file" = "n" ]
		then
			#__________su terminale__________
				awk -F '[= "]' '
				BEGIN { printf("%-20s%-20s%-20s\n", "gene", "tipo", "locus") }
				/^ *gene/ { gene = $(NF-1); next }
				/^ *CDS/ { tipo = "CDS"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *tRNA/ { tipo = "tRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *ncRNA/ { tipo = "ncRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				' "$input"
				awk -F '[= "]' '
				BEGIN { printf("%-20s%-20s%-20s\n", "gene", "tipo", "locus") }
				/^ *gene/ { gene = $(NF-1); next }
				/^ *CDS/ { tipo = "CDS"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *tRNA/ { tipo = "tRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *ncRNA/ { tipo = "ncRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				' "$input"
		else
			echo "what extension would you prefer?"
			printf ".txt or .xml -> " && read -r e

			#____________.txt_____________
			if [ "$e" = ".txt" ]
			then
				{
				awk -F '[= "]' '
				BEGIN { printf("%-20s%-20s%-20s\n", "gene", "tipo", "locus") }
				/^ *gene/ { gene = $(NF-1); next }
				/^ *CDS/ { tipo = "CDS"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *tRNA/ { tipo = "tRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *ncRNA/ { tipo = "ncRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				' "$input"
				awk -F '[= "]' '
				BEGIN { printf("%-20s%-20s%-20s\n", "gene", "tipo", "locus") }
				/^ *gene/ { gene = $(NF-1); next }
				/^ *CDS/ { tipo = "CDS"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *tRNA/ { tipo = "tRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *ncRNA/ { tipo = "ncRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				' "$input"
				} > "$of1"
				echo "${pink}check the current folder${reset}"

			#___________.xml____________
			elif [ "$e" = ".xml" ]
			then
				{
				awk -F '[= "]' '
				BEGIN { printf("%-20s%-20s%-20s\n", "gene", "tipo", "locus") }
				/^ *gene/ { gene = $(NF-1); next }
				/^ *CDS/ { tipo = "CDS"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *tRNA/ { tipo = "tRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *ncRNA/ { tipo = "ncRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				' "$input"
				awk -F '[= "]' '
				BEGIN { printf("%-20s%-20s%-20s\n", "gene", "tipo", "locus") }
				/^ *gene/ { gene = $(NF-1); next }
				/^ *CDS/ { tipo = "CDS"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *tRNA/ { tipo = "tRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				/^ *ncRNA/ { tipo = "ncRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
				' "$input"
				} > "$of2"
				echo "${pink}check the current folder${reset}"
			
			#_______otherwise________
			else
				echo "${red}invalid input${reset}"
				echo "all operations are terminated."
				echo "program ${pink}$a${reset} shutting down...... ${pink}Bye <3 ${reset}"
				exit 1
			fi
		fi

		#________________EOF slow mode________________________
		echo " "
		echo "all operations terminated"
		echo "program ${pink}$a${reset} is shutrting down...... ${pink}bye <3 ${reset}"
		exit 1
	fi
fi


#_fast mode_
if [ "$q" = "n" ]
then
	echo "quick version selected"
	printf "file name: " && read -r f

	#checks del file
	if [ ! -f "$f" ] || [ "$(echo "$f" | grep -c '\.gbk$')" -ne 1 ]
	then
		echo "Sorry, at least one of them ddidn't match expectances"
		echo " "
		echo "terminating all operations"
		exit 1
	else
		echo "checks matched"
	fi

    #1st output
    # Ciclo per ciascun pattern
	patterns=("  CDS  " "  tRNA  " "  ncRNA  ")
	#_output su terminale_
	for pattern in "${patterns[@]}"
	do
		# Conta il numero di occorrenze del pattern nel file di input
		num=$(grep -o -i "  $pattern  " "$f" | wc -l)
		a="$pattern number -> $num"
		awk -v pattern="$pattern" '$2 == pattern' "$f"
		echo "$a"
	done

	#2nd output
	# salva su file .txt
	str=$(grep "DEFINITION" "$f" | awk 'match($0, /str\. ([^ ]+)/, m) {print m[1]}')
	substr=$(grep "DEFINITION" "$f" | awk 'match($0, /substr\. ([^,]*)/, m) {print m[1]}')
	#trova CDS ncRNA e tRNA
	of3="$str-$substr.txt"
	{
		awk -F '[= "]' '
		BEGIN { printf("%-20s%-20s%-20s\n", "gene", "tipo", "locus") }
		/^ *gene/ { gene = $(NF-1); next }
		/^ *CDS/ { tipo = "CDS"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
		/^ *tRNA/ { tipo = "tRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
		/^ *ncRNA/ { tipo = "ncRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
		' "$f"
		awk -F '[= "]' '
		BEGIN { printf("%-20s%-20s%-20s\n", "gene", "tipo", "locus") }
		/^ *gene/ { gene = $(NF-1); next }
		/^ *CDS/ { tipo = "CDS"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
		/^ *tRNA/ { tipo = "tRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
		/^ *ncRNA/ { tipo = "ncRNA"; getline; gene = $(NF-1); getline; locus = $(NF-1); printf("%-20s%-20s%-20s\n", gene, tipo, locus) }
		' "$f"
	} > "$of3"
	echo "operations completed."
	echo "check current dir for file: $of3"
	echo
	echo "str -> $str"
	echo "substr -> $substr"
fi

if  [ "$q" != "n" ] &&  [ "$q" = "y" ]
then
	# invalid input
	echo "input '$q' not valid"
    echo "terminating all operations"
fi

echo
exit 1

#firmato matricola VR4856