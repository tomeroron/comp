#!/bin/bash
make
python3 setup.py build_ext --inplace


python3 symnmf.py 4 sym spheres.txt > sym_spheres_res.txt
python3 symnmf.py 4 ddg spheres.txt > ddg_spheres_res.txt
python3 symnmf.py 4 norm spheres.txt > norm_spheres_res.txt
python3 symnmf.py 4 symnmf spheres.txt > symnmf_spheres_res.txt
python3 symnmf.py 3 sym iris.txt > sym_iris_res.txt
python3 symnmf.py 3 ddg iris.txt > ddg_iris_res.txt
python3 symnmf.py 3 norm iris.txt > norm_iris_res.txt
python3 symnmf.py 3 symnmf iris.txt > symnmf_iris_res.txt
python3 symnmf.py 3 sym drive1.txt > sym_drive1_res.txt
python3 symnmf.py 3 ddg drive1.txt > ddg_drive1_res.txt
python3 symnmf.py 3 norm drive1.txt > norm_drive1_res.txt
python3 symnmf.py 3 symnmf drive1.txt > symnmf_drive1_res.txt
python3 symnmf.py 3 sym drive2.txt > sym_drive2_res.txt
python3 symnmf.py 3 ddg drive2.txt > ddg_drive2_res.txt
python3 symnmf.py 3 norm drive2.txt > norm_drive2_res.txt
python3 symnmf.py 3 symnmf drive2.txt > symnmf_drive2_res.txt

./symnmf sym spheres.txt > symc_spheres_res.txt
./symnmf ddg spheres.txt > ddgc_spheres_res.txt
./symnmf norm spheres.txt > normc_spheres_res.txt
./symnmf sym iris.txt > symc_iris_res.txt
./symnmf ddg iris.txt > ddgc_iris_res.txt
./symnmf norm iris.txt > normc_iris_res.txt
./symnmf sym drive1.txt > symc_drive1_res.txt
./symnmf ddg drive1.txt > ddgc_drive1_res.txt
./symnmf norm drive1.txt > normc_drive1_res.txt
./symnmf sym drive2.txt > symc_drive2_res.txt
./symnmf ddg drive2.txt > ddgc_drive2_res.txt
./symnmf norm drive2.txt > normc_drive2_res.txt


python3 compare.py
