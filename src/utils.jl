
"""
Gets the corosponding mean and stdv from a fasta sequense using kmer data.
Takes in fasta data loaded from loadfasta and kmers loaded from loadkmers.
Returns a list of tuples where the values are {mean, stdv}.
"""
function fasta_to_kmer_values(fastadata, kmers)
    datastring = convert(String, fastadata[1])
    fastameans = []
    # gets the length of a single kmer key
    keylength = length(collect(keys(kmers))[1])
    for i in 1:(length(datastring)-keylength+1)
        kmerkey = datastring[i:(i+keylength-1)]
        #collects all the kmer means and stdv into a list of tuples
        push!(fastameans, tuple(parse(Float64, kmers[kmerkey][1]), parse(Float64, kmers[kmerkey][2])))
    end
    return fastameans
end

"""
runs the dtw algorthm on the 2 data sets then gets which values from that data
the dtw alignements points to
"""
function dtw_stretched(data1, data2)
    list1 = []
    list2 = []
    a,dtw1,dtw2 = dtw(data1,data2)
    for i in dtw1
        push!(list1,data1[i])
    end
    for i in dtw2
        push!(list2,data2[i])
    end
    return list1, list2
end
