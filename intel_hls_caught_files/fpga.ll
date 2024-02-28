; ModuleID = 'atax_0.c'
source_filename = "atax_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__ihc_enqueue_handle = weak dso_local global i8* null, align 8, !dbg !0
@.str = private unnamed_addr constant [62 x i8] c"{memory:DEFAULT}{sizeinfo:4,64,64}{bankwidth:256}{numbanks:1}\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [9 x i8] c"atax_0.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [47 x i8] c"{memory:DEFAULT}{sizeinfo:4,64}{bankwidth:256}\00", section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Z4ataxPA64_fPfS1_([64 x float]* %A, float* %x, float* %y_out) #0 !dbg !375 !ihc_component !395 !arg_type !396 !impl_type !397 !stable !398 !cosim_name !399 !memory !400 !component_interface !401 !stall_free_return !402 !use_single_clock !402 {
entry:
  %A.addr = alloca [64 x float]*, align 8
  %x.addr = alloca float*, align 8
  %y_out.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %buff_A = alloca [64 x [64 x float]], align 16
  %buff_x = alloca [64 x float], align 16
  %buff_y_out = alloca [64 x float], align 16
  %tmp1 = alloca [64 x float], align 16
  store [64 x float]* %A, [64 x float]** %A.addr, align 8, !tbaa !403
  call void @llvm.dbg.declare(metadata [64 x float]** %A.addr, metadata !384, metadata !DIExpression()), !dbg !407
  store float* %x, float** %x.addr, align 8, !tbaa !403
  call void @llvm.dbg.declare(metadata float** %x.addr, metadata !385, metadata !DIExpression()), !dbg !408
  store float* %y_out, float** %y_out.addr, align 8, !tbaa !403
  call void @llvm.dbg.declare(metadata float** %y_out.addr, metadata !386, metadata !DIExpression()), !dbg !409
  %0 = bitcast i32* %i to i8*, !dbg !410
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !410
  call void @llvm.dbg.declare(metadata i32* %i, metadata !387, metadata !DIExpression()), !dbg !411
  %1 = bitcast i32* %j to i8*, !dbg !410
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !410
  call void @llvm.dbg.declare(metadata i32* %j, metadata !388, metadata !DIExpression()), !dbg !412
  %2 = bitcast [64 x [64 x float]]* %buff_A to i8*, !dbg !413
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* %2) #4, !dbg !413
  call void @llvm.dbg.declare(metadata [64 x [64 x float]]* %buff_A, metadata !389, metadata !DIExpression()), !dbg !414
  %buff_A1 = bitcast [64 x [64 x float]]* %buff_A to i8*, !dbg !413
  call void @llvm.var.annotation(i8* %buff_A1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 8), !dbg !413
  %3 = bitcast [64 x float]* %buff_x to i8*, !dbg !415
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %3) #4, !dbg !415
  call void @llvm.dbg.declare(metadata [64 x float]* %buff_x, metadata !392, metadata !DIExpression()), !dbg !416
  %buff_x2 = bitcast [64 x float]* %buff_x to i8*, !dbg !415
  call void @llvm.var.annotation(i8* %buff_x2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 9), !dbg !415
  %4 = bitcast [64 x float]* %buff_y_out to i8*, !dbg !417
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %4) #4, !dbg !417
  call void @llvm.dbg.declare(metadata [64 x float]* %buff_y_out, metadata !393, metadata !DIExpression()), !dbg !418
  %buff_y_out3 = bitcast [64 x float]* %buff_y_out to i8*, !dbg !417
  call void @llvm.var.annotation(i8* %buff_y_out3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 10), !dbg !417
  %5 = bitcast [64 x float]* %tmp1 to i8*, !dbg !419
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %5) #4, !dbg !419
  call void @llvm.dbg.declare(metadata [64 x float]* %tmp1, metadata !394, metadata !DIExpression()), !dbg !420
  %tmp14 = bitcast [64 x float]* %tmp1 to i8*, !dbg !419
  call void @llvm.var.annotation(i8* %tmp14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 11), !dbg !419
  store i32 0, i32* %i, align 4, !dbg !421, !tbaa !423
  br label %for.cond, !dbg !425

for.cond:                                         ; preds = %for.inc22, %entry
  %6 = load i32, i32* %i, align 4, !dbg !426, !tbaa !423
  %cmp = icmp slt i32 %6, 64, !dbg !428
  br i1 %cmp, label %for.body, label %for.end24, !dbg !429

for.body:                                         ; preds = %for.cond
  %7 = load float*, float** %x.addr, align 8, !dbg !430, !tbaa !403
  %8 = load i32, i32* %i, align 4, !dbg !432, !tbaa !423
  %idxprom = sext i32 %8 to i64, !dbg !430
  %arrayidx = getelementptr inbounds float, float* %7, i64 %idxprom, !dbg !430
  %9 = load float, float* %arrayidx, align 4, !dbg !430, !tbaa !433
  %10 = load i32, i32* %i, align 4, !dbg !435, !tbaa !423
  %idxprom5 = sext i32 %10 to i64, !dbg !436
  %arrayidx6 = getelementptr inbounds [64 x float], [64 x float]* %buff_x, i64 0, i64 %idxprom5, !dbg !436
  store float %9, float* %arrayidx6, align 4, !dbg !437, !tbaa !433
  %11 = load i32, i32* %i, align 4, !dbg !438, !tbaa !423
  %idxprom7 = sext i32 %11 to i64, !dbg !439
  %arrayidx8 = getelementptr inbounds [64 x float], [64 x float]* %buff_y_out, i64 0, i64 %idxprom7, !dbg !439
  store float 0.000000e+00, float* %arrayidx8, align 4, !dbg !440, !tbaa !433
  %12 = load i32, i32* %i, align 4, !dbg !441, !tbaa !423
  %idxprom9 = sext i32 %12 to i64, !dbg !442
  %arrayidx10 = getelementptr inbounds [64 x float], [64 x float]* %tmp1, i64 0, i64 %idxprom9, !dbg !442
  store float 0.000000e+00, float* %arrayidx10, align 4, !dbg !443, !tbaa !433
  store i32 0, i32* %j, align 4, !dbg !444, !tbaa !423
  br label %for.cond11, !dbg !446

for.cond11:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4, !dbg !447, !tbaa !423
  %cmp12 = icmp slt i32 %13, 64, !dbg !449
  br i1 %cmp12, label %for.body13, label %for.end, !dbg !450

