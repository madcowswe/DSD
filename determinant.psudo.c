
//for each column
for(int i =0; i < MXSIZE; ++i){
		if (tempmat[i][i] != 0){

			rswapcount =0;

			//for each row
			for(int j = i+1; j < MXSIZE; j++)
				//compute normalization factor
				float f = tempmat[j][i]/tempmat[i][i]

				//for each entry
				for (int k = i; k < MXSIZE; ++k)
					tempmat[j][k] = tempmat[j][k] - f*tempmat[i][k];
		} else {
			if ((MXSIZE - 1 - i) == rswapcount++){
				return 0;
			} else {

				//maintain sorted list for known to try all
				for (int k = i; k < MXSIZE - 1; ++k){
					rswap(tempmat,k,k+1);
					det *= -1; // final flip can be computed directly as isodd(i-MXSIZE-1)
				}

				//retry
				i--;
			}
		}
	}