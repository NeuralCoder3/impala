
declare double @llvm.exp.f64(double)
declare double @llvm.maximum.f64(double, double)
declare i8* @malloc(i64)
declare i32 @atoi([0 x i8]*)
declare void @begin()
declare void @eval()
declare void @printDouble(double)
declare void @printString([0 x i8]*)

@_496928 = global [2 x i8] [i8 10, i8 0]
@_497025 = global [2 x i8] [i8 44, i8 0]

define i32 @main(i32 %argc_497178, [0 x [0 x i8]*]* %argv_495938) {
main_495808:
    %_498027 = alloca double
    %_498455 = alloca double
    %_495956 = zext i32 1 to i64
    %_495966 = getelementptr inbounds [0 x [0 x i8]*], [0 x [0 x i8]*]* %argv_495938, i64 0, i64 %_495956
    %_495974 = load [0 x i8]*, [0 x i8]** %_495966
    %_495995 = zext i32 2 to i64
    %_496033 = zext i32 3 to i64
    %_496744 = zext i32 0 to i64
    %_496844 = zext i32 4 to i64
    %atoi_cont_499185.ret = call i32 @atoi([0 x i8]* %_495974)
    br label %atoi_cont_495979

atoi_cont_495979:
    %atoi_496441 = phi i32 [ %atoi_cont_499185.ret, %main_495808 ]
    %_496005 = getelementptr inbounds [0 x [0 x i8]*], [0 x [0 x i8]*]* %argv_495938, i64 0, i64 %_495995
    %_496013 = load [0 x i8]*, [0 x i8]** %_496005
    %atoi_cont_499183.ret = call i32 @atoi([0 x i8]* %_496013)
    br label %atoi_cont_496018

atoi_cont_496018:
    %atoi_496382 = phi i32 [ %atoi_cont_499183.ret, %atoi_cont_495979 ]
    %_496043 = getelementptr inbounds [0 x [0 x i8]*], [0 x [0 x i8]*]* %argv_495938, i64 0, i64 %_496033
    %_496051 = load [0 x i8]*, [0 x i8]** %_496043
    %atoi_cont_499181.ret = call i32 @atoi([0 x i8]* %_496051)
    br label %atoi_cont_496056

atoi_cont_496056:
    %atoi_496361 = phi i32 [ %atoi_cont_499181.ret, %atoi_cont_496018 ]
    %_496466 = zext i32 %atoi_496441 to i64
    %_496504 = mul nsw nuw i64 %_496466, 8
    %_496506.i8 = call i8* @malloc(i64 %_496504)
    %_496506 = bitcast i8* %_496506.i8 to [0 x double]*
    %_496446 = mul nsw i32 %atoi_496382, %atoi_496441
    %_496447 = zext i32 %_496446 to i64
    %_496510 = mul nsw nuw i64 %_496447, 8
    %_496512.i8 = call i8* @malloc(i64 %_496510)
    %_496512 = bitcast i8* %_496512.i8 to [0 x double]*
    %_496416 = mul nsw i32 %atoi_496361, %atoi_496382
    %_496417 = zext i32 %_496416 to i64
    %_496516 = mul nsw nuw i64 %_496417, 8
    %_496518.i8 = call i8* @malloc(i64 %_496516)
    %_496518 = bitcast i8* %_496518.i8 to [0 x double]*
    %_496383 = zext i32 %atoi_496382 to i64
    %_496522 = mul nsw nuw i64 %_496383, 8
    %_496524.i8 = call i8* @malloc(i64 %_496522)
    %_496524 = bitcast i8* %_496524.i8 to [0 x double]*
    %_496362 = zext i32 %atoi_496361 to i64
    %_496528 = mul nsw nuw i64 %_496362, 8
    %_496530.i8 = call i8* @malloc(i64 %_496528)
    %_496530 = bitcast i8* %_496530.i8 to [0 x double]*
    %_496534.i8 = call i8* @malloc(i64 %_496504)
    %_496534 = bitcast i8* %_496534.i8 to [0 x double]*
    %_496538.i8 = call i8* @malloc(i64 %_496510)
    %_496538 = bitcast i8* %_496538.i8 to [0 x double]*
    %_496542.i8 = call i8* @malloc(i64 %_496516)
    %_496542 = bitcast i8* %_496542.i8 to [0 x double]*
    %_496546.i8 = call i8* @malloc(i64 %_496522)
    %_496546 = bitcast i8* %_496546.i8 to [0 x double]*
    %_496550.i8 = call i8* @malloc(i64 %_496528)
    %_496550 = bitcast i8* %_496550.i8 to [0 x double]*
    %_496562 = bitcast [0 x double]* %_496506 to [0 x double]*
    call void @init_496076(i32 %atoi_496441, [0 x double]* %_496562, double 0x3ff0000000000000)
    br label %init_cont_496568

init_cont_496568:
    %_496576 = bitcast [0 x double]* %_496512 to [0 x double]*
    call void @init_496076(i32 %_496446, [0 x double]* %_496576, double 0x0000000000000000)
    br label %init_cont_496582

init_cont_496582:
    %_496590 = bitcast [0 x double]* %_496518 to [0 x double]*
    call void @init_496076(i32 %_496416, [0 x double]* %_496590, double 0x0000000000000000)
    br label %init_cont_496591

init_cont_496591:
    %_496688 = bitcast [0 x double]* %_496530 to [0 x double]*
    call void @const_496614(i32 %atoi_496361, [0 x double]* %_496688)
    br label %const_cont_496689

const_cont_496689:
    %_496695 = bitcast [0 x double]* %_496534 to [0 x double]*
    call void @const_496614(i32 %atoi_496441, [0 x double]* %_496695)
    br label %const_cont_496696

const_cont_496696:
    %_496704 = bitcast [0 x double]* %_496538 to [0 x double]*
    call void @const_496614(i32 %_496446, [0 x double]* %_496704)
    br label %const_cont_496705

const_cont_496705:
    %_496713 = bitcast [0 x double]* %_496542 to [0 x double]*
    call void @const_496614(i32 %_496416, [0 x double]* %_496713)
    br label %const_cont_496714

const_cont_496714:
    %_496722 = bitcast [0 x double]* %_496550 to [0 x double]*
    call void @const_496614(i32 %atoi_496361, [0 x double]* %_496722)
    br label %const_cont_496723

const_cont_496723:
    %_496754 = getelementptr inbounds [0 x double], [0 x double]* %_496722, i64 0, i64 %_496744
    store double 0x3ff0000000000000, double* %_496754
    call void @begin()
    br label %begin_cont_496762

begin_cont_496762:
    %_497319 = zext i32 %atoi_496361 to i64
    %_497335 = mul nsw nuw i64 %_497319, 8
    %cache__497337.i8 = call i8* @malloc(i64 %_497335)
    %cache__497337 = bitcast i8* %cache__497337.i8 to [0 x double]*
    %cache__497341.i8 = call i8* @malloc(i64 %_497335)
    %cache__497341 = bitcast i8* %cache__497341.i8 to [0 x double]*
    %cache__497345.i8 = call i8* @malloc(i64 %_497335)
    %cache__497345 = bitcast i8* %cache__497345.i8 to [0 x double]*
    %_497304 = mul i32 %atoi_496361, %atoi_496382
    %_497305 = zext i32 %_497304 to i64
    %_497349 = mul nsw nuw i64 %_497305, 8
    %cache__497351.i8 = call i8* @malloc(i64 %_497349)
    %cache__497351 = bitcast i8* %cache__497351.i8 to [0 x double]*
    %cache__497355.i8 = call i8* @malloc(i64 %_497349)
    %cache__497355 = bitcast i8* %cache__497355.i8 to [0 x double]*
    %cache__497359.i8 = call i8* @malloc(i64 %_497349)
    %cache__497359 = bitcast i8* %cache__497359.i8 to [0 x double]*
    %_497280 = mul i32 %atoi_496382, %atoi_496441
    %_497281 = zext i32 %_497280 to i64
    %_497363 = mul nsw nuw i64 %_497281, 8
    %cache__497365.i8 = call i8* @malloc(i64 %_497363)
    %cache__497365 = bitcast i8* %cache__497365.i8 to [0 x double]*
    %cache__497369.i8 = call i8* @malloc(i64 %_497363)
    %cache__497369 = bitcast i8* %cache__497369.i8 to [0 x double]*
    %_497080 = bitcast [0 x double]* %_496524 to [0 x double]*
    %_497372 = bitcast [0 x double]* %cache__497369 to [0 x double]*
    %_497417 = bitcast [0 x double]* %cache__497365 to [0 x double]*
    br label %for_496763

for_496763:
    %begin_498952 = phi i32 [ 0, %begin_cont_496762 ], [ %_498959, %_498950 ]
    %step_498954 = phi i32 [ 1, %begin_cont_496762 ], [ %step_498954, %_498950 ]
    %end_498961 = phi i32 [ %atoi_496441, %begin_cont_496762 ], [ %end_498961, %_498950 ]
    %_499155 = icmp ult i32 %begin_498952, %end_498961
    br i1 %_499155, label %aug_lambda_498948, label %_496764

aug_lambda_498948:
    %_498988 = zext i32 %begin_498952 to i64
    %input_498998 = getelementptr inbounds [0 x double], [0 x double]* %_496562, i64 0, i64 %_498988
    %_499018 = mul nsw i32 %atoi_496382, %begin_498952
    %_499069 = mul i32 %atoi_496382, %begin_498952
    br label %for_498949

for_498949:
    %begin_498969 = phi i32 [ 0, %aug_lambda_498948 ], [ %_498976, %aug_lambda_498967 ]
    %end_498978 = phi i32 [ %atoi_496382, %aug_lambda_498948 ], [ %end_498978, %aug_lambda_498967 ]
    %step_498971 = phi i32 [ 1, %aug_lambda_498948 ], [ %step_498971, %aug_lambda_498967 ]
    %_499146 = icmp ult i32 %begin_498969, %end_498978
    br i1 %_499146, label %aug_lambda_498967, label %_498950

_498950:
    %_498959 = add i32 %begin_498952, %step_498954
    br label %for_496763

aug_lambda_498967:
    %_498976 = add i32 %begin_498969, %step_498971
    %input_val_499006 = load double, double* %input_498998
    %_499023 = add nsw i32 %begin_498969, %_499018
    %_499024 = zext i32 %_499023 to i64
    %first_weights_499034 = getelementptr inbounds [0 x double], [0 x double]* %_496576, i64 0, i64 %_499024
    %first_weights_val_499042 = load double, double* %first_weights_499034
    %_499045 = zext i32 %begin_498969 to i64
    %hidden_output_499055 = getelementptr inbounds [0 x double], [0 x double]* %_497080, i64 0, i64 %_499045
    %hidden_output_val_499063 = load double, double* %hidden_output_499055
    %_499074 = add i32 %begin_498969, %_499069
    %lea_cache_499084 = getelementptr inbounds [0 x double], [0 x double]* %_497372, i64 0, i32 %_499074
    %_499093 = fmul double %input_val_499006, %first_weights_val_499042
    store double %_499093, double* %lea_cache_499084
    %lea_cache_499110 = getelementptr inbounds [0 x double], [0 x double]* %_497417, i64 0, i32 %_499074
    %_499115 = fmul double 0x3fb999999999999a, %_499093
    store double %_499115, double* %lea_cache_499110
    %_499124 = tail call double @llvm.maximum.f64(double %_499093, double %_499115)
    %_499131 = fadd double %_499124, %hidden_output_val_499063
    store double %_499131, double* %hidden_output_499055
    br label %for_498949

_496764:
    %_497809 = bitcast [0 x double]* %cache__497359 to [0 x double]*
    %_497748 = bitcast [0 x double]* %cache__497355 to [0 x double]*
    %_497786 = bitcast [0 x double]* %cache__497351 to [0 x double]*
    br label %for_496765

for_496765:
    %begin_498691 = phi i32 [ 0, %_496764 ], [ %_498698, %_498689 ]
    %end_498700 = phi i32 [ %atoi_496382, %_496764 ], [ %end_498700, %_498689 ]
    %step_498693 = phi i32 [ 1, %_496764 ], [ %step_498693, %_498689 ]
    %_498940 = icmp ult i32 %begin_498691, %end_498700
    br i1 %_498940, label %aug_lambda_498687, label %_496766

aug_lambda_498687:
    %_498743 = zext i32 %begin_498691 to i64
    %hidden_output_498753 = getelementptr inbounds [0 x double], [0 x double]* %_497080, i64 0, i64 %_498743
    %_498779 = mul nsw i32 %atoi_496361, %begin_498691
    %_498830 = mul i32 %atoi_496361, %begin_498691
    br label %for_498688

for_498688:
    %end_498717 = phi i32 [ %atoi_496361, %aug_lambda_498687 ], [ %end_498717, %aug_lambda_498706 ]
    %step_498710 = phi i32 [ 1, %aug_lambda_498687 ], [ %step_498710, %aug_lambda_498706 ]
    %begin_498708 = phi i32 [ 0, %aug_lambda_498687 ], [ %_498715, %aug_lambda_498706 ]
    %_498930 = icmp ult i32 %begin_498708, %end_498717
    br i1 %_498930, label %aug_lambda_498706, label %_498689

aug_lambda_498706:
    %_498715 = add i32 %begin_498708, %step_498710
    %hidden_output_val_498761 = load double, double* %hidden_output_498753
    %_498784 = add nsw i32 %begin_498708, %_498779
    %_498785 = zext i32 %_498784 to i64
    %second_weights_498795 = getelementptr inbounds [0 x double], [0 x double]* %_496590, i64 0, i64 %_498785
    %second_weights_val_498803 = load double, double* %second_weights_498795
    %_498806 = zext i32 %begin_498708 to i64
    %output_498816 = getelementptr inbounds [0 x double], [0 x double]* %_496688, i64 0, i64 %_498806
    %output_val_498824 = load double, double* %output_498816
    %_498835 = add i32 %begin_498708, %_498830
    %lea_cache_498845 = getelementptr inbounds [0 x double], [0 x double]* %_497809, i64 0, i32 %_498835
    store double %hidden_output_val_498761, double* %lea_cache_498845
    %lea_cache_498864 = getelementptr inbounds [0 x double], [0 x double]* %_497748, i64 0, i32 %_498835
    %_498871 = fmul double %hidden_output_val_498761, %second_weights_val_498803
    store double %_498871, double* %lea_cache_498864
    %lea_cache_498888 = getelementptr inbounds [0 x double], [0 x double]* %_497786, i64 0, i32 %_498835
    %_498893 = fmul double 0x3fb999999999999a, %_498871
    store double %_498893, double* %lea_cache_498888
    %_498908 = tail call double @llvm.maximum.f64(double %_498871, double %_498893)
    %_498915 = fadd double %_498908, %output_val_498824
    store double %_498915, double* %output_498816
    br label %for_498688

_498689:
    %_498698 = add i32 %begin_498691, %step_498693
    br label %for_496765

_496766:
    store double 0x0000000000000000, double* %_498455
    %_498139 = bitcast [0 x double]* %cache__497345 to [0 x double]*
    br label %for_496767

for_496767:
    %end_498577 = phi i32 [ %atoi_496361, %_496766 ], [ %end_498577, %aug_lambda_498566 ]
    %step_498570 = phi i32 [ 1, %_496766 ], [ %step_498570, %aug_lambda_498566 ]
    %begin_498568 = phi i32 [ 0, %_496766 ], [ %_498575, %aug_lambda_498566 ]
    %_498669 = icmp ult i32 %begin_498568, %end_498577
    br i1 %_498669, label %aug_lambda_498566, label %_496768

aug_lambda_498566:
    %_498575 = add i32 %begin_498568, %step_498570
    %_498583 = zext i32 %begin_498568 to i64
    %output_498593 = getelementptr inbounds [0 x double], [0 x double]* %_496688, i64 0, i64 %_498583
    %output_val_498601 = load double, double* %output_498593
    %_val_498611 = load double, double* %_498455
    %lea_cache_498623 = getelementptr inbounds [0 x double], [0 x double]* %_498139, i64 0, i32 %begin_498568
    %_498633 = tail call double @llvm.exp.f64(double %output_val_498601)
    store double %_498633, double* %lea_cache_498623
    %_498647 = fadd double %_498633, %_val_498611
    store double %_498647, double* %_498455
    store double %_498633, double* %output_498593
    br label %for_496767

_496768:
    %_498260 = bitcast [0 x double]* %cache__497341 to [0 x double]*
    %_498283 = bitcast [0 x double]* %cache__497337 to [0 x double]*
    br label %for_496769

for_496769:
    %begin_498426 = phi i32 [ 0, %_496768 ], [ %_498433, %aug_lambda_498424 ]
    %end_498435 = phi i32 [ %atoi_496361, %_496768 ], [ %end_498435, %aug_lambda_498424 ]
    %step_498428 = phi i32 [ 1, %_496768 ], [ %step_498428, %aug_lambda_498424 ]
    %_498558 = icmp ult i32 %begin_498426, %end_498435
    br i1 %_498558, label %aug_lambda_498424, label %_496770

aug_lambda_498424:
    %_498433 = add i32 %begin_498426, %step_498428
    %_val_498465 = load double, double* %_498455
    %_498473 = zext i32 %begin_498426 to i64
    %output_498483 = getelementptr inbounds [0 x double], [0 x double]* %_496688, i64 0, i64 %_498473
    %output_val_498491 = load double, double* %output_498483
    %lea_cache_498509 = getelementptr inbounds [0 x double], [0 x double]* %_498260, i64 0, i32 %begin_498426
    store double %output_val_498491, double* %lea_cache_498509
    %lea_cache_498528 = getelementptr inbounds [0 x double], [0 x double]* %_498283, i64 0, i32 %begin_498426
    store double %_val_498465, double* %lea_cache_498528
    %_498543 = fdiv double %output_val_498491, %_val_498465
    store double %_498543, double* %output_498483
    br label %for_496769

_496770:
    store double 0x0000000000000000, double* %_498027
    %_497712 = add i32 4294967295, %atoi_496361
    br label %for_496771

for_496771:
    %begin_498215 = phi i32 [ 0, %_496770 ], [ %_498222, %invert_lambda_498213 ]
    %step_498217 = phi i32 [ 1, %_496770 ], [ %step_498217, %invert_lambda_498213 ]
    %end_498224 = phi i32 [ %atoi_496361, %_496770 ], [ %end_498224, %invert_lambda_498213 ]
    %_498404 = icmp ult i32 %begin_498215, %end_498224
    br i1 %_498404, label %invert_lambda_498213, label %_496772

invert_lambda_498213:
    %_498222 = add i32 %begin_498215, %step_498217
    %_498229 = sub i32 %_497712, %begin_498215
    %_498230 = zext i32 %_498229 to i64
    %_498240 = getelementptr inbounds [0 x double], [0 x double]* %_496722, i64 0, i64 %_498230
    %_498248 = load double, double* %_498240
    store double 0x0000000000000000, double* %_498240
    %_498270 = getelementptr inbounds [0 x double], [0 x double]* %_498260, i64 0, i32 %_498229
    %_498278 = load double, double* %_498270
    %_498293 = getelementptr inbounds [0 x double], [0 x double]* %_498283, i64 0, i32 %_498229
    %_498301 = load double, double* %_498293
    %_498311 = load double, double* %_498240
    %_498324 = fdiv fast double %_498248, %_498301
    %_498331 = fadd fast double %_498324, %_498311
    store double %_498331, double* %_498240
    %_498346 = load double, double* %_498027
    %_498358 = fsub fast double 0x8000000000000000, %_498248
    %_498363 = fmul fast double %_498278, %_498358
    %_498377 = fmul fast double %_498301, %_498301
    %_498382 = fdiv fast double %_498363, %_498377
    %_498389 = fadd fast double %_498382, %_498346
    store double %_498389, double* %_498027
    br label %for_496771

_496772:
    br label %for_496773

for_496773:
    %begin_498051 = phi i32 [ 0, %_496772 ], [ %_498058, %invert_lambda_498049 ]
    %end_498060 = phi i32 [ %atoi_496361, %_496772 ], [ %end_498060, %invert_lambda_498049 ]
    %step_498053 = phi i32 [ 1, %_496772 ], [ %step_498053, %invert_lambda_498049 ]
    %_498205 = icmp ult i32 %begin_498051, %end_498060
    br i1 %_498205, label %invert_lambda_498049, label %_496774

invert_lambda_498049:
    %_498058 = add i32 %begin_498051, %step_498053
    %_498065 = sub i32 %_497712, %begin_498051
    %_498066 = zext i32 %_498065 to i64
    %_498076 = getelementptr inbounds [0 x double], [0 x double]* %_496722, i64 0, i64 %_498066
    %_498084 = load double, double* %_498076
    store double 0x0000000000000000, double* %_498076
    %_498101 = load double, double* %_498027
    store double 0x0000000000000000, double* %_498027
    %_498118 = load double, double* %_498027
    %_498129 = fadd fast double %_498101, %_498118
    store double %_498129, double* %_498027
    %_498149 = getelementptr inbounds [0 x double], [0 x double]* %_498139, i64 0, i32 %_498065
    %_498157 = load double, double* %_498149
    %_498167 = load double, double* %_498076
    %_498176 = fadd fast double %_498101, %_498084
    %_498183 = fmul fast double %_498176, %_498157
    %_498190 = fadd fast double %_498183, %_498167
    store double %_498190, double* %_498076
    br label %for_496773

_496774:
    %_498037 = load double, double* %_498027
    store double 0x0000000000000000, double* %_498027
    %_497235 = add i32 4294967295, %atoi_496382
    %_497113 = bitcast [0 x double]* %_496546 to [0 x double]*
    br label %for_496775

for_496775:
    %begin_497679 = phi i32 [ 0, %_496774 ], [ %_497686, %_497677 ]
    %step_497681 = phi i32 [ 1, %_496774 ], [ %step_497681, %_497677 ]
    %end_497688 = phi i32 [ %atoi_496382, %_496774 ], [ %end_497688, %_497677 ]
    %_498009 = icmp ult i32 %begin_497679, %end_497688
    br i1 %_498009, label %invert_lambda_497675, label %_496776

invert_lambda_497675:
    %_497753 = sub i32 %_497235, %begin_497679
    %_497758 = mul i32 %atoi_496361, %_497753
    %_497833 = mul nsw i32 %atoi_496361, %_497753
    %_497950 = zext i32 %_497753 to i64
    %_497960 = getelementptr inbounds [0 x double], [0 x double]* %_497113, i64 0, i64 %_497950
    br label %for_497676

for_497676:
    %begin_497696 = phi i32 [ 0, %invert_lambda_497675 ], [ %_497703, %invert_lambda_497694 ]
    %step_497698 = phi i32 [ 1, %invert_lambda_497675 ], [ %step_497698, %invert_lambda_497694 ]
    %end_497705 = phi i32 [ %atoi_496361, %invert_lambda_497675 ], [ %end_497705, %invert_lambda_497694 ]
    %_497999 = icmp ult i32 %begin_497696, %end_497705
    br i1 %_497999, label %invert_lambda_497694, label %_497677

invert_lambda_497694:
    %_497703 = add i32 %begin_497696, %step_497698
    %_497717 = sub i32 %_497712, %begin_497696
    %_497718 = zext i32 %_497717 to i64
    %_497728 = getelementptr inbounds [0 x double], [0 x double]* %_496722, i64 0, i64 %_497718
    %_497736 = load double, double* %_497728
    store double 0x0000000000000000, double* %_497728
    %_497763 = add i32 %_497717, %_497758
    %_497773 = getelementptr inbounds [0 x double], [0 x double]* %_497748, i64 0, i32 %_497763
    %_497781 = load double, double* %_497773
    %_497796 = getelementptr inbounds [0 x double], [0 x double]* %_497786, i64 0, i32 %_497763
    %_497804 = load double, double* %_497796
    %_497819 = getelementptr inbounds [0 x double], [0 x double]* %_497809, i64 0, i32 %_497763
    %_497827 = load double, double* %_497819
    %_497838 = add nsw i32 %_497717, %_497833
    %_497839 = zext i32 %_497838 to i64
    %_497849 = getelementptr inbounds [0 x double], [0 x double]* %_496590, i64 0, i64 %_497839
    %_497857 = load double, double* %_497849
    %_497867 = load double, double* %_497728
    %_497878 = fadd fast double %_497736, %_497867
    store double %_497878, double* %_497728
    %_497895 = getelementptr inbounds [0 x double], [0 x double]* %_496713, i64 0, i64 %_497839
    %_497903 = load double, double* %_497895
    %_497906.0 = insertvalue [2 x double] undef, double 0x0000000000000000, 0
    %_497906.1 = insertvalue [2 x double] %_497906.0, double %_497736, 1
    %_497915 = fcmp ogt double %_497781, %_497804
    %_497916 = select fast i1 %_497915, double %_497736, double 0x0000000000000000 
    %_497917.0 = insertvalue [2 x double] undef, double %_497736, 0
    %_497917.1 = insertvalue [2 x double] %_497917.0, double 0x0000000000000000, 1
    %_497918 = select fast i1 %_497915, double 0x0000000000000000, double %_497736 
    %_497923 = fmul fast double 0x3fb999999999999a, %_497918
    %_497928 = fadd fast double %_497916, %_497923
    %_497935 = fmul fast double %_497928, %_497827
    %_497942 = fadd fast double %_497935, %_497903
    store double %_497942, double* %_497895
    %_497968 = load double, double* %_497960
    %_497977 = fmul fast double %_497928, %_497857
    %_497984 = fadd fast double %_497977, %_497968
    store double %_497984, double* %_497960
    br label %for_497676

_497677:
    %_497686 = add i32 %begin_497679, %step_497681
    br label %for_496775

_496776:
    %_497379 = add i32 4294967295, %atoi_496441
    br label %for_496777

for_496777:
    %begin_497200 = phi i32 [ 0, %_496776 ], [ %_497207, %_497198 ]
    %end_497209 = phi i32 [ %atoi_496441, %_496776 ], [ %end_497209, %_497198 ]
    %step_497202 = phi i32 [ 1, %_496776 ], [ %step_497202, %_497198 ]
    %_497667 = icmp ult i32 %begin_497200, %end_497209
    br i1 %_497667, label %invert_lambda_497196, label %_496778

_496778:
    call void @eval()
    br label %eval_cont_496792

eval_cont_496792:
    %_497184 = icmp sge i32 %argc_497178, 5
    br i1 %_497184, label %and_t_496830, label %eta_if_join_496806

and_t_496830:
    %_496854 = getelementptr inbounds [0 x [0 x i8]*], [0 x [0 x i8]*]* %argv_495938, i64 0, i64 %_496844
    %_496862 = load [0 x i8]*, [0 x i8]** %_496854
    %atoi_cont_497166.ret = call i32 @atoi([0 x i8]* %_496862)
    br label %atoi_cont_496867

atoi_cont_496867:
    %atoi_497155 = phi i32 [ %atoi_cont_497166.ret, %and_t_496830 ]
    %_497160 = icmp eq i32 1, %atoi_497155
    br i1 %_497160, label %if_then_496876, label %eta_if_join_496869

if_then_496876:
    call void @print_496887(i32 %atoi_496441, [0 x double]* %_496562)
    br label %print_cont_497066

print_cont_497066:
    call void @print_496887(i32 %_496446, [0 x double]* %_496576)
    br label %print_cont_497072

print_cont_497072:
    call void @print_496887(i32 %atoi_496382, [0 x double]* %_497080)
    br label %print_cont_497081

print_cont_497081:
    call void @print_496887(i32 %_496416, [0 x double]* %_496590)
    br label %print_cont_497087

print_cont_497087:
    call void @print_496887(i32 %atoi_496361, [0 x double]* %_496688)
    br label %print_cont_497093

print_cont_497093:
    call void @print_496887(i32 %atoi_496441, [0 x double]* %_496695)
    br label %print_cont_497099

print_cont_497099:
    call void @print_496887(i32 %_496446, [0 x double]* %_496704)
    br label %print_cont_497105

print_cont_497105:
    call void @print_496887(i32 %atoi_496382, [0 x double]* %_497113)
    br label %print_cont_497114

print_cont_497114:
    call void @print_496887(i32 %_496416, [0 x double]* %_496713)
    br label %print_cont_497120

print_cont_497120:
    call void @print_496887(i32 %atoi_496361, [0 x double]* %_496722)
    br label %eta_if_join_497126

eta_if_join_497126:
    br label %if_join_496809

eta_if_join_496869:
    br label %if_join_496809

eta_if_join_496806:
    br label %if_join_496809

if_join_496809:
    br label %return_496816

return_496816:
    %_501476 = phi i32 [ 0, %if_join_496809 ]
    ret i32 %_501476

invert_lambda_497196:
    %_497384 = sub i32 %_497379, %begin_497200
    %_497389 = mul i32 %atoi_496382, %_497384
    %_497442 = zext i32 %_497384 to i64
    %_497452 = getelementptr inbounds [0 x double], [0 x double]* %_496562, i64 0, i64 %_497442
    %_497478 = mul nsw i32 %atoi_496382, %_497384
    %_497618 = getelementptr inbounds [0 x double], [0 x double]* %_496695, i64 0, i64 %_497442
    br label %for_497197

for_497197:
    %step_497219 = phi i32 [ 1, %invert_lambda_497196 ], [ %step_497219, %invert_lambda_497215 ]
    %begin_497217 = phi i32 [ 0, %invert_lambda_497196 ], [ %_497224, %invert_lambda_497215 ]
    %end_497226 = phi i32 [ %atoi_496382, %invert_lambda_497196 ], [ %end_497226, %invert_lambda_497215 ]
    %_497657 = icmp ult i32 %begin_497217, %end_497226
    br i1 %_497657, label %invert_lambda_497215, label %_497198

_497198:
    %_497207 = add i32 %begin_497200, %step_497202
    br label %for_496777

invert_lambda_497215:
    %_497224 = add i32 %begin_497217, %step_497219
    %_497240 = sub i32 %_497235, %begin_497217
    %_497241 = zext i32 %_497240 to i64
    %_497251 = getelementptr inbounds [0 x double], [0 x double]* %_497113, i64 0, i64 %_497241
    %_497259 = load double, double* %_497251
    store double 0x0000000000000000, double* %_497251
    %_497394 = add i32 %_497240, %_497389
    %_497404 = getelementptr inbounds [0 x double], [0 x double]* %_497372, i64 0, i32 %_497394
    %_497412 = load double, double* %_497404
    %_497427 = getelementptr inbounds [0 x double], [0 x double]* %_497417, i64 0, i32 %_497394
    %_497435 = load double, double* %_497427
    %_497460 = load double, double* %_497452
    %_497483 = add nsw i32 %_497240, %_497478
    %_497484 = zext i32 %_497483 to i64
    %_497494 = getelementptr inbounds [0 x double], [0 x double]* %_496576, i64 0, i64 %_497484
    %_497502 = load double, double* %_497494
    %_497512 = load double, double* %_497251
    %_497527 = fadd fast double %_497259, %_497512
    store double %_497527, double* %_497251
    %_497544 = getelementptr inbounds [0 x double], [0 x double]* %_496704, i64 0, i64 %_497484
    %_497552 = load double, double* %_497544
    %_497556.0 = insertvalue [2 x double] undef, double 0x0000000000000000, 0
    %_497556.1 = insertvalue [2 x double] %_497556.0, double %_497259, 1
    %_497574 = fcmp ogt double %_497412, %_497435
    %_497575 = select fast i1 %_497574, double %_497259, double 0x0000000000000000 
    %_497576.0 = insertvalue [2 x double] undef, double %_497259, 0
    %_497576.1 = insertvalue [2 x double] %_497576.0, double 0x0000000000000000, 1
    %_497577 = select fast i1 %_497574, double 0x0000000000000000, double %_497259 
    %_497582 = fmul fast double 0x3fb999999999999a, %_497577
    %_497587 = fadd fast double %_497575, %_497582
    %_497594 = fmul fast double %_497587, %_497460
    %_497601 = fadd fast double %_497594, %_497552
    store double %_497601, double* %_497544
    %_497626 = load double, double* %_497618
    %_497635 = fmul fast double %_497587, %_497502
    %_497642 = fadd fast double %_497635, %_497626
    store double %_497642, double* %_497618
    br label %for_497197

}