for.body13:                                       ; preds = %for.cond11
  %14 = load [64 x float]*, [64 x float]** %A.addr, align 8, !dbg !451, !tbaa !403
  %15 = load i32, i32* %i, align 4, !dbg !453, !tbaa !423
  %idxprom14 = sext i32 %15 to i64, !dbg !451
  %arrayidx15 = getelementptr inbounds [64 x float], [64 x float]* %14, i64 %idxprom14, !dbg !451
  %16 = load i32, i32* %j, align 4, !dbg !454, !tbaa !423
  %idxprom16 = sext i32 %16 to i64, !dbg !451
  %arrayidx17 = getelementptr inbounds [64 x float], [64 x float]* %arrayidx15, i64 0, i64 %idxprom16, !dbg !451
  %17 = load float, float* %arrayidx17, align 4, !dbg !451, !tbaa !433
  %18 = load i32, i32* %i, align 4, !dbg !455, !tbaa !423
  %idxprom18 = sext i32 %18 to i64, !dbg !456
  %arrayidx19 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* %buff_A, i64 0, i64 %idxprom18, !dbg !456
  %19 = load i32, i32* %j, align 4, !dbg !457, !tbaa !423
  %idxprom20 = sext i32 %19 to i64, !dbg !456
  %arrayidx21 = getelementptr inbounds [64 x float], [64 x float]* %arrayidx19, i64 0, i64 %idxprom20, !dbg !456
  store float %17, float* %arrayidx21, align 4, !dbg !458, !tbaa !433
  br label %for.inc, !dbg !459

for.inc:                                          ; preds = %for.body13
  %20 = load i32, i32* %j, align 4, !dbg !460, !tbaa !423
  %inc = add nsw i32 %20, 1, !dbg !460
  store i32 %inc, i32* %j, align 4, !dbg !460, !tbaa !423
  br label %for.cond11, !dbg !461, !llvm.loop !462

for.end:                                          ; preds = %for.cond11
  br label %for.inc22, !dbg !465

for.inc22:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4, !dbg !466, !tbaa !423
  %inc23 = add nsw i32 %21, 1, !dbg !466
  store i32 %inc23, i32* %i, align 4, !dbg !466, !tbaa !423
  br label %for.cond, !dbg !467, !llvm.loop !468

for.end24:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !471, !tbaa !423
  br label %for.cond25, !dbg !473

for.cond25:                                       ; preds = %for.inc44, %for.end24
  %22 = load i32, i32* %i, align 4, !dbg !474, !tbaa !423
  %cmp26 = icmp slt i32 %22, 64, !dbg !476
  br i1 %cmp26, label %for.body27, label %for.end46, !dbg !477

for.body27:                                       ; preds = %for.cond25
  store i32 0, i32* %j, align 4, !dbg !478, !tbaa !423
  br label %for.cond28, !dbg !481

for.cond28:                                       ; preds = %for.inc41, %for.body27
  %23 = load i32, i32* %j, align 4, !dbg !482, !tbaa !423
  %cmp29 = icmp slt i32 %23, 64, !dbg !484
  br i1 %cmp29, label %for.body30, label %for.end43, !dbg !485

for.body30:                                       ; preds = %for.cond28
  %24 = load i32, i32* %i, align 4, !dbg !486, !tbaa !423
  %idxprom31 = sext i32 %24 to i64, !dbg !488
  %arrayidx32 = getelementptr inbounds [64 x float], [64 x float]* %tmp1, i64 0, i64 %idxprom31, !dbg !488
  %25 = load float, float* %arrayidx32, align 4, !dbg !488, !tbaa !433
  %26 = load i32, i32* %i, align 4, !dbg !489, !tbaa !423
  %idxprom33 = sext i32 %26 to i64, !dbg !490
  %arrayidx34 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* %buff_A, i64 0, i64 %idxprom33, !dbg !490
  %27 = load i32, i32* %j, align 4, !dbg !491, !tbaa !423
  %idxprom35 = sext i32 %27 to i64, !dbg !490
  %arrayidx36 = getelementptr inbounds [64 x float], [64 x float]* %arrayidx34, i64 0, i64 %idxprom35, !dbg !490
  %28 = load float, float* %arrayidx36, align 4, !dbg !490, !tbaa !433
  %29 = load i32, i32* %j, align 4, !dbg !492, !tbaa !423
  %idxprom37 = sext i32 %29 to i64, !dbg !493
  %arrayidx38 = getelementptr inbounds [64 x float], [64 x float]* %buff_x, i64 0, i64 %idxprom37, !dbg !493
  %30 = load float, float* %arrayidx38, align 4, !dbg !493, !tbaa !433
  %mul = fmul float %28, %30, !dbg !494
  %add = fadd float %25, %mul, !dbg !495
  %31 = load i32, i32* %i, align 4, !dbg !496, !tbaa !423
  %idxprom39 = sext i32 %31 to i64, !dbg !497
  %arrayidx40 = getelementptr inbounds [64 x float], [64 x float]* %tmp1, i64 0, i64 %idxprom39, !dbg !497
  store float %add, float* %arrayidx40, align 4, !dbg !498, !tbaa !433
  br label %for.inc41, !dbg !499

for.inc41:                                        ; preds = %for.body30
  %32 = load i32, i32* %j, align 4, !dbg !500, !tbaa !423
  %inc42 = add nsw i32 %32, 1, !dbg !500
  store i32 %inc42, i32* %j, align 4, !dbg !500, !tbaa !423
  br label %for.cond28, !dbg !501, !llvm.loop !502

for.end43:                                        ; preds = %for.cond28
  br label %for.inc44, !dbg !504

for.inc44:                                        ; preds = %for.end43
  %33 = load i32, i32* %i, align 4, !dbg !505, !tbaa !423
  %inc45 = add nsw i32 %33, 1, !dbg !505
  store i32 %inc45, i32* %i, align 4, !dbg !505, !tbaa !423
  br label %for.cond25, !dbg !506, !llvm.loop !507

for.end46:                                        ; preds = %for.cond25
  store i32 0, i32* %i, align 4, !dbg !509, !tbaa !423
  br label %for.cond47, !dbg !511

for.cond47:                                       ; preds = %for.inc68, %for.end46
  %34 = load i32, i32* %i, align 4, !dbg !512, !tbaa !423
  %cmp48 = icmp slt i32 %34, 64, !dbg !514
  br i1 %cmp48, label %for.body49, label %for.end70, !dbg !515

for.body49:                                       ; preds = %for.cond47
  store i32 0, i32* %j, align 4, !dbg !516, !tbaa !423
  br label %for.cond50, !dbg !519

for.cond50:                                       ; preds = %for.inc65, %for.body49
  %35 = load i32, i32* %j, align 4, !dbg !520, !tbaa !423
  %cmp51 = icmp slt i32 %35, 64, !dbg !522
  br i1 %cmp51, label %for.body52, label %for.end67, !dbg !523

