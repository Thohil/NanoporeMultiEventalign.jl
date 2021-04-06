__precompile__(true)

module NanoporeMultiEventalign
using BioSequences
using FASTX
using Plots
using DynamicAxisWarping

using HDF5
using BioSequences
using FASTX

include("utils.jl")
include("persistence.jl")
include("dtw.jl")
a = loadnanoporefast5("test/sample_data/fast5/control/0/00bd9eb5-2419-4bab-80bd-d72902825546.fast5")
b = loadnanoporefast5("test/sample_data/fast5/control/0/00db9748-163d-4a00-849c-28c16a0d5cc3.fast5")


export dtw3
export loadnanoporefast5, loadfasta, loadkmers, fasta_to_kmer_values, dtw_stretched


end # module