define void @init_496076(i32 %size_496341, [0 x double]* %a_496223, double %offset_496253) {
init_496076:
    br label %for_496083

for_496083:
    %begin_496129 = phi i32 [ 0, %init_496076 ], [ %_496140, %lambda_496114 ]
    %end_496145 = phi i32 [ %size_496341, %init_496076 ], [ %end_496145, %lambda_496114 ]
    %step_496135 = phi i32 [ 1, %init_496076 ], [ %step_496135, %lambda_496114 ]
    %_496329 = icmp ult i32 %begin_496129, %end_496145
    br i1 %_496329, label %lambda_496114, label %_496086

_496086:
    br label %return_496096

return_496096:
    ret void

lambda_496114:
    %_496140 = add i32 %begin_496129, %step_496135
    %_496224 = zext i32 %begin_496129 to i64
    %_496234 = getelementptr inbounds [0 x double], [0 x double]* %a_496223, i64 0, i64 %_496224
    %_496298 = sitofp i32 %begin_496129 to double
    %_496303 = fmul double 0x3fb999999999999a, %_496298
    %_496308 = fadd double %offset_496253, %_496303
    store double %_496308, double* %_496234
    br label %for_496083

}

define void @const_496614(i32 %_496680, [0 x double]* %_496650) {
const_496614:
    br label %for_496615

for_496615:
    %step_496634 = phi i32 [ 1, %const_496614 ], [ %step_496634, %lambda_496630 ]
    %begin_496632 = phi i32 [ 0, %const_496614 ], [ %_496639, %lambda_496630 ]
    %end_496641 = phi i32 [ %_496680, %const_496614 ], [ %end_496641, %lambda_496630 ]
    %_496676 = icmp ult i32 %begin_496632, %end_496641
    br i1 %_496676, label %lambda_496630, label %_496616

lambda_496630:
    %_496639 = add i32 %begin_496632, %step_496634
    %_496651 = zext i32 %begin_496632 to i64
    %_496661 = getelementptr inbounds [0 x double], [0 x double]* %_496650, i64 0, i64 %_496651
    store double 0x0000000000000000, double* %_496661
    br label %for_496615

_496616:
    br label %_496617

_496617:
    ret void

}