for.body52:                                       ; preds = %for.cond50
  %36 = load i32, i32* %j, align 4, !dbg !524, !tbaa !423
  %idxprom53 = sext i32 %36 to i64, !dbg !526
  %arrayidx54 = getelementptr inbounds [64 x float], [64 x float]* %buff_y_out, i64 0, i64 %idxprom53, !dbg !526
  %37 = load float, float* %arrayidx54, align 4, !dbg !526, !tbaa !433
  %38 = load i32, i32* %i, align 4, !dbg !527, !tbaa !423
  %idxprom55 = sext i32 %38 to i64, !dbg !528
  %arrayidx56 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* %buff_A, i64 0, i64 %idxprom55, !dbg !528
  %39 = load i32, i32* %j, align 4, !dbg !529, !tbaa !423
  %idxprom57 = sext i32 %39 to i64, !dbg !528
  %arrayidx58 = getelementptr inbounds [64 x float], [64 x float]* %arrayidx56, i64 0, i64 %idxprom57, !dbg !528
  %40 = load float, float* %arrayidx58, align 4, !dbg !528, !tbaa !433
  %41 = load i32, i32* %i, align 4, !dbg !530, !tbaa !423
  %idxprom59 = sext i32 %41 to i64, !dbg !531
  %arrayidx60 = getelementptr inbounds [64 x float], [64 x float]* %tmp1, i64 0, i64 %idxprom59, !dbg !531
  %42 = load float, float* %arrayidx60, align 4, !dbg !531, !tbaa !433
  %mul61 = fmul float %40, %42, !dbg !532
  %add62 = fadd float %37, %mul61, !dbg !533
  %43 = load i32, i32* %j, align 4, !dbg !534, !tbaa !423
  %idxprom63 = sext i32 %43 to i64, !dbg !535
  %arrayidx64 = getelementptr inbounds [64 x float], [64 x float]* %buff_y_out, i64 0, i64 %idxprom63, !dbg !535
  store float %add62, float* %arrayidx64, align 4, !dbg !536, !tbaa !433
  br label %for.inc65, !dbg !537

for.inc65:                                        ; preds = %for.body52
  %44 = load i32, i32* %j, align 4, !dbg !538, !tbaa !423
  %inc66 = add nsw i32 %44, 1, !dbg !538
  store i32 %inc66, i32* %j, align 4, !dbg !538, !tbaa !423
  br label %for.cond50, !dbg !539, !llvm.loop !540

for.end67:                                        ; preds = %for.cond50
  br label %for.inc68, !dbg !542

for.inc68:                                        ; preds = %for.end67
  %45 = load i32, i32* %i, align 4, !dbg !543, !tbaa !423
  %inc69 = add nsw i32 %45, 1, !dbg !543
  store i32 %inc69, i32* %i, align 4, !dbg !543, !tbaa !423
  br label %for.cond47, !dbg !544, !llvm.loop !545

for.end70:                                        ; preds = %for.cond47
  store i32 0, i32* %i, align 4, !dbg !547, !tbaa !423
  br label %for.cond71, !dbg !549

for.cond71:                                       ; preds = %for.inc78, %for.end70
  %46 = load i32, i32* %i, align 4, !dbg !550, !tbaa !423
  %cmp72 = icmp slt i32 %46, 64, !dbg !552
  br i1 %cmp72, label %for.body73, label %for.end80, !dbg !553

for.body73:                                       ; preds = %for.cond71
  %47 = load i32, i32* %i, align 4, !dbg !554, !tbaa !423
  %idxprom74 = sext i32 %47 to i64, !dbg !556
  %arrayidx75 = getelementptr inbounds [64 x float], [64 x float]* %buff_y_out, i64 0, i64 %idxprom74, !dbg !556
  %48 = load float, float* %arrayidx75, align 4, !dbg !556, !tbaa !433
  %49 = load float*, float** %y_out.addr, align 8, !dbg !557, !tbaa !403
  %50 = load i32, i32* %i, align 4, !dbg !558, !tbaa !423
  %idxprom76 = sext i32 %50 to i64, !dbg !557
  %arrayidx77 = getelementptr inbounds float, float* %49, i64 %idxprom76, !dbg !557
  store float %48, float* %arrayidx77, align 4, !dbg !559, !tbaa !433
  br label %for.inc78, !dbg !560

for.inc78:                                        ; preds = %for.body73
  %51 = load i32, i32* %i, align 4, !dbg !561, !tbaa !423
  %inc79 = add nsw i32 %51, 1, !dbg !561
  store i32 %inc79, i32* %i, align 4, !dbg !561, !tbaa !423
  br label %for.cond71, !dbg !562, !llvm.loop !563

