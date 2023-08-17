uname -a | awk '{print $4, $5, $6, $7}' | rev | cut -c 2- | rev