define void @print_496887(i32 %size_497060, [0 x double]* %a_496993) {
print_496887:
    %_496936 = bitcast [2 x i8]* @_496928 to [0 x i8]*
    %_497028 = bitcast [2 x i8]* @_497025 to [0 x i8]*
    br label %for_496888

for_496888:
    %begin_496995 = phi i32 [ 0, %print_496887 ], [ %_497037, %yield_497030 ]
    %end_497039 = phi i32 [ %size_497060, %print_496887 ], [ %end_497039, %yield_497030 ]
    %step_497032 = phi i32 [ 1, %print_496887 ], [ %step_497032, %yield_497030 ]
    %_497052 = icmp ult i32 %begin_496995, %end_497039
    br i1 %_497052, label %lambda_496952, label %_496889

_496889:
    call void @printString([0 x i8]* %_496936)
    br label %return_496941

return_496941:
    ret void

lambda_496952:
    %_496996 = zext i32 %begin_496995 to i64
    %_497006 = getelementptr inbounds [0 x double], [0 x double]* %a_496993, i64 0, i64 %_496996
    %_497014 = load double, double* %_497006
    call void @printDouble(double %_497014)
    br label %printDouble_cont_497019

printDouble_cont_497019:
    call void @printString([0 x i8]* %_497028)
    br label %yield_497030

yield_497030:
    %_497037 = add i32 %begin_496995, %step_497032
    br label %for_496888

}


