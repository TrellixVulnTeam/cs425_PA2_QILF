#!/bin/bash

export GEM5_DIR=../gem5

MAX_INSTS=50000000

export BENCHMARK=./benchmark1/bin/benchmark
export ARGUMENT=./benchmark1/data/input.program
time $GEM5_DIR/build/X86/gem5.opt -d ./benchmark1/m5out_LSQ:$1_REG:$2_ROB:$3_IFU:$4_CFU:$5_LSFU:$6_FFU:$7 $GEM5_DIR/configs/tutorial/cs425_pa1.py -c $BENCHMARK -o $ARGUMENT -I $MAX_INSTS --cpu-type='O3CPU' --l1i_size='64kB' --l1i_assoc='4' --l1d_size='64kB' --l1d_assoc='4' --l2_size='256kB' --l2_assoc='8' --bp-type='TournamentBP' --btb_entries='1024' --LSQ_Entries=$1 --numPhys_Regs=$2 --numROB_Entries=$3 --num_int_FUs=$4 --num_complex_FUs=$5 --num_ls_FUs=$6 --num_float_FUs=$7
echo "-------------------------------------------------------"
export BENCHMARK=./benchmark2/bin/benchmark
export ARGUMENT=./benchmark2/data/inp.in
time $GEM5_DIR/build/X86/gem5.opt -d ./benchmark2/m5out_LSQ:$1_REG:$2_ROB:$3_IFU:$4_CFU:$5_LSFU:$6_FFU:$7 $GEM5_DIR/configs/tutorial/cs425_pa1.py -c $BENCHMARK -o $ARGUMENT -I $MAX_INSTS --cpu-type='O3CPU' --l1i_size='64kB' --l1i_assoc='4' --l1d_size='64kB' --l1d_assoc='4' --l2_size='256kB' --l2_assoc='8' --bp-type='TournamentBP' --btb_entries='1024' --LSQ_Entries=$1 --numPhys_Regs=$2 --numROB_Entries=$3 --num_int_FUs=$4 --num_complex_FUs=$5 --num_ls_FUs=$6 --num_float_FUs=$7
echo "-------------------------------------------------------"
export BENCHMARK=./benchmark3/bin/benchmark
export ARGUMENT=./benchmark3/data/bombesin.hmm.new
time $GEM5_DIR/build/X86/gem5.opt -d ./benchmark3/m5out_LSQ:$1_REG:$2_ROB:$3_IFU:$4_CFU:$5_LSFU:$6_FFU:$7 $GEM5_DIR/configs/tutorial/cs425_pa1.py -c $BENCHMARK -o $ARGUMENT -I $MAX_INSTS --cpu-type='O3CPU' --l1i_size='64kB' --l1i_assoc='4' --l1d_size='64kB' --l1d_assoc='4' --l2_size='256kB' --l2_assoc='8' --bp-type='TournamentBP' --btb_entries='1024' --LSQ_Entries=$1 --numPhys_Regs=$2 --numROB_Entries=$3 --num_int_FUs=$4 --num_complex_FUs=$5 --num_ls_FUs=$6 --num_float_FUs=$7
echo "-------------------------------------------------------"
export BENCHMARK=./benchmark4/bin/benchmark
export ARGUMENT=./benchmark4/data/test.txt
time $GEM5_DIR/build/X86/gem5.opt -d ./benchmark4/m5out_LSQ:$1_REG:$2_ROB:$3_IFU:$4_CFU:$5_LSFU:$6_FFU:$7 $GEM5_DIR/configs/tutorial/cs425_pa1.py -c $BENCHMARK -o $ARGUMENT -I $MAX_INSTS --cpu-type='O3CPU' --l1i_size='64kB' --l1i_assoc='4' --l1d_size='64kB' --l1d_assoc='4' --l2_size='256kB' --l2_assoc='8' --bp-type='TournamentBP' --btb_entries='1024' --LSQ_Entries=$1 --numPhys_Regs=$2 --numROB_Entries=$3 --num_int_FUs=$4 --num_complex_FUs=$5 --num_ls_FUs=$6 --num_float_FUs=$7
echo "-------------------------------------------------------"
export BENCHMARK=./benchmark5/bin/benchmark
time $GEM5_DIR/build/X86/gem5.opt -d ./benchmark5/m5out_LSQ:$1_REG:$2_ROB:$3_IFU:$4_CFU:$5_LSFU:$6_FFU:$7 $GEM5_DIR/configs/tutorial/cs425_pa1.py -c $BENCHMARK -o "20 reference.dat 0 1 ./benchmark5/data/100_100_130_cf_a.of" -I $MAX_INSTS --cpu-type='O3CPU' --l1i_size='64kB' --l1i_assoc='4' --l1d_size='64kB' --l1d_assoc='4' --l2_size='256kB' --l2_assoc='8' --bp-type='TournamentBP' --btb_entries='1024' --LSQ_Entries=$1 --numPhys_Regs=$2 --numROB_Entries=$3 --num_int_FUs=$4 --num_complex_FUs=$5 --num_ls_FUs=$6 --num_float_FUs=$7
echo "-------------------------------------------------------"

