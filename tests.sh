#! /usr/bin/env bash

set -e

echo
echo
echo
echo
echo
echo
echo "===================================================================="
echo
echo
echo
echo "                 TESTS: tutorial examples"
echo
echo
echo
echo "===================================================================="
echo
echo
echo

(
	set -e -o pipefail; 

	for e in examples/tutorial/02_simulation; do
		(
			cd "$e"

			for d in *; do
				(
					echo "--------------------------------------------------------------------"
					echo
					echo "                 TEST: $d"
					echo
					echo "--------------------------------------------------------------------"


					cd "$d"
					snakemake -p --cores
				)
			done
		)

	done
)
