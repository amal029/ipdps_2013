for i in ../figures/*.pdf; do
	pdfcrop --margins "0 0 0 0" $i $i
done