for.end80:                                        ; preds = %for.cond71
  %52 = bitcast [64 x float]* %tmp1 to i8*, !dbg !565
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %52) #4, !dbg !565
  %53 = bitcast [64 x float]* %buff_y_out to i8*, !dbg !565
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %53) #4, !dbg !565
  %54 = bitcast [64 x float]* %buff_x to i8*, !dbg !565
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %54) #4, !dbg !565
  %55 = bitcast [64 x [64 x float]]* %buff_A to i8*, !dbg !565
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %55) #4, !dbg !565
  %56 = bitcast i32* %j to i8*, !dbg !565
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #4, !dbg !565
  %57 = bitcast i32* %i to i8*, !dbg !565
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #4, !dbg !565
  ret void, !dbg !565
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!371, !372, !373}
!llvm.ident = !{!374}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ihc_enqueue_handle", scope: !2, file: !369, line: 80, type: !370, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang based Intel(R) oneAPI DPC++ Compiler 2021.1 (YYYY.x.0.MMDD)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, imports: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "atax_0.c", directory: "/mnt/vault0/slowe8/IntelHLSDataset/polybench/atax/src")
!4 = !{}
!5 = !{!0}
!6 = !{!7, !15, !22, !24, !26, !30, !32, !34, !36, !38, !40, !42, !44, !49, !53, !55, !57, !62, !64, !66, !68, !70, !72, !74, !77, !80, !82, !86, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !115, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !153, !157, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !183, !187, !191, !193, !195, !197, !202, !206, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !239, !243, !247, !249, !251, !253, !260, !264, !268, !270, !272, !274, !276, !278, !280, !284, !288, !290, !292, !294, !296, !300, !304, !308, !310, !312, !314, !316, !318, !320, !324, !328, !332, !334, !338, !342, !344, !346, !348, !350, !352, !354, !358, !361, !366}
!7 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !9, file: !14, line: 52)
!8 = !DINamespace(name: "std", scope: null)
!9 = !DISubprogram(name: "abs", scope: !10, file: !10, line: 848, type: !11, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!10 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIFile(filename: "tools/Intel/intelFPGA_pro/23.4/hls/linux64/bin/../../../gcc/lib/gcc/x86_64-pc-linux-gnu/10.5.0/../../../../include/c++/10.5.0/bits/std_abs.h", directory: "/mnt/vault0")
!15 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !16, file: !21, line: 83)
!16 = !DISubprogram(name: "acos", scope: !17, file: !17, line: 53, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "")
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !20}
!20 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!21 = !DIFile(filename: "tools/Intel/intelFPGA_pro/23.4/hls/linux64/bin/../../../gcc/lib/gcc/x86_64-pc-linux-gnu/10.5.0/../../../../include/c++/10.5.0/cmath", directory: "/mnt/vault0")
!22 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !23, file: !21, line: 102)
!23 = !DISubprogram(name: "asin", scope: !17, file: !17, line: 55, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!24 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !25, file: !21, line: 121)
!25 = !DISubprogram(name: "atan", scope: !17, file: !17, line: 57, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!26 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !27, file: !21, line: 140)
!27 = !DISubprogram(name: "atan2", scope: !17, file: !17, line: 59, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!28 = !DISubroutineType(types: !29)
!29 = !{!20, !20, !20}
!30 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !31, file: !21, line: 161)
!31 = !DISubprogram(name: "ceil", scope: !17, file: !17, line: 159, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!32 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !33, file: !21, line: 180)
!33 = !DISubprogram(name: "cos", scope: !17, file: !17, line: 62, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!34 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !35, file: !21, line: 199)
!35 = !DISubprogram(name: "cosh", scope: !17, file: !17, line: 71, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!36 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !37, file: !21, line: 218)
!37 = !DISubprogram(name: "exp", scope: !17, file: !17, line: 95, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!38 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !39, file: !21, line: 237)
!39 = !DISubprogram(name: "fabs", scope: !17, file: !17, line: 162, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!40 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !41, file: !21, line: 256)
!41 = !DISubprogram(name: "floor", scope: !17, file: !17, line: 165, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !43, file: !21, line: 275)
!43 = !DISubprogram(name: "fmod", scope: !17, file: !17, line: 168, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!44 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !45, file: !21, line: 296)
!45 = !DISubprogram(name: "frexp", scope: !17, file: !17, line: 98, type: !46, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!46 = !DISubroutineType(types: !47)
!47 = !{!20, !20, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!49 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !50, file: !21, line: 315)
!50 = !DISubprogram(name: "ldexp", scope: !17, file: !17, line: 101, type: !51, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!51 = !DISubroutineType(types: !52)
!52 = !{!20, !20, !13}
!53 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !54, file: !21, line: 334)
!54 = !DISubprogram(name: "log", scope: !17, file: !17, line: 104, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!55 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !56, file: !21, line: 353)
!56 = !DISubprogram(name: "log10", scope: !17, file: !17, line: 107, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!57 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !58, file: !21, line: 372)
!58 = !DISubprogram(name: "modf", scope: !17, file: !17, line: 110, type: !59, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!59 = !DISubroutineType(types: !60)
!60 = !{!20, !20, !61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!62 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !63, file: !21, line: 384)
!63 = !DISubprogram(name: "pow", scope: !17, file: !17, line: 140, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!64 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !65, file: !21, line: 421)
!65 = !DISubprogram(name: "sin", scope: !17, file: !17, line: 64, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!66 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !67, file: !21, line: 440)
!67 = !DISubprogram(name: "sinh", scope: !17, file: !17, line: 73, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!68 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !69, file: !21, line: 459)
!69 = !DISubprogram(name: "sqrt", scope: !17, file: !17, line: 143, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!70 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !71, file: !21, line: 478)
!71 = !DISubprogram(name: "tan", scope: !17, file: !17, line: 66, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !73, file: !21, line: 497)
!73 = !DISubprogram(name: "tanh", scope: !17, file: !17, line: 75, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !75, file: !21, line: 1065)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !76, line: 164, baseType: !20)
!76 = !DIFile(filename: "/usr/include/math.h", directory: "")
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !78, file: !21, line: 1066)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !76, line: 163, baseType: !79)
!79 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !81, file: !21, line: 1069)
!81 = !DISubprogram(name: "acosh", scope: !17, file: !17, line: 85, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !83, file: !21, line: 1070)
!83 = !DISubprogram(name: "acoshf", scope: !17, file: !17, line: 85, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!84 = !DISubroutineType(types: !85)
!85 = !{!79, !79}
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !87, file: !21, line: 1071)
!87 = !DISubprogram(name: "acoshl", scope: !17, file: !17, line: 85, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!88 = !DISubroutineType(types: !89)
!89 = !{!90, !90}
!90 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!91 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !92, file: !21, line: 1073)
!92 = !DISubprogram(name: "asinh", scope: !17, file: !17, line: 87, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !94, file: !21, line: 1074)
!94 = !DISubprogram(name: "asinhf", scope: !17, file: !17, line: 87, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !96, file: !21, line: 1075)
!96 = !DISubprogram(name: "asinhl", scope: !17, file: !17, line: 87, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !98, file: !21, line: 1077)
!98 = !DISubprogram(name: "atanh", scope: !17, file: !17, line: 89, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!99 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !100, file: !21, line: 1078)
!100 = !DISubprogram(name: "atanhf", scope: !17, file: !17, line: 89, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !102, file: !21, line: 1079)
!102 = !DISubprogram(name: "atanhl", scope: !17, file: !17, line: 89, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !104, file: !21, line: 1081)
!104 = !DISubprogram(name: "cbrt", scope: !17, file: !17, line: 152, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !106, file: !21, line: 1082)
!106 = !DISubprogram(name: "cbrtf", scope: !17, file: !17, line: 152, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !108, file: !21, line: 1083)
!108 = !DISubprogram(name: "cbrtl", scope: !17, file: !17, line: 152, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !110, file: !21, line: 1085)
!110 = !DISubprogram(name: "copysign", scope: !17, file: !17, line: 198, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !112, file: !21, line: 1086)
!112 = !DISubprogram(name: "copysignf", scope: !17, file: !17, line: 198, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!113 = !DISubroutineType(types: !114)
!114 = !{!79, !79, !79}
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !116, file: !21, line: 1087)
!116 = !DISubprogram(name: "copysignl", scope: !17, file: !17, line: 198, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!117 = !DISubroutineType(types: !118)
!118 = !{!90, !90, !90}
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !120, file: !21, line: 1089)
!120 = !DISubprogram(name: "erf", scope: !17, file: !17, line: 231, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !122, file: !21, line: 1090)
!122 = !DISubprogram(name: "erff", scope: !17, file: !17, line: 231, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !124, file: !21, line: 1091)
!124 = !DISubprogram(name: "erfl", scope: !17, file: !17, line: 231, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !126, file: !21, line: 1093)
!126 = !DISubprogram(name: "erfc", scope: !17, file: !17, line: 232, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !128, file: !21, line: 1094)
!128 = !DISubprogram(name: "erfcf", scope: !17, file: !17, line: 232, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !130, file: !21, line: 1095)
!130 = !DISubprogram(name: "erfcl", scope: !17, file: !17, line: 232, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !132, file: !21, line: 1097)
!132 = !DISubprogram(name: "exp2", scope: !17, file: !17, line: 130, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !134, file: !21, line: 1098)
!134 = !DISubprogram(name: "exp2f", scope: !17, file: !17, line: 130, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !136, file: !21, line: 1099)
!136 = !DISubprogram(name: "exp2l", scope: !17, file: !17, line: 130, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !138, file: !21, line: 1101)
!138 = !DISubprogram(name: "expm1", scope: !17, file: !17, line: 119, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !140, file: !21, line: 1102)
!140 = !DISubprogram(name: "expm1f", scope: !17, file: !17, line: 119, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !142, file: !21, line: 1103)
!142 = !DISubprogram(name: "expm1l", scope: !17, file: !17, line: 119, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !144, file: !21, line: 1105)
!144 = !DISubprogram(name: "fdim", scope: !17, file: !17, line: 329, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !146, file: !21, line: 1106)
!146 = !DISubprogram(name: "fdimf", scope: !17, file: !17, line: 329, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !148, file: !21, line: 1107)
!148 = !DISubprogram(name: "fdiml", scope: !17, file: !17, line: 329, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !150, file: !21, line: 1109)
!150 = !DISubprogram(name: "fma", scope: !17, file: !17, line: 340, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!151 = !DISubroutineType(types: !152)
!152 = !{!20, !20, !20, !20}
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !154, file: !21, line: 1110)
!154 = !DISubprogram(name: "fmaf", scope: !17, file: !17, line: 340, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!155 = !DISubroutineType(types: !156)
!156 = !{!79, !79, !79, !79}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !158, file: !21, line: 1111)
!158 = !DISubprogram(name: "fmal", scope: !17, file: !17, line: 340, type: !159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!159 = !DISubroutineType(types: !160)
!160 = !{!90, !90, !90, !90}
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !162, file: !21, line: 1113)
!162 = !DISubprogram(name: "fmax", scope: !17, file: !17, line: 333, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !164, file: !21, line: 1114)
!164 = !DISubprogram(name: "fmaxf", scope: !17, file: !17, line: 333, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !166, file: !21, line: 1115)
!166 = !DISubprogram(name: "fmaxl", scope: !17, file: !17, line: 333, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !168, file: !21, line: 1117)
!168 = !DISubprogram(name: "fmin", scope: !17, file: !17, line: 336, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !170, file: !21, line: 1118)
!170 = !DISubprogram(name: "fminf", scope: !17, file: !17, line: 336, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !172, file: !21, line: 1119)
!172 = !DISubprogram(name: "fminl", scope: !17, file: !17, line: 336, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !174, file: !21, line: 1121)
!174 = !DISubprogram(name: "hypot", scope: !17, file: !17, line: 147, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !176, file: !21, line: 1122)
!176 = !DISubprogram(name: "hypotf", scope: !17, file: !17, line: 147, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !178, file: !21, line: 1123)
!178 = !DISubprogram(name: "hypotl", scope: !17, file: !17, line: 147, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !180, file: !21, line: 1125)
!180 = !DISubprogram(name: "ilogb", scope: !17, file: !17, line: 283, type: !181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = !DISubroutineType(types: !182)
!182 = !{!13, !20}
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !184, file: !21, line: 1126)
!184 = !DISubprogram(name: "ilogbf", scope: !17, file: !17, line: 283, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DISubroutineType(types: !186)
!186 = !{!13, !79}
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !188, file: !21, line: 1127)
!188 = !DISubprogram(name: "ilogbl", scope: !17, file: !17, line: 283, type: !189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!189 = !DISubroutineType(types: !190)
!190 = !{!13, !90}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !192, file: !21, line: 1129)
!192 = !DISubprogram(name: "lgamma", scope: !17, file: !17, line: 233, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !194, file: !21, line: 1130)
!194 = !DISubprogram(name: "lgammaf", scope: !17, file: !17, line: 233, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !196, file: !21, line: 1131)
!196 = !DISubprogram(name: "lgammal", scope: !17, file: !17, line: 233, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !198, file: !21, line: 1134)
!198 = !DISubprogram(name: "llrint", scope: !17, file: !17, line: 319, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!199 = !DISubroutineType(types: !200)
!200 = !{!201, !20}
!201 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !203, file: !21, line: 1135)
!203 = !DISubprogram(name: "llrintf", scope: !17, file: !17, line: 319, type: !204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!204 = !DISubroutineType(types: !205)
!205 = !{!201, !79}
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !207, file: !21, line: 1136)
!207 = !DISubprogram(name: "llrintl", scope: !17, file: !17, line: 319, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!208 = !DISubroutineType(types: !209)
!209 = !{!201, !90}
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !211, file: !21, line: 1138)
!211 = !DISubprogram(name: "llround", scope: !17, file: !17, line: 325, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !213, file: !21, line: 1139)
!213 = !DISubprogram(name: "llroundf", scope: !17, file: !17, line: 325, type: !204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !215, file: !21, line: 1140)
!215 = !DISubprogram(name: "llroundl", scope: !17, file: !17, line: 325, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !217, file: !21, line: 1143)
!217 = !DISubprogram(name: "log1p", scope: !17, file: !17, line: 122, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !219, file: !21, line: 1144)
!219 = !DISubprogram(name: "log1pf", scope: !17, file: !17, line: 122, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !221, file: !21, line: 1145)
!221 = !DISubprogram(name: "log1pl", scope: !17, file: !17, line: 122, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !223, file: !21, line: 1147)
!223 = !DISubprogram(name: "log2", scope: !17, file: !17, line: 133, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !225, file: !21, line: 1148)
!225 = !DISubprogram(name: "log2f", scope: !17, file: !17, line: 133, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !227, file: !21, line: 1149)
!227 = !DISubprogram(name: "log2l", scope: !17, file: !17, line: 133, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !229, file: !21, line: 1151)
!229 = !DISubprogram(name: "logb", scope: !17, file: !17, line: 125, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !231, file: !21, line: 1152)
!231 = !DISubprogram(name: "logbf", scope: !17, file: !17, line: 125, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !233, file: !21, line: 1153)
!233 = !DISubprogram(name: "logbl", scope: !17, file: !17, line: 125, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !235, file: !21, line: 1155)
!235 = !DISubprogram(name: "lrint", scope: !17, file: !17, line: 317, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!236 = !DISubroutineType(types: !237)
!237 = !{!238, !20}
!238 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !240, file: !21, line: 1156)
!240 = !DISubprogram(name: "lrintf", scope: !17, file: !17, line: 317, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubroutineType(types: !242)
!242 = !{!238, !79}
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !244, file: !21, line: 1157)
!244 = !DISubprogram(name: "lrintl", scope: !17, file: !17, line: 317, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DISubroutineType(types: !246)
!246 = !{!238, !90}
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !248, file: !21, line: 1159)
!248 = !DISubprogram(name: "lround", scope: !17, file: !17, line: 323, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !250, file: !21, line: 1160)
!250 = !DISubprogram(name: "lroundf", scope: !17, file: !17, line: 323, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !252, file: !21, line: 1161)
!252 = !DISubprogram(name: "lroundl", scope: !17, file: !17, line: 323, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !254, file: !21, line: 1163)
!254 = !DISubprogram(name: "nan", scope: !17, file: !17, line: 203, type: !255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DISubroutineType(types: !256)
!256 = !{!20, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !261, file: !21, line: 1164)
!261 = !DISubprogram(name: "nanf", scope: !17, file: !17, line: 203, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DISubroutineType(types: !263)
!263 = !{!79, !257}
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !265, file: !21, line: 1165)
!265 = !DISubprogram(name: "nanl", scope: !17, file: !17, line: 203, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DISubroutineType(types: !267)
!267 = !{!90, !257}
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !269, file: !21, line: 1167)
!269 = !DISubprogram(name: "nearbyint", scope: !17, file: !17, line: 297, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !271, file: !21, line: 1168)
!271 = !DISubprogram(name: "nearbyintf", scope: !17, file: !17, line: 297, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !273, file: !21, line: 1169)
!273 = !DISubprogram(name: "nearbyintl", scope: !17, file: !17, line: 297, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !275, file: !21, line: 1171)
!275 = !DISubprogram(name: "nextafter", scope: !17, file: !17, line: 262, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !277, file: !21, line: 1172)
!277 = !DISubprogram(name: "nextafterf", scope: !17, file: !17, line: 262, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !279, file: !21, line: 1173)
!279 = !DISubprogram(name: "nextafterl", scope: !17, file: !17, line: 262, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !281, file: !21, line: 1175)
!281 = !DISubprogram(name: "nexttoward", scope: !17, file: !17, line: 264, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!282 = !DISubroutineType(types: !283)
!283 = !{!20, !20, !90}
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !285, file: !21, line: 1176)
!285 = !DISubprogram(name: "nexttowardf", scope: !17, file: !17, line: 264, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!286 = !DISubroutineType(types: !287)
!287 = !{!79, !79, !90}
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !289, file: !21, line: 1177)
!289 = !DISubprogram(name: "nexttowardl", scope: !17, file: !17, line: 264, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !291, file: !21, line: 1179)
!291 = !DISubprogram(name: "remainder", scope: !17, file: !17, line: 275, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !293, file: !21, line: 1180)
!293 = !DISubprogram(name: "remainderf", scope: !17, file: !17, line: 275, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !295, file: !21, line: 1181)
!295 = !DISubprogram(name: "remainderl", scope: !17, file: !17, line: 275, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !297, file: !21, line: 1183)
!297 = !DISubprogram(name: "remquo", scope: !17, file: !17, line: 310, type: !298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!298 = !DISubroutineType(types: !299)
!299 = !{!20, !20, !20, !48}
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !301, file: !21, line: 1184)
!301 = !DISubprogram(name: "remquof", scope: !17, file: !17, line: 310, type: !302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!302 = !DISubroutineType(types: !303)
!303 = !{!79, !79, !79, !48}
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !305, file: !21, line: 1185)
!305 = !DISubprogram(name: "remquol", scope: !17, file: !17, line: 310, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!306 = !DISubroutineType(types: !307)
!307 = !{!90, !90, !90, !48}
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !309, file: !21, line: 1187)
!309 = !DISubprogram(name: "rint", scope: !17, file: !17, line: 259, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !311, file: !21, line: 1188)
!311 = !DISubprogram(name: "rintf", scope: !17, file: !17, line: 259, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !313, file: !21, line: 1189)
!313 = !DISubprogram(name: "rintl", scope: !17, file: !17, line: 259, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !315, file: !21, line: 1191)
!315 = !DISubprogram(name: "round", scope: !17, file: !17, line: 301, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !317, file: !21, line: 1192)
!317 = !DISubprogram(name: "roundf", scope: !17, file: !17, line: 301, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !319, file: !21, line: 1193)
!319 = !DISubprogram(name: "roundl", scope: !17, file: !17, line: 301, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !321, file: !21, line: 1195)
!321 = !DISubprogram(name: "scalbln", scope: !17, file: !17, line: 293, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DISubroutineType(types: !323)
!323 = !{!20, !20, !238}
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !325, file: !21, line: 1196)
!325 = !DISubprogram(name: "scalblnf", scope: !17, file: !17, line: 293, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!326 = !DISubroutineType(types: !327)
!327 = !{!79, !79, !238}
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !329, file: !21, line: 1197)
!329 = !DISubprogram(name: "scalblnl", scope: !17, file: !17, line: 293, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!330 = !DISubroutineType(types: !331)
!331 = !{!90, !90, !238}
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !333, file: !21, line: 1199)
!333 = !DISubprogram(name: "scalbn", scope: !17, file: !17, line: 279, type: !51, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !335, file: !21, line: 1200)
!335 = !DISubprogram(name: "scalbnf", scope: !17, file: !17, line: 279, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = !DISubroutineType(types: !337)
!337 = !{!79, !79, !13}
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !339, file: !21, line: 1201)
!339 = !DISubprogram(name: "scalbnl", scope: !17, file: !17, line: 279, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!340 = !DISubroutineType(types: !341)
!341 = !{!90, !90, !13}
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !343, file: !21, line: 1203)
!343 = !DISubprogram(name: "tgamma", scope: !17, file: !17, line: 238, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !345, file: !21, line: 1204)
!345 = !DISubprogram(name: "tgammaf", scope: !17, file: !17, line: 238, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !347, file: !21, line: 1205)
!347 = !DISubprogram(name: "tgammal", scope: !17, file: !17, line: 238, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !349, file: !21, line: 1207)
!349 = !DISubprogram(name: "trunc", scope: !17, file: !17, line: 305, type: !18, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !351, file: !21, line: 1208)
!351 = !DISubprogram(name: "truncf", scope: !17, file: !17, line: 305, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !353, file: !21, line: 1209)
!353 = !DISubprogram(name: "truncl", scope: !17, file: !17, line: 305, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!354 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !355, entity: !356, file: !357, line: 58)
!355 = !DINamespace(name: "__gnu_debug", scope: null)
!356 = !DINamespace(name: "__debug", scope: !8)
!357 = !DIFile(filename: "tools/Intel/intelFPGA_pro/23.4/hls/linux64/bin/../../../gcc/lib/gcc/x86_64-pc-linux-gnu/10.5.0/../../../../include/c++/10.5.0/debug/debug.h", directory: "/mnt/vault0")
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !359, file: !360, line: 38)
!359 = !DISubprogram(name: "abs", linkageName: "_ZSt3abse", scope: !8, file: !14, line: 79, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DIFile(filename: "tools/Intel/intelFPGA_pro/23.4/hls/linux64/bin/../../../gcc/lib/gcc/x86_64-pc-linux-gnu/10.5.0/../../../../include/c++/10.5.0/math.h", directory: "/mnt/vault0")
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !362, file: !360, line: 54)
!362 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !8, file: !21, line: 380, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DISubroutineType(types: !364)
!364 = !{!90, !90, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!366 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !367, entity: !8, file: !369, line: 138)
!367 = !DINamespace(name: "internal", scope: !368)
!368 = !DINamespace(name: "ihc", scope: null)
!369 = !DIFile(filename: "tools/Intel/intelFPGA_pro/23.4/hls/include/HLS/internal/_hls.h", directory: "/mnt/vault0")
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!371 = !{i32 7, !"Dwarf Version", i32 4}
!372 = !{i32 2, !"Debug Info Version", i32 3}
!373 = !{i32 1, !"wchar_size", i32 4}
!374 = !{!"Intel(R) oneAPI DPC++ Compiler 2021.1 (YYYY.x.0.MMDD)"}
!375 = distinct !DISubprogram(name: "atax", linkageName: "_Z4ataxPA64_fPfS1_", scope: !3, file: !3, line: 5, type: !376, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !383)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !378, !382, !382}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 2048, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!383 = !{!384, !385, !386, !387, !388, !389, !392, !393, !394}
!384 = !DILocalVariable(name: "A", arg: 1, scope: !375, file: !3, line: 5, type: !378)
!385 = !DILocalVariable(name: "x", arg: 2, scope: !375, file: !3, line: 5, type: !382)
!386 = !DILocalVariable(name: "y_out", arg: 3, scope: !375, file: !3, line: 5, type: !382)
!387 = !DILocalVariable(name: "i", scope: !375, file: !3, line: 7, type: !13)
!388 = !DILocalVariable(name: "j", scope: !375, file: !3, line: 7, type: !13)
!389 = !DILocalVariable(name: "buff_A", scope: !375, file: !3, line: 8, type: !390)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 131072, elements: !391)
!391 = !{!381, !381}
!392 = !DILocalVariable(name: "buff_x", scope: !375, file: !3, line: 9, type: !379)
!393 = !DILocalVariable(name: "buff_y_out", scope: !375, file: !3, line: 10, type: !379)
!394 = !DILocalVariable(name: "tmp1", scope: !375, file: !3, line: 11, type: !379)
!395 = !{!"_Z4ataxPA64_fPfS1_", !4}
!396 = !{!"pointer", !"pointer", !"pointer"}
!397 = !{!"wire", !"wire", !"wire"}
!398 = !{i32 0, i32 0, i32 0}
!399 = !{!"A", !"x", !"y_out"}
!400 = !{!"", !"", !""}
!401 = !{!"avalon_streaming"}
!402 = !{i32 0}
!403 = !{!404, !404, i64 0}
!404 = !{!"any pointer", !405, i64 0}
!405 = !{!"omnipotent char", !406, i64 0}
!406 = !{!"Simple C++ TBAA"}
!407 = !DILocation(line: 5, column: 31, scope: !375)
!408 = !DILocation(line: 5, column: 50, scope: !375)
!409 = !DILocation(line: 5, column: 66, scope: !375)
!410 = !DILocation(line: 7, column: 5, scope: !375)
!411 = !DILocation(line: 7, column: 9, scope: !375)
!412 = !DILocation(line: 7, column: 12, scope: !375)
!413 = !DILocation(line: 8, column: 2, scope: !375)
!414 = !DILocation(line: 8, column: 59, scope: !375)
!415 = !DILocation(line: 9, column: 2, scope: !375)
!416 = !DILocation(line: 9, column: 43, scope: !375)
!417 = !DILocation(line: 10, column: 2, scope: !375)
!418 = !DILocation(line: 10, column: 43, scope: !375)
!419 = !DILocation(line: 11, column: 2, scope: !375)
!420 = !DILocation(line: 11, column: 43, scope: !375)
!421 = !DILocation(line: 15, column: 12, scope: !422)
!422 = distinct !DILexicalBlock(scope: !375, file: !3, line: 15, column: 5)
!423 = !{!424, !424, i64 0}
!424 = !{!"int", !405, i64 0}
!425 = !DILocation(line: 15, column: 10, scope: !422)
!426 = !DILocation(line: 15, column: 17, scope: !427)
!427 = distinct !DILexicalBlock(scope: !422, file: !3, line: 15, column: 5)
!428 = !DILocation(line: 15, column: 19, scope: !427)
!429 = !DILocation(line: 15, column: 5, scope: !422)
!430 = !DILocation(line: 16, column: 21, scope: !431)
!431 = distinct !DILexicalBlock(scope: !427, file: !3, line: 15, column: 29)
!432 = !DILocation(line: 16, column: 23, scope: !431)
!433 = !{!434, !434, i64 0}
!434 = !{!"float", !405, i64 0}
!435 = !DILocation(line: 16, column: 16, scope: !431)
!436 = !DILocation(line: 16, column: 9, scope: !431)
!437 = !DILocation(line: 16, column: 19, scope: !431)
!438 = !DILocation(line: 17, column: 17, scope: !431)
!439 = !DILocation(line: 17, column: 6, scope: !431)
!440 = !DILocation(line: 17, column: 20, scope: !431)
!441 = !DILocation(line: 18, column: 14, scope: !431)
!442 = !DILocation(line: 18, column: 9, scope: !431)
!443 = !DILocation(line: 18, column: 17, scope: !431)
!444 = !DILocation(line: 20, column: 13, scope: !445)
!445 = distinct !DILexicalBlock(scope: !431, file: !3, line: 20, column: 6)
!446 = !DILocation(line: 20, column: 11, scope: !445)
!447 = !DILocation(line: 20, column: 18, scope: !448)
!448 = distinct !DILexicalBlock(scope: !445, file: !3, line: 20, column: 6)
!449 = !DILocation(line: 20, column: 20, scope: !448)
!450 = !DILocation(line: 20, column: 6, scope: !445)
!451 = !DILocation(line: 21, column: 22, scope: !452)
!452 = distinct !DILexicalBlock(scope: !448, file: !3, line: 20, column: 30)
!453 = !DILocation(line: 21, column: 24, scope: !452)
!454 = !DILocation(line: 21, column: 27, scope: !452)
!455 = !DILocation(line: 21, column: 14, scope: !452)
!456 = !DILocation(line: 21, column: 7, scope: !452)
!457 = !DILocation(line: 21, column: 17, scope: !452)
!458 = !DILocation(line: 21, column: 20, scope: !452)
!459 = !DILocation(line: 22, column: 6, scope: !452)
!460 = !DILocation(line: 20, column: 26, scope: !448)
!461 = !DILocation(line: 20, column: 6, scope: !448)
!462 = distinct !{!462, !450, !463, !464}
!463 = !DILocation(line: 22, column: 6, scope: !445)
!464 = !{!"llvm.loop.unroll.count", i32 1}
!465 = !DILocation(line: 23, column: 5, scope: !431)
!466 = !DILocation(line: 15, column: 25, scope: !427)
!467 = !DILocation(line: 15, column: 5, scope: !427)
!468 = distinct !{!468, !429, !469, !470, !464}
!469 = !DILocation(line: 23, column: 5, scope: !422)
!470 = !{!"llvm.loop.intel.pipelining.disable"}
!471 = !DILocation(line: 27, column: 12, scope: !472)
!472 = distinct !DILexicalBlock(scope: !375, file: !3, line: 27, column: 5)
!473 = !DILocation(line: 27, column: 10, scope: !472)
!474 = !DILocation(line: 27, column: 17, scope: !475)
!475 = distinct !DILexicalBlock(scope: !472, file: !3, line: 27, column: 5)
!476 = !DILocation(line: 27, column: 19, scope: !475)
!477 = !DILocation(line: 27, column: 5, scope: !472)
!478 = !DILocation(line: 30, column: 16, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !3, line: 30, column: 9)
!480 = distinct !DILexicalBlock(scope: !475, file: !3, line: 27, column: 29)
!481 = !DILocation(line: 30, column: 14, scope: !479)
!482 = !DILocation(line: 30, column: 21, scope: !483)
!483 = distinct !DILexicalBlock(scope: !479, file: !3, line: 30, column: 9)
!484 = !DILocation(line: 30, column: 23, scope: !483)
!485 = !DILocation(line: 30, column: 9, scope: !479)
!486 = !DILocation(line: 31, column: 25, scope: !487)
!487 = distinct !DILexicalBlock(scope: !483, file: !3, line: 30, column: 33)
!488 = !DILocation(line: 31, column: 20, scope: !487)
!489 = !DILocation(line: 31, column: 37, scope: !487)
!490 = !DILocation(line: 31, column: 30, scope: !487)
!491 = !DILocation(line: 31, column: 40, scope: !487)
!492 = !DILocation(line: 31, column: 52, scope: !487)
!493 = !DILocation(line: 31, column: 45, scope: !487)
!494 = !DILocation(line: 31, column: 43, scope: !487)
!495 = !DILocation(line: 31, column: 28, scope: !487)
!496 = !DILocation(line: 31, column: 15, scope: !487)
!497 = !DILocation(line: 31, column: 10, scope: !487)
!498 = !DILocation(line: 31, column: 18, scope: !487)
!499 = !DILocation(line: 32, column: 9, scope: !487)
!500 = !DILocation(line: 30, column: 29, scope: !483)
!501 = !DILocation(line: 30, column: 9, scope: !483)
!502 = distinct !{!502, !485, !503, !470, !464}
!503 = !DILocation(line: 32, column: 9, scope: !479)
!504 = !DILocation(line: 33, column: 5, scope: !480)
!505 = !DILocation(line: 27, column: 25, scope: !475)
!506 = !DILocation(line: 27, column: 5, scope: !475)
!507 = distinct !{!507, !477, !508, !470, !464}
!508 = !DILocation(line: 33, column: 5, scope: !472)
!509 = !DILocation(line: 37, column: 12, scope: !510)
!510 = distinct !DILexicalBlock(scope: !375, file: !3, line: 37, column: 5)
!511 = !DILocation(line: 37, column: 10, scope: !510)
!512 = !DILocation(line: 37, column: 17, scope: !513)
!513 = distinct !DILexicalBlock(scope: !510, file: !3, line: 37, column: 5)
!514 = !DILocation(line: 37, column: 19, scope: !513)
!515 = !DILocation(line: 37, column: 5, scope: !510)
!516 = !DILocation(line: 40, column: 16, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !3, line: 40, column: 9)
!518 = distinct !DILexicalBlock(scope: !513, file: !3, line: 37, column: 29)
!519 = !DILocation(line: 40, column: 14, scope: !517)
!520 = !DILocation(line: 40, column: 21, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !3, line: 40, column: 9)
!522 = !DILocation(line: 40, column: 23, scope: !521)
!523 = !DILocation(line: 40, column: 9, scope: !517)
!524 = !DILocation(line: 41, column: 37, scope: !525)
!525 = distinct !DILexicalBlock(scope: !521, file: !3, line: 40, column: 33)
!526 = !DILocation(line: 41, column: 26, scope: !525)
!527 = !DILocation(line: 41, column: 49, scope: !525)
!528 = !DILocation(line: 41, column: 42, scope: !525)
!529 = !DILocation(line: 41, column: 52, scope: !525)
!530 = !DILocation(line: 41, column: 62, scope: !525)
!531 = !DILocation(line: 41, column: 57, scope: !525)
!532 = !DILocation(line: 41, column: 55, scope: !525)
!533 = !DILocation(line: 41, column: 40, scope: !525)
!534 = !DILocation(line: 41, column: 21, scope: !525)
!535 = !DILocation(line: 41, column: 10, scope: !525)
!536 = !DILocation(line: 41, column: 24, scope: !525)
!537 = !DILocation(line: 42, column: 9, scope: !525)
!538 = !DILocation(line: 40, column: 29, scope: !521)
!539 = !DILocation(line: 40, column: 9, scope: !521)
!540 = distinct !{!540, !523, !541, !470, !464}
!541 = !DILocation(line: 42, column: 9, scope: !517)
!542 = !DILocation(line: 43, column: 5, scope: !518)
!543 = !DILocation(line: 37, column: 25, scope: !513)
!544 = !DILocation(line: 37, column: 5, scope: !513)
!545 = distinct !{!545, !515, !546, !470, !464}
!546 = !DILocation(line: 43, column: 5, scope: !510)
!547 = !DILocation(line: 46, column: 12, scope: !548)
!548 = distinct !DILexicalBlock(scope: !375, file: !3, line: 46, column: 5)
!549 = !DILocation(line: 46, column: 10, scope: !548)
!550 = !DILocation(line: 46, column: 17, scope: !551)
!551 = distinct !DILexicalBlock(scope: !548, file: !3, line: 46, column: 5)
!552 = !DILocation(line: 46, column: 19, scope: !551)
!553 = !DILocation(line: 46, column: 5, scope: !548)
!554 = !DILocation(line: 47, column: 31, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !3, line: 46, column: 29)
!556 = !DILocation(line: 47, column: 20, scope: !555)
!557 = !DILocation(line: 47, column: 9, scope: !555)
!558 = !DILocation(line: 47, column: 15, scope: !555)
!559 = !DILocation(line: 47, column: 18, scope: !555)
!560 = !DILocation(line: 48, column: 5, scope: !555)
!561 = !DILocation(line: 46, column: 25, scope: !551)
!562 = !DILocation(line: 46, column: 5, scope: !551)
!563 = distinct !{!563, !553, !564, !464}
!564 = !DILocation(line: 48, column: 5, scope: !548)
!565 = !DILocation(line: 49, column: 1, scope: !375)
