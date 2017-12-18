; ModuleID = 'header.cpp'
source_filename = "header.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@.str = private unnamed_addr constant [25 x i8] c"library run-time error: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"Expected value: null (in expect_args0). Prim cannot take arguments.\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"Expected cons value (in expect_args1). Prim applied on an empty argument list.\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"Expected null value (in expect_args1). Prim can only take 1 argument.\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Expected a cons value. (expect_cons)\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Expected a vector or special value. (expect_other)\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"#<procedure>\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" . \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"#(\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"(print.. v); unrecognized value %lu\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"'()\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"'(\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"'%s\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"(print v); unrecognized value %lu\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"first argument to make-vector must be an integer\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"prim applied on more than 2 arguments.\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"second argument to vector-ref must be an integer\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"first argument to vector-ref must be a vector\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"vector-ref not given a properly formed vector\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"first argument to vector-ref must be an integer\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"(prim + a b); a is not an integer\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"(prim + a b); b is not an integer\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"Tried to apply + on non list value.\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"(prim - a b); b is not an integer\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"(prim * a b); a is not an integer\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"(prim * a b); b is not an integer\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"(prim / a b); a is not an integer\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"(prim / a b); b is not an integer\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"(prim = a b); a is not an integer\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"(prim = a b); b is not an integer\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"(prim < a b); a is not an integer\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"(prim < a b); b is not an integer\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"(prim <= a b); a is not an integer\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"(prim <= a b); b is not an integer\00", align 1

; Function Attrs: ssp uwtable
define i64* @alloc(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i8* @malloc(i64 %3)
  %5 = bitcast i8* %4 to i64*
  ret i64* %5
}

declare i8* @malloc(i64) #1

; Function Attrs: ssp uwtable
define void @fatal_err(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: ssp uwtable
define void @print_u64(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i64 %3)
  ret void
}

; Function Attrs: ssp uwtable
define i64 @expect_args0(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i32 0, i32 0))
  br label %6

; <label>:6                                       ; preds = %5, %1
  ret i64 0
}

; Function Attrs: ssp uwtable
define i64 @expect_args1(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, 7
  %6 = icmp ne i64 %5, 1
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %7, %1
  %9 = load i64, i64* %2, align 8
  %10 = and i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64* %11, i64** %3, align 8
  %12 = load i64*, i64** %3, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i32 0, i32 0))
  br label %17

; <label>:17                                      ; preds = %16, %8
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  ret i64 %20
}

; Function Attrs: ssp uwtable
define i64 @expect_cons(i64, i64*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 1
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %3, align 8
  %12 = and i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** %5, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %4, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  ret i64 %20
}

; Function Attrs: ssp uwtable
define i64 @expect_other(i64, i64*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 6
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %3, align 8
  %12 = and i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** %5, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %4, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_int(i64) #3 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = trunc i64 %3 to i32
  %5 = zext i32 %4 to i64
  %6 = shl i64 %5, 32
  %7 = or i64 %6, 2
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_void() #3 {
  ret i64 39
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_null() #3 {
  ret i64 0
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_true() #3 {
  ret i64 31
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_false() #3 {
  ret i64 15
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_string(i8*) #3 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = ptrtoint i8* %3 to i64
  %5 = or i64 %4, 3
  ret i64 %5
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_symbol(i8*) #3 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = ptrtoint i8* %3 to i64
  %5 = or i64 %4, 4
  ret i64 %5
}

; Function Attrs: ssp uwtable
define i64 @prim_print_aux(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  br label %113

; <label>:11                                      ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, 7
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %11
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  br label %112

; <label>:17                                      ; preds = %11
  %18 = load i64, i64* %2, align 8
  %19 = and i64 %18, 7
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %36

; <label>:21                                      ; preds = %17
  %22 = load i64, i64* %2, align 8
  %23 = and i64 %22, -8
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %3, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  %26 = load i64*, i64** %3, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @prim_print_aux(i64 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0))
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @prim_print_aux(i64 %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %111

; <label>:36                                      ; preds = %17
  %37 = load i64, i64* %2, align 8
  %38 = and i64 %37, 7
  %39 = icmp eq i64 %38, 2
  br i1 %39, label %40, label %45

; <label>:40                                      ; preds = %36
  %41 = load i64, i64* %2, align 8
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %43)
  br label %110

; <label>:45                                      ; preds = %36
  %46 = load i64, i64* %2, align 8
  %47 = and i64 %46, 7
  %48 = icmp eq i64 %47, 3
  br i1 %48, label %49, label %54

; <label>:49                                      ; preds = %45
  %50 = load i64, i64* %2, align 8
  %51 = and i64 %50, -8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* %52)
  br label %109

; <label>:54                                      ; preds = %45
  %55 = load i64, i64* %2, align 8
  %56 = and i64 %55, 7
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %58, label %63

; <label>:58                                      ; preds = %54
  %59 = load i64, i64* %2, align 8
  %60 = and i64 %59, -8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %61)
  br label %108

; <label>:63                                      ; preds = %54
  %64 = load i64, i64* %2, align 8
  %65 = and i64 %64, 7
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %67, label %104

; <label>:67                                      ; preds = %63
  %68 = load i64, i64* %2, align 8
  %69 = and i64 %68, -8
  %70 = inttoptr i64 %69 to i64*
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = and i64 %72, 7
  %74 = icmp eq i64 1, %73
  br i1 %74, label %75, label %104

; <label>:75                                      ; preds = %67
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  %77 = load i64, i64* %2, align 8
  %78 = and i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64* %79, i64** %4, align 8
  %80 = load i64*, i64** %4, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = lshr i64 %82, 3
  store i64 %83, i64* %5, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @prim_print_aux(i64 %86)
  store i64 2, i64* %6, align 8
  br label %88

; <label>:88                                      ; preds = %99, %75
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %5, align 8
  %91 = icmp ule i64 %89, %90
  br i1 %91, label %92, label %102

; <label>:92                                      ; preds = %88
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  %94 = load i64, i64* %6, align 8
  %95 = load i64*, i64** %4, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 %94
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @prim_print_aux(i64 %97)
  br label %99

; <label>:99                                      ; preds = %92
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %88

; <label>:102                                     ; preds = %88
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %107

; <label>:104                                     ; preds = %67, %63
  %105 = load i64, i64* %2, align 8
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0), i64 %105)
  br label %107

; <label>:107                                     ; preds = %104, %102
  br label %108

; <label>:108                                     ; preds = %107, %58
  br label %109

; <label>:109                                     ; preds = %108, %49
  br label %110

; <label>:110                                     ; preds = %109, %40
  br label %111

; <label>:111                                     ; preds = %110, %21
  br label %112

; <label>:112                                     ; preds = %111, %15
  br label %113

; <label>:113                                     ; preds = %112, %9
  ret i64 39
}

; Function Attrs: ssp uwtable
define i64 @prim_print(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0))
  br label %113

; <label>:11                                      ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, 7
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %11
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  br label %112

; <label>:17                                      ; preds = %11
  %18 = load i64, i64* %2, align 8
  %19 = and i64 %18, 7
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %36

; <label>:21                                      ; preds = %17
  %22 = load i64, i64* %2, align 8
  %23 = and i64 %22, -8
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %3, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  %26 = load i64*, i64** %3, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @prim_print_aux(i64 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0))
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @prim_print_aux(i64 %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %111

; <label>:36                                      ; preds = %17
  %37 = load i64, i64* %2, align 8
  %38 = and i64 %37, 7
  %39 = icmp eq i64 %38, 2
  br i1 %39, label %40, label %45

; <label>:40                                      ; preds = %36
  %41 = load i64, i64* %2, align 8
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %43)
  br label %110

; <label>:45                                      ; preds = %36
  %46 = load i64, i64* %2, align 8
  %47 = and i64 %46, 7
  %48 = icmp eq i64 %47, 3
  br i1 %48, label %49, label %54

; <label>:49                                      ; preds = %45
  %50 = load i64, i64* %2, align 8
  %51 = and i64 %50, -8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* %52)
  br label %109

; <label>:54                                      ; preds = %45
  %55 = load i64, i64* %2, align 8
  %56 = and i64 %55, 7
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %58, label %63

; <label>:58                                      ; preds = %54
  %59 = load i64, i64* %2, align 8
  %60 = and i64 %59, -8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* %61)
  br label %108

; <label>:63                                      ; preds = %54
  %64 = load i64, i64* %2, align 8
  %65 = and i64 %64, 7
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %67, label %104

; <label>:67                                      ; preds = %63
  %68 = load i64, i64* %2, align 8
  %69 = and i64 %68, -8
  %70 = inttoptr i64 %69 to i64*
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = and i64 %72, 7
  %74 = icmp eq i64 1, %73
  br i1 %74, label %75, label %104

; <label>:75                                      ; preds = %67
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  %77 = load i64, i64* %2, align 8
  %78 = and i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64* %79, i64** %4, align 8
  %80 = load i64*, i64** %4, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = lshr i64 %82, 3
  store i64 %83, i64* %5, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @prim_print(i64 %86)
  store i64 2, i64* %6, align 8
  br label %88

; <label>:88                                      ; preds = %99, %75
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %5, align 8
  %91 = icmp ule i64 %89, %90
  br i1 %91, label %92, label %102

; <label>:92                                      ; preds = %88
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  %94 = load i64, i64* %6, align 8
  %95 = load i64*, i64** %4, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 %94
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @prim_print(i64 %97)
  br label %99

; <label>:99                                      ; preds = %92
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %88

; <label>:102                                     ; preds = %88
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %107

; <label>:104                                     ; preds = %67, %63
  %105 = load i64, i64* %2, align 8
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i32 0, i32 0), i64 %105)
  br label %107

; <label>:107                                     ; preds = %104, %102
  br label %108

; <label>:108                                     ; preds = %107, %58
  br label %109

; <label>:109                                     ; preds = %108, %49
  br label %110

; <label>:110                                     ; preds = %109, %40
  br label %111

; <label>:111                                     ; preds = %110, %21
  br label %112

; <label>:112                                     ; preds = %111, %15
  br label %113

; <label>:113                                     ; preds = %112, %9
  ret i64 39
}

; Function Attrs: ssp uwtable
define i64 @applyprim_print(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_print(i64 %6)
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @prim_halt(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @prim_print(i64 %4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable
                                                  ; No predecessors!
  %8 = load i64, i64* %2, align 8
  ret i64 %8
}

; Function Attrs: ssp uwtable
define i64 @applyprim_vector(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = call i8* @malloc(i64 4096)
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %3, align 8
  store i64 0, i64* %4, align 8
  br label %9

; <label>:9                                       ; preds = %18, %1
  %10 = load i64, i64* %2, align 8
  %11 = and i64 %10, 7
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %16

; <label>:13                                      ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = icmp ult i64 %14, 512
  br label %16

; <label>:16                                      ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %25

; <label>:18                                      ; preds = %16
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @expect_cons(i64 %19, i64* %2)
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %4, align 8
  %23 = load i64*, i64** %3, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 %21
  store i64 %20, i64* %24, align 8
  br label %9

; <label>:25                                      ; preds = %16
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  %28 = mul i64 %27, 8
  %29 = call i64* @alloc(i64 %28)
  store i64* %29, i64** %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = shl i64 %30, 3
  %32 = or i64 %31, 1
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %32, i64* %34, align 8
  store i64 0, i64* %6, align 8
  br label %35

; <label>:35                                      ; preds = %48, %25
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %51

; <label>:39                                      ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = load i64*, i64** %3, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 %40
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  %46 = load i64*, i64** %5, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 %45
  store i64 %43, i64* %47, align 8
  br label %48

; <label>:48                                      ; preds = %39
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %35

; <label>:51                                      ; preds = %35
  %52 = load i64*, i64** %3, align 8
  %53 = icmp eq i64* %52, null
  br i1 %53, label %56, label %54

; <label>:54                                      ; preds = %51
  %55 = bitcast i64* %52 to i8*
  call void @_ZdaPv(i8* %55) #6
  br label %56

; <label>:56                                      ; preds = %54, %51
  %57 = load i64*, i64** %5, align 8
  %58 = ptrtoint i64* %57 to i64
  %59 = or i64 %58, 6
  ret i64 %59
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #4

; Function Attrs: ssp uwtable
define i64 @prim_make_45vector(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 2
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %11, %2
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, -8
  %15 = lshr i64 %14, 32
  %16 = trunc i64 %15 to i32
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, 1
  %20 = mul i64 %19, 8
  %21 = call i64* @alloc(i64 %20)
  store i64* %21, i64** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = shl i64 %22, 3
  %24 = or i64 %23, 1
  %25 = load i64*, i64** %6, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 %24, i64* %26, align 8
  store i64 1, i64* %7, align 8
  br label %27

; <label>:27                                      ; preds = %36, %12
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %39

; <label>:31                                      ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 %33
  store i64 %32, i64* %35, align 8
  br label %36

; <label>:36                                      ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %27

; <label>:39                                      ; preds = %27
  %40 = load i64*, i64** %6, align 8
  %41 = ptrtoint i64* %40 to i64
  %42 = or i64 %41, 6
  ret i64 %42
}

; Function Attrs: ssp uwtable
define i64 @applyprim_make_45vector(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_make_45vector(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: ssp uwtable
define i64 @prim_vector_45ref(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %2
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 6
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = inttoptr i64 %16 to i64*
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, 7
  %21 = icmp ne i64 %20, 1
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %14
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i32 0, i32 0))
  br label %23

; <label>:23                                      ; preds = %22, %14
  %24 = load i64, i64* %4, align 8
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = add nsw i32 1, %27
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %3, align 8
  %31 = and i64 %30, -8
  %32 = inttoptr i64 %31 to i64*
  %33 = getelementptr inbounds i64, i64* %32, i64 %29
  %34 = load i64, i64* %33, align 8
  ret i64 %34
}

; Function Attrs: ssp uwtable
define i64 @applyprim_vector_45ref(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_vector_45ref(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: ssp uwtable
define i64 @prim_vector_45set_33(i64, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = and i64 %7, 7
  %9 = icmp ne i64 %8, 2
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %3
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i32 0, i32 0))
  br label %11

; <label>:11                                      ; preds = %10, %3
  %12 = load i64, i64* %4, align 8
  %13 = and i64 %12, 7
  %14 = icmp ne i64 %13, 6
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %11
  call void @fatal_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i32 0, i32 0))
  br label %16

; <label>:16                                      ; preds = %15, %11
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, -8
  %19 = inttoptr i64 %18 to i64*
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %21, 7
  %23 = icmp ne i64 %22, 1
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %16
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i32 0, i32 0))
  br label %25

; <label>:25                                      ; preds = %24, %16
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %27, -8
  %29 = lshr i64 %28, 32
  %30 = trunc i64 %29 to i32
  %31 = add nsw i32 1, %30
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %4, align 8
  %34 = and i64 %33, -8
  %35 = inttoptr i64 %34 to i64*
  %36 = getelementptr inbounds i64, i64* %35, i64 %32
  store i64 %26, i64* %36, align 8
  ret i64 39
}

; Function Attrs: ssp uwtable
define i64 @applyprim_vector_45set_33(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i64 @expect_cons(i64 %7, i64* %3)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @expect_cons(i64 %9, i64* %3)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @expect_cons(i64 %11, i64* %3)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %16

; <label>:16                                      ; preds = %15, %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @prim_vector_45set_33(i64 %17, i64 %18, i64 %19)
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_void() #3 {
  ret i64 39
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_eq_63(i64, i64) #3 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  store i64 31, i64* %3, align 8
  br label %11

; <label>:10                                      ; preds = %2
  store i64 15, i64* %3, align 8
  br label %11

; <label>:11                                      ; preds = %10, %9
  %12 = load i64, i64* %3, align 8
  ret i64 %12
}

; Function Attrs: ssp uwtable
define i64 @applyprim_eq_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_eq_63(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_eqv_63(i64, i64) #3 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  store i64 31, i64* %3, align 8
  br label %11

; <label>:10                                      ; preds = %2
  store i64 15, i64* %3, align 8
  br label %11

; <label>:11                                      ; preds = %10, %9
  %12 = load i64, i64* %3, align 8
  ret i64 %12
}

; Function Attrs: ssp uwtable
define i64 @applyprim_eqv_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_eqv_63(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_number_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9                                       ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: ssp uwtable
define i64 @applyprim_number_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_number_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_integer_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9                                       ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: ssp uwtable
define i64 @applyprim_integer_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_integer_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_void_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 39
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %8

; <label>:7                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i64, i64* %2, align 8
  ret i64 %9
}

; Function Attrs: ssp uwtable
define i64 @applyprim_void_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_void_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_procedure_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9                                       ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: ssp uwtable
define i64 @applyprim_procedure_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_procedure_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_null_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %8

; <label>:7                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i64, i64* %2, align 8
  ret i64 %9
}

; Function Attrs: ssp uwtable
define i64 @applyprim_null_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_null_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_cons_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9                                       ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: ssp uwtable
define i64 @applyprim_cons_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_cons_63(i64 %6)
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @prim_cons(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i64* @alloc(i64 16)
  store i64* %6, i64** %5, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  store i64 %7, i64* %9, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  store i64 %10, i64* %12, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = ptrtoint i64* %13 to i64
  %15 = or i64 %14, 1
  ret i64 %15
}

; Function Attrs: ssp uwtable
define i64 @applyprim_cons(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_cons(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: ssp uwtable
define i64 @prim_car(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @expect_cons(i64 %5, i64* %3)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @applyprim_car(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_car(i64 %6)
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @prim_cdr(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @expect_cons(i64 %5, i64* %3)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @applyprim_cdr(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_cdr(i64 %6)
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @prim__43(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = add nsw i32 %18, %22
  %24 = zext i32 %23 to i64
  %25 = shl i64 %24, 32
  %26 = or i64 %25, 2
  ret i64 %26
}

; Function Attrs: ssp uwtable
define i64 @applyprim__43(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 2, i64* %2, align 8
  br label %34

; <label>:8                                       ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 1
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %4, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = load i64*, i64** %4, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @applyprim__43(i64 %25)
  %27 = and i64 %26, -8
  %28 = lshr i64 %27, 32
  %29 = trunc i64 %28 to i32
  %30 = add nsw i32 %22, %29
  %31 = zext i32 %30 to i64
  %32 = shl i64 %31, 32
  %33 = or i64 %32, 2
  store i64 %33, i64* %2, align 8
  br label %34

; <label>:34                                      ; preds = %13, %7
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

; Function Attrs: ssp uwtable
define i64 @prim__45(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = sub nsw i32 %18, %22
  %24 = zext i32 %23 to i64
  %25 = shl i64 %24, 32
  %26 = or i64 %25, 2
  ret i64 %26
}

; Function Attrs: ssp uwtable
define i64 @applyprim__45(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 2, i64* %2, align 8
  br label %50

; <label>:8                                       ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 1
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %4, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %32

; <label>:21                                      ; preds = %13
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = sub nsw i32 0, %27
  %29 = zext i32 %28 to i64
  %30 = shl i64 %29, 32
  %31 = or i64 %30, 2
  store i64 %31, i64* %2, align 8
  br label %50

; <label>:32                                      ; preds = %13
  %33 = load i64*, i64** %4, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = and i64 %35, -8
  %37 = lshr i64 %36, 32
  %38 = trunc i64 %37 to i32
  %39 = load i64*, i64** %4, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @applyprim__43(i64 %41)
  %43 = and i64 %42, -8
  %44 = lshr i64 %43, 32
  %45 = trunc i64 %44 to i32
  %46 = sub nsw i32 %38, %45
  %47 = zext i32 %46 to i64
  %48 = shl i64 %47, 32
  %49 = or i64 %48, 2
  store i64 %49, i64* %2, align 8
  br label %50

; <label>:50                                      ; preds = %32, %21, %7
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

; Function Attrs: ssp uwtable
define i64 @prim__42(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = mul nsw i32 %18, %22
  %24 = zext i32 %23 to i64
  %25 = shl i64 %24, 32
  %26 = or i64 %25, 2
  ret i64 %26
}

; Function Attrs: ssp uwtable
define i64 @applyprim__42(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 4294967298, i64* %2, align 8
  br label %34

; <label>:8                                       ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 1
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %4, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = load i64*, i64** %4, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @applyprim__42(i64 %25)
  %27 = and i64 %26, -8
  %28 = lshr i64 %27, 32
  %29 = trunc i64 %28 to i32
  %30 = mul nsw i32 %22, %29
  %31 = zext i32 %30 to i64
  %32 = shl i64 %31, 32
  %33 = or i64 %32, 2
  store i64 %33, i64* %2, align 8
  br label %34

; <label>:34                                      ; preds = %13, %7
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

; Function Attrs: ssp uwtable
define i64 @prim__47(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = sdiv i32 %18, %22
  %24 = zext i32 %23 to i64
  %25 = shl i64 %24, 32
  %26 = or i64 %25, 2
  ret i64 %26
}

; Function Attrs: ssp uwtable
define i64 @prim__61(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 2
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %14, %10
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, -8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, -8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %15
  store i64 31, i64* %3, align 8
  br label %27

; <label>:26                                      ; preds = %15
  store i64 15, i64* %3, align 8
  br label %27

; <label>:27                                      ; preds = %26, %25
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

; Function Attrs: ssp uwtable
define i64 @prim__60(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 2
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %14, %10
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, -8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, -8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %15
  store i64 31, i64* %3, align 8
  br label %27

; <label>:26                                      ; preds = %15
  store i64 15, i64* %3, align 8
  br label %27

; <label>:27                                      ; preds = %26, %25
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

; Function Attrs: ssp uwtable
define i64 @prim__60_61(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 2
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %14, %10
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, -8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, -8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = icmp sle i32 %19, %23
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %15
  store i64 31, i64* %3, align 8
  br label %27

; <label>:26                                      ; preds = %15
  store i64 15, i64* %3, align 8
  br label %27

; <label>:27                                      ; preds = %26, %25
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_not(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 15
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %8

; <label>:7                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i64, i64* %2, align 8
  ret i64 %9
}

; Function Attrs: ssp uwtable
define i64 @applyprim_not(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_not(i64 %6)
  ret i64 %7
}

attributes #0 = { ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 8.0.0 (clang-800.0.42.1)"}


;;;;;;

define void @proc_main() {
  %cloptr87217 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87218 = getelementptr inbounds i64, i64* %cloptr87217, i64 0                  ; &cloptr87217[0]
  %f87219 = ptrtoint void(i64,i64)* @lam87211 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87219, i64* %eptr87218                                                 ; store fptr
  %arg84015 = ptrtoint i64* %cloptr87217 to i64                                      ; closure cast; i64* -> i64
  %cloptr87220 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87221 = getelementptr inbounds i64, i64* %cloptr87220, i64 0                  ; &cloptr87220[0]
  %f87222 = ptrtoint void(i64,i64)* @lam87208 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87222, i64* %eptr87221                                                 ; store fptr
  %arg84014 = ptrtoint i64* %cloptr87220 to i64                                      ; closure cast; i64* -> i64
  %cloptr87223 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87224 = getelementptr inbounds i64, i64* %cloptr87223, i64 0                  ; &cloptr87223[0]
  %f87225 = ptrtoint void(i64,i64)* @lam86433 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87225, i64* %eptr87224                                                 ; store fptr
  %arg84013 = ptrtoint i64* %cloptr87223 to i64                                      ; closure cast; i64* -> i64
  %rva86418 = add i64 0, 0                                                           ; quoted ()
  %rva86417 = call i64 @prim_cons(i64 %arg84013, i64 %rva86418)                      ; call prim_cons
  %rva86416 = call i64 @prim_cons(i64 %arg84014, i64 %rva86417)                      ; call prim_cons
  %cloptr87226 = inttoptr i64 %arg84015 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87227 = getelementptr inbounds i64, i64* %cloptr87226, i64 0                 ; &cloptr87226[0]
  %f87229 = load i64, i64* %i0ptr87227, align 8                                      ; load; *i0ptr87227
  %fptr87228 = inttoptr i64 %f87229 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87228(i64 %arg84015, i64 %rva86416)                 ; tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam87211(i64 %env87212, i64 %rvp85117) {
  %cont84005 = call i64 @prim_car(i64 %rvp85117)                                     ; call prim_car
  %rvp85116 = call i64 @prim_cdr(i64 %rvp85117)                                      ; call prim_cdr
  %J02$yu = call i64 @prim_car(i64 %rvp85116)                                        ; call prim_car
  %na85112 = call i64 @prim_cdr(i64 %rvp85116)                                       ; call prim_cdr
  %rva85115 = add i64 0, 0                                                           ; quoted ()
  %rva85114 = call i64 @prim_cons(i64 %J02$yu, i64 %rva85115)                        ; call prim_cons
  %rva85113 = call i64 @prim_cons(i64 %cont84005, i64 %rva85114)                     ; call prim_cons
  %cloptr87230 = inttoptr i64 %J02$yu to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87231 = getelementptr inbounds i64, i64* %cloptr87230, i64 0                 ; &cloptr87230[0]
  %f87233 = load i64, i64* %i0ptr87231, align 8                                      ; load; *i0ptr87231
  %fptr87232 = inttoptr i64 %f87233 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87232(i64 %J02$yu, i64 %rva85113)                   ; tail call
  ret void
}


define void @lam87208(i64 %env87209, i64 %rvp86387) {
  %_9583775 = call i64 @prim_car(i64 %rvp86387)                                      ; call prim_car
  %rvp86386 = call i64 @prim_cdr(i64 %rvp86387)                                      ; call prim_cdr
  %MTq$Ycmb = call i64 @prim_car(i64 %rvp86386)                                      ; call prim_car
  %na85119 = call i64 @prim_cdr(i64 %rvp86386)                                       ; call prim_cdr
  %cloptr87234 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr87236 = getelementptr inbounds i64, i64* %cloptr87234, i64 1                  ; &eptr87236[1]
  store i64 %MTq$Ycmb, i64* %eptr87236                                               ; *eptr87236 = %MTq$Ycmb
  %eptr87235 = getelementptr inbounds i64, i64* %cloptr87234, i64 0                  ; &cloptr87234[0]
  %f87237 = ptrtoint void(i64,i64)* @lam87206 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87237, i64* %eptr87235                                                 ; store fptr
  %arg84020 = ptrtoint i64* %cloptr87234 to i64                                      ; closure cast; i64* -> i64
  %cloptr87238 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87239 = getelementptr inbounds i64, i64* %cloptr87238, i64 0                  ; &cloptr87238[0]
  %f87240 = ptrtoint void(i64,i64)* @lam86446 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87240, i64* %eptr87239                                                 ; store fptr
  %arg84019 = ptrtoint i64* %cloptr87238 to i64                                      ; closure cast; i64* -> i64
  %rva86385 = add i64 0, 0                                                           ; quoted ()
  %rva86384 = call i64 @prim_cons(i64 %arg84019, i64 %rva86385)                      ; call prim_cons
  %rva86383 = call i64 @prim_cons(i64 %arg84020, i64 %rva86384)                      ; call prim_cons
  %cloptr87241 = inttoptr i64 %MTq$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87242 = getelementptr inbounds i64, i64* %cloptr87241, i64 0                 ; &cloptr87241[0]
  %f87244 = load i64, i64* %i0ptr87242, align 8                                      ; load; *i0ptr87242
  %fptr87243 = inttoptr i64 %f87244 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87243(i64 %MTq$Ycmb, i64 %rva86383)                 ; tail call
  ret void
}


define void @lam87206(i64 %env87207, i64 %rvp86353) {
  %envptr87245 = inttoptr i64 %env87207 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87246 = getelementptr inbounds i64, i64* %envptr87245, i64 1                ; &envptr87245[1]
  %MTq$Ycmb = load i64, i64* %envptr87246, align 8                                   ; load; *envptr87246
  %_9583776 = call i64 @prim_car(i64 %rvp86353)                                      ; call prim_car
  %rvp86352 = call i64 @prim_cdr(i64 %rvp86353)                                      ; call prim_cdr
  %bVq$_37foldr1 = call i64 @prim_car(i64 %rvp86352)                                 ; call prim_car
  %na85121 = call i64 @prim_cdr(i64 %rvp86352)                                       ; call prim_cdr
  %cloptr87247 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87249 = getelementptr inbounds i64, i64* %cloptr87247, i64 1                  ; &eptr87249[1]
  %eptr87250 = getelementptr inbounds i64, i64* %cloptr87247, i64 2                  ; &eptr87250[2]
  store i64 %bVq$_37foldr1, i64* %eptr87249                                          ; *eptr87249 = %bVq$_37foldr1
  store i64 %MTq$Ycmb, i64* %eptr87250                                               ; *eptr87250 = %MTq$Ycmb
  %eptr87248 = getelementptr inbounds i64, i64* %cloptr87247, i64 0                  ; &cloptr87247[0]
  %f87251 = ptrtoint void(i64,i64)* @lam87204 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87251, i64* %eptr87248                                                 ; store fptr
  %arg84023 = ptrtoint i64* %cloptr87247 to i64                                      ; closure cast; i64* -> i64
  %cloptr87252 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87253 = getelementptr inbounds i64, i64* %cloptr87252, i64 0                  ; &cloptr87252[0]
  %f87254 = ptrtoint void(i64,i64)* @lam86464 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87254, i64* %eptr87253                                                 ; store fptr
  %arg84022 = ptrtoint i64* %cloptr87252 to i64                                      ; closure cast; i64* -> i64
  %rva86351 = add i64 0, 0                                                           ; quoted ()
  %rva86350 = call i64 @prim_cons(i64 %arg84022, i64 %rva86351)                      ; call prim_cons
  %rva86349 = call i64 @prim_cons(i64 %arg84023, i64 %rva86350)                      ; call prim_cons
  %cloptr87255 = inttoptr i64 %MTq$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87256 = getelementptr inbounds i64, i64* %cloptr87255, i64 0                 ; &cloptr87255[0]
  %f87258 = load i64, i64* %i0ptr87256, align 8                                      ; load; *i0ptr87256
  %fptr87257 = inttoptr i64 %f87258 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87257(i64 %MTq$Ycmb, i64 %rva86349)                 ; tail call
  ret void
}


define void @lam87204(i64 %env87205, i64 %rvp86315) {
  %envptr87259 = inttoptr i64 %env87205 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87260 = getelementptr inbounds i64, i64* %envptr87259, i64 2                ; &envptr87259[2]
  %MTq$Ycmb = load i64, i64* %envptr87260, align 8                                   ; load; *envptr87260
  %envptr87261 = inttoptr i64 %env87205 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87262 = getelementptr inbounds i64, i64* %envptr87261, i64 1                ; &envptr87261[1]
  %bVq$_37foldr1 = load i64, i64* %envptr87262, align 8                              ; load; *envptr87262
  %_9583777 = call i64 @prim_car(i64 %rvp86315)                                      ; call prim_car
  %rvp86314 = call i64 @prim_cdr(i64 %rvp86315)                                      ; call prim_cdr
  %mHI$_37map1 = call i64 @prim_car(i64 %rvp86314)                                   ; call prim_car
  %na85123 = call i64 @prim_cdr(i64 %rvp86314)                                       ; call prim_cdr
  %cloptr87263 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87265 = getelementptr inbounds i64, i64* %cloptr87263, i64 1                  ; &eptr87265[1]
  %eptr87266 = getelementptr inbounds i64, i64* %cloptr87263, i64 2                  ; &eptr87266[2]
  %eptr87267 = getelementptr inbounds i64, i64* %cloptr87263, i64 3                  ; &eptr87267[3]
  store i64 %mHI$_37map1, i64* %eptr87265                                            ; *eptr87265 = %mHI$_37map1
  store i64 %bVq$_37foldr1, i64* %eptr87266                                          ; *eptr87266 = %bVq$_37foldr1
  store i64 %MTq$Ycmb, i64* %eptr87267                                               ; *eptr87267 = %MTq$Ycmb
  %eptr87264 = getelementptr inbounds i64, i64* %cloptr87263, i64 0                  ; &cloptr87263[0]
  %f87268 = ptrtoint void(i64,i64)* @lam87202 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87268, i64* %eptr87264                                                 ; store fptr
  %arg84026 = ptrtoint i64* %cloptr87263 to i64                                      ; closure cast; i64* -> i64
  %cloptr87269 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87270 = getelementptr inbounds i64, i64* %cloptr87269, i64 0                  ; &cloptr87269[0]
  %f87271 = ptrtoint void(i64,i64)* @lam86484 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87271, i64* %eptr87270                                                 ; store fptr
  %arg84025 = ptrtoint i64* %cloptr87269 to i64                                      ; closure cast; i64* -> i64
  %rva86313 = add i64 0, 0                                                           ; quoted ()
  %rva86312 = call i64 @prim_cons(i64 %arg84025, i64 %rva86313)                      ; call prim_cons
  %rva86311 = call i64 @prim_cons(i64 %arg84026, i64 %rva86312)                      ; call prim_cons
  %cloptr87272 = inttoptr i64 %MTq$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87273 = getelementptr inbounds i64, i64* %cloptr87272, i64 0                 ; &cloptr87272[0]
  %f87275 = load i64, i64* %i0ptr87273, align 8                                      ; load; *i0ptr87273
  %fptr87274 = inttoptr i64 %f87275 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87274(i64 %MTq$Ycmb, i64 %rva86311)                 ; tail call
  ret void
}


define void @lam87202(i64 %env87203, i64 %rvp86281) {
  %envptr87276 = inttoptr i64 %env87203 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87277 = getelementptr inbounds i64, i64* %envptr87276, i64 3                ; &envptr87276[3]
  %MTq$Ycmb = load i64, i64* %envptr87277, align 8                                   ; load; *envptr87277
  %envptr87278 = inttoptr i64 %env87203 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87279 = getelementptr inbounds i64, i64* %envptr87278, i64 2                ; &envptr87278[2]
  %bVq$_37foldr1 = load i64, i64* %envptr87279, align 8                              ; load; *envptr87279
  %envptr87280 = inttoptr i64 %env87203 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87281 = getelementptr inbounds i64, i64* %envptr87280, i64 1                ; &envptr87280[1]
  %mHI$_37map1 = load i64, i64* %envptr87281, align 8                                ; load; *envptr87281
  %_9583778 = call i64 @prim_car(i64 %rvp86281)                                      ; call prim_car
  %rvp86280 = call i64 @prim_cdr(i64 %rvp86281)                                      ; call prim_cdr
  %VzD$_37take = call i64 @prim_car(i64 %rvp86280)                                   ; call prim_car
  %na85125 = call i64 @prim_cdr(i64 %rvp86280)                                       ; call prim_cdr
  %cloptr87282 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr87284 = getelementptr inbounds i64, i64* %cloptr87282, i64 1                  ; &eptr87284[1]
  %eptr87285 = getelementptr inbounds i64, i64* %cloptr87282, i64 2                  ; &eptr87285[2]
  %eptr87286 = getelementptr inbounds i64, i64* %cloptr87282, i64 3                  ; &eptr87286[3]
  %eptr87287 = getelementptr inbounds i64, i64* %cloptr87282, i64 4                  ; &eptr87287[4]
  store i64 %mHI$_37map1, i64* %eptr87284                                            ; *eptr87284 = %mHI$_37map1
  store i64 %bVq$_37foldr1, i64* %eptr87285                                          ; *eptr87285 = %bVq$_37foldr1
  store i64 %VzD$_37take, i64* %eptr87286                                            ; *eptr87286 = %VzD$_37take
  store i64 %MTq$Ycmb, i64* %eptr87287                                               ; *eptr87287 = %MTq$Ycmb
  %eptr87283 = getelementptr inbounds i64, i64* %cloptr87282, i64 0                  ; &cloptr87282[0]
  %f87288 = ptrtoint void(i64,i64)* @lam87200 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87288, i64* %eptr87283                                                 ; store fptr
  %arg84029 = ptrtoint i64* %cloptr87282 to i64                                      ; closure cast; i64* -> i64
  %cloptr87289 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87290 = getelementptr inbounds i64, i64* %cloptr87289, i64 0                  ; &cloptr87289[0]
  %f87291 = ptrtoint void(i64,i64)* @lam86500 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87291, i64* %eptr87290                                                 ; store fptr
  %arg84028 = ptrtoint i64* %cloptr87289 to i64                                      ; closure cast; i64* -> i64
  %rva86279 = add i64 0, 0                                                           ; quoted ()
  %rva86278 = call i64 @prim_cons(i64 %arg84028, i64 %rva86279)                      ; call prim_cons
  %rva86277 = call i64 @prim_cons(i64 %arg84029, i64 %rva86278)                      ; call prim_cons
  %cloptr87292 = inttoptr i64 %MTq$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87293 = getelementptr inbounds i64, i64* %cloptr87292, i64 0                 ; &cloptr87292[0]
  %f87295 = load i64, i64* %i0ptr87293, align 8                                      ; load; *i0ptr87293
  %fptr87294 = inttoptr i64 %f87295 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87294(i64 %MTq$Ycmb, i64 %rva86277)                 ; tail call
  ret void
}


define void @lam87200(i64 %env87201, i64 %rvp86252) {
  %envptr87296 = inttoptr i64 %env87201 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87297 = getelementptr inbounds i64, i64* %envptr87296, i64 4                ; &envptr87296[4]
  %MTq$Ycmb = load i64, i64* %envptr87297, align 8                                   ; load; *envptr87297
  %envptr87298 = inttoptr i64 %env87201 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87299 = getelementptr inbounds i64, i64* %envptr87298, i64 3                ; &envptr87298[3]
  %VzD$_37take = load i64, i64* %envptr87299, align 8                                ; load; *envptr87299
  %envptr87300 = inttoptr i64 %env87201 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87301 = getelementptr inbounds i64, i64* %envptr87300, i64 2                ; &envptr87300[2]
  %bVq$_37foldr1 = load i64, i64* %envptr87301, align 8                              ; load; *envptr87301
  %envptr87302 = inttoptr i64 %env87201 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87303 = getelementptr inbounds i64, i64* %envptr87302, i64 1                ; &envptr87302[1]
  %mHI$_37map1 = load i64, i64* %envptr87303, align 8                                ; load; *envptr87303
  %_9583779 = call i64 @prim_car(i64 %rvp86252)                                      ; call prim_car
  %rvp86251 = call i64 @prim_cdr(i64 %rvp86252)                                      ; call prim_cdr
  %cwM$_37length = call i64 @prim_car(i64 %rvp86251)                                 ; call prim_car
  %na85127 = call i64 @prim_cdr(i64 %rvp86251)                                       ; call prim_cdr
  %cloptr87304 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr87306 = getelementptr inbounds i64, i64* %cloptr87304, i64 1                  ; &eptr87306[1]
  %eptr87307 = getelementptr inbounds i64, i64* %cloptr87304, i64 2                  ; &eptr87307[2]
  %eptr87308 = getelementptr inbounds i64, i64* %cloptr87304, i64 3                  ; &eptr87308[3]
  %eptr87309 = getelementptr inbounds i64, i64* %cloptr87304, i64 4                  ; &eptr87309[4]
  %eptr87310 = getelementptr inbounds i64, i64* %cloptr87304, i64 5                  ; &eptr87310[5]
  store i64 %cwM$_37length, i64* %eptr87306                                          ; *eptr87306 = %cwM$_37length
  store i64 %mHI$_37map1, i64* %eptr87307                                            ; *eptr87307 = %mHI$_37map1
  store i64 %bVq$_37foldr1, i64* %eptr87308                                          ; *eptr87308 = %bVq$_37foldr1
  store i64 %VzD$_37take, i64* %eptr87309                                            ; *eptr87309 = %VzD$_37take
  store i64 %MTq$Ycmb, i64* %eptr87310                                               ; *eptr87310 = %MTq$Ycmb
  %eptr87305 = getelementptr inbounds i64, i64* %cloptr87304, i64 0                  ; &cloptr87304[0]
  %f87311 = ptrtoint void(i64,i64)* @lam87198 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87311, i64* %eptr87305                                                 ; store fptr
  %arg84032 = ptrtoint i64* %cloptr87304 to i64                                      ; closure cast; i64* -> i64
  %cloptr87312 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87313 = getelementptr inbounds i64, i64* %cloptr87312, i64 0                  ; &cloptr87312[0]
  %f87314 = ptrtoint void(i64,i64)* @lam86513 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87314, i64* %eptr87313                                                 ; store fptr
  %arg84031 = ptrtoint i64* %cloptr87312 to i64                                      ; closure cast; i64* -> i64
  %rva86250 = add i64 0, 0                                                           ; quoted ()
  %rva86249 = call i64 @prim_cons(i64 %arg84031, i64 %rva86250)                      ; call prim_cons
  %rva86248 = call i64 @prim_cons(i64 %arg84032, i64 %rva86249)                      ; call prim_cons
  %cloptr87315 = inttoptr i64 %MTq$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87316 = getelementptr inbounds i64, i64* %cloptr87315, i64 0                 ; &cloptr87315[0]
  %f87318 = load i64, i64* %i0ptr87316, align 8                                      ; load; *i0ptr87316
  %fptr87317 = inttoptr i64 %f87318 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87317(i64 %MTq$Ycmb, i64 %rva86248)                 ; tail call
  ret void
}


define void @lam87198(i64 %env87199, i64 %rvp86218) {
  %envptr87319 = inttoptr i64 %env87199 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87320 = getelementptr inbounds i64, i64* %envptr87319, i64 5                ; &envptr87319[5]
  %MTq$Ycmb = load i64, i64* %envptr87320, align 8                                   ; load; *envptr87320
  %envptr87321 = inttoptr i64 %env87199 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87322 = getelementptr inbounds i64, i64* %envptr87321, i64 4                ; &envptr87321[4]
  %VzD$_37take = load i64, i64* %envptr87322, align 8                                ; load; *envptr87322
  %envptr87323 = inttoptr i64 %env87199 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87324 = getelementptr inbounds i64, i64* %envptr87323, i64 3                ; &envptr87323[3]
  %bVq$_37foldr1 = load i64, i64* %envptr87324, align 8                              ; load; *envptr87324
  %envptr87325 = inttoptr i64 %env87199 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87326 = getelementptr inbounds i64, i64* %envptr87325, i64 2                ; &envptr87325[2]
  %mHI$_37map1 = load i64, i64* %envptr87326, align 8                                ; load; *envptr87326
  %envptr87327 = inttoptr i64 %env87199 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87328 = getelementptr inbounds i64, i64* %envptr87327, i64 1                ; &envptr87327[1]
  %cwM$_37length = load i64, i64* %envptr87328, align 8                              ; load; *envptr87328
  %_9583780 = call i64 @prim_car(i64 %rvp86218)                                      ; call prim_car
  %rvp86217 = call i64 @prim_cdr(i64 %rvp86218)                                      ; call prim_cdr
  %E2H$_37foldl1 = call i64 @prim_car(i64 %rvp86217)                                 ; call prim_car
  %na85129 = call i64 @prim_cdr(i64 %rvp86217)                                       ; call prim_cdr
  %cloptr87329 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr87331 = getelementptr inbounds i64, i64* %cloptr87329, i64 1                  ; &eptr87331[1]
  store i64 %E2H$_37foldl1, i64* %eptr87331                                          ; *eptr87331 = %E2H$_37foldl1
  %eptr87330 = getelementptr inbounds i64, i64* %cloptr87329, i64 0                  ; &cloptr87329[0]
  %f87332 = ptrtoint void(i64,i64)* @lam87196 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87332, i64* %eptr87330                                                 ; store fptr
  %UgK$_37last = ptrtoint i64* %cloptr87329 to i64                                   ; closure cast; i64* -> i64
  %cloptr87333 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87335 = getelementptr inbounds i64, i64* %cloptr87333, i64 1                  ; &eptr87335[1]
  %eptr87336 = getelementptr inbounds i64, i64* %cloptr87333, i64 2                  ; &eptr87336[2]
  store i64 %cwM$_37length, i64* %eptr87335                                          ; *eptr87335 = %cwM$_37length
  store i64 %VzD$_37take, i64* %eptr87336                                            ; *eptr87336 = %VzD$_37take
  %eptr87334 = getelementptr inbounds i64, i64* %cloptr87333, i64 0                  ; &cloptr87333[0]
  %f87337 = ptrtoint void(i64,i64)* @lam87188 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87337, i64* %eptr87334                                                 ; store fptr
  %JBu$_37drop_45right = ptrtoint i64* %cloptr87333 to i64                           ; closure cast; i64* -> i64
  %cloptr87338 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr87340 = getelementptr inbounds i64, i64* %cloptr87338, i64 1                  ; &eptr87340[1]
  %eptr87341 = getelementptr inbounds i64, i64* %cloptr87338, i64 2                  ; &eptr87341[2]
  %eptr87342 = getelementptr inbounds i64, i64* %cloptr87338, i64 3                  ; &eptr87342[3]
  %eptr87343 = getelementptr inbounds i64, i64* %cloptr87338, i64 4                  ; &eptr87343[4]
  %eptr87344 = getelementptr inbounds i64, i64* %cloptr87338, i64 5                  ; &eptr87344[5]
  %eptr87345 = getelementptr inbounds i64, i64* %cloptr87338, i64 6                  ; &eptr87345[6]
  store i64 %cwM$_37length, i64* %eptr87340                                          ; *eptr87340 = %cwM$_37length
  store i64 %UgK$_37last, i64* %eptr87341                                            ; *eptr87341 = %UgK$_37last
  store i64 %bVq$_37foldr1, i64* %eptr87342                                          ; *eptr87342 = %bVq$_37foldr1
  store i64 %E2H$_37foldl1, i64* %eptr87343                                          ; *eptr87343 = %E2H$_37foldl1
  store i64 %JBu$_37drop_45right, i64* %eptr87344                                    ; *eptr87344 = %JBu$_37drop_45right
  store i64 %MTq$Ycmb, i64* %eptr87345                                               ; *eptr87345 = %MTq$Ycmb
  %eptr87339 = getelementptr inbounds i64, i64* %cloptr87338, i64 0                  ; &cloptr87338[0]
  %f87346 = ptrtoint void(i64,i64)* @lam87182 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87346, i64* %eptr87339                                                 ; store fptr
  %arg84052 = ptrtoint i64* %cloptr87338 to i64                                      ; closure cast; i64* -> i64
  %cloptr87347 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87349 = getelementptr inbounds i64, i64* %cloptr87347, i64 1                  ; &eptr87349[1]
  %eptr87350 = getelementptr inbounds i64, i64* %cloptr87347, i64 2                  ; &eptr87350[2]
  store i64 %mHI$_37map1, i64* %eptr87349                                            ; *eptr87349 = %mHI$_37map1
  store i64 %bVq$_37foldr1, i64* %eptr87350                                          ; *eptr87350 = %bVq$_37foldr1
  %eptr87348 = getelementptr inbounds i64, i64* %cloptr87347, i64 0                  ; &cloptr87347[0]
  %f87351 = ptrtoint void(i64,i64)* @lam86564 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87351, i64* %eptr87348                                                 ; store fptr
  %arg84051 = ptrtoint i64* %cloptr87347 to i64                                      ; closure cast; i64* -> i64
  %rva86216 = add i64 0, 0                                                           ; quoted ()
  %rva86215 = call i64 @prim_cons(i64 %arg84051, i64 %rva86216)                      ; call prim_cons
  %rva86214 = call i64 @prim_cons(i64 %arg84052, i64 %rva86215)                      ; call prim_cons
  %cloptr87352 = inttoptr i64 %MTq$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87353 = getelementptr inbounds i64, i64* %cloptr87352, i64 0                 ; &cloptr87352[0]
  %f87355 = load i64, i64* %i0ptr87353, align 8                                      ; load; *i0ptr87353
  %fptr87354 = inttoptr i64 %f87355 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87354(i64 %MTq$Ycmb, i64 %rva86214)                 ; tail call
  ret void
}


define void @lam87196(i64 %env87197, i64 %rvp85146) {
  %envptr87356 = inttoptr i64 %env87197 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87357 = getelementptr inbounds i64, i64* %envptr87356, i64 1                ; &envptr87356[1]
  %E2H$_37foldl1 = load i64, i64* %envptr87357, align 8                              ; load; *envptr87357
  %cont83781 = call i64 @prim_car(i64 %rvp85146)                                     ; call prim_car
  %rvp85145 = call i64 @prim_cdr(i64 %rvp85146)                                      ; call prim_cdr
  %Y99$lst = call i64 @prim_car(i64 %rvp85145)                                       ; call prim_car
  %na85131 = call i64 @prim_cdr(i64 %rvp85145)                                       ; call prim_cdr
  %cloptr87358 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87359 = getelementptr inbounds i64, i64* %cloptr87358, i64 0                  ; &cloptr87358[0]
  %f87360 = ptrtoint void(i64,i64)* @lam87194 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87360, i64* %eptr87359                                                 ; store fptr
  %arg84036 = ptrtoint i64* %cloptr87358 to i64                                      ; closure cast; i64* -> i64
  %arg84035 = add i64 0, 0                                                           ; quoted ()
  %rva85144 = add i64 0, 0                                                           ; quoted ()
  %rva85143 = call i64 @prim_cons(i64 %Y99$lst, i64 %rva85144)                       ; call prim_cons
  %rva85142 = call i64 @prim_cons(i64 %arg84035, i64 %rva85143)                      ; call prim_cons
  %rva85141 = call i64 @prim_cons(i64 %arg84036, i64 %rva85142)                      ; call prim_cons
  %rva85140 = call i64 @prim_cons(i64 %cont83781, i64 %rva85141)                     ; call prim_cons
  %cloptr87361 = inttoptr i64 %E2H$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr87362 = getelementptr inbounds i64, i64* %cloptr87361, i64 0                 ; &cloptr87361[0]
  %f87364 = load i64, i64* %i0ptr87362, align 8                                      ; load; *i0ptr87362
  %fptr87363 = inttoptr i64 %f87364 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87363(i64 %E2H$_37foldl1, i64 %rva85140)            ; tail call
  ret void
}


define void @lam87194(i64 %env87195, i64 %rvp85139) {
  %cont83782 = call i64 @prim_car(i64 %rvp85139)                                     ; call prim_car
  %rvp85138 = call i64 @prim_cdr(i64 %rvp85139)                                      ; call prim_cdr
  %gAI$x = call i64 @prim_car(i64 %rvp85138)                                         ; call prim_car
  %rvp85137 = call i64 @prim_cdr(i64 %rvp85138)                                      ; call prim_cdr
  %WTi$y = call i64 @prim_car(i64 %rvp85137)                                         ; call prim_car
  %na85133 = call i64 @prim_cdr(i64 %rvp85137)                                       ; call prim_cdr
  %arg84040 = add i64 0, 0                                                           ; quoted ()
  %rva85136 = add i64 0, 0                                                           ; quoted ()
  %rva85135 = call i64 @prim_cons(i64 %gAI$x, i64 %rva85136)                         ; call prim_cons
  %rva85134 = call i64 @prim_cons(i64 %arg84040, i64 %rva85135)                      ; call prim_cons
  %cloptr87365 = inttoptr i64 %cont83782 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87366 = getelementptr inbounds i64, i64* %cloptr87365, i64 0                 ; &cloptr87365[0]
  %f87368 = load i64, i64* %i0ptr87366, align 8                                      ; load; *i0ptr87366
  %fptr87367 = inttoptr i64 %f87368 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87367(i64 %cont83782, i64 %rva85134)                ; tail call
  ret void
}


define void @lam87188(i64 %env87189, i64 %rvp85162) {
  %envptr87369 = inttoptr i64 %env87189 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87370 = getelementptr inbounds i64, i64* %envptr87369, i64 2                ; &envptr87369[2]
  %VzD$_37take = load i64, i64* %envptr87370, align 8                                ; load; *envptr87370
  %envptr87371 = inttoptr i64 %env87189 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87372 = getelementptr inbounds i64, i64* %envptr87371, i64 1                ; &envptr87371[1]
  %cwM$_37length = load i64, i64* %envptr87372, align 8                              ; load; *envptr87372
  %cont83783 = call i64 @prim_car(i64 %rvp85162)                                     ; call prim_car
  %rvp85161 = call i64 @prim_cdr(i64 %rvp85162)                                      ; call prim_cdr
  %bWO$lst = call i64 @prim_car(i64 %rvp85161)                                       ; call prim_car
  %rvp85160 = call i64 @prim_cdr(i64 %rvp85161)                                      ; call prim_cdr
  %U3V$n = call i64 @prim_car(i64 %rvp85160)                                         ; call prim_car
  %na85148 = call i64 @prim_cdr(i64 %rvp85160)                                       ; call prim_cdr
  %cloptr87373 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr87375 = getelementptr inbounds i64, i64* %cloptr87373, i64 1                  ; &eptr87375[1]
  %eptr87376 = getelementptr inbounds i64, i64* %cloptr87373, i64 2                  ; &eptr87376[2]
  %eptr87377 = getelementptr inbounds i64, i64* %cloptr87373, i64 3                  ; &eptr87377[3]
  %eptr87378 = getelementptr inbounds i64, i64* %cloptr87373, i64 4                  ; &eptr87378[4]
  store i64 %bWO$lst, i64* %eptr87375                                                ; *eptr87375 = %bWO$lst
  store i64 %U3V$n, i64* %eptr87376                                                  ; *eptr87376 = %U3V$n
  store i64 %VzD$_37take, i64* %eptr87377                                            ; *eptr87377 = %VzD$_37take
  store i64 %cont83783, i64* %eptr87378                                              ; *eptr87378 = %cont83783
  %eptr87374 = getelementptr inbounds i64, i64* %cloptr87373, i64 0                  ; &cloptr87373[0]
  %f87379 = ptrtoint void(i64,i64)* @lam87186 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87379, i64* %eptr87374                                                 ; store fptr
  %arg84043 = ptrtoint i64* %cloptr87373 to i64                                      ; closure cast; i64* -> i64
  %rva85159 = add i64 0, 0                                                           ; quoted ()
  %rva85158 = call i64 @prim_cons(i64 %bWO$lst, i64 %rva85159)                       ; call prim_cons
  %rva85157 = call i64 @prim_cons(i64 %arg84043, i64 %rva85158)                      ; call prim_cons
  %cloptr87380 = inttoptr i64 %cwM$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr87381 = getelementptr inbounds i64, i64* %cloptr87380, i64 0                 ; &cloptr87380[0]
  %f87383 = load i64, i64* %i0ptr87381, align 8                                      ; load; *i0ptr87381
  %fptr87382 = inttoptr i64 %f87383 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87382(i64 %cwM$_37length, i64 %rva85157)            ; tail call
  ret void
}


define void @lam87186(i64 %env87187, i64 %rvp85156) {
  %envptr87384 = inttoptr i64 %env87187 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87385 = getelementptr inbounds i64, i64* %envptr87384, i64 4                ; &envptr87384[4]
  %cont83783 = load i64, i64* %envptr87385, align 8                                  ; load; *envptr87385
  %envptr87386 = inttoptr i64 %env87187 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87387 = getelementptr inbounds i64, i64* %envptr87386, i64 3                ; &envptr87386[3]
  %VzD$_37take = load i64, i64* %envptr87387, align 8                                ; load; *envptr87387
  %envptr87388 = inttoptr i64 %env87187 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87389 = getelementptr inbounds i64, i64* %envptr87388, i64 2                ; &envptr87388[2]
  %U3V$n = load i64, i64* %envptr87389, align 8                                      ; load; *envptr87389
  %envptr87390 = inttoptr i64 %env87187 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87391 = getelementptr inbounds i64, i64* %envptr87390, i64 1                ; &envptr87390[1]
  %bWO$lst = load i64, i64* %envptr87391, align 8                                    ; load; *envptr87391
  %_9583784 = call i64 @prim_car(i64 %rvp85156)                                      ; call prim_car
  %rvp85155 = call i64 @prim_cdr(i64 %rvp85156)                                      ; call prim_cdr
  %a83631 = call i64 @prim_car(i64 %rvp85155)                                        ; call prim_car
  %na85150 = call i64 @prim_cdr(i64 %rvp85155)                                       ; call prim_cdr
  %a83632 = call i64 @prim__45(i64 %a83631, i64 %U3V$n)                              ; call prim__45
  %rva85154 = add i64 0, 0                                                           ; quoted ()
  %rva85153 = call i64 @prim_cons(i64 %a83632, i64 %rva85154)                        ; call prim_cons
  %rva85152 = call i64 @prim_cons(i64 %bWO$lst, i64 %rva85153)                       ; call prim_cons
  %rva85151 = call i64 @prim_cons(i64 %cont83783, i64 %rva85152)                     ; call prim_cons
  %cloptr87392 = inttoptr i64 %VzD$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr87393 = getelementptr inbounds i64, i64* %cloptr87392, i64 0                 ; &cloptr87392[0]
  %f87395 = load i64, i64* %i0ptr87393, align 8                                      ; load; *i0ptr87393
  %fptr87394 = inttoptr i64 %f87395 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87394(i64 %VzD$_37take, i64 %rva85151)              ; tail call
  ret void
}


define void @lam87182(i64 %env87183, i64 %rvp86118) {
  %envptr87396 = inttoptr i64 %env87183 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87397 = getelementptr inbounds i64, i64* %envptr87396, i64 6                ; &envptr87396[6]
  %MTq$Ycmb = load i64, i64* %envptr87397, align 8                                   ; load; *envptr87397
  %envptr87398 = inttoptr i64 %env87183 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87399 = getelementptr inbounds i64, i64* %envptr87398, i64 5                ; &envptr87398[5]
  %JBu$_37drop_45right = load i64, i64* %envptr87399, align 8                        ; load; *envptr87399
  %envptr87400 = inttoptr i64 %env87183 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87401 = getelementptr inbounds i64, i64* %envptr87400, i64 4                ; &envptr87400[4]
  %E2H$_37foldl1 = load i64, i64* %envptr87401, align 8                              ; load; *envptr87401
  %envptr87402 = inttoptr i64 %env87183 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87403 = getelementptr inbounds i64, i64* %envptr87402, i64 3                ; &envptr87402[3]
  %bVq$_37foldr1 = load i64, i64* %envptr87403, align 8                              ; load; *envptr87403
  %envptr87404 = inttoptr i64 %env87183 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87405 = getelementptr inbounds i64, i64* %envptr87404, i64 2                ; &envptr87404[2]
  %UgK$_37last = load i64, i64* %envptr87405, align 8                                ; load; *envptr87405
  %envptr87406 = inttoptr i64 %env87183 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87407 = getelementptr inbounds i64, i64* %envptr87406, i64 1                ; &envptr87406[1]
  %cwM$_37length = load i64, i64* %envptr87407, align 8                              ; load; *envptr87407
  %_9583785 = call i64 @prim_car(i64 %rvp86118)                                      ; call prim_car
  %rvp86117 = call i64 @prim_cdr(i64 %rvp86118)                                      ; call prim_cdr
  %pG2$_37foldr = call i64 @prim_car(i64 %rvp86117)                                  ; call prim_car
  %na85164 = call i64 @prim_cdr(i64 %rvp86117)                                       ; call prim_cdr
  %cloptr87408 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr87410 = getelementptr inbounds i64, i64* %cloptr87408, i64 1                  ; &eptr87410[1]
  store i64 %bVq$_37foldr1, i64* %eptr87410                                          ; *eptr87410 = %bVq$_37foldr1
  %eptr87409 = getelementptr inbounds i64, i64* %cloptr87408, i64 0                  ; &cloptr87408[0]
  %f87411 = ptrtoint void(i64,i64)* @lam87180 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87411, i64* %eptr87409                                                 ; store fptr
  %S1G$_37map1 = ptrtoint i64* %cloptr87408 to i64                                   ; closure cast; i64* -> i64
  %cloptr87412 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87414 = getelementptr inbounds i64, i64* %cloptr87412, i64 1                  ; &eptr87414[1]
  %eptr87415 = getelementptr inbounds i64, i64* %cloptr87412, i64 2                  ; &eptr87415[2]
  %eptr87416 = getelementptr inbounds i64, i64* %cloptr87412, i64 3                  ; &eptr87416[3]
  store i64 %UgK$_37last, i64* %eptr87414                                            ; *eptr87414 = %UgK$_37last
  store i64 %JBu$_37drop_45right, i64* %eptr87415                                    ; *eptr87415 = %JBu$_37drop_45right
  store i64 %pG2$_37foldr, i64* %eptr87416                                           ; *eptr87416 = %pG2$_37foldr
  %eptr87413 = getelementptr inbounds i64, i64* %cloptr87412, i64 0                  ; &cloptr87412[0]
  %f87417 = ptrtoint void(i64,i64)* @lam87169 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87417, i64* %eptr87413                                                 ; store fptr
  %QM8$_37map = ptrtoint i64* %cloptr87412 to i64                                    ; closure cast; i64* -> i64
  %cloptr87418 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87420 = getelementptr inbounds i64, i64* %cloptr87418, i64 1                  ; &eptr87420[1]
  %eptr87421 = getelementptr inbounds i64, i64* %cloptr87418, i64 2                  ; &eptr87421[2]
  store i64 %cwM$_37length, i64* %eptr87420                                          ; *eptr87420 = %cwM$_37length
  store i64 %E2H$_37foldl1, i64* %eptr87421                                          ; *eptr87421 = %E2H$_37foldl1
  %eptr87419 = getelementptr inbounds i64, i64* %cloptr87418, i64 0                  ; &cloptr87418[0]
  %f87422 = ptrtoint void(i64,i64)* @lam87153 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87422, i64* %eptr87419                                                 ; store fptr
  %arg84094 = ptrtoint i64* %cloptr87418 to i64                                      ; closure cast; i64* -> i64
  %cloptr87423 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87425 = getelementptr inbounds i64, i64* %cloptr87423, i64 1                  ; &eptr87425[1]
  %eptr87426 = getelementptr inbounds i64, i64* %cloptr87423, i64 2                  ; &eptr87426[2]
  %eptr87427 = getelementptr inbounds i64, i64* %cloptr87423, i64 3                  ; &eptr87427[3]
  store i64 %bVq$_37foldr1, i64* %eptr87425                                          ; *eptr87425 = %bVq$_37foldr1
  store i64 %pG2$_37foldr, i64* %eptr87426                                           ; *eptr87426 = %pG2$_37foldr
  store i64 %S1G$_37map1, i64* %eptr87427                                            ; *eptr87427 = %S1G$_37map1
  %eptr87424 = getelementptr inbounds i64, i64* %cloptr87423, i64 0                  ; &cloptr87423[0]
  %f87428 = ptrtoint void(i64,i64)* @lam86615 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87428, i64* %eptr87424                                                 ; store fptr
  %arg84093 = ptrtoint i64* %cloptr87423 to i64                                      ; closure cast; i64* -> i64
  %rva86116 = add i64 0, 0                                                           ; quoted ()
  %rva86115 = call i64 @prim_cons(i64 %arg84093, i64 %rva86116)                      ; call prim_cons
  %rva86114 = call i64 @prim_cons(i64 %arg84094, i64 %rva86115)                      ; call prim_cons
  %cloptr87429 = inttoptr i64 %MTq$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87430 = getelementptr inbounds i64, i64* %cloptr87429, i64 0                 ; &cloptr87429[0]
  %f87432 = load i64, i64* %i0ptr87430, align 8                                      ; load; *i0ptr87430
  %fptr87431 = inttoptr i64 %f87432 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87431(i64 %MTq$Ycmb, i64 %rva86114)                 ; tail call
  ret void
}


define void @lam87180(i64 %env87181, i64 %rvp85189) {
  %envptr87433 = inttoptr i64 %env87181 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87434 = getelementptr inbounds i64, i64* %envptr87433, i64 1                ; &envptr87433[1]
  %bVq$_37foldr1 = load i64, i64* %envptr87434, align 8                              ; load; *envptr87434
  %cont83786 = call i64 @prim_car(i64 %rvp85189)                                     ; call prim_car
  %rvp85188 = call i64 @prim_cdr(i64 %rvp85189)                                      ; call prim_cdr
  %d0E$f = call i64 @prim_car(i64 %rvp85188)                                         ; call prim_car
  %rvp85187 = call i64 @prim_cdr(i64 %rvp85188)                                      ; call prim_cdr
  %fpT$lst = call i64 @prim_car(i64 %rvp85187)                                       ; call prim_car
  %na85166 = call i64 @prim_cdr(i64 %rvp85187)                                       ; call prim_cdr
  %cloptr87435 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr87437 = getelementptr inbounds i64, i64* %cloptr87435, i64 1                  ; &eptr87437[1]
  store i64 %d0E$f, i64* %eptr87437                                                  ; *eptr87437 = %d0E$f
  %eptr87436 = getelementptr inbounds i64, i64* %cloptr87435, i64 0                  ; &cloptr87435[0]
  %f87438 = ptrtoint void(i64,i64)* @lam87178 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87438, i64* %eptr87436                                                 ; store fptr
  %arg84056 = ptrtoint i64* %cloptr87435 to i64                                      ; closure cast; i64* -> i64
  %arg84055 = add i64 0, 0                                                           ; quoted ()
  %rva85186 = add i64 0, 0                                                           ; quoted ()
  %rva85185 = call i64 @prim_cons(i64 %fpT$lst, i64 %rva85186)                       ; call prim_cons
  %rva85184 = call i64 @prim_cons(i64 %arg84055, i64 %rva85185)                      ; call prim_cons
  %rva85183 = call i64 @prim_cons(i64 %arg84056, i64 %rva85184)                      ; call prim_cons
  %rva85182 = call i64 @prim_cons(i64 %cont83786, i64 %rva85183)                     ; call prim_cons
  %cloptr87439 = inttoptr i64 %bVq$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr87440 = getelementptr inbounds i64, i64* %cloptr87439, i64 0                 ; &cloptr87439[0]
  %f87442 = load i64, i64* %i0ptr87440, align 8                                      ; load; *i0ptr87440
  %fptr87441 = inttoptr i64 %f87442 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87441(i64 %bVq$_37foldr1, i64 %rva85182)            ; tail call
  ret void
}


define void @lam87178(i64 %env87179, i64 %rvp85181) {
  %envptr87443 = inttoptr i64 %env87179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87444 = getelementptr inbounds i64, i64* %envptr87443, i64 1                ; &envptr87443[1]
  %d0E$f = load i64, i64* %envptr87444, align 8                                      ; load; *envptr87444
  %cont83787 = call i64 @prim_car(i64 %rvp85181)                                     ; call prim_car
  %rvp85180 = call i64 @prim_cdr(i64 %rvp85181)                                      ; call prim_cdr
  %B3Y$v = call i64 @prim_car(i64 %rvp85180)                                         ; call prim_car
  %rvp85179 = call i64 @prim_cdr(i64 %rvp85180)                                      ; call prim_cdr
  %GHV$r = call i64 @prim_car(i64 %rvp85179)                                         ; call prim_car
  %na85168 = call i64 @prim_cdr(i64 %rvp85179)                                       ; call prim_cdr
  %cloptr87445 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87447 = getelementptr inbounds i64, i64* %cloptr87445, i64 1                  ; &eptr87447[1]
  %eptr87448 = getelementptr inbounds i64, i64* %cloptr87445, i64 2                  ; &eptr87448[2]
  store i64 %cont83787, i64* %eptr87447                                              ; *eptr87447 = %cont83787
  store i64 %GHV$r, i64* %eptr87448                                                  ; *eptr87448 = %GHV$r
  %eptr87446 = getelementptr inbounds i64, i64* %cloptr87445, i64 0                  ; &cloptr87445[0]
  %f87449 = ptrtoint void(i64,i64)* @lam87176 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87449, i64* %eptr87446                                                 ; store fptr
  %arg84060 = ptrtoint i64* %cloptr87445 to i64                                      ; closure cast; i64* -> i64
  %rva85178 = add i64 0, 0                                                           ; quoted ()
  %rva85177 = call i64 @prim_cons(i64 %B3Y$v, i64 %rva85178)                         ; call prim_cons
  %rva85176 = call i64 @prim_cons(i64 %arg84060, i64 %rva85177)                      ; call prim_cons
  %cloptr87450 = inttoptr i64 %d0E$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr87451 = getelementptr inbounds i64, i64* %cloptr87450, i64 0                 ; &cloptr87450[0]
  %f87453 = load i64, i64* %i0ptr87451, align 8                                      ; load; *i0ptr87451
  %fptr87452 = inttoptr i64 %f87453 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87452(i64 %d0E$f, i64 %rva85176)                    ; tail call
  ret void
}


define void @lam87176(i64 %env87177, i64 %rvp85175) {
  %envptr87454 = inttoptr i64 %env87177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87455 = getelementptr inbounds i64, i64* %envptr87454, i64 2                ; &envptr87454[2]
  %GHV$r = load i64, i64* %envptr87455, align 8                                      ; load; *envptr87455
  %envptr87456 = inttoptr i64 %env87177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87457 = getelementptr inbounds i64, i64* %envptr87456, i64 1                ; &envptr87456[1]
  %cont83787 = load i64, i64* %envptr87457, align 8                                  ; load; *envptr87457
  %_9583788 = call i64 @prim_car(i64 %rvp85175)                                      ; call prim_car
  %rvp85174 = call i64 @prim_cdr(i64 %rvp85175)                                      ; call prim_cdr
  %a83641 = call i64 @prim_car(i64 %rvp85174)                                        ; call prim_car
  %na85170 = call i64 @prim_cdr(i64 %rvp85174)                                       ; call prim_cdr
  %retprim83789 = call i64 @prim_cons(i64 %a83641, i64 %GHV$r)                       ; call prim_cons
  %arg84065 = add i64 0, 0                                                           ; quoted ()
  %rva85173 = add i64 0, 0                                                           ; quoted ()
  %rva85172 = call i64 @prim_cons(i64 %retprim83789, i64 %rva85173)                  ; call prim_cons
  %rva85171 = call i64 @prim_cons(i64 %arg84065, i64 %rva85172)                      ; call prim_cons
  %cloptr87458 = inttoptr i64 %cont83787 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87459 = getelementptr inbounds i64, i64* %cloptr87458, i64 0                 ; &cloptr87458[0]
  %f87461 = load i64, i64* %i0ptr87459, align 8                                      ; load; *i0ptr87459
  %fptr87460 = inttoptr i64 %f87461 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87460(i64 %cont83787, i64 %rva85171)                ; tail call
  ret void
}


define void @lam87169(i64 %env87170, i64 %wLh$args83791) {
  %envptr87462 = inttoptr i64 %env87170 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87463 = getelementptr inbounds i64, i64* %envptr87462, i64 3                ; &envptr87462[3]
  %pG2$_37foldr = load i64, i64* %envptr87463, align 8                               ; load; *envptr87463
  %envptr87464 = inttoptr i64 %env87170 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87465 = getelementptr inbounds i64, i64* %envptr87464, i64 2                ; &envptr87464[2]
  %JBu$_37drop_45right = load i64, i64* %envptr87465, align 8                        ; load; *envptr87465
  %envptr87466 = inttoptr i64 %env87170 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87467 = getelementptr inbounds i64, i64* %envptr87466, i64 1                ; &envptr87466[1]
  %UgK$_37last = load i64, i64* %envptr87467, align 8                                ; load; *envptr87467
  %cont83790 = call i64 @prim_car(i64 %wLh$args83791)                                ; call prim_car
  %wLh$args = call i64 @prim_cdr(i64 %wLh$args83791)                                 ; call prim_cdr
  %N6z$f = call i64 @prim_car(i64 %wLh$args)                                         ; call prim_car
  %PP9$lsts = call i64 @prim_cdr(i64 %wLh$args)                                      ; call prim_cdr
  %arg84072 = add i64 0, 0                                                           ; quoted ()
  %a83645 = call i64 @prim_cons(i64 %arg84072, i64 %PP9$lsts)                        ; call prim_cons
  %cloptr87468 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87470 = getelementptr inbounds i64, i64* %cloptr87468, i64 1                  ; &eptr87470[1]
  %eptr87471 = getelementptr inbounds i64, i64* %cloptr87468, i64 2                  ; &eptr87471[2]
  %eptr87472 = getelementptr inbounds i64, i64* %cloptr87468, i64 3                  ; &eptr87472[3]
  store i64 %UgK$_37last, i64* %eptr87470                                            ; *eptr87470 = %UgK$_37last
  store i64 %N6z$f, i64* %eptr87471                                                  ; *eptr87471 = %N6z$f
  store i64 %JBu$_37drop_45right, i64* %eptr87472                                    ; *eptr87472 = %JBu$_37drop_45right
  %eptr87469 = getelementptr inbounds i64, i64* %cloptr87468, i64 0                  ; &cloptr87468[0]
  %f87473 = ptrtoint void(i64,i64)* @lam87166 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87473, i64* %eptr87469                                                 ; store fptr
  %arg84074 = ptrtoint i64* %cloptr87468 to i64                                      ; closure cast; i64* -> i64
  %a83646 = call i64 @prim_cons(i64 %arg84074, i64 %a83645)                          ; call prim_cons
  %cps_45lst83799 = call i64 @prim_cons(i64 %cont83790, i64 %a83646)                 ; call prim_cons
  %cloptr87474 = inttoptr i64 %pG2$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr87475 = getelementptr inbounds i64, i64* %cloptr87474, i64 0                 ; &cloptr87474[0]
  %f87477 = load i64, i64* %i0ptr87475, align 8                                      ; load; *i0ptr87475
  %fptr87476 = inttoptr i64 %f87477 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87476(i64 %pG2$_37foldr, i64 %cps_45lst83799)       ; tail call
  ret void
}


define void @lam87166(i64 %env87167, i64 %BVx$fargs83793) {
  %envptr87478 = inttoptr i64 %env87167 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87479 = getelementptr inbounds i64, i64* %envptr87478, i64 3                ; &envptr87478[3]
  %JBu$_37drop_45right = load i64, i64* %envptr87479, align 8                        ; load; *envptr87479
  %envptr87480 = inttoptr i64 %env87167 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87481 = getelementptr inbounds i64, i64* %envptr87480, i64 2                ; &envptr87480[2]
  %N6z$f = load i64, i64* %envptr87481, align 8                                      ; load; *envptr87481
  %envptr87482 = inttoptr i64 %env87167 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87483 = getelementptr inbounds i64, i64* %envptr87482, i64 1                ; &envptr87482[1]
  %UgK$_37last = load i64, i64* %envptr87483, align 8                                ; load; *envptr87483
  %cont83792 = call i64 @prim_car(i64 %BVx$fargs83793)                               ; call prim_car
  %BVx$fargs = call i64 @prim_cdr(i64 %BVx$fargs83793)                               ; call prim_cdr
  %cloptr87484 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr87486 = getelementptr inbounds i64, i64* %cloptr87484, i64 1                  ; &eptr87486[1]
  %eptr87487 = getelementptr inbounds i64, i64* %cloptr87484, i64 2                  ; &eptr87487[2]
  %eptr87488 = getelementptr inbounds i64, i64* %cloptr87484, i64 3                  ; &eptr87488[3]
  %eptr87489 = getelementptr inbounds i64, i64* %cloptr87484, i64 4                  ; &eptr87489[4]
  store i64 %UgK$_37last, i64* %eptr87486                                            ; *eptr87486 = %UgK$_37last
  store i64 %BVx$fargs, i64* %eptr87487                                              ; *eptr87487 = %BVx$fargs
  store i64 %N6z$f, i64* %eptr87488                                                  ; *eptr87488 = %N6z$f
  store i64 %cont83792, i64* %eptr87489                                              ; *eptr87489 = %cont83792
  %eptr87485 = getelementptr inbounds i64, i64* %cloptr87484, i64 0                  ; &cloptr87484[0]
  %f87490 = ptrtoint void(i64,i64)* @lam87164 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87490, i64* %eptr87485                                                 ; store fptr
  %arg84079 = ptrtoint i64* %cloptr87484 to i64                                      ; closure cast; i64* -> i64
  %arg84077 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %rva85211 = add i64 0, 0                                                           ; quoted ()
  %rva85210 = call i64 @prim_cons(i64 %arg84077, i64 %rva85211)                      ; call prim_cons
  %rva85209 = call i64 @prim_cons(i64 %BVx$fargs, i64 %rva85210)                     ; call prim_cons
  %rva85208 = call i64 @prim_cons(i64 %arg84079, i64 %rva85209)                      ; call prim_cons
  %cloptr87491 = inttoptr i64 %JBu$_37drop_45right to i64*                           ; closure/env cast; i64 -> i64*
  %i0ptr87492 = getelementptr inbounds i64, i64* %cloptr87491, i64 0                 ; &cloptr87491[0]
  %f87494 = load i64, i64* %i0ptr87492, align 8                                      ; load; *i0ptr87492
  %fptr87493 = inttoptr i64 %f87494 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87493(i64 %JBu$_37drop_45right, i64 %rva85208)      ; tail call
  ret void
}


define void @lam87164(i64 %env87165, i64 %rvp85207) {
  %envptr87495 = inttoptr i64 %env87165 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87496 = getelementptr inbounds i64, i64* %envptr87495, i64 4                ; &envptr87495[4]
  %cont83792 = load i64, i64* %envptr87496, align 8                                  ; load; *envptr87496
  %envptr87497 = inttoptr i64 %env87165 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87498 = getelementptr inbounds i64, i64* %envptr87497, i64 3                ; &envptr87497[3]
  %N6z$f = load i64, i64* %envptr87498, align 8                                      ; load; *envptr87498
  %envptr87499 = inttoptr i64 %env87165 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87500 = getelementptr inbounds i64, i64* %envptr87499, i64 2                ; &envptr87499[2]
  %BVx$fargs = load i64, i64* %envptr87500, align 8                                  ; load; *envptr87500
  %envptr87501 = inttoptr i64 %env87165 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87502 = getelementptr inbounds i64, i64* %envptr87501, i64 1                ; &envptr87501[1]
  %UgK$_37last = load i64, i64* %envptr87502, align 8                                ; load; *envptr87502
  %_9583794 = call i64 @prim_car(i64 %rvp85207)                                      ; call prim_car
  %rvp85206 = call i64 @prim_cdr(i64 %rvp85207)                                      ; call prim_cdr
  %a83642 = call i64 @prim_car(i64 %rvp85206)                                        ; call prim_car
  %na85191 = call i64 @prim_cdr(i64 %rvp85206)                                       ; call prim_cdr
  %cloptr87503 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87505 = getelementptr inbounds i64, i64* %cloptr87503, i64 1                  ; &eptr87505[1]
  %eptr87506 = getelementptr inbounds i64, i64* %cloptr87503, i64 2                  ; &eptr87506[2]
  %eptr87507 = getelementptr inbounds i64, i64* %cloptr87503, i64 3                  ; &eptr87507[3]
  store i64 %UgK$_37last, i64* %eptr87505                                            ; *eptr87505 = %UgK$_37last
  store i64 %BVx$fargs, i64* %eptr87506                                              ; *eptr87506 = %BVx$fargs
  store i64 %cont83792, i64* %eptr87507                                              ; *eptr87507 = %cont83792
  %eptr87504 = getelementptr inbounds i64, i64* %cloptr87503, i64 0                  ; &cloptr87503[0]
  %f87508 = ptrtoint void(i64,i64)* @lam87162 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87508, i64* %eptr87504                                                 ; store fptr
  %arg84082 = ptrtoint i64* %cloptr87503 to i64                                      ; closure cast; i64* -> i64
  %cps_45lst83798 = call i64 @prim_cons(i64 %arg84082, i64 %a83642)                  ; call prim_cons
  %cloptr87509 = inttoptr i64 %N6z$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr87510 = getelementptr inbounds i64, i64* %cloptr87509, i64 0                 ; &cloptr87509[0]
  %f87512 = load i64, i64* %i0ptr87510, align 8                                      ; load; *i0ptr87510
  %fptr87511 = inttoptr i64 %f87512 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87511(i64 %N6z$f, i64 %cps_45lst83798)              ; tail call
  ret void
}


define void @lam87162(i64 %env87163, i64 %rvp85205) {
  %envptr87513 = inttoptr i64 %env87163 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87514 = getelementptr inbounds i64, i64* %envptr87513, i64 3                ; &envptr87513[3]
  %cont83792 = load i64, i64* %envptr87514, align 8                                  ; load; *envptr87514
  %envptr87515 = inttoptr i64 %env87163 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87516 = getelementptr inbounds i64, i64* %envptr87515, i64 2                ; &envptr87515[2]
  %BVx$fargs = load i64, i64* %envptr87516, align 8                                  ; load; *envptr87516
  %envptr87517 = inttoptr i64 %env87163 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87518 = getelementptr inbounds i64, i64* %envptr87517, i64 1                ; &envptr87517[1]
  %UgK$_37last = load i64, i64* %envptr87518, align 8                                ; load; *envptr87518
  %_9583795 = call i64 @prim_car(i64 %rvp85205)                                      ; call prim_car
  %rvp85204 = call i64 @prim_cdr(i64 %rvp85205)                                      ; call prim_cdr
  %a83643 = call i64 @prim_car(i64 %rvp85204)                                        ; call prim_car
  %na85193 = call i64 @prim_cdr(i64 %rvp85204)                                       ; call prim_cdr
  %cloptr87519 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87521 = getelementptr inbounds i64, i64* %cloptr87519, i64 1                  ; &eptr87521[1]
  %eptr87522 = getelementptr inbounds i64, i64* %cloptr87519, i64 2                  ; &eptr87522[2]
  store i64 %a83643, i64* %eptr87521                                                 ; *eptr87521 = %a83643
  store i64 %cont83792, i64* %eptr87522                                              ; *eptr87522 = %cont83792
  %eptr87520 = getelementptr inbounds i64, i64* %cloptr87519, i64 0                  ; &cloptr87519[0]
  %f87523 = ptrtoint void(i64,i64)* @lam87160 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87523, i64* %eptr87520                                                 ; store fptr
  %arg84084 = ptrtoint i64* %cloptr87519 to i64                                      ; closure cast; i64* -> i64
  %rva85203 = add i64 0, 0                                                           ; quoted ()
  %rva85202 = call i64 @prim_cons(i64 %BVx$fargs, i64 %rva85203)                     ; call prim_cons
  %rva85201 = call i64 @prim_cons(i64 %arg84084, i64 %rva85202)                      ; call prim_cons
  %cloptr87524 = inttoptr i64 %UgK$_37last to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr87525 = getelementptr inbounds i64, i64* %cloptr87524, i64 0                 ; &cloptr87524[0]
  %f87527 = load i64, i64* %i0ptr87525, align 8                                      ; load; *i0ptr87525
  %fptr87526 = inttoptr i64 %f87527 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87526(i64 %UgK$_37last, i64 %rva85201)              ; tail call
  ret void
}


define void @lam87160(i64 %env87161, i64 %rvp85200) {
  %envptr87528 = inttoptr i64 %env87161 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87529 = getelementptr inbounds i64, i64* %envptr87528, i64 2                ; &envptr87528[2]
  %cont83792 = load i64, i64* %envptr87529, align 8                                  ; load; *envptr87529
  %envptr87530 = inttoptr i64 %env87161 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87531 = getelementptr inbounds i64, i64* %envptr87530, i64 1                ; &envptr87530[1]
  %a83643 = load i64, i64* %envptr87531, align 8                                     ; load; *envptr87531
  %_9583796 = call i64 @prim_car(i64 %rvp85200)                                      ; call prim_car
  %rvp85199 = call i64 @prim_cdr(i64 %rvp85200)                                      ; call prim_cdr
  %a83644 = call i64 @prim_car(i64 %rvp85199)                                        ; call prim_car
  %na85195 = call i64 @prim_cdr(i64 %rvp85199)                                       ; call prim_cdr
  %retprim83797 = call i64 @prim_cons(i64 %a83643, i64 %a83644)                      ; call prim_cons
  %arg84089 = add i64 0, 0                                                           ; quoted ()
  %rva85198 = add i64 0, 0                                                           ; quoted ()
  %rva85197 = call i64 @prim_cons(i64 %retprim83797, i64 %rva85198)                  ; call prim_cons
  %rva85196 = call i64 @prim_cons(i64 %arg84089, i64 %rva85197)                      ; call prim_cons
  %cloptr87532 = inttoptr i64 %cont83792 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87533 = getelementptr inbounds i64, i64* %cloptr87532, i64 0                 ; &cloptr87532[0]
  %f87535 = load i64, i64* %i0ptr87533, align 8                                      ; load; *i0ptr87533
  %fptr87534 = inttoptr i64 %f87535 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87534(i64 %cont83792, i64 %rva85196)                ; tail call
  ret void
}


define void @lam87153(i64 %env87154, i64 %rvp86018) {
  %envptr87536 = inttoptr i64 %env87154 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87537 = getelementptr inbounds i64, i64* %envptr87536, i64 2                ; &envptr87536[2]
  %E2H$_37foldl1 = load i64, i64* %envptr87537, align 8                              ; load; *envptr87537
  %envptr87538 = inttoptr i64 %env87154 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87539 = getelementptr inbounds i64, i64* %envptr87538, i64 1                ; &envptr87538[1]
  %cwM$_37length = load i64, i64* %envptr87539, align 8                              ; load; *envptr87539
  %_9583800 = call i64 @prim_car(i64 %rvp86018)                                      ; call prim_car
  %rvp86017 = call i64 @prim_cdr(i64 %rvp86018)                                      ; call prim_cdr
  %Oxq$_37foldl = call i64 @prim_car(i64 %rvp86017)                                  ; call prim_car
  %na85213 = call i64 @prim_cdr(i64 %rvp86017)                                       ; call prim_cdr
  %cloptr87540 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87541 = getelementptr inbounds i64, i64* %cloptr87540, i64 0                  ; &cloptr87540[0]
  %f87542 = ptrtoint void(i64,i64)* @lam87151 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87542, i64* %eptr87541                                                 ; store fptr
  %ruB$_37_62 = ptrtoint i64* %cloptr87540 to i64                                    ; closure cast; i64* -> i64
  %cloptr87543 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87544 = getelementptr inbounds i64, i64* %cloptr87543, i64 0                  ; &cloptr87543[0]
  %f87545 = ptrtoint void(i64,i64)* @lam87147 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87545, i64* %eptr87544                                                 ; store fptr
  %YOr$_37_62_61 = ptrtoint i64* %cloptr87543 to i64                                 ; closure cast; i64* -> i64
  %arg84109 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %arg84108 = add i64 0, 0                                                           ; quoted ()
  %cKR$_37append = call i64 @prim_make_45vector(i64 %arg84109, i64 %arg84108)        ; call prim_make_45vector
  %arg84111 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %arg84110 = add i64 0, 0                                                           ; quoted ()
  %GiT$_37append2 = call i64 @prim_make_45vector(i64 %arg84111, i64 %arg84110)       ; call prim_make_45vector
  %arg84113 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr87546 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr87548 = getelementptr inbounds i64, i64* %cloptr87546, i64 1                  ; &eptr87548[1]
  store i64 %GiT$_37append2, i64* %eptr87548                                         ; *eptr87548 = %GiT$_37append2
  %eptr87547 = getelementptr inbounds i64, i64* %cloptr87546, i64 0                  ; &cloptr87546[0]
  %f87549 = ptrtoint void(i64,i64)* @lam87138 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87549, i64* %eptr87547                                                 ; store fptr
  %arg84112 = ptrtoint i64* %cloptr87546 to i64                                      ; closure cast; i64* -> i64
  %u84$_950 = call i64 @prim_vector_45set_33(i64 %GiT$_37append2, i64 %arg84113, i64 %arg84112); call prim_vector_45set_33
  %arg84133 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr87550 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87552 = getelementptr inbounds i64, i64* %cloptr87550, i64 1                  ; &eptr87552[1]
  %eptr87553 = getelementptr inbounds i64, i64* %cloptr87550, i64 2                  ; &eptr87553[2]
  store i64 %GiT$_37append2, i64* %eptr87552                                         ; *eptr87552 = %GiT$_37append2
  store i64 %cKR$_37append, i64* %eptr87553                                          ; *eptr87553 = %cKR$_37append
  %eptr87551 = getelementptr inbounds i64, i64* %cloptr87550, i64 0                  ; &cloptr87550[0]
  %f87554 = ptrtoint void(i64,i64)* @lam87127 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87554, i64* %eptr87551                                                 ; store fptr
  %arg84132 = ptrtoint i64* %cloptr87550 to i64                                      ; closure cast; i64* -> i64
  %jG7$_951 = call i64 @prim_vector_45set_33(i64 %cKR$_37append, i64 %arg84133, i64 %arg84132); call prim_vector_45set_33
  %arg84153 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83941 = call i64 @prim_vector_45ref(i64 %cKR$_37append, i64 %arg84153)     ; call prim_vector_45ref
  %cloptr87555 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87557 = getelementptr inbounds i64, i64* %cloptr87555, i64 1                  ; &eptr87557[1]
  %eptr87558 = getelementptr inbounds i64, i64* %cloptr87555, i64 2                  ; &eptr87558[2]
  %eptr87559 = getelementptr inbounds i64, i64* %cloptr87555, i64 3                  ; &eptr87559[3]
  store i64 %cwM$_37length, i64* %eptr87557                                          ; *eptr87557 = %cwM$_37length
  store i64 %ruB$_37_62, i64* %eptr87558                                             ; *eptr87558 = %ruB$_37_62
  store i64 %E2H$_37foldl1, i64* %eptr87559                                          ; *eptr87559 = %E2H$_37foldl1
  %eptr87556 = getelementptr inbounds i64, i64* %cloptr87555, i64 0                  ; &cloptr87555[0]
  %f87560 = ptrtoint void(i64,i64)* @lam87116 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87560, i64* %eptr87556                                                 ; store fptr
  %arg84157 = ptrtoint i64* %cloptr87555 to i64                                      ; closure cast; i64* -> i64
  %arg84156 = add i64 0, 0                                                           ; quoted ()
  %rva86016 = add i64 0, 0                                                           ; quoted ()
  %rva86015 = call i64 @prim_cons(i64 %retprim83941, i64 %rva86016)                  ; call prim_cons
  %rva86014 = call i64 @prim_cons(i64 %arg84156, i64 %rva86015)                      ; call prim_cons
  %cloptr87561 = inttoptr i64 %arg84157 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87562 = getelementptr inbounds i64, i64* %cloptr87561, i64 0                 ; &cloptr87561[0]
  %f87564 = load i64, i64* %i0ptr87562, align 8                                      ; load; *i0ptr87562
  %fptr87563 = inttoptr i64 %f87564 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87563(i64 %arg84157, i64 %rva86014)                 ; tail call
  ret void
}


define void @lam87151(i64 %env87152, i64 %rvp85221) {
  %cont83801 = call i64 @prim_car(i64 %rvp85221)                                     ; call prim_car
  %rvp85220 = call i64 @prim_cdr(i64 %rvp85221)                                      ; call prim_cdr
  %gbU$a = call i64 @prim_car(i64 %rvp85220)                                         ; call prim_car
  %rvp85219 = call i64 @prim_cdr(i64 %rvp85220)                                      ; call prim_cdr
  %B2x$b = call i64 @prim_car(i64 %rvp85219)                                         ; call prim_car
  %na85215 = call i64 @prim_cdr(i64 %rvp85219)                                       ; call prim_cdr
  %a83654 = call i64 @prim__60_61(i64 %gbU$a, i64 %B2x$b)                            ; call prim__60_61
  %retprim83802 = call i64 @prim_not(i64 %a83654)                                    ; call prim_not
  %arg84100 = add i64 0, 0                                                           ; quoted ()
  %rva85218 = add i64 0, 0                                                           ; quoted ()
  %rva85217 = call i64 @prim_cons(i64 %retprim83802, i64 %rva85218)                  ; call prim_cons
  %rva85216 = call i64 @prim_cons(i64 %arg84100, i64 %rva85217)                      ; call prim_cons
  %cloptr87565 = inttoptr i64 %cont83801 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87566 = getelementptr inbounds i64, i64* %cloptr87565, i64 0                 ; &cloptr87565[0]
  %f87568 = load i64, i64* %i0ptr87566, align 8                                      ; load; *i0ptr87566
  %fptr87567 = inttoptr i64 %f87568 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87567(i64 %cont83801, i64 %rva85216)                ; tail call
  ret void
}


define void @lam87147(i64 %env87148, i64 %rvp85229) {
  %cont83803 = call i64 @prim_car(i64 %rvp85229)                                     ; call prim_car
  %rvp85228 = call i64 @prim_cdr(i64 %rvp85229)                                      ; call prim_cdr
  %uKk$a = call i64 @prim_car(i64 %rvp85228)                                         ; call prim_car
  %rvp85227 = call i64 @prim_cdr(i64 %rvp85228)                                      ; call prim_cdr
  %wBK$b = call i64 @prim_car(i64 %rvp85227)                                         ; call prim_car
  %na85223 = call i64 @prim_cdr(i64 %rvp85227)                                       ; call prim_cdr
  %a83655 = call i64 @prim__60(i64 %uKk$a, i64 %wBK$b)                               ; call prim__60
  %retprim83804 = call i64 @prim_not(i64 %a83655)                                    ; call prim_not
  %arg84106 = add i64 0, 0                                                           ; quoted ()
  %rva85226 = add i64 0, 0                                                           ; quoted ()
  %rva85225 = call i64 @prim_cons(i64 %retprim83804, i64 %rva85226)                  ; call prim_cons
  %rva85224 = call i64 @prim_cons(i64 %arg84106, i64 %rva85225)                      ; call prim_cons
  %cloptr87569 = inttoptr i64 %cont83803 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87570 = getelementptr inbounds i64, i64* %cloptr87569, i64 0                 ; &cloptr87569[0]
  %f87572 = load i64, i64* %i0ptr87570, align 8                                      ; load; *i0ptr87570
  %fptr87571 = inttoptr i64 %f87572 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87571(i64 %cont83803, i64 %rva85224)                ; tail call
  ret void
}


define void @lam87138(i64 %env87139, i64 %rvp85248) {
  %envptr87573 = inttoptr i64 %env87139 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87574 = getelementptr inbounds i64, i64* %envptr87573, i64 1                ; &envptr87573[1]
  %GiT$_37append2 = load i64, i64* %envptr87574, align 8                             ; load; *envptr87574
  %cont83934 = call i64 @prim_car(i64 %rvp85248)                                     ; call prim_car
  %rvp85247 = call i64 @prim_cdr(i64 %rvp85248)                                      ; call prim_cdr
  %VMc$ls0 = call i64 @prim_car(i64 %rvp85247)                                       ; call prim_car
  %rvp85246 = call i64 @prim_cdr(i64 %rvp85247)                                      ; call prim_cdr
  %RQR$ls1 = call i64 @prim_car(i64 %rvp85246)                                       ; call prim_car
  %na85231 = call i64 @prim_cdr(i64 %rvp85246)                                       ; call prim_cdr
  %a83656 = call i64 @prim_null_63(i64 %VMc$ls0)                                     ; call prim_null_63
  %cmp87575 = icmp eq i64 %a83656, 15                                                ; false?
  br i1 %cmp87575, label %else87577, label %then87576                                ; if

then87576:
  %arg84117 = add i64 0, 0                                                           ; quoted ()
  %rva85234 = add i64 0, 0                                                           ; quoted ()
  %rva85233 = call i64 @prim_cons(i64 %RQR$ls1, i64 %rva85234)                       ; call prim_cons
  %rva85232 = call i64 @prim_cons(i64 %arg84117, i64 %rva85233)                      ; call prim_cons
  %cloptr87578 = inttoptr i64 %cont83934 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87579 = getelementptr inbounds i64, i64* %cloptr87578, i64 0                 ; &cloptr87578[0]
  %f87581 = load i64, i64* %i0ptr87579, align 8                                      ; load; *i0ptr87579
  %fptr87580 = inttoptr i64 %f87581 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87580(i64 %cont83934, i64 %rva85232)                ; tail call
  ret void

else87577:
  %a83657 = call i64 @prim_car(i64 %VMc$ls0)                                         ; call prim_car
  %arg84120 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83658 = call i64 @prim_vector_45ref(i64 %GiT$_37append2, i64 %arg84120)          ; call prim_vector_45ref
  %a83659 = call i64 @prim_cdr(i64 %VMc$ls0)                                         ; call prim_cdr
  %cloptr87582 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87584 = getelementptr inbounds i64, i64* %cloptr87582, i64 1                  ; &eptr87584[1]
  %eptr87585 = getelementptr inbounds i64, i64* %cloptr87582, i64 2                  ; &eptr87585[2]
  store i64 %a83657, i64* %eptr87584                                                 ; *eptr87584 = %a83657
  store i64 %cont83934, i64* %eptr87585                                              ; *eptr87585 = %cont83934
  %eptr87583 = getelementptr inbounds i64, i64* %cloptr87582, i64 0                  ; &cloptr87582[0]
  %f87586 = ptrtoint void(i64,i64)* @lam87135 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87586, i64* %eptr87583                                                 ; store fptr
  %arg84125 = ptrtoint i64* %cloptr87582 to i64                                      ; closure cast; i64* -> i64
  %rva85245 = add i64 0, 0                                                           ; quoted ()
  %rva85244 = call i64 @prim_cons(i64 %RQR$ls1, i64 %rva85245)                       ; call prim_cons
  %rva85243 = call i64 @prim_cons(i64 %a83659, i64 %rva85244)                        ; call prim_cons
  %rva85242 = call i64 @prim_cons(i64 %arg84125, i64 %rva85243)                      ; call prim_cons
  %cloptr87587 = inttoptr i64 %a83658 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87588 = getelementptr inbounds i64, i64* %cloptr87587, i64 0                 ; &cloptr87587[0]
  %f87590 = load i64, i64* %i0ptr87588, align 8                                      ; load; *i0ptr87588
  %fptr87589 = inttoptr i64 %f87590 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87589(i64 %a83658, i64 %rva85242)                   ; tail call
  ret void
}


define void @lam87135(i64 %env87136, i64 %rvp85241) {
  %envptr87591 = inttoptr i64 %env87136 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87592 = getelementptr inbounds i64, i64* %envptr87591, i64 2                ; &envptr87591[2]
  %cont83934 = load i64, i64* %envptr87592, align 8                                  ; load; *envptr87592
  %envptr87593 = inttoptr i64 %env87136 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87594 = getelementptr inbounds i64, i64* %envptr87593, i64 1                ; &envptr87593[1]
  %a83657 = load i64, i64* %envptr87594, align 8                                     ; load; *envptr87594
  %_9583935 = call i64 @prim_car(i64 %rvp85241)                                      ; call prim_car
  %rvp85240 = call i64 @prim_cdr(i64 %rvp85241)                                      ; call prim_cdr
  %a83660 = call i64 @prim_car(i64 %rvp85240)                                        ; call prim_car
  %na85236 = call i64 @prim_cdr(i64 %rvp85240)                                       ; call prim_cdr
  %retprim83936 = call i64 @prim_cons(i64 %a83657, i64 %a83660)                      ; call prim_cons
  %arg84130 = add i64 0, 0                                                           ; quoted ()
  %rva85239 = add i64 0, 0                                                           ; quoted ()
  %rva85238 = call i64 @prim_cons(i64 %retprim83936, i64 %rva85239)                  ; call prim_cons
  %rva85237 = call i64 @prim_cons(i64 %arg84130, i64 %rva85238)                      ; call prim_cons
  %cloptr87595 = inttoptr i64 %cont83934 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87596 = getelementptr inbounds i64, i64* %cloptr87595, i64 0                 ; &cloptr87595[0]
  %f87598 = load i64, i64* %i0ptr87596, align 8                                      ; load; *i0ptr87596
  %fptr87597 = inttoptr i64 %f87598 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87597(i64 %cont83934, i64 %rva85237)                ; tail call
  ret void
}


define void @lam87127(i64 %env87128, i64 %qH7$xs83938) {
  %envptr87599 = inttoptr i64 %env87128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87600 = getelementptr inbounds i64, i64* %envptr87599, i64 2                ; &envptr87599[2]
  %cKR$_37append = load i64, i64* %envptr87600, align 8                              ; load; *envptr87600
  %envptr87601 = inttoptr i64 %env87128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87602 = getelementptr inbounds i64, i64* %envptr87601, i64 1                ; &envptr87601[1]
  %GiT$_37append2 = load i64, i64* %envptr87602, align 8                             ; load; *envptr87602
  %cont83937 = call i64 @prim_car(i64 %qH7$xs83938)                                  ; call prim_car
  %qH7$xs = call i64 @prim_cdr(i64 %qH7$xs83938)                                     ; call prim_cdr
  %a83661 = call i64 @prim_null_63(i64 %qH7$xs)                                      ; call prim_null_63
  %cmp87603 = icmp eq i64 %a83661, 15                                                ; false?
  br i1 %cmp87603, label %else87605, label %then87604                                ; if

then87604:
  %arg84139 = add i64 0, 0                                                           ; quoted ()
  %arg84138 = add i64 0, 0                                                           ; quoted ()
  %rva85251 = add i64 0, 0                                                           ; quoted ()
  %rva85250 = call i64 @prim_cons(i64 %arg84138, i64 %rva85251)                      ; call prim_cons
  %rva85249 = call i64 @prim_cons(i64 %arg84139, i64 %rva85250)                      ; call prim_cons
  %cloptr87606 = inttoptr i64 %cont83937 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87607 = getelementptr inbounds i64, i64* %cloptr87606, i64 0                 ; &cloptr87606[0]
  %f87609 = load i64, i64* %i0ptr87607, align 8                                      ; load; *i0ptr87607
  %fptr87608 = inttoptr i64 %f87609 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87608(i64 %cont83937, i64 %rva85249)                ; tail call
  ret void

else87605:
  %lia$hd = call i64 @prim_car(i64 %qH7$xs)                                          ; call prim_car
  %m5a$tl = call i64 @prim_cdr(i64 %qH7$xs)                                          ; call prim_cdr
  %arg84143 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83662 = call i64 @prim_vector_45ref(i64 %cKR$_37append, i64 %arg84143)           ; call prim_vector_45ref
  %cloptr87610 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87612 = getelementptr inbounds i64, i64* %cloptr87610, i64 1                  ; &eptr87612[1]
  %eptr87613 = getelementptr inbounds i64, i64* %cloptr87610, i64 2                  ; &eptr87613[2]
  %eptr87614 = getelementptr inbounds i64, i64* %cloptr87610, i64 3                  ; &eptr87614[3]
  store i64 %GiT$_37append2, i64* %eptr87612                                         ; *eptr87612 = %GiT$_37append2
  store i64 %lia$hd, i64* %eptr87613                                                 ; *eptr87613 = %lia$hd
  store i64 %cont83937, i64* %eptr87614                                              ; *eptr87614 = %cont83937
  %eptr87611 = getelementptr inbounds i64, i64* %cloptr87610, i64 0                  ; &cloptr87610[0]
  %f87615 = ptrtoint void(i64,i64)* @lam87124 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87615, i64* %eptr87611                                                 ; store fptr
  %arg84146 = ptrtoint i64* %cloptr87610 to i64                                      ; closure cast; i64* -> i64
  %cps_45lst83940 = call i64 @prim_cons(i64 %arg84146, i64 %m5a$tl)                  ; call prim_cons
  %cloptr87616 = inttoptr i64 %a83662 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87617 = getelementptr inbounds i64, i64* %cloptr87616, i64 0                 ; &cloptr87616[0]
  %f87619 = load i64, i64* %i0ptr87617, align 8                                      ; load; *i0ptr87617
  %fptr87618 = inttoptr i64 %f87619 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87618(i64 %a83662, i64 %cps_45lst83940)             ; tail call
  ret void
}


define void @lam87124(i64 %env87125, i64 %rvp85259) {
  %envptr87620 = inttoptr i64 %env87125 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87621 = getelementptr inbounds i64, i64* %envptr87620, i64 3                ; &envptr87620[3]
  %cont83937 = load i64, i64* %envptr87621, align 8                                  ; load; *envptr87621
  %envptr87622 = inttoptr i64 %env87125 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87623 = getelementptr inbounds i64, i64* %envptr87622, i64 2                ; &envptr87622[2]
  %lia$hd = load i64, i64* %envptr87623, align 8                                     ; load; *envptr87623
  %envptr87624 = inttoptr i64 %env87125 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87625 = getelementptr inbounds i64, i64* %envptr87624, i64 1                ; &envptr87624[1]
  %GiT$_37append2 = load i64, i64* %envptr87625, align 8                             ; load; *envptr87625
  %_9583939 = call i64 @prim_car(i64 %rvp85259)                                      ; call prim_car
  %rvp85258 = call i64 @prim_cdr(i64 %rvp85259)                                      ; call prim_cdr
  %IjV$result1 = call i64 @prim_car(i64 %rvp85258)                                   ; call prim_car
  %na85253 = call i64 @prim_cdr(i64 %rvp85258)                                       ; call prim_cdr
  %arg84147 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83663 = call i64 @prim_vector_45ref(i64 %GiT$_37append2, i64 %arg84147)          ; call prim_vector_45ref
  %rva85257 = add i64 0, 0                                                           ; quoted ()
  %rva85256 = call i64 @prim_cons(i64 %IjV$result1, i64 %rva85257)                   ; call prim_cons
  %rva85255 = call i64 @prim_cons(i64 %lia$hd, i64 %rva85256)                        ; call prim_cons
  %rva85254 = call i64 @prim_cons(i64 %cont83937, i64 %rva85255)                     ; call prim_cons
  %cloptr87626 = inttoptr i64 %a83663 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87627 = getelementptr inbounds i64, i64* %cloptr87626, i64 0                 ; &cloptr87626[0]
  %f87629 = load i64, i64* %i0ptr87627, align 8                                      ; load; *i0ptr87627
  %fptr87628 = inttoptr i64 %f87629 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87628(i64 %a83663, i64 %rva85254)                   ; tail call
  ret void
}


define void @lam87116(i64 %env87117, i64 %rvp86013) {
  %envptr87630 = inttoptr i64 %env87117 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87631 = getelementptr inbounds i64, i64* %envptr87630, i64 3                ; &envptr87630[3]
  %E2H$_37foldl1 = load i64, i64* %envptr87631, align 8                              ; load; *envptr87631
  %envptr87632 = inttoptr i64 %env87117 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87633 = getelementptr inbounds i64, i64* %envptr87632, i64 2                ; &envptr87632[2]
  %ruB$_37_62 = load i64, i64* %envptr87633, align 8                                 ; load; *envptr87633
  %envptr87634 = inttoptr i64 %env87117 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87635 = getelementptr inbounds i64, i64* %envptr87634, i64 1                ; &envptr87634[1]
  %cwM$_37length = load i64, i64* %envptr87635, align 8                              ; load; *envptr87635
  %_9583805 = call i64 @prim_car(i64 %rvp86013)                                      ; call prim_car
  %rvp86012 = call i64 @prim_cdr(i64 %rvp86013)                                      ; call prim_cdr
  %C6M$_37append = call i64 @prim_car(i64 %rvp86012)                                 ; call prim_car
  %na85261 = call i64 @prim_cdr(i64 %rvp86012)                                       ; call prim_cdr
  %cloptr87636 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87637 = getelementptr inbounds i64, i64* %cloptr87636, i64 0                  ; &cloptr87636[0]
  %f87638 = ptrtoint void(i64,i64)* @lam87114 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87638, i64* %eptr87637                                                 ; store fptr
  %Q0U$_37list_63 = ptrtoint i64* %cloptr87636 to i64                                ; closure cast; i64* -> i64
  %cloptr87639 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87640 = getelementptr inbounds i64, i64* %cloptr87639, i64 0                  ; &cloptr87639[0]
  %f87641 = ptrtoint void(i64,i64)* @lam87062 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87641, i64* %eptr87640                                                 ; store fptr
  %zle$_37drop = ptrtoint i64* %cloptr87639 to i64                                   ; closure cast; i64* -> i64
  %cloptr87642 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87643 = getelementptr inbounds i64, i64* %cloptr87642, i64 0                  ; &cloptr87642[0]
  %f87644 = ptrtoint void(i64,i64)* @lam87012 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87644, i64* %eptr87643                                                 ; store fptr
  %zHr$_37memv = ptrtoint i64* %cloptr87642 to i64                                   ; closure cast; i64* -> i64
  %cloptr87645 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr87647 = getelementptr inbounds i64, i64* %cloptr87645, i64 1                  ; &eptr87647[1]
  store i64 %E2H$_37foldl1, i64* %eptr87647                                          ; *eptr87647 = %E2H$_37foldl1
  %eptr87646 = getelementptr inbounds i64, i64* %cloptr87645, i64 0                  ; &cloptr87645[0]
  %f87648 = ptrtoint void(i64,i64)* @lam86971 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87648, i64* %eptr87646                                                 ; store fptr
  %Rgh$_37_47 = ptrtoint i64* %cloptr87645 to i64                                    ; closure cast; i64* -> i64
  %cloptr87649 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87650 = getelementptr inbounds i64, i64* %cloptr87649, i64 0                  ; &cloptr87649[0]
  %f87651 = ptrtoint void(i64,i64)* @lam86959 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87651, i64* %eptr87650                                                 ; store fptr
  %Qjj$_37first = ptrtoint i64* %cloptr87649 to i64                                  ; closure cast; i64* -> i64
  %cloptr87652 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87653 = getelementptr inbounds i64, i64* %cloptr87652, i64 0                  ; &cloptr87652[0]
  %f87654 = ptrtoint void(i64,i64)* @lam86955 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87654, i64* %eptr87653                                                 ; store fptr
  %tlU$_37second = ptrtoint i64* %cloptr87652 to i64                                 ; closure cast; i64* -> i64
  %cloptr87655 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87656 = getelementptr inbounds i64, i64* %cloptr87655, i64 0                  ; &cloptr87655[0]
  %f87657 = ptrtoint void(i64,i64)* @lam86951 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87657, i64* %eptr87656                                                 ; store fptr
  %SCc$_37third = ptrtoint i64* %cloptr87655 to i64                                  ; closure cast; i64* -> i64
  %cloptr87658 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87659 = getelementptr inbounds i64, i64* %cloptr87658, i64 0                  ; &cloptr87658[0]
  %f87660 = ptrtoint void(i64,i64)* @lam86947 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87660, i64* %eptr87659                                                 ; store fptr
  %HkZ$_37fourth = ptrtoint i64* %cloptr87658 to i64                                 ; closure cast; i64* -> i64
  %cloptr87661 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87662 = getelementptr inbounds i64, i64* %cloptr87661, i64 0                  ; &cloptr87661[0]
  %f87663 = ptrtoint void(i64,i64)* @lam86943 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87663, i64* %eptr87662                                                 ; store fptr
  %rAy$promise_63 = ptrtoint i64* %cloptr87661 to i64                                ; closure cast; i64* -> i64
  %cloptr87664 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87665 = getelementptr inbounds i64, i64* %cloptr87664, i64 0                  ; &cloptr87664[0]
  %f87666 = ptrtoint void(i64,i64)* @lam86935 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87666, i64* %eptr87665                                                 ; store fptr
  %arg84419 = ptrtoint i64* %cloptr87664 to i64                                      ; closure cast; i64* -> i64
  %cloptr87667 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr87669 = getelementptr inbounds i64, i64* %cloptr87667, i64 1                  ; &eptr87669[1]
  %eptr87670 = getelementptr inbounds i64, i64* %cloptr87667, i64 2                  ; &eptr87670[2]
  %eptr87671 = getelementptr inbounds i64, i64* %cloptr87667, i64 3                  ; &eptr87671[3]
  %eptr87672 = getelementptr inbounds i64, i64* %cloptr87667, i64 4                  ; &eptr87672[4]
  store i64 %cwM$_37length, i64* %eptr87669                                          ; *eptr87669 = %cwM$_37length
  store i64 %C6M$_37append, i64* %eptr87670                                          ; *eptr87670 = %C6M$_37append
  store i64 %ruB$_37_62, i64* %eptr87671                                             ; *eptr87671 = %ruB$_37_62
  store i64 %zle$_37drop, i64* %eptr87672                                            ; *eptr87672 = %zle$_37drop
  %eptr87668 = getelementptr inbounds i64, i64* %cloptr87667, i64 0                  ; &cloptr87667[0]
  %f87673 = ptrtoint void(i64,i64)* @lam86931 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87673, i64* %eptr87668                                                 ; store fptr
  %arg84418 = ptrtoint i64* %cloptr87667 to i64                                      ; closure cast; i64* -> i64
  %rva86011 = add i64 0, 0                                                           ; quoted ()
  %rva86010 = call i64 @prim_cons(i64 %arg84418, i64 %rva86011)                      ; call prim_cons
  %cloptr87674 = inttoptr i64 %arg84419 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87675 = getelementptr inbounds i64, i64* %cloptr87674, i64 0                 ; &cloptr87674[0]
  %f87677 = load i64, i64* %i0ptr87675, align 8                                      ; load; *i0ptr87675
  %fptr87676 = inttoptr i64 %f87677 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87676(i64 %arg84419, i64 %rva86010)                 ; tail call
  ret void
}


define void @lam87114(i64 %env87115, i64 %rvp85329) {
  %cont83806 = call i64 @prim_car(i64 %rvp85329)                                     ; call prim_car
  %rvp85328 = call i64 @prim_cdr(i64 %rvp85329)                                      ; call prim_cdr
  %ZZT$a = call i64 @prim_car(i64 %rvp85328)                                         ; call prim_car
  %na85263 = call i64 @prim_cdr(i64 %rvp85328)                                       ; call prim_cdr
  %arg84159 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %lQg$a = call i64 @prim_make_45vector(i64 %arg84159, i64 %ZZT$a)                   ; call prim_make_45vector
  %cloptr87678 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87679 = getelementptr inbounds i64, i64* %cloptr87678, i64 0                  ; &cloptr87678[0]
  %f87680 = ptrtoint void(i64,i64)* @lam87111 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87680, i64* %eptr87679                                                 ; store fptr
  %arg84162 = ptrtoint i64* %cloptr87678 to i64                                      ; closure cast; i64* -> i64
  %cloptr87681 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87683 = getelementptr inbounds i64, i64* %cloptr87681, i64 1                  ; &eptr87683[1]
  %eptr87684 = getelementptr inbounds i64, i64* %cloptr87681, i64 2                  ; &eptr87684[2]
  store i64 %lQg$a, i64* %eptr87683                                                  ; *eptr87683 = %lQg$a
  store i64 %cont83806, i64* %eptr87684                                              ; *eptr87684 = %cont83806
  %eptr87682 = getelementptr inbounds i64, i64* %cloptr87681, i64 0                  ; &cloptr87681[0]
  %f87685 = ptrtoint void(i64,i64)* @lam87107 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87685, i64* %eptr87682                                                 ; store fptr
  %arg84161 = ptrtoint i64* %cloptr87681 to i64                                      ; closure cast; i64* -> i64
  %cloptr87686 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87688 = getelementptr inbounds i64, i64* %cloptr87686, i64 1                  ; &eptr87688[1]
  %eptr87689 = getelementptr inbounds i64, i64* %cloptr87686, i64 2                  ; &eptr87689[2]
  store i64 %lQg$a, i64* %eptr87688                                                  ; *eptr87688 = %lQg$a
  store i64 %cont83806, i64* %eptr87689                                              ; *eptr87689 = %cont83806
  %eptr87687 = getelementptr inbounds i64, i64* %cloptr87686, i64 0                  ; &cloptr87686[0]
  %f87690 = ptrtoint void(i64,i64)* @lam87085 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87690, i64* %eptr87687                                                 ; store fptr
  %arg84160 = ptrtoint i64* %cloptr87686 to i64                                      ; closure cast; i64* -> i64
  %rva85327 = add i64 0, 0                                                           ; quoted ()
  %rva85326 = call i64 @prim_cons(i64 %arg84160, i64 %rva85327)                      ; call prim_cons
  %rva85325 = call i64 @prim_cons(i64 %arg84161, i64 %rva85326)                      ; call prim_cons
  %cloptr87691 = inttoptr i64 %arg84162 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87692 = getelementptr inbounds i64, i64* %cloptr87691, i64 0                 ; &cloptr87691[0]
  %f87694 = load i64, i64* %i0ptr87692, align 8                                      ; load; *i0ptr87692
  %fptr87693 = inttoptr i64 %f87694 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87693(i64 %arg84162, i64 %rva85325)                 ; tail call
  ret void
}


define void @lam87111(i64 %env87112, i64 %rvp85270) {
  %cont83812 = call i64 @prim_car(i64 %rvp85270)                                     ; call prim_car
  %rvp85269 = call i64 @prim_cdr(i64 %rvp85270)                                      ; call prim_cdr
  %IwU$k = call i64 @prim_car(i64 %rvp85269)                                         ; call prim_car
  %na85265 = call i64 @prim_cdr(i64 %rvp85269)                                       ; call prim_cdr
  %arg84164 = add i64 0, 0                                                           ; quoted ()
  %rva85268 = add i64 0, 0                                                           ; quoted ()
  %rva85267 = call i64 @prim_cons(i64 %IwU$k, i64 %rva85268)                         ; call prim_cons
  %rva85266 = call i64 @prim_cons(i64 %arg84164, i64 %rva85267)                      ; call prim_cons
  %cloptr87695 = inttoptr i64 %cont83812 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87696 = getelementptr inbounds i64, i64* %cloptr87695, i64 0                 ; &cloptr87695[0]
  %f87698 = load i64, i64* %i0ptr87696, align 8                                      ; load; *i0ptr87696
  %fptr87697 = inttoptr i64 %f87698 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87697(i64 %cont83812, i64 %rva85266)                ; tail call
  ret void
}


define void @lam87107(i64 %env87108, i64 %rvp85297) {
  %envptr87699 = inttoptr i64 %env87108 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87700 = getelementptr inbounds i64, i64* %envptr87699, i64 2                ; &envptr87699[2]
  %cont83806 = load i64, i64* %envptr87700, align 8                                  ; load; *envptr87700
  %envptr87701 = inttoptr i64 %env87108 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87702 = getelementptr inbounds i64, i64* %envptr87701, i64 1                ; &envptr87701[1]
  %lQg$a = load i64, i64* %envptr87702, align 8                                      ; load; *envptr87702
  %_9583807 = call i64 @prim_car(i64 %rvp85297)                                      ; call prim_car
  %rvp85296 = call i64 @prim_cdr(i64 %rvp85297)                                      ; call prim_cdr
  %w3o$cc = call i64 @prim_car(i64 %rvp85296)                                        ; call prim_car
  %na85272 = call i64 @prim_cdr(i64 %rvp85296)                                       ; call prim_cdr
  %arg84166 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83664 = call i64 @prim_vector_45ref(i64 %lQg$a, i64 %arg84166)                   ; call prim_vector_45ref
  %a83665 = call i64 @prim_null_63(i64 %a83664)                                      ; call prim_null_63
  %cmp87703 = icmp eq i64 %a83665, 15                                                ; false?
  br i1 %cmp87703, label %else87705, label %then87704                                ; if

then87704:
  %arg84170 = add i64 0, 0                                                           ; quoted ()
  %arg84169 = call i64 @const_init_true()                                            ; quoted #t
  %rva85275 = add i64 0, 0                                                           ; quoted ()
  %rva85274 = call i64 @prim_cons(i64 %arg84169, i64 %rva85275)                      ; call prim_cons
  %rva85273 = call i64 @prim_cons(i64 %arg84170, i64 %rva85274)                      ; call prim_cons
  %cloptr87706 = inttoptr i64 %cont83806 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87707 = getelementptr inbounds i64, i64* %cloptr87706, i64 0                 ; &cloptr87706[0]
  %f87709 = load i64, i64* %i0ptr87707, align 8                                      ; load; *i0ptr87707
  %fptr87708 = inttoptr i64 %f87709 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87708(i64 %cont83806, i64 %rva85273)                ; tail call
  ret void

else87705:
  %arg84172 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83666 = call i64 @prim_vector_45ref(i64 %lQg$a, i64 %arg84172)                   ; call prim_vector_45ref
  %a83667 = call i64 @prim_cons_63(i64 %a83666)                                      ; call prim_cons_63
  %cmp87710 = icmp eq i64 %a83667, 15                                                ; false?
  br i1 %cmp87710, label %else87712, label %then87711                                ; if

then87711:
  %arg84175 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83668 = call i64 @prim_vector_45ref(i64 %lQg$a, i64 %arg84175)                   ; call prim_vector_45ref
  %retprim83811 = call i64 @prim_cdr(i64 %a83668)                                    ; call prim_cdr
  %cloptr87713 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87715 = getelementptr inbounds i64, i64* %cloptr87713, i64 1                  ; &eptr87715[1]
  %eptr87716 = getelementptr inbounds i64, i64* %cloptr87713, i64 2                  ; &eptr87716[2]
  %eptr87717 = getelementptr inbounds i64, i64* %cloptr87713, i64 3                  ; &eptr87717[3]
  store i64 %w3o$cc, i64* %eptr87715                                                 ; *eptr87715 = %w3o$cc
  store i64 %lQg$a, i64* %eptr87716                                                  ; *eptr87716 = %lQg$a
  store i64 %cont83806, i64* %eptr87717                                              ; *eptr87717 = %cont83806
  %eptr87714 = getelementptr inbounds i64, i64* %cloptr87713, i64 0                  ; &cloptr87713[0]
  %f87718 = ptrtoint void(i64,i64)* @lam87099 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87718, i64* %eptr87714                                                 ; store fptr
  %arg84180 = ptrtoint i64* %cloptr87713 to i64                                      ; closure cast; i64* -> i64
  %arg84179 = add i64 0, 0                                                           ; quoted ()
  %rva85292 = add i64 0, 0                                                           ; quoted ()
  %rva85291 = call i64 @prim_cons(i64 %retprim83811, i64 %rva85292)                  ; call prim_cons
  %rva85290 = call i64 @prim_cons(i64 %arg84179, i64 %rva85291)                      ; call prim_cons
  %cloptr87719 = inttoptr i64 %arg84180 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87720 = getelementptr inbounds i64, i64* %cloptr87719, i64 0                 ; &cloptr87719[0]
  %f87722 = load i64, i64* %i0ptr87720, align 8                                      ; load; *i0ptr87720
  %fptr87721 = inttoptr i64 %f87722 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87721(i64 %arg84180, i64 %rva85290)                 ; tail call
  ret void

else87712:
  %arg84194 = add i64 0, 0                                                           ; quoted ()
  %arg84193 = call i64 @const_init_false()                                           ; quoted #f
  %rva85295 = add i64 0, 0                                                           ; quoted ()
  %rva85294 = call i64 @prim_cons(i64 %arg84193, i64 %rva85295)                      ; call prim_cons
  %rva85293 = call i64 @prim_cons(i64 %arg84194, i64 %rva85294)                      ; call prim_cons
  %cloptr87723 = inttoptr i64 %cont83806 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87724 = getelementptr inbounds i64, i64* %cloptr87723, i64 0                 ; &cloptr87723[0]
  %f87726 = load i64, i64* %i0ptr87724, align 8                                      ; load; *i0ptr87724
  %fptr87725 = inttoptr i64 %f87726 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87725(i64 %cont83806, i64 %rva85293)                ; tail call
  ret void
}


define void @lam87099(i64 %env87100, i64 %rvp85289) {
  %envptr87727 = inttoptr i64 %env87100 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87728 = getelementptr inbounds i64, i64* %envptr87727, i64 3                ; &envptr87727[3]
  %cont83806 = load i64, i64* %envptr87728, align 8                                  ; load; *envptr87728
  %envptr87729 = inttoptr i64 %env87100 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87730 = getelementptr inbounds i64, i64* %envptr87729, i64 2                ; &envptr87729[2]
  %lQg$a = load i64, i64* %envptr87730, align 8                                      ; load; *envptr87730
  %envptr87731 = inttoptr i64 %env87100 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87732 = getelementptr inbounds i64, i64* %envptr87731, i64 1                ; &envptr87731[1]
  %w3o$cc = load i64, i64* %envptr87732, align 8                                     ; load; *envptr87732
  %_9583808 = call i64 @prim_car(i64 %rvp85289)                                      ; call prim_car
  %rvp85288 = call i64 @prim_cdr(i64 %rvp85289)                                      ; call prim_cdr
  %cSY$b = call i64 @prim_car(i64 %rvp85288)                                         ; call prim_car
  %na85277 = call i64 @prim_cdr(i64 %rvp85288)                                       ; call prim_cdr
  %arg84181 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83669 = call i64 @prim_vector_45ref(i64 %lQg$a, i64 %arg84181)                   ; call prim_vector_45ref
  %a83670 = call i64 @prim_cdr(i64 %a83669)                                          ; call prim_cdr
  %arg84185 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83810 = call i64 @prim_vector_45set_33(i64 %lQg$a, i64 %arg84185, i64 %a83670); call prim_vector_45set_33
  %cloptr87733 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87735 = getelementptr inbounds i64, i64* %cloptr87733, i64 1                  ; &eptr87735[1]
  %eptr87736 = getelementptr inbounds i64, i64* %cloptr87733, i64 2                  ; &eptr87736[2]
  store i64 %w3o$cc, i64* %eptr87735                                                 ; *eptr87735 = %w3o$cc
  store i64 %cont83806, i64* %eptr87736                                              ; *eptr87736 = %cont83806
  %eptr87734 = getelementptr inbounds i64, i64* %cloptr87733, i64 0                  ; &cloptr87733[0]
  %f87737 = ptrtoint void(i64,i64)* @lam87095 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87737, i64* %eptr87734                                                 ; store fptr
  %arg84189 = ptrtoint i64* %cloptr87733 to i64                                      ; closure cast; i64* -> i64
  %arg84188 = add i64 0, 0                                                           ; quoted ()
  %rva85287 = add i64 0, 0                                                           ; quoted ()
  %rva85286 = call i64 @prim_cons(i64 %retprim83810, i64 %rva85287)                  ; call prim_cons
  %rva85285 = call i64 @prim_cons(i64 %arg84188, i64 %rva85286)                      ; call prim_cons
  %cloptr87738 = inttoptr i64 %arg84189 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87739 = getelementptr inbounds i64, i64* %cloptr87738, i64 0                 ; &cloptr87738[0]
  %f87741 = load i64, i64* %i0ptr87739, align 8                                      ; load; *i0ptr87739
  %fptr87740 = inttoptr i64 %f87741 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87740(i64 %arg84189, i64 %rva85285)                 ; tail call
  ret void
}


define void @lam87095(i64 %env87096, i64 %rvp85284) {
  %envptr87742 = inttoptr i64 %env87096 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87743 = getelementptr inbounds i64, i64* %envptr87742, i64 2                ; &envptr87742[2]
  %cont83806 = load i64, i64* %envptr87743, align 8                                  ; load; *envptr87743
  %envptr87744 = inttoptr i64 %env87096 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87745 = getelementptr inbounds i64, i64* %envptr87744, i64 1                ; &envptr87744[1]
  %w3o$cc = load i64, i64* %envptr87745, align 8                                     ; load; *envptr87745
  %_9583809 = call i64 @prim_car(i64 %rvp85284)                                      ; call prim_car
  %rvp85283 = call i64 @prim_cdr(i64 %rvp85284)                                      ; call prim_cdr
  %t4j$_950 = call i64 @prim_car(i64 %rvp85283)                                      ; call prim_car
  %na85279 = call i64 @prim_cdr(i64 %rvp85283)                                       ; call prim_cdr
  %rva85282 = add i64 0, 0                                                           ; quoted ()
  %rva85281 = call i64 @prim_cons(i64 %w3o$cc, i64 %rva85282)                        ; call prim_cons
  %rva85280 = call i64 @prim_cons(i64 %cont83806, i64 %rva85281)                     ; call prim_cons
  %cloptr87746 = inttoptr i64 %w3o$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87747 = getelementptr inbounds i64, i64* %cloptr87746, i64 0                 ; &cloptr87746[0]
  %f87749 = load i64, i64* %i0ptr87747, align 8                                      ; load; *i0ptr87747
  %fptr87748 = inttoptr i64 %f87749 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87748(i64 %w3o$cc, i64 %rva85280)                   ; tail call
  ret void
}


define void @lam87085(i64 %env87086, i64 %rvp85324) {
  %envptr87750 = inttoptr i64 %env87086 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87751 = getelementptr inbounds i64, i64* %envptr87750, i64 2                ; &envptr87750[2]
  %cont83806 = load i64, i64* %envptr87751, align 8                                  ; load; *envptr87751
  %envptr87752 = inttoptr i64 %env87086 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87753 = getelementptr inbounds i64, i64* %envptr87752, i64 1                ; &envptr87752[1]
  %lQg$a = load i64, i64* %envptr87753, align 8                                      ; load; *envptr87753
  %_9583807 = call i64 @prim_car(i64 %rvp85324)                                      ; call prim_car
  %rvp85323 = call i64 @prim_cdr(i64 %rvp85324)                                      ; call prim_cdr
  %w3o$cc = call i64 @prim_car(i64 %rvp85323)                                        ; call prim_car
  %na85299 = call i64 @prim_cdr(i64 %rvp85323)                                       ; call prim_cdr
  %arg84196 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83664 = call i64 @prim_vector_45ref(i64 %lQg$a, i64 %arg84196)                   ; call prim_vector_45ref
  %a83665 = call i64 @prim_null_63(i64 %a83664)                                      ; call prim_null_63
  %cmp87754 = icmp eq i64 %a83665, 15                                                ; false?
  br i1 %cmp87754, label %else87756, label %then87755                                ; if

then87755:
  %arg84200 = add i64 0, 0                                                           ; quoted ()
  %arg84199 = call i64 @const_init_true()                                            ; quoted #t
  %rva85302 = add i64 0, 0                                                           ; quoted ()
  %rva85301 = call i64 @prim_cons(i64 %arg84199, i64 %rva85302)                      ; call prim_cons
  %rva85300 = call i64 @prim_cons(i64 %arg84200, i64 %rva85301)                      ; call prim_cons
  %cloptr87757 = inttoptr i64 %cont83806 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87758 = getelementptr inbounds i64, i64* %cloptr87757, i64 0                 ; &cloptr87757[0]
  %f87760 = load i64, i64* %i0ptr87758, align 8                                      ; load; *i0ptr87758
  %fptr87759 = inttoptr i64 %f87760 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87759(i64 %cont83806, i64 %rva85300)                ; tail call
  ret void

else87756:
  %arg84202 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83666 = call i64 @prim_vector_45ref(i64 %lQg$a, i64 %arg84202)                   ; call prim_vector_45ref
  %a83667 = call i64 @prim_cons_63(i64 %a83666)                                      ; call prim_cons_63
  %cmp87761 = icmp eq i64 %a83667, 15                                                ; false?
  br i1 %cmp87761, label %else87763, label %then87762                                ; if

then87762:
  %arg84205 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83668 = call i64 @prim_vector_45ref(i64 %lQg$a, i64 %arg84205)                   ; call prim_vector_45ref
  %retprim83811 = call i64 @prim_cdr(i64 %a83668)                                    ; call prim_cdr
  %cloptr87764 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87766 = getelementptr inbounds i64, i64* %cloptr87764, i64 1                  ; &eptr87766[1]
  %eptr87767 = getelementptr inbounds i64, i64* %cloptr87764, i64 2                  ; &eptr87767[2]
  %eptr87768 = getelementptr inbounds i64, i64* %cloptr87764, i64 3                  ; &eptr87768[3]
  store i64 %w3o$cc, i64* %eptr87766                                                 ; *eptr87766 = %w3o$cc
  store i64 %lQg$a, i64* %eptr87767                                                  ; *eptr87767 = %lQg$a
  store i64 %cont83806, i64* %eptr87768                                              ; *eptr87768 = %cont83806
  %eptr87765 = getelementptr inbounds i64, i64* %cloptr87764, i64 0                  ; &cloptr87764[0]
  %f87769 = ptrtoint void(i64,i64)* @lam87077 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87769, i64* %eptr87765                                                 ; store fptr
  %arg84210 = ptrtoint i64* %cloptr87764 to i64                                      ; closure cast; i64* -> i64
  %arg84209 = add i64 0, 0                                                           ; quoted ()
  %rva85319 = add i64 0, 0                                                           ; quoted ()
  %rva85318 = call i64 @prim_cons(i64 %retprim83811, i64 %rva85319)                  ; call prim_cons
  %rva85317 = call i64 @prim_cons(i64 %arg84209, i64 %rva85318)                      ; call prim_cons
  %cloptr87770 = inttoptr i64 %arg84210 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87771 = getelementptr inbounds i64, i64* %cloptr87770, i64 0                 ; &cloptr87770[0]
  %f87773 = load i64, i64* %i0ptr87771, align 8                                      ; load; *i0ptr87771
  %fptr87772 = inttoptr i64 %f87773 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87772(i64 %arg84210, i64 %rva85317)                 ; tail call
  ret void

else87763:
  %arg84224 = add i64 0, 0                                                           ; quoted ()
  %arg84223 = call i64 @const_init_false()                                           ; quoted #f
  %rva85322 = add i64 0, 0                                                           ; quoted ()
  %rva85321 = call i64 @prim_cons(i64 %arg84223, i64 %rva85322)                      ; call prim_cons
  %rva85320 = call i64 @prim_cons(i64 %arg84224, i64 %rva85321)                      ; call prim_cons
  %cloptr87774 = inttoptr i64 %cont83806 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87775 = getelementptr inbounds i64, i64* %cloptr87774, i64 0                 ; &cloptr87774[0]
  %f87777 = load i64, i64* %i0ptr87775, align 8                                      ; load; *i0ptr87775
  %fptr87776 = inttoptr i64 %f87777 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87776(i64 %cont83806, i64 %rva85320)                ; tail call
  ret void
}


define void @lam87077(i64 %env87078, i64 %rvp85316) {
  %envptr87778 = inttoptr i64 %env87078 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87779 = getelementptr inbounds i64, i64* %envptr87778, i64 3                ; &envptr87778[3]
  %cont83806 = load i64, i64* %envptr87779, align 8                                  ; load; *envptr87779
  %envptr87780 = inttoptr i64 %env87078 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87781 = getelementptr inbounds i64, i64* %envptr87780, i64 2                ; &envptr87780[2]
  %lQg$a = load i64, i64* %envptr87781, align 8                                      ; load; *envptr87781
  %envptr87782 = inttoptr i64 %env87078 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87783 = getelementptr inbounds i64, i64* %envptr87782, i64 1                ; &envptr87782[1]
  %w3o$cc = load i64, i64* %envptr87783, align 8                                     ; load; *envptr87783
  %_9583808 = call i64 @prim_car(i64 %rvp85316)                                      ; call prim_car
  %rvp85315 = call i64 @prim_cdr(i64 %rvp85316)                                      ; call prim_cdr
  %cSY$b = call i64 @prim_car(i64 %rvp85315)                                         ; call prim_car
  %na85304 = call i64 @prim_cdr(i64 %rvp85315)                                       ; call prim_cdr
  %arg84211 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83669 = call i64 @prim_vector_45ref(i64 %lQg$a, i64 %arg84211)                   ; call prim_vector_45ref
  %a83670 = call i64 @prim_cdr(i64 %a83669)                                          ; call prim_cdr
  %arg84215 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83810 = call i64 @prim_vector_45set_33(i64 %lQg$a, i64 %arg84215, i64 %a83670); call prim_vector_45set_33
  %cloptr87784 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87786 = getelementptr inbounds i64, i64* %cloptr87784, i64 1                  ; &eptr87786[1]
  %eptr87787 = getelementptr inbounds i64, i64* %cloptr87784, i64 2                  ; &eptr87787[2]
  store i64 %w3o$cc, i64* %eptr87786                                                 ; *eptr87786 = %w3o$cc
  store i64 %cont83806, i64* %eptr87787                                              ; *eptr87787 = %cont83806
  %eptr87785 = getelementptr inbounds i64, i64* %cloptr87784, i64 0                  ; &cloptr87784[0]
  %f87788 = ptrtoint void(i64,i64)* @lam87073 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87788, i64* %eptr87785                                                 ; store fptr
  %arg84219 = ptrtoint i64* %cloptr87784 to i64                                      ; closure cast; i64* -> i64
  %arg84218 = add i64 0, 0                                                           ; quoted ()
  %rva85314 = add i64 0, 0                                                           ; quoted ()
  %rva85313 = call i64 @prim_cons(i64 %retprim83810, i64 %rva85314)                  ; call prim_cons
  %rva85312 = call i64 @prim_cons(i64 %arg84218, i64 %rva85313)                      ; call prim_cons
  %cloptr87789 = inttoptr i64 %arg84219 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87790 = getelementptr inbounds i64, i64* %cloptr87789, i64 0                 ; &cloptr87789[0]
  %f87792 = load i64, i64* %i0ptr87790, align 8                                      ; load; *i0ptr87790
  %fptr87791 = inttoptr i64 %f87792 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87791(i64 %arg84219, i64 %rva85312)                 ; tail call
  ret void
}


define void @lam87073(i64 %env87074, i64 %rvp85311) {
  %envptr87793 = inttoptr i64 %env87074 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87794 = getelementptr inbounds i64, i64* %envptr87793, i64 2                ; &envptr87793[2]
  %cont83806 = load i64, i64* %envptr87794, align 8                                  ; load; *envptr87794
  %envptr87795 = inttoptr i64 %env87074 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87796 = getelementptr inbounds i64, i64* %envptr87795, i64 1                ; &envptr87795[1]
  %w3o$cc = load i64, i64* %envptr87796, align 8                                     ; load; *envptr87796
  %_9583809 = call i64 @prim_car(i64 %rvp85311)                                      ; call prim_car
  %rvp85310 = call i64 @prim_cdr(i64 %rvp85311)                                      ; call prim_cdr
  %t4j$_950 = call i64 @prim_car(i64 %rvp85310)                                      ; call prim_car
  %na85306 = call i64 @prim_cdr(i64 %rvp85310)                                       ; call prim_cdr
  %rva85309 = add i64 0, 0                                                           ; quoted ()
  %rva85308 = call i64 @prim_cons(i64 %w3o$cc, i64 %rva85309)                        ; call prim_cons
  %rva85307 = call i64 @prim_cons(i64 %cont83806, i64 %rva85308)                     ; call prim_cons
  %cloptr87797 = inttoptr i64 %w3o$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87798 = getelementptr inbounds i64, i64* %cloptr87797, i64 0                 ; &cloptr87797[0]
  %f87800 = load i64, i64* %i0ptr87798, align 8                                      ; load; *i0ptr87798
  %fptr87799 = inttoptr i64 %f87800 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87799(i64 %w3o$cc, i64 %rva85307)                   ; tail call
  ret void
}


define void @lam87062(i64 %env87063, i64 %rvp85392) {
  %cont83813 = call i64 @prim_car(i64 %rvp85392)                                     ; call prim_car
  %rvp85391 = call i64 @prim_cdr(i64 %rvp85392)                                      ; call prim_cdr
  %RK1$lst = call i64 @prim_car(i64 %rvp85391)                                       ; call prim_car
  %rvp85390 = call i64 @prim_cdr(i64 %rvp85391)                                      ; call prim_cdr
  %wYg$n = call i64 @prim_car(i64 %rvp85390)                                         ; call prim_car
  %na85331 = call i64 @prim_cdr(i64 %rvp85390)                                       ; call prim_cdr
  %arg84227 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %TbO$lst = call i64 @prim_make_45vector(i64 %arg84227, i64 %RK1$lst)               ; call prim_make_45vector
  %arg84229 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %l6w$n = call i64 @prim_make_45vector(i64 %arg84229, i64 %wYg$n)                   ; call prim_make_45vector
  %cloptr87801 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87802 = getelementptr inbounds i64, i64* %cloptr87801, i64 0                  ; &cloptr87801[0]
  %f87803 = ptrtoint void(i64,i64)* @lam87058 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87803, i64* %eptr87802                                                 ; store fptr
  %arg84232 = ptrtoint i64* %cloptr87801 to i64                                      ; closure cast; i64* -> i64
  %cloptr87804 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87806 = getelementptr inbounds i64, i64* %cloptr87804, i64 1                  ; &eptr87806[1]
  %eptr87807 = getelementptr inbounds i64, i64* %cloptr87804, i64 2                  ; &eptr87807[2]
  %eptr87808 = getelementptr inbounds i64, i64* %cloptr87804, i64 3                  ; &eptr87808[3]
  store i64 %l6w$n, i64* %eptr87806                                                  ; *eptr87806 = %l6w$n
  store i64 %TbO$lst, i64* %eptr87807                                                ; *eptr87807 = %TbO$lst
  store i64 %cont83813, i64* %eptr87808                                              ; *eptr87808 = %cont83813
  %eptr87805 = getelementptr inbounds i64, i64* %cloptr87804, i64 0                  ; &cloptr87804[0]
  %f87809 = ptrtoint void(i64,i64)* @lam87055 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87809, i64* %eptr87805                                                 ; store fptr
  %arg84231 = ptrtoint i64* %cloptr87804 to i64                                      ; closure cast; i64* -> i64
  %cloptr87810 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87812 = getelementptr inbounds i64, i64* %cloptr87810, i64 1                  ; &eptr87812[1]
  %eptr87813 = getelementptr inbounds i64, i64* %cloptr87810, i64 2                  ; &eptr87813[2]
  %eptr87814 = getelementptr inbounds i64, i64* %cloptr87810, i64 3                  ; &eptr87814[3]
  store i64 %l6w$n, i64* %eptr87812                                                  ; *eptr87812 = %l6w$n
  store i64 %TbO$lst, i64* %eptr87813                                                ; *eptr87813 = %TbO$lst
  store i64 %cont83813, i64* %eptr87814                                              ; *eptr87814 = %cont83813
  %eptr87811 = getelementptr inbounds i64, i64* %cloptr87810, i64 0                  ; &cloptr87810[0]
  %f87815 = ptrtoint void(i64,i64)* @lam87034 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87815, i64* %eptr87811                                                 ; store fptr
  %arg84230 = ptrtoint i64* %cloptr87810 to i64                                      ; closure cast; i64* -> i64
  %rva85389 = add i64 0, 0                                                           ; quoted ()
  %rva85388 = call i64 @prim_cons(i64 %arg84230, i64 %rva85389)                      ; call prim_cons
  %rva85387 = call i64 @prim_cons(i64 %arg84231, i64 %rva85388)                      ; call prim_cons
  %cloptr87816 = inttoptr i64 %arg84232 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87817 = getelementptr inbounds i64, i64* %cloptr87816, i64 0                 ; &cloptr87816[0]
  %f87819 = load i64, i64* %i0ptr87817, align 8                                      ; load; *i0ptr87817
  %fptr87818 = inttoptr i64 %f87819 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87818(i64 %arg84232, i64 %rva85387)                 ; tail call
  ret void
}


define void @lam87058(i64 %env87059, i64 %rvp85338) {
  %cont83820 = call i64 @prim_car(i64 %rvp85338)                                     ; call prim_car
  %rvp85337 = call i64 @prim_cdr(i64 %rvp85338)                                      ; call prim_cdr
  %C7m$u = call i64 @prim_car(i64 %rvp85337)                                         ; call prim_car
  %na85333 = call i64 @prim_cdr(i64 %rvp85337)                                       ; call prim_cdr
  %rva85336 = add i64 0, 0                                                           ; quoted ()
  %rva85335 = call i64 @prim_cons(i64 %C7m$u, i64 %rva85336)                         ; call prim_cons
  %rva85334 = call i64 @prim_cons(i64 %cont83820, i64 %rva85335)                     ; call prim_cons
  %cloptr87820 = inttoptr i64 %C7m$u to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr87821 = getelementptr inbounds i64, i64* %cloptr87820, i64 0                 ; &cloptr87820[0]
  %f87823 = load i64, i64* %i0ptr87821, align 8                                      ; load; *i0ptr87821
  %fptr87822 = inttoptr i64 %f87823 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87822(i64 %C7m$u, i64 %rva85334)                    ; tail call
  ret void
}


define void @lam87055(i64 %env87056, i64 %rvp85362) {
  %envptr87824 = inttoptr i64 %env87056 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87825 = getelementptr inbounds i64, i64* %envptr87824, i64 3                ; &envptr87824[3]
  %cont83813 = load i64, i64* %envptr87825, align 8                                  ; load; *envptr87825
  %envptr87826 = inttoptr i64 %env87056 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87827 = getelementptr inbounds i64, i64* %envptr87826, i64 2                ; &envptr87826[2]
  %TbO$lst = load i64, i64* %envptr87827, align 8                                    ; load; *envptr87827
  %envptr87828 = inttoptr i64 %env87056 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87829 = getelementptr inbounds i64, i64* %envptr87828, i64 1                ; &envptr87828[1]
  %l6w$n = load i64, i64* %envptr87829, align 8                                      ; load; *envptr87829
  %_9583814 = call i64 @prim_car(i64 %rvp85362)                                      ; call prim_car
  %rvp85361 = call i64 @prim_cdr(i64 %rvp85362)                                      ; call prim_cdr
  %zBF$cc = call i64 @prim_car(i64 %rvp85361)                                        ; call prim_car
  %na85340 = call i64 @prim_cdr(i64 %rvp85361)                                       ; call prim_cdr
  %arg84236 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83671 = call i64 @prim_vector_45ref(i64 %l6w$n, i64 %arg84236)                   ; call prim_vector_45ref
  %arg84239 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83672 = call i64 @prim__61(i64 %arg84239, i64 %a83671)                           ; call prim__61
  %cmp87830 = icmp eq i64 %a83672, 15                                                ; false?
  br i1 %cmp87830, label %else87832, label %then87831                                ; if

then87831:
  %arg84240 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83815 = call i64 @prim_vector_45ref(i64 %TbO$lst, i64 %arg84240)           ; call prim_vector_45ref
  %arg84243 = add i64 0, 0                                                           ; quoted ()
  %rva85343 = add i64 0, 0                                                           ; quoted ()
  %rva85342 = call i64 @prim_cons(i64 %retprim83815, i64 %rva85343)                  ; call prim_cons
  %rva85341 = call i64 @prim_cons(i64 %arg84243, i64 %rva85342)                      ; call prim_cons
  %cloptr87833 = inttoptr i64 %cont83813 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87834 = getelementptr inbounds i64, i64* %cloptr87833, i64 0                 ; &cloptr87833[0]
  %f87836 = load i64, i64* %i0ptr87834, align 8                                      ; load; *i0ptr87834
  %fptr87835 = inttoptr i64 %f87836 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87835(i64 %cont83813, i64 %rva85341)                ; tail call
  ret void

else87832:
  %arg84245 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83673 = call i64 @prim_vector_45ref(i64 %TbO$lst, i64 %arg84245)                 ; call prim_vector_45ref
  %a83674 = call i64 @prim_cdr(i64 %a83673)                                          ; call prim_cdr
  %arg84249 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83819 = call i64 @prim_vector_45set_33(i64 %TbO$lst, i64 %arg84249, i64 %a83674); call prim_vector_45set_33
  %cloptr87837 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87839 = getelementptr inbounds i64, i64* %cloptr87837, i64 1                  ; &eptr87839[1]
  %eptr87840 = getelementptr inbounds i64, i64* %cloptr87837, i64 2                  ; &eptr87840[2]
  %eptr87841 = getelementptr inbounds i64, i64* %cloptr87837, i64 3                  ; &eptr87841[3]
  store i64 %zBF$cc, i64* %eptr87839                                                 ; *eptr87839 = %zBF$cc
  store i64 %l6w$n, i64* %eptr87840                                                  ; *eptr87840 = %l6w$n
  store i64 %cont83813, i64* %eptr87841                                              ; *eptr87841 = %cont83813
  %eptr87838 = getelementptr inbounds i64, i64* %cloptr87837, i64 0                  ; &cloptr87837[0]
  %f87842 = ptrtoint void(i64,i64)* @lam87049 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87842, i64* %eptr87838                                                 ; store fptr
  %arg84253 = ptrtoint i64* %cloptr87837 to i64                                      ; closure cast; i64* -> i64
  %arg84252 = add i64 0, 0                                                           ; quoted ()
  %rva85360 = add i64 0, 0                                                           ; quoted ()
  %rva85359 = call i64 @prim_cons(i64 %retprim83819, i64 %rva85360)                  ; call prim_cons
  %rva85358 = call i64 @prim_cons(i64 %arg84252, i64 %rva85359)                      ; call prim_cons
  %cloptr87843 = inttoptr i64 %arg84253 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87844 = getelementptr inbounds i64, i64* %cloptr87843, i64 0                 ; &cloptr87843[0]
  %f87846 = load i64, i64* %i0ptr87844, align 8                                      ; load; *i0ptr87844
  %fptr87845 = inttoptr i64 %f87846 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87845(i64 %arg84253, i64 %rva85358)                 ; tail call
  ret void
}


define void @lam87049(i64 %env87050, i64 %rvp85357) {
  %envptr87847 = inttoptr i64 %env87050 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87848 = getelementptr inbounds i64, i64* %envptr87847, i64 3                ; &envptr87847[3]
  %cont83813 = load i64, i64* %envptr87848, align 8                                  ; load; *envptr87848
  %envptr87849 = inttoptr i64 %env87050 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87850 = getelementptr inbounds i64, i64* %envptr87849, i64 2                ; &envptr87849[2]
  %l6w$n = load i64, i64* %envptr87850, align 8                                      ; load; *envptr87850
  %envptr87851 = inttoptr i64 %env87050 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87852 = getelementptr inbounds i64, i64* %envptr87851, i64 1                ; &envptr87851[1]
  %zBF$cc = load i64, i64* %envptr87852, align 8                                     ; load; *envptr87852
  %_9583816 = call i64 @prim_car(i64 %rvp85357)                                      ; call prim_car
  %rvp85356 = call i64 @prim_cdr(i64 %rvp85357)                                      ; call prim_cdr
  %bA1$_950 = call i64 @prim_car(i64 %rvp85356)                                      ; call prim_car
  %na85345 = call i64 @prim_cdr(i64 %rvp85356)                                       ; call prim_cdr
  %arg84254 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83675 = call i64 @prim_vector_45ref(i64 %l6w$n, i64 %arg84254)                   ; call prim_vector_45ref
  %arg84256 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a83676 = call i64 @prim__45(i64 %a83675, i64 %arg84256)                           ; call prim__45
  %arg84259 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83818 = call i64 @prim_vector_45set_33(i64 %l6w$n, i64 %arg84259, i64 %a83676); call prim_vector_45set_33
  %cloptr87853 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87855 = getelementptr inbounds i64, i64* %cloptr87853, i64 1                  ; &eptr87855[1]
  %eptr87856 = getelementptr inbounds i64, i64* %cloptr87853, i64 2                  ; &eptr87856[2]
  store i64 %zBF$cc, i64* %eptr87855                                                 ; *eptr87855 = %zBF$cc
  store i64 %cont83813, i64* %eptr87856                                              ; *eptr87856 = %cont83813
  %eptr87854 = getelementptr inbounds i64, i64* %cloptr87853, i64 0                  ; &cloptr87853[0]
  %f87857 = ptrtoint void(i64,i64)* @lam87044 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87857, i64* %eptr87854                                                 ; store fptr
  %arg84263 = ptrtoint i64* %cloptr87853 to i64                                      ; closure cast; i64* -> i64
  %arg84262 = add i64 0, 0                                                           ; quoted ()
  %rva85355 = add i64 0, 0                                                           ; quoted ()
  %rva85354 = call i64 @prim_cons(i64 %retprim83818, i64 %rva85355)                  ; call prim_cons
  %rva85353 = call i64 @prim_cons(i64 %arg84262, i64 %rva85354)                      ; call prim_cons
  %cloptr87858 = inttoptr i64 %arg84263 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87859 = getelementptr inbounds i64, i64* %cloptr87858, i64 0                 ; &cloptr87858[0]
  %f87861 = load i64, i64* %i0ptr87859, align 8                                      ; load; *i0ptr87859
  %fptr87860 = inttoptr i64 %f87861 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87860(i64 %arg84263, i64 %rva85353)                 ; tail call
  ret void
}


define void @lam87044(i64 %env87045, i64 %rvp85352) {
  %envptr87862 = inttoptr i64 %env87045 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87863 = getelementptr inbounds i64, i64* %envptr87862, i64 2                ; &envptr87862[2]
  %cont83813 = load i64, i64* %envptr87863, align 8                                  ; load; *envptr87863
  %envptr87864 = inttoptr i64 %env87045 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87865 = getelementptr inbounds i64, i64* %envptr87864, i64 1                ; &envptr87864[1]
  %zBF$cc = load i64, i64* %envptr87865, align 8                                     ; load; *envptr87865
  %_9583817 = call i64 @prim_car(i64 %rvp85352)                                      ; call prim_car
  %rvp85351 = call i64 @prim_cdr(i64 %rvp85352)                                      ; call prim_cdr
  %TMr$_951 = call i64 @prim_car(i64 %rvp85351)                                      ; call prim_car
  %na85347 = call i64 @prim_cdr(i64 %rvp85351)                                       ; call prim_cdr
  %rva85350 = add i64 0, 0                                                           ; quoted ()
  %rva85349 = call i64 @prim_cons(i64 %zBF$cc, i64 %rva85350)                        ; call prim_cons
  %rva85348 = call i64 @prim_cons(i64 %cont83813, i64 %rva85349)                     ; call prim_cons
  %cloptr87866 = inttoptr i64 %zBF$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87867 = getelementptr inbounds i64, i64* %cloptr87866, i64 0                 ; &cloptr87866[0]
  %f87869 = load i64, i64* %i0ptr87867, align 8                                      ; load; *i0ptr87867
  %fptr87868 = inttoptr i64 %f87869 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87868(i64 %zBF$cc, i64 %rva85348)                   ; tail call
  ret void
}


define void @lam87034(i64 %env87035, i64 %rvp85386) {
  %envptr87870 = inttoptr i64 %env87035 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87871 = getelementptr inbounds i64, i64* %envptr87870, i64 3                ; &envptr87870[3]
  %cont83813 = load i64, i64* %envptr87871, align 8                                  ; load; *envptr87871
  %envptr87872 = inttoptr i64 %env87035 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87873 = getelementptr inbounds i64, i64* %envptr87872, i64 2                ; &envptr87872[2]
  %TbO$lst = load i64, i64* %envptr87873, align 8                                    ; load; *envptr87873
  %envptr87874 = inttoptr i64 %env87035 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87875 = getelementptr inbounds i64, i64* %envptr87874, i64 1                ; &envptr87874[1]
  %l6w$n = load i64, i64* %envptr87875, align 8                                      ; load; *envptr87875
  %_9583814 = call i64 @prim_car(i64 %rvp85386)                                      ; call prim_car
  %rvp85385 = call i64 @prim_cdr(i64 %rvp85386)                                      ; call prim_cdr
  %zBF$cc = call i64 @prim_car(i64 %rvp85385)                                        ; call prim_car
  %na85364 = call i64 @prim_cdr(i64 %rvp85385)                                       ; call prim_cdr
  %arg84267 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83671 = call i64 @prim_vector_45ref(i64 %l6w$n, i64 %arg84267)                   ; call prim_vector_45ref
  %arg84270 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83672 = call i64 @prim__61(i64 %arg84270, i64 %a83671)                           ; call prim__61
  %cmp87876 = icmp eq i64 %a83672, 15                                                ; false?
  br i1 %cmp87876, label %else87878, label %then87877                                ; if

then87877:
  %arg84271 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83815 = call i64 @prim_vector_45ref(i64 %TbO$lst, i64 %arg84271)           ; call prim_vector_45ref
  %arg84274 = add i64 0, 0                                                           ; quoted ()
  %rva85367 = add i64 0, 0                                                           ; quoted ()
  %rva85366 = call i64 @prim_cons(i64 %retprim83815, i64 %rva85367)                  ; call prim_cons
  %rva85365 = call i64 @prim_cons(i64 %arg84274, i64 %rva85366)                      ; call prim_cons
  %cloptr87879 = inttoptr i64 %cont83813 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87880 = getelementptr inbounds i64, i64* %cloptr87879, i64 0                 ; &cloptr87879[0]
  %f87882 = load i64, i64* %i0ptr87880, align 8                                      ; load; *i0ptr87880
  %fptr87881 = inttoptr i64 %f87882 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87881(i64 %cont83813, i64 %rva85365)                ; tail call
  ret void

else87878:
  %arg84276 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83673 = call i64 @prim_vector_45ref(i64 %TbO$lst, i64 %arg84276)                 ; call prim_vector_45ref
  %a83674 = call i64 @prim_cdr(i64 %a83673)                                          ; call prim_cdr
  %arg84280 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83819 = call i64 @prim_vector_45set_33(i64 %TbO$lst, i64 %arg84280, i64 %a83674); call prim_vector_45set_33
  %cloptr87883 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87885 = getelementptr inbounds i64, i64* %cloptr87883, i64 1                  ; &eptr87885[1]
  %eptr87886 = getelementptr inbounds i64, i64* %cloptr87883, i64 2                  ; &eptr87886[2]
  %eptr87887 = getelementptr inbounds i64, i64* %cloptr87883, i64 3                  ; &eptr87887[3]
  store i64 %zBF$cc, i64* %eptr87885                                                 ; *eptr87885 = %zBF$cc
  store i64 %l6w$n, i64* %eptr87886                                                  ; *eptr87886 = %l6w$n
  store i64 %cont83813, i64* %eptr87887                                              ; *eptr87887 = %cont83813
  %eptr87884 = getelementptr inbounds i64, i64* %cloptr87883, i64 0                  ; &cloptr87883[0]
  %f87888 = ptrtoint void(i64,i64)* @lam87028 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87888, i64* %eptr87884                                                 ; store fptr
  %arg84284 = ptrtoint i64* %cloptr87883 to i64                                      ; closure cast; i64* -> i64
  %arg84283 = add i64 0, 0                                                           ; quoted ()
  %rva85384 = add i64 0, 0                                                           ; quoted ()
  %rva85383 = call i64 @prim_cons(i64 %retprim83819, i64 %rva85384)                  ; call prim_cons
  %rva85382 = call i64 @prim_cons(i64 %arg84283, i64 %rva85383)                      ; call prim_cons
  %cloptr87889 = inttoptr i64 %arg84284 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87890 = getelementptr inbounds i64, i64* %cloptr87889, i64 0                 ; &cloptr87889[0]
  %f87892 = load i64, i64* %i0ptr87890, align 8                                      ; load; *i0ptr87890
  %fptr87891 = inttoptr i64 %f87892 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87891(i64 %arg84284, i64 %rva85382)                 ; tail call
  ret void
}


define void @lam87028(i64 %env87029, i64 %rvp85381) {
  %envptr87893 = inttoptr i64 %env87029 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87894 = getelementptr inbounds i64, i64* %envptr87893, i64 3                ; &envptr87893[3]
  %cont83813 = load i64, i64* %envptr87894, align 8                                  ; load; *envptr87894
  %envptr87895 = inttoptr i64 %env87029 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87896 = getelementptr inbounds i64, i64* %envptr87895, i64 2                ; &envptr87895[2]
  %l6w$n = load i64, i64* %envptr87896, align 8                                      ; load; *envptr87896
  %envptr87897 = inttoptr i64 %env87029 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87898 = getelementptr inbounds i64, i64* %envptr87897, i64 1                ; &envptr87897[1]
  %zBF$cc = load i64, i64* %envptr87898, align 8                                     ; load; *envptr87898
  %_9583816 = call i64 @prim_car(i64 %rvp85381)                                      ; call prim_car
  %rvp85380 = call i64 @prim_cdr(i64 %rvp85381)                                      ; call prim_cdr
  %bA1$_950 = call i64 @prim_car(i64 %rvp85380)                                      ; call prim_car
  %na85369 = call i64 @prim_cdr(i64 %rvp85380)                                       ; call prim_cdr
  %arg84285 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83675 = call i64 @prim_vector_45ref(i64 %l6w$n, i64 %arg84285)                   ; call prim_vector_45ref
  %arg84287 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a83676 = call i64 @prim__45(i64 %a83675, i64 %arg84287)                           ; call prim__45
  %arg84290 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83818 = call i64 @prim_vector_45set_33(i64 %l6w$n, i64 %arg84290, i64 %a83676); call prim_vector_45set_33
  %cloptr87899 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87901 = getelementptr inbounds i64, i64* %cloptr87899, i64 1                  ; &eptr87901[1]
  %eptr87902 = getelementptr inbounds i64, i64* %cloptr87899, i64 2                  ; &eptr87902[2]
  store i64 %zBF$cc, i64* %eptr87901                                                 ; *eptr87901 = %zBF$cc
  store i64 %cont83813, i64* %eptr87902                                              ; *eptr87902 = %cont83813
  %eptr87900 = getelementptr inbounds i64, i64* %cloptr87899, i64 0                  ; &cloptr87899[0]
  %f87903 = ptrtoint void(i64,i64)* @lam87023 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87903, i64* %eptr87900                                                 ; store fptr
  %arg84294 = ptrtoint i64* %cloptr87899 to i64                                      ; closure cast; i64* -> i64
  %arg84293 = add i64 0, 0                                                           ; quoted ()
  %rva85379 = add i64 0, 0                                                           ; quoted ()
  %rva85378 = call i64 @prim_cons(i64 %retprim83818, i64 %rva85379)                  ; call prim_cons
  %rva85377 = call i64 @prim_cons(i64 %arg84293, i64 %rva85378)                      ; call prim_cons
  %cloptr87904 = inttoptr i64 %arg84294 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87905 = getelementptr inbounds i64, i64* %cloptr87904, i64 0                 ; &cloptr87904[0]
  %f87907 = load i64, i64* %i0ptr87905, align 8                                      ; load; *i0ptr87905
  %fptr87906 = inttoptr i64 %f87907 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87906(i64 %arg84294, i64 %rva85377)                 ; tail call
  ret void
}


define void @lam87023(i64 %env87024, i64 %rvp85376) {
  %envptr87908 = inttoptr i64 %env87024 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87909 = getelementptr inbounds i64, i64* %envptr87908, i64 2                ; &envptr87908[2]
  %cont83813 = load i64, i64* %envptr87909, align 8                                  ; load; *envptr87909
  %envptr87910 = inttoptr i64 %env87024 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87911 = getelementptr inbounds i64, i64* %envptr87910, i64 1                ; &envptr87910[1]
  %zBF$cc = load i64, i64* %envptr87911, align 8                                     ; load; *envptr87911
  %_9583817 = call i64 @prim_car(i64 %rvp85376)                                      ; call prim_car
  %rvp85375 = call i64 @prim_cdr(i64 %rvp85376)                                      ; call prim_cdr
  %TMr$_951 = call i64 @prim_car(i64 %rvp85375)                                      ; call prim_car
  %na85371 = call i64 @prim_cdr(i64 %rvp85375)                                       ; call prim_cdr
  %rva85374 = add i64 0, 0                                                           ; quoted ()
  %rva85373 = call i64 @prim_cons(i64 %zBF$cc, i64 %rva85374)                        ; call prim_cons
  %rva85372 = call i64 @prim_cons(i64 %cont83813, i64 %rva85373)                     ; call prim_cons
  %cloptr87912 = inttoptr i64 %zBF$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87913 = getelementptr inbounds i64, i64* %cloptr87912, i64 0                 ; &cloptr87912[0]
  %f87915 = load i64, i64* %i0ptr87913, align 8                                      ; load; *i0ptr87913
  %fptr87914 = inttoptr i64 %f87915 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87914(i64 %zBF$cc, i64 %rva85372)                   ; tail call
  ret void
}


define void @lam87012(i64 %env87013, i64 %rvp85447) {
  %cont83821 = call i64 @prim_car(i64 %rvp85447)                                     ; call prim_car
  %rvp85446 = call i64 @prim_cdr(i64 %rvp85447)                                      ; call prim_cdr
  %oTq$v = call i64 @prim_car(i64 %rvp85446)                                         ; call prim_car
  %rvp85445 = call i64 @prim_cdr(i64 %rvp85446)                                      ; call prim_cdr
  %TFk$lst = call i64 @prim_car(i64 %rvp85445)                                       ; call prim_car
  %na85394 = call i64 @prim_cdr(i64 %rvp85445)                                       ; call prim_cdr
  %arg84299 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %EDl$lst = call i64 @prim_make_45vector(i64 %arg84299, i64 %TFk$lst)               ; call prim_make_45vector
  %cloptr87916 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87917 = getelementptr inbounds i64, i64* %cloptr87916, i64 0                  ; &cloptr87916[0]
  %f87918 = ptrtoint void(i64,i64)* @lam87009 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87918, i64* %eptr87917                                                 ; store fptr
  %arg84302 = ptrtoint i64* %cloptr87916 to i64                                      ; closure cast; i64* -> i64
  %cloptr87919 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87921 = getelementptr inbounds i64, i64* %cloptr87919, i64 1                  ; &eptr87921[1]
  %eptr87922 = getelementptr inbounds i64, i64* %cloptr87919, i64 2                  ; &eptr87922[2]
  %eptr87923 = getelementptr inbounds i64, i64* %cloptr87919, i64 3                  ; &eptr87923[3]
  store i64 %oTq$v, i64* %eptr87921                                                  ; *eptr87921 = %oTq$v
  store i64 %EDl$lst, i64* %eptr87922                                                ; *eptr87922 = %EDl$lst
  store i64 %cont83821, i64* %eptr87923                                              ; *eptr87923 = %cont83821
  %eptr87920 = getelementptr inbounds i64, i64* %cloptr87919, i64 0                  ; &cloptr87919[0]
  %f87924 = ptrtoint void(i64,i64)* @lam87006 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87924, i64* %eptr87920                                                 ; store fptr
  %arg84301 = ptrtoint i64* %cloptr87919 to i64                                      ; closure cast; i64* -> i64
  %cloptr87925 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87927 = getelementptr inbounds i64, i64* %cloptr87925, i64 1                  ; &eptr87927[1]
  %eptr87928 = getelementptr inbounds i64, i64* %cloptr87925, i64 2                  ; &eptr87928[2]
  %eptr87929 = getelementptr inbounds i64, i64* %cloptr87925, i64 3                  ; &eptr87929[3]
  store i64 %oTq$v, i64* %eptr87927                                                  ; *eptr87927 = %oTq$v
  store i64 %EDl$lst, i64* %eptr87928                                                ; *eptr87928 = %EDl$lst
  store i64 %cont83821, i64* %eptr87929                                              ; *eptr87929 = %cont83821
  %eptr87926 = getelementptr inbounds i64, i64* %cloptr87925, i64 0                  ; &cloptr87925[0]
  %f87930 = ptrtoint void(i64,i64)* @lam86989 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87930, i64* %eptr87926                                                 ; store fptr
  %arg84300 = ptrtoint i64* %cloptr87925 to i64                                      ; closure cast; i64* -> i64
  %rva85444 = add i64 0, 0                                                           ; quoted ()
  %rva85443 = call i64 @prim_cons(i64 %arg84300, i64 %rva85444)                      ; call prim_cons
  %rva85442 = call i64 @prim_cons(i64 %arg84301, i64 %rva85443)                      ; call prim_cons
  %cloptr87931 = inttoptr i64 %arg84302 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87932 = getelementptr inbounds i64, i64* %cloptr87931, i64 0                 ; &cloptr87931[0]
  %f87934 = load i64, i64* %i0ptr87932, align 8                                      ; load; *i0ptr87932
  %fptr87933 = inttoptr i64 %f87934 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87933(i64 %arg84302, i64 %rva85442)                 ; tail call
  ret void
}


define void @lam87009(i64 %env87010, i64 %rvp85401) {
  %cont83826 = call i64 @prim_car(i64 %rvp85401)                                     ; call prim_car
  %rvp85400 = call i64 @prim_cdr(i64 %rvp85401)                                      ; call prim_cdr
  %CoG$u = call i64 @prim_car(i64 %rvp85400)                                         ; call prim_car
  %na85396 = call i64 @prim_cdr(i64 %rvp85400)                                       ; call prim_cdr
  %rva85399 = add i64 0, 0                                                           ; quoted ()
  %rva85398 = call i64 @prim_cons(i64 %CoG$u, i64 %rva85399)                         ; call prim_cons
  %rva85397 = call i64 @prim_cons(i64 %cont83826, i64 %rva85398)                     ; call prim_cons
  %cloptr87935 = inttoptr i64 %CoG$u to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr87936 = getelementptr inbounds i64, i64* %cloptr87935, i64 0                 ; &cloptr87935[0]
  %f87938 = load i64, i64* %i0ptr87936, align 8                                      ; load; *i0ptr87936
  %fptr87937 = inttoptr i64 %f87938 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87937(i64 %CoG$u, i64 %rva85397)                    ; tail call
  ret void
}


define void @lam87006(i64 %env87007, i64 %rvp85421) {
  %envptr87939 = inttoptr i64 %env87007 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87940 = getelementptr inbounds i64, i64* %envptr87939, i64 3                ; &envptr87939[3]
  %cont83821 = load i64, i64* %envptr87940, align 8                                  ; load; *envptr87940
  %envptr87941 = inttoptr i64 %env87007 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87942 = getelementptr inbounds i64, i64* %envptr87941, i64 2                ; &envptr87941[2]
  %EDl$lst = load i64, i64* %envptr87942, align 8                                    ; load; *envptr87942
  %envptr87943 = inttoptr i64 %env87007 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87944 = getelementptr inbounds i64, i64* %envptr87943, i64 1                ; &envptr87943[1]
  %oTq$v = load i64, i64* %envptr87944, align 8                                      ; load; *envptr87944
  %_9583822 = call i64 @prim_car(i64 %rvp85421)                                      ; call prim_car
  %rvp85420 = call i64 @prim_cdr(i64 %rvp85421)                                      ; call prim_cdr
  %kIR$cc = call i64 @prim_car(i64 %rvp85420)                                        ; call prim_car
  %na85403 = call i64 @prim_cdr(i64 %rvp85420)                                       ; call prim_cdr
  %arg84306 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83677 = call i64 @prim_vector_45ref(i64 %EDl$lst, i64 %arg84306)                 ; call prim_vector_45ref
  %a83678 = call i64 @prim_null_63(i64 %a83677)                                      ; call prim_null_63
  %cmp87945 = icmp eq i64 %a83678, 15                                                ; false?
  br i1 %cmp87945, label %else87947, label %then87946                                ; if

then87946:
  %arg84310 = add i64 0, 0                                                           ; quoted ()
  %arg84309 = call i64 @const_init_false()                                           ; quoted #f
  %rva85406 = add i64 0, 0                                                           ; quoted ()
  %rva85405 = call i64 @prim_cons(i64 %arg84309, i64 %rva85406)                      ; call prim_cons
  %rva85404 = call i64 @prim_cons(i64 %arg84310, i64 %rva85405)                      ; call prim_cons
  %cloptr87948 = inttoptr i64 %cont83821 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87949 = getelementptr inbounds i64, i64* %cloptr87948, i64 0                 ; &cloptr87948[0]
  %f87951 = load i64, i64* %i0ptr87949, align 8                                      ; load; *i0ptr87949
  %fptr87950 = inttoptr i64 %f87951 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87950(i64 %cont83821, i64 %rva85404)                ; tail call
  ret void

else87947:
  %arg84312 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83679 = call i64 @prim_vector_45ref(i64 %EDl$lst, i64 %arg84312)                 ; call prim_vector_45ref
  %a83680 = call i64 @prim_car(i64 %a83679)                                          ; call prim_car
  %a83681 = call i64 @prim_eqv_63(i64 %a83680, i64 %oTq$v)                           ; call prim_eqv_63
  %cmp87952 = icmp eq i64 %a83681, 15                                                ; false?
  br i1 %cmp87952, label %else87954, label %then87953                                ; if

then87953:
  %arg84317 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83823 = call i64 @prim_vector_45ref(i64 %EDl$lst, i64 %arg84317)           ; call prim_vector_45ref
  %arg84320 = add i64 0, 0                                                           ; quoted ()
  %rva85409 = add i64 0, 0                                                           ; quoted ()
  %rva85408 = call i64 @prim_cons(i64 %retprim83823, i64 %rva85409)                  ; call prim_cons
  %rva85407 = call i64 @prim_cons(i64 %arg84320, i64 %rva85408)                      ; call prim_cons
  %cloptr87955 = inttoptr i64 %cont83821 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87956 = getelementptr inbounds i64, i64* %cloptr87955, i64 0                 ; &cloptr87955[0]
  %f87958 = load i64, i64* %i0ptr87956, align 8                                      ; load; *i0ptr87956
  %fptr87957 = inttoptr i64 %f87958 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87957(i64 %cont83821, i64 %rva85407)                ; tail call
  ret void

else87954:
  %arg84322 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83682 = call i64 @prim_vector_45ref(i64 %EDl$lst, i64 %arg84322)                 ; call prim_vector_45ref
  %a83683 = call i64 @prim_cdr(i64 %a83682)                                          ; call prim_cdr
  %arg84326 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83825 = call i64 @prim_vector_45set_33(i64 %EDl$lst, i64 %arg84326, i64 %a83683); call prim_vector_45set_33
  %cloptr87959 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87961 = getelementptr inbounds i64, i64* %cloptr87959, i64 1                  ; &eptr87961[1]
  %eptr87962 = getelementptr inbounds i64, i64* %cloptr87959, i64 2                  ; &eptr87962[2]
  store i64 %kIR$cc, i64* %eptr87961                                                 ; *eptr87961 = %kIR$cc
  store i64 %cont83821, i64* %eptr87962                                              ; *eptr87962 = %cont83821
  %eptr87960 = getelementptr inbounds i64, i64* %cloptr87959, i64 0                  ; &cloptr87959[0]
  %f87963 = ptrtoint void(i64,i64)* @lam87000 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87963, i64* %eptr87960                                                 ; store fptr
  %arg84330 = ptrtoint i64* %cloptr87959 to i64                                      ; closure cast; i64* -> i64
  %arg84329 = add i64 0, 0                                                           ; quoted ()
  %rva85419 = add i64 0, 0                                                           ; quoted ()
  %rva85418 = call i64 @prim_cons(i64 %retprim83825, i64 %rva85419)                  ; call prim_cons
  %rva85417 = call i64 @prim_cons(i64 %arg84329, i64 %rva85418)                      ; call prim_cons
  %cloptr87964 = inttoptr i64 %arg84330 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87965 = getelementptr inbounds i64, i64* %cloptr87964, i64 0                 ; &cloptr87964[0]
  %f87967 = load i64, i64* %i0ptr87965, align 8                                      ; load; *i0ptr87965
  %fptr87966 = inttoptr i64 %f87967 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87966(i64 %arg84330, i64 %rva85417)                 ; tail call
  ret void
}


define void @lam87000(i64 %env87001, i64 %rvp85416) {
  %envptr87968 = inttoptr i64 %env87001 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87969 = getelementptr inbounds i64, i64* %envptr87968, i64 2                ; &envptr87968[2]
  %cont83821 = load i64, i64* %envptr87969, align 8                                  ; load; *envptr87969
  %envptr87970 = inttoptr i64 %env87001 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87971 = getelementptr inbounds i64, i64* %envptr87970, i64 1                ; &envptr87970[1]
  %kIR$cc = load i64, i64* %envptr87971, align 8                                     ; load; *envptr87971
  %_9583824 = call i64 @prim_car(i64 %rvp85416)                                      ; call prim_car
  %rvp85415 = call i64 @prim_cdr(i64 %rvp85416)                                      ; call prim_cdr
  %FfN$_950 = call i64 @prim_car(i64 %rvp85415)                                      ; call prim_car
  %na85411 = call i64 @prim_cdr(i64 %rvp85415)                                       ; call prim_cdr
  %rva85414 = add i64 0, 0                                                           ; quoted ()
  %rva85413 = call i64 @prim_cons(i64 %kIR$cc, i64 %rva85414)                        ; call prim_cons
  %rva85412 = call i64 @prim_cons(i64 %cont83821, i64 %rva85413)                     ; call prim_cons
  %cloptr87972 = inttoptr i64 %kIR$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87973 = getelementptr inbounds i64, i64* %cloptr87972, i64 0                 ; &cloptr87972[0]
  %f87975 = load i64, i64* %i0ptr87973, align 8                                      ; load; *i0ptr87973
  %fptr87974 = inttoptr i64 %f87975 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87974(i64 %kIR$cc, i64 %rva85412)                   ; tail call
  ret void
}


define void @lam86989(i64 %env86990, i64 %rvp85441) {
  %envptr87976 = inttoptr i64 %env86990 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87977 = getelementptr inbounds i64, i64* %envptr87976, i64 3                ; &envptr87976[3]
  %cont83821 = load i64, i64* %envptr87977, align 8                                  ; load; *envptr87977
  %envptr87978 = inttoptr i64 %env86990 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87979 = getelementptr inbounds i64, i64* %envptr87978, i64 2                ; &envptr87978[2]
  %EDl$lst = load i64, i64* %envptr87979, align 8                                    ; load; *envptr87979
  %envptr87980 = inttoptr i64 %env86990 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87981 = getelementptr inbounds i64, i64* %envptr87980, i64 1                ; &envptr87980[1]
  %oTq$v = load i64, i64* %envptr87981, align 8                                      ; load; *envptr87981
  %_9583822 = call i64 @prim_car(i64 %rvp85441)                                      ; call prim_car
  %rvp85440 = call i64 @prim_cdr(i64 %rvp85441)                                      ; call prim_cdr
  %kIR$cc = call i64 @prim_car(i64 %rvp85440)                                        ; call prim_car
  %na85423 = call i64 @prim_cdr(i64 %rvp85440)                                       ; call prim_cdr
  %arg84334 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83677 = call i64 @prim_vector_45ref(i64 %EDl$lst, i64 %arg84334)                 ; call prim_vector_45ref
  %a83678 = call i64 @prim_null_63(i64 %a83677)                                      ; call prim_null_63
  %cmp87982 = icmp eq i64 %a83678, 15                                                ; false?
  br i1 %cmp87982, label %else87984, label %then87983                                ; if

then87983:
  %arg84338 = add i64 0, 0                                                           ; quoted ()
  %arg84337 = call i64 @const_init_false()                                           ; quoted #f
  %rva85426 = add i64 0, 0                                                           ; quoted ()
  %rva85425 = call i64 @prim_cons(i64 %arg84337, i64 %rva85426)                      ; call prim_cons
  %rva85424 = call i64 @prim_cons(i64 %arg84338, i64 %rva85425)                      ; call prim_cons
  %cloptr87985 = inttoptr i64 %cont83821 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87986 = getelementptr inbounds i64, i64* %cloptr87985, i64 0                 ; &cloptr87985[0]
  %f87988 = load i64, i64* %i0ptr87986, align 8                                      ; load; *i0ptr87986
  %fptr87987 = inttoptr i64 %f87988 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87987(i64 %cont83821, i64 %rva85424)                ; tail call
  ret void

else87984:
  %arg84340 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83679 = call i64 @prim_vector_45ref(i64 %EDl$lst, i64 %arg84340)                 ; call prim_vector_45ref
  %a83680 = call i64 @prim_car(i64 %a83679)                                          ; call prim_car
  %a83681 = call i64 @prim_eqv_63(i64 %a83680, i64 %oTq$v)                           ; call prim_eqv_63
  %cmp87989 = icmp eq i64 %a83681, 15                                                ; false?
  br i1 %cmp87989, label %else87991, label %then87990                                ; if

then87990:
  %arg84345 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83823 = call i64 @prim_vector_45ref(i64 %EDl$lst, i64 %arg84345)           ; call prim_vector_45ref
  %arg84348 = add i64 0, 0                                                           ; quoted ()
  %rva85429 = add i64 0, 0                                                           ; quoted ()
  %rva85428 = call i64 @prim_cons(i64 %retprim83823, i64 %rva85429)                  ; call prim_cons
  %rva85427 = call i64 @prim_cons(i64 %arg84348, i64 %rva85428)                      ; call prim_cons
  %cloptr87992 = inttoptr i64 %cont83821 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87993 = getelementptr inbounds i64, i64* %cloptr87992, i64 0                 ; &cloptr87992[0]
  %f87995 = load i64, i64* %i0ptr87993, align 8                                      ; load; *i0ptr87993
  %fptr87994 = inttoptr i64 %f87995 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87994(i64 %cont83821, i64 %rva85427)                ; tail call
  ret void

else87991:
  %arg84350 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83682 = call i64 @prim_vector_45ref(i64 %EDl$lst, i64 %arg84350)                 ; call prim_vector_45ref
  %a83683 = call i64 @prim_cdr(i64 %a83682)                                          ; call prim_cdr
  %arg84354 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83825 = call i64 @prim_vector_45set_33(i64 %EDl$lst, i64 %arg84354, i64 %a83683); call prim_vector_45set_33
  %cloptr87996 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87998 = getelementptr inbounds i64, i64* %cloptr87996, i64 1                  ; &eptr87998[1]
  %eptr87999 = getelementptr inbounds i64, i64* %cloptr87996, i64 2                  ; &eptr87999[2]
  store i64 %kIR$cc, i64* %eptr87998                                                 ; *eptr87998 = %kIR$cc
  store i64 %cont83821, i64* %eptr87999                                              ; *eptr87999 = %cont83821
  %eptr87997 = getelementptr inbounds i64, i64* %cloptr87996, i64 0                  ; &cloptr87996[0]
  %f88000 = ptrtoint void(i64,i64)* @lam86983 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88000, i64* %eptr87997                                                 ; store fptr
  %arg84358 = ptrtoint i64* %cloptr87996 to i64                                      ; closure cast; i64* -> i64
  %arg84357 = add i64 0, 0                                                           ; quoted ()
  %rva85439 = add i64 0, 0                                                           ; quoted ()
  %rva85438 = call i64 @prim_cons(i64 %retprim83825, i64 %rva85439)                  ; call prim_cons
  %rva85437 = call i64 @prim_cons(i64 %arg84357, i64 %rva85438)                      ; call prim_cons
  %cloptr88001 = inttoptr i64 %arg84358 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88002 = getelementptr inbounds i64, i64* %cloptr88001, i64 0                 ; &cloptr88001[0]
  %f88004 = load i64, i64* %i0ptr88002, align 8                                      ; load; *i0ptr88002
  %fptr88003 = inttoptr i64 %f88004 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88003(i64 %arg84358, i64 %rva85437)                 ; tail call
  ret void
}


define void @lam86983(i64 %env86984, i64 %rvp85436) {
  %envptr88005 = inttoptr i64 %env86984 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88006 = getelementptr inbounds i64, i64* %envptr88005, i64 2                ; &envptr88005[2]
  %cont83821 = load i64, i64* %envptr88006, align 8                                  ; load; *envptr88006
  %envptr88007 = inttoptr i64 %env86984 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88008 = getelementptr inbounds i64, i64* %envptr88007, i64 1                ; &envptr88007[1]
  %kIR$cc = load i64, i64* %envptr88008, align 8                                     ; load; *envptr88008
  %_9583824 = call i64 @prim_car(i64 %rvp85436)                                      ; call prim_car
  %rvp85435 = call i64 @prim_cdr(i64 %rvp85436)                                      ; call prim_cdr
  %FfN$_950 = call i64 @prim_car(i64 %rvp85435)                                      ; call prim_car
  %na85431 = call i64 @prim_cdr(i64 %rvp85435)                                       ; call prim_cdr
  %rva85434 = add i64 0, 0                                                           ; quoted ()
  %rva85433 = call i64 @prim_cons(i64 %kIR$cc, i64 %rva85434)                        ; call prim_cons
  %rva85432 = call i64 @prim_cons(i64 %cont83821, i64 %rva85433)                     ; call prim_cons
  %cloptr88009 = inttoptr i64 %kIR$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88010 = getelementptr inbounds i64, i64* %cloptr88009, i64 0                 ; &cloptr88009[0]
  %f88012 = load i64, i64* %i0ptr88010, align 8                                      ; load; *i0ptr88010
  %fptr88011 = inttoptr i64 %f88012 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88011(i64 %kIR$cc, i64 %rva85432)                   ; tail call
  ret void
}


define void @lam86971(i64 %env86972, i64 %Sgr$args83828) {
  %envptr88013 = inttoptr i64 %env86972 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88014 = getelementptr inbounds i64, i64* %envptr88013, i64 1                ; &envptr88013[1]
  %E2H$_37foldl1 = load i64, i64* %envptr88014, align 8                              ; load; *envptr88014
  %cont83827 = call i64 @prim_car(i64 %Sgr$args83828)                                ; call prim_car
  %Sgr$args = call i64 @prim_cdr(i64 %Sgr$args83828)                                 ; call prim_cdr
  %a83684 = call i64 @prim_null_63(i64 %Sgr$args)                                    ; call prim_null_63
  %cmp88015 = icmp eq i64 %a83684, 15                                                ; false?
  br i1 %cmp88015, label %else88017, label %then88016                                ; if

then88016:
  %arg84366 = add i64 0, 0                                                           ; quoted ()
  %arg84365 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %rva85450 = add i64 0, 0                                                           ; quoted ()
  %rva85449 = call i64 @prim_cons(i64 %arg84365, i64 %rva85450)                      ; call prim_cons
  %rva85448 = call i64 @prim_cons(i64 %arg84366, i64 %rva85449)                      ; call prim_cons
  %cloptr88018 = inttoptr i64 %cont83827 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88019 = getelementptr inbounds i64, i64* %cloptr88018, i64 0                 ; &cloptr88018[0]
  %f88021 = load i64, i64* %i0ptr88019, align 8                                      ; load; *i0ptr88019
  %fptr88020 = inttoptr i64 %f88021 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88020(i64 %cont83827, i64 %rva85448)                ; tail call
  ret void

else88017:
  %a83685 = call i64 @prim_cdr(i64 %Sgr$args)                                        ; call prim_cdr
  %a83686 = call i64 @prim_null_63(i64 %a83685)                                      ; call prim_null_63
  %cmp88022 = icmp eq i64 %a83686, 15                                                ; false?
  br i1 %cmp88022, label %else88024, label %then88023                                ; if

then88023:
  %retprim83829 = call i64 @prim_car(i64 %Sgr$args)                                  ; call prim_car
  %arg84372 = add i64 0, 0                                                           ; quoted ()
  %rva85453 = add i64 0, 0                                                           ; quoted ()
  %rva85452 = call i64 @prim_cons(i64 %retprim83829, i64 %rva85453)                  ; call prim_cons
  %rva85451 = call i64 @prim_cons(i64 %arg84372, i64 %rva85452)                      ; call prim_cons
  %cloptr88025 = inttoptr i64 %cont83827 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88026 = getelementptr inbounds i64, i64* %cloptr88025, i64 0                 ; &cloptr88025[0]
  %f88028 = load i64, i64* %i0ptr88026, align 8                                      ; load; *i0ptr88026
  %fptr88027 = inttoptr i64 %f88028 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88027(i64 %cont83827, i64 %rva85451)                ; tail call
  ret void

else88024:
  %a83687 = call i64 @prim_car(i64 %Sgr$args)                                        ; call prim_car
  %a83688 = call i64 @prim_cdr(i64 %Sgr$args)                                        ; call prim_cdr
  %cloptr88029 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88030 = getelementptr inbounds i64, i64* %cloptr88029, i64 0                  ; &cloptr88029[0]
  %f88031 = ptrtoint void(i64,i64)* @lam86969 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88031, i64* %eptr88030                                                 ; store fptr
  %arg84378 = ptrtoint i64* %cloptr88029 to i64                                      ; closure cast; i64* -> i64
  %rva85466 = add i64 0, 0                                                           ; quoted ()
  %rva85465 = call i64 @prim_cons(i64 %a83688, i64 %rva85466)                        ; call prim_cons
  %rva85464 = call i64 @prim_cons(i64 %a83687, i64 %rva85465)                        ; call prim_cons
  %rva85463 = call i64 @prim_cons(i64 %arg84378, i64 %rva85464)                      ; call prim_cons
  %rva85462 = call i64 @prim_cons(i64 %cont83827, i64 %rva85463)                     ; call prim_cons
  %cloptr88032 = inttoptr i64 %E2H$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr88033 = getelementptr inbounds i64, i64* %cloptr88032, i64 0                 ; &cloptr88032[0]
  %f88035 = load i64, i64* %i0ptr88033, align 8                                      ; load; *i0ptr88033
  %fptr88034 = inttoptr i64 %f88035 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88034(i64 %E2H$_37foldl1, i64 %rva85462)            ; tail call
  ret void
}


define void @lam86969(i64 %env86970, i64 %rvp85461) {
  %cont83830 = call i64 @prim_car(i64 %rvp85461)                                     ; call prim_car
  %rvp85460 = call i64 @prim_cdr(i64 %rvp85461)                                      ; call prim_cdr
  %B3o$n = call i64 @prim_car(i64 %rvp85460)                                         ; call prim_car
  %rvp85459 = call i64 @prim_cdr(i64 %rvp85460)                                      ; call prim_cdr
  %OYU$v = call i64 @prim_car(i64 %rvp85459)                                         ; call prim_car
  %na85455 = call i64 @prim_cdr(i64 %rvp85459)                                       ; call prim_cdr
  %retprim83831 = call i64 @prim__47(i64 %OYU$v, i64 %B3o$n)                         ; call prim__47
  %arg84384 = add i64 0, 0                                                           ; quoted ()
  %rva85458 = add i64 0, 0                                                           ; quoted ()
  %rva85457 = call i64 @prim_cons(i64 %retprim83831, i64 %rva85458)                  ; call prim_cons
  %rva85456 = call i64 @prim_cons(i64 %arg84384, i64 %rva85457)                      ; call prim_cons
  %cloptr88036 = inttoptr i64 %cont83830 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88037 = getelementptr inbounds i64, i64* %cloptr88036, i64 0                 ; &cloptr88036[0]
  %f88039 = load i64, i64* %i0ptr88037, align 8                                      ; load; *i0ptr88037
  %fptr88038 = inttoptr i64 %f88039 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88038(i64 %cont83830, i64 %rva85456)                ; tail call
  ret void
}


define void @lam86959(i64 %env86960, i64 %rvp85473) {
  %cont83832 = call i64 @prim_car(i64 %rvp85473)                                     ; call prim_car
  %rvp85472 = call i64 @prim_cdr(i64 %rvp85473)                                      ; call prim_cdr
  %rPg$x = call i64 @prim_car(i64 %rvp85472)                                         ; call prim_car
  %na85468 = call i64 @prim_cdr(i64 %rvp85472)                                       ; call prim_cdr
  %retprim83833 = call i64 @prim_car(i64 %rPg$x)                                     ; call prim_car
  %arg84388 = add i64 0, 0                                                           ; quoted ()
  %rva85471 = add i64 0, 0                                                           ; quoted ()
  %rva85470 = call i64 @prim_cons(i64 %retprim83833, i64 %rva85471)                  ; call prim_cons
  %rva85469 = call i64 @prim_cons(i64 %arg84388, i64 %rva85470)                      ; call prim_cons
  %cloptr88040 = inttoptr i64 %cont83832 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88041 = getelementptr inbounds i64, i64* %cloptr88040, i64 0                 ; &cloptr88040[0]
  %f88043 = load i64, i64* %i0ptr88041, align 8                                      ; load; *i0ptr88041
  %fptr88042 = inttoptr i64 %f88043 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88042(i64 %cont83832, i64 %rva85469)                ; tail call
  ret void
}


define void @lam86955(i64 %env86956, i64 %rvp85480) {
  %cont83834 = call i64 @prim_car(i64 %rvp85480)                                     ; call prim_car
  %rvp85479 = call i64 @prim_cdr(i64 %rvp85480)                                      ; call prim_cdr
  %IKy$x = call i64 @prim_car(i64 %rvp85479)                                         ; call prim_car
  %na85475 = call i64 @prim_cdr(i64 %rvp85479)                                       ; call prim_cdr
  %a83689 = call i64 @prim_cdr(i64 %IKy$x)                                           ; call prim_cdr
  %retprim83835 = call i64 @prim_car(i64 %a83689)                                    ; call prim_car
  %arg84393 = add i64 0, 0                                                           ; quoted ()
  %rva85478 = add i64 0, 0                                                           ; quoted ()
  %rva85477 = call i64 @prim_cons(i64 %retprim83835, i64 %rva85478)                  ; call prim_cons
  %rva85476 = call i64 @prim_cons(i64 %arg84393, i64 %rva85477)                      ; call prim_cons
  %cloptr88044 = inttoptr i64 %cont83834 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88045 = getelementptr inbounds i64, i64* %cloptr88044, i64 0                 ; &cloptr88044[0]
  %f88047 = load i64, i64* %i0ptr88045, align 8                                      ; load; *i0ptr88045
  %fptr88046 = inttoptr i64 %f88047 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88046(i64 %cont83834, i64 %rva85476)                ; tail call
  ret void
}


define void @lam86951(i64 %env86952, i64 %rvp85487) {
  %cont83836 = call i64 @prim_car(i64 %rvp85487)                                     ; call prim_car
  %rvp85486 = call i64 @prim_cdr(i64 %rvp85487)                                      ; call prim_cdr
  %PPA$x = call i64 @prim_car(i64 %rvp85486)                                         ; call prim_car
  %na85482 = call i64 @prim_cdr(i64 %rvp85486)                                       ; call prim_cdr
  %a83690 = call i64 @prim_cdr(i64 %PPA$x)                                           ; call prim_cdr
  %a83691 = call i64 @prim_cdr(i64 %a83690)                                          ; call prim_cdr
  %retprim83837 = call i64 @prim_car(i64 %a83691)                                    ; call prim_car
  %arg84399 = add i64 0, 0                                                           ; quoted ()
  %rva85485 = add i64 0, 0                                                           ; quoted ()
  %rva85484 = call i64 @prim_cons(i64 %retprim83837, i64 %rva85485)                  ; call prim_cons
  %rva85483 = call i64 @prim_cons(i64 %arg84399, i64 %rva85484)                      ; call prim_cons
  %cloptr88048 = inttoptr i64 %cont83836 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88049 = getelementptr inbounds i64, i64* %cloptr88048, i64 0                 ; &cloptr88048[0]
  %f88051 = load i64, i64* %i0ptr88049, align 8                                      ; load; *i0ptr88049
  %fptr88050 = inttoptr i64 %f88051 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88050(i64 %cont83836, i64 %rva85483)                ; tail call
  ret void
}


define void @lam86947(i64 %env86948, i64 %rvp85494) {
  %cont83838 = call i64 @prim_car(i64 %rvp85494)                                     ; call prim_car
  %rvp85493 = call i64 @prim_cdr(i64 %rvp85494)                                      ; call prim_cdr
  %VSq$x = call i64 @prim_car(i64 %rvp85493)                                         ; call prim_car
  %na85489 = call i64 @prim_cdr(i64 %rvp85493)                                       ; call prim_cdr
  %a83692 = call i64 @prim_cdr(i64 %VSq$x)                                           ; call prim_cdr
  %a83693 = call i64 @prim_cdr(i64 %a83692)                                          ; call prim_cdr
  %a83694 = call i64 @prim_cdr(i64 %a83693)                                          ; call prim_cdr
  %retprim83839 = call i64 @prim_car(i64 %a83694)                                    ; call prim_car
  %arg84406 = add i64 0, 0                                                           ; quoted ()
  %rva85492 = add i64 0, 0                                                           ; quoted ()
  %rva85491 = call i64 @prim_cons(i64 %retprim83839, i64 %rva85492)                  ; call prim_cons
  %rva85490 = call i64 @prim_cons(i64 %arg84406, i64 %rva85491)                      ; call prim_cons
  %cloptr88052 = inttoptr i64 %cont83838 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88053 = getelementptr inbounds i64, i64* %cloptr88052, i64 0                 ; &cloptr88052[0]
  %f88055 = load i64, i64* %i0ptr88053, align 8                                      ; load; *i0ptr88053
  %fptr88054 = inttoptr i64 %f88055 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88054(i64 %cont83838, i64 %rva85490)                ; tail call
  ret void
}


define void @lam86943(i64 %env86944, i64 %rvp85504) {
  %cont83840 = call i64 @prim_car(i64 %rvp85504)                                     ; call prim_car
  %rvp85503 = call i64 @prim_cdr(i64 %rvp85504)                                      ; call prim_cdr
  %jxN$p = call i64 @prim_car(i64 %rvp85503)                                         ; call prim_car
  %na85496 = call i64 @prim_cdr(i64 %rvp85503)                                       ; call prim_cdr
  %a83695 = call i64 @prim_cons_63(i64 %jxN$p)                                       ; call prim_cons_63
  %cmp88056 = icmp eq i64 %a83695, 15                                                ; false?
  br i1 %cmp88056, label %else88058, label %then88057                                ; if

then88057:
  %a83696 = call i64 @prim_car(i64 %jxN$p)                                           ; call prim_car
  %arg84410 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym88059, i32 0, i32 0)); quoted string
  %retprim83841 = call i64 @prim_eq_63(i64 %a83696, i64 %arg84410)                   ; call prim_eq_63
  %arg84413 = add i64 0, 0                                                           ; quoted ()
  %rva85499 = add i64 0, 0                                                           ; quoted ()
  %rva85498 = call i64 @prim_cons(i64 %retprim83841, i64 %rva85499)                  ; call prim_cons
  %rva85497 = call i64 @prim_cons(i64 %arg84413, i64 %rva85498)                      ; call prim_cons
  %cloptr88060 = inttoptr i64 %cont83840 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88061 = getelementptr inbounds i64, i64* %cloptr88060, i64 0                 ; &cloptr88060[0]
  %f88063 = load i64, i64* %i0ptr88061, align 8                                      ; load; *i0ptr88061
  %fptr88062 = inttoptr i64 %f88063 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88062(i64 %cont83840, i64 %rva85497)                ; tail call
  ret void

else88058:
  %arg84416 = add i64 0, 0                                                           ; quoted ()
  %arg84415 = call i64 @const_init_false()                                           ; quoted #f
  %rva85502 = add i64 0, 0                                                           ; quoted ()
  %rva85501 = call i64 @prim_cons(i64 %arg84415, i64 %rva85502)                      ; call prim_cons
  %rva85500 = call i64 @prim_cons(i64 %arg84416, i64 %rva85501)                      ; call prim_cons
  %cloptr88064 = inttoptr i64 %cont83840 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88065 = getelementptr inbounds i64, i64* %cloptr88064, i64 0                 ; &cloptr88064[0]
  %f88067 = load i64, i64* %i0ptr88065, align 8                                      ; load; *i0ptr88065
  %fptr88066 = inttoptr i64 %f88067 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88066(i64 %cont83840, i64 %rva85500)                ; tail call
  ret void
}


define void @lam86935(i64 %env86936, i64 %MvY$lst83933) {
  %cont83932 = call i64 @prim_car(i64 %MvY$lst83933)                                 ; call prim_car
  %MvY$lst = call i64 @prim_cdr(i64 %MvY$lst83933)                                   ; call prim_cdr
  %arg84423 = add i64 0, 0                                                           ; quoted ()
  %rva85507 = add i64 0, 0                                                           ; quoted ()
  %rva85506 = call i64 @prim_cons(i64 %MvY$lst, i64 %rva85507)                       ; call prim_cons
  %rva85505 = call i64 @prim_cons(i64 %arg84423, i64 %rva85506)                      ; call prim_cons
  %cloptr88068 = inttoptr i64 %cont83932 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88069 = getelementptr inbounds i64, i64* %cloptr88068, i64 0                 ; &cloptr88068[0]
  %f88071 = load i64, i64* %i0ptr88069, align 8                                      ; load; *i0ptr88069
  %fptr88070 = inttoptr i64 %f88071 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88070(i64 %cont83932, i64 %rva85505)                ; tail call
  ret void
}


define void @lam86931(i64 %env86932, i64 %rvp86009) {
  %envptr88072 = inttoptr i64 %env86932 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88073 = getelementptr inbounds i64, i64* %envptr88072, i64 4                ; &envptr88072[4]
  %zle$_37drop = load i64, i64* %envptr88073, align 8                                ; load; *envptr88073
  %envptr88074 = inttoptr i64 %env86932 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88075 = getelementptr inbounds i64, i64* %envptr88074, i64 3                ; &envptr88074[3]
  %ruB$_37_62 = load i64, i64* %envptr88075, align 8                                 ; load; *envptr88075
  %envptr88076 = inttoptr i64 %env86932 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88077 = getelementptr inbounds i64, i64* %envptr88076, i64 2                ; &envptr88076[2]
  %C6M$_37append = load i64, i64* %envptr88077, align 8                              ; load; *envptr88077
  %envptr88078 = inttoptr i64 %env86932 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88079 = getelementptr inbounds i64, i64* %envptr88078, i64 1                ; &envptr88078[1]
  %cwM$_37length = load i64, i64* %envptr88079, align 8                              ; load; *envptr88079
  %_9583842 = call i64 @prim_car(i64 %rvp86009)                                      ; call prim_car
  %rvp86008 = call i64 @prim_cdr(i64 %rvp86009)                                      ; call prim_cdr
  %qvY$_37raise_45handler = call i64 @prim_car(i64 %rvp86008)                        ; call prim_car
  %na85509 = call i64 @prim_cdr(i64 %rvp86008)                                       ; call prim_cdr
  %cloptr88080 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88081 = getelementptr inbounds i64, i64* %cloptr88080, i64 0                  ; &cloptr88080[0]
  %f88082 = ptrtoint void(i64,i64)* @lam86929 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88082, i64* %eptr88081                                                 ; store fptr
  %arg84426 = ptrtoint i64* %cloptr88080 to i64                                      ; closure cast; i64* -> i64
  %cloptr88083 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88085 = getelementptr inbounds i64, i64* %cloptr88083, i64 1                  ; &eptr88085[1]
  %eptr88086 = getelementptr inbounds i64, i64* %cloptr88083, i64 2                  ; &eptr88086[2]
  %eptr88087 = getelementptr inbounds i64, i64* %cloptr88083, i64 3                  ; &eptr88087[3]
  %eptr88088 = getelementptr inbounds i64, i64* %cloptr88083, i64 4                  ; &eptr88088[4]
  store i64 %cwM$_37length, i64* %eptr88085                                          ; *eptr88085 = %cwM$_37length
  store i64 %C6M$_37append, i64* %eptr88086                                          ; *eptr88086 = %C6M$_37append
  store i64 %ruB$_37_62, i64* %eptr88087                                             ; *eptr88087 = %ruB$_37_62
  store i64 %zle$_37drop, i64* %eptr88088                                            ; *eptr88088 = %zle$_37drop
  %eptr88084 = getelementptr inbounds i64, i64* %cloptr88083, i64 0                  ; &cloptr88083[0]
  %f88089 = ptrtoint void(i64,i64)* @lam86925 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88089, i64* %eptr88084                                                 ; store fptr
  %arg84425 = ptrtoint i64* %cloptr88083 to i64                                      ; closure cast; i64* -> i64
  %rva86007 = add i64 0, 0                                                           ; quoted ()
  %rva86006 = call i64 @prim_cons(i64 %arg84425, i64 %rva86007)                      ; call prim_cons
  %cloptr88090 = inttoptr i64 %arg84426 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88091 = getelementptr inbounds i64, i64* %cloptr88090, i64 0                 ; &cloptr88090[0]
  %f88093 = load i64, i64* %i0ptr88091, align 8                                      ; load; *i0ptr88091
  %fptr88092 = inttoptr i64 %f88093 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88092(i64 %arg84426, i64 %rva86006)                 ; tail call
  ret void
}


define void @lam86929(i64 %env86930, i64 %fSH$lst83931) {
  %cont83930 = call i64 @prim_car(i64 %fSH$lst83931)                                 ; call prim_car
  %fSH$lst = call i64 @prim_cdr(i64 %fSH$lst83931)                                   ; call prim_cdr
  %arg84430 = add i64 0, 0                                                           ; quoted ()
  %rva85512 = add i64 0, 0                                                           ; quoted ()
  %rva85511 = call i64 @prim_cons(i64 %fSH$lst, i64 %rva85512)                       ; call prim_cons
  %rva85510 = call i64 @prim_cons(i64 %arg84430, i64 %rva85511)                      ; call prim_cons
  %cloptr88094 = inttoptr i64 %cont83930 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88095 = getelementptr inbounds i64, i64* %cloptr88094, i64 0                 ; &cloptr88094[0]
  %f88097 = load i64, i64* %i0ptr88095, align 8                                      ; load; *i0ptr88095
  %fptr88096 = inttoptr i64 %f88097 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88096(i64 %cont83930, i64 %rva85510)                ; tail call
  ret void
}


define void @lam86925(i64 %env86926, i64 %rvp86005) {
  %envptr88098 = inttoptr i64 %env86926 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88099 = getelementptr inbounds i64, i64* %envptr88098, i64 4                ; &envptr88098[4]
  %zle$_37drop = load i64, i64* %envptr88099, align 8                                ; load; *envptr88099
  %envptr88100 = inttoptr i64 %env86926 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88101 = getelementptr inbounds i64, i64* %envptr88100, i64 3                ; &envptr88100[3]
  %ruB$_37_62 = load i64, i64* %envptr88101, align 8                                 ; load; *envptr88101
  %envptr88102 = inttoptr i64 %env86926 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88103 = getelementptr inbounds i64, i64* %envptr88102, i64 2                ; &envptr88102[2]
  %C6M$_37append = load i64, i64* %envptr88103, align 8                              ; load; *envptr88103
  %envptr88104 = inttoptr i64 %env86926 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88105 = getelementptr inbounds i64, i64* %envptr88104, i64 1                ; &envptr88104[1]
  %cwM$_37length = load i64, i64* %envptr88105, align 8                              ; load; *envptr88105
  %_9583928 = call i64 @prim_car(i64 %rvp86005)                                      ; call prim_car
  %rvp86004 = call i64 @prim_cdr(i64 %rvp86005)                                      ; call prim_cdr
  %a83697 = call i64 @prim_car(i64 %rvp86004)                                        ; call prim_car
  %na85514 = call i64 @prim_cdr(i64 %rvp86004)                                       ; call prim_cdr
  %arg84433 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83929 = call i64 @prim_make_45vector(i64 %arg84433, i64 %a83697)           ; call prim_make_45vector
  %cloptr88106 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88108 = getelementptr inbounds i64, i64* %cloptr88106, i64 1                  ; &eptr88108[1]
  %eptr88109 = getelementptr inbounds i64, i64* %cloptr88106, i64 2                  ; &eptr88109[2]
  %eptr88110 = getelementptr inbounds i64, i64* %cloptr88106, i64 3                  ; &eptr88110[3]
  %eptr88111 = getelementptr inbounds i64, i64* %cloptr88106, i64 4                  ; &eptr88111[4]
  store i64 %cwM$_37length, i64* %eptr88108                                          ; *eptr88108 = %cwM$_37length
  store i64 %C6M$_37append, i64* %eptr88109                                          ; *eptr88109 = %C6M$_37append
  store i64 %ruB$_37_62, i64* %eptr88110                                             ; *eptr88110 = %ruB$_37_62
  store i64 %zle$_37drop, i64* %eptr88111                                            ; *eptr88111 = %zle$_37drop
  %eptr88107 = getelementptr inbounds i64, i64* %cloptr88106, i64 0                  ; &cloptr88106[0]
  %f88112 = ptrtoint void(i64,i64)* @lam86922 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88112, i64* %eptr88107                                                 ; store fptr
  %arg84436 = ptrtoint i64* %cloptr88106 to i64                                      ; closure cast; i64* -> i64
  %arg84435 = add i64 0, 0                                                           ; quoted ()
  %rva86003 = add i64 0, 0                                                           ; quoted ()
  %rva86002 = call i64 @prim_cons(i64 %retprim83929, i64 %rva86003)                  ; call prim_cons
  %rva86001 = call i64 @prim_cons(i64 %arg84435, i64 %rva86002)                      ; call prim_cons
  %cloptr88113 = inttoptr i64 %arg84436 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88114 = getelementptr inbounds i64, i64* %cloptr88113, i64 0                 ; &cloptr88113[0]
  %f88116 = load i64, i64* %i0ptr88114, align 8                                      ; load; *i0ptr88114
  %fptr88115 = inttoptr i64 %f88116 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88115(i64 %arg84436, i64 %rva86001)                 ; tail call
  ret void
}


define void @lam86922(i64 %env86923, i64 %rvp86000) {
  %envptr88117 = inttoptr i64 %env86923 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88118 = getelementptr inbounds i64, i64* %envptr88117, i64 4                ; &envptr88117[4]
  %zle$_37drop = load i64, i64* %envptr88118, align 8                                ; load; *envptr88118
  %envptr88119 = inttoptr i64 %env86923 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88120 = getelementptr inbounds i64, i64* %envptr88119, i64 3                ; &envptr88119[3]
  %ruB$_37_62 = load i64, i64* %envptr88120, align 8                                 ; load; *envptr88120
  %envptr88121 = inttoptr i64 %env86923 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88122 = getelementptr inbounds i64, i64* %envptr88121, i64 2                ; &envptr88121[2]
  %C6M$_37append = load i64, i64* %envptr88122, align 8                              ; load; *envptr88122
  %envptr88123 = inttoptr i64 %env86923 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88124 = getelementptr inbounds i64, i64* %envptr88123, i64 1                ; &envptr88123[1]
  %cwM$_37length = load i64, i64* %envptr88124, align 8                              ; load; *envptr88124
  %_9583843 = call i64 @prim_car(i64 %rvp86000)                                      ; call prim_car
  %rvp85999 = call i64 @prim_cdr(i64 %rvp86000)                                      ; call prim_cdr
  %knD$_37wind_45stack = call i64 @prim_car(i64 %rvp85999)                           ; call prim_car
  %na85516 = call i64 @prim_cdr(i64 %rvp85999)                                       ; call prim_cdr
  %cloptr88125 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88127 = getelementptr inbounds i64, i64* %cloptr88125, i64 1                  ; &eptr88127[1]
  %eptr88128 = getelementptr inbounds i64, i64* %cloptr88125, i64 2                  ; &eptr88128[2]
  %eptr88129 = getelementptr inbounds i64, i64* %cloptr88125, i64 3                  ; &eptr88129[3]
  store i64 %cwM$_37length, i64* %eptr88127                                          ; *eptr88127 = %cwM$_37length
  store i64 %ruB$_37_62, i64* %eptr88128                                             ; *eptr88128 = %ruB$_37_62
  store i64 %zle$_37drop, i64* %eptr88129                                            ; *eptr88129 = %zle$_37drop
  %eptr88126 = getelementptr inbounds i64, i64* %cloptr88125, i64 0                  ; &cloptr88125[0]
  %f88130 = ptrtoint void(i64,i64)* @lam86920 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88130, i64* %eptr88126                                                 ; store fptr
  %pBD$_37common_45tail = ptrtoint i64* %cloptr88125 to i64                          ; closure cast; i64* -> i64
  %cloptr88131 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr88133 = getelementptr inbounds i64, i64* %cloptr88131, i64 1                  ; &eptr88133[1]
  %eptr88134 = getelementptr inbounds i64, i64* %cloptr88131, i64 2                  ; &eptr88134[2]
  store i64 %pBD$_37common_45tail, i64* %eptr88133                                   ; *eptr88133 = %pBD$_37common_45tail
  store i64 %knD$_37wind_45stack, i64* %eptr88134                                    ; *eptr88134 = %knD$_37wind_45stack
  %eptr88132 = getelementptr inbounds i64, i64* %cloptr88131, i64 0                  ; &cloptr88131[0]
  %f88135 = ptrtoint void(i64,i64)* @lam86858 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88135, i64* %eptr88132                                                 ; store fptr
  %Wtx$_37do_45wind = ptrtoint i64* %cloptr88131 to i64                              ; closure cast; i64* -> i64
  %cloptr88136 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88137 = getelementptr inbounds i64, i64* %cloptr88136, i64 0                  ; &cloptr88136[0]
  %f88138 = ptrtoint void(i64,i64)* @lam86791 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88138, i64* %eptr88137                                                 ; store fptr
  %arg84622 = ptrtoint i64* %cloptr88136 to i64                                      ; closure cast; i64* -> i64
  %cloptr88139 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr88141 = getelementptr inbounds i64, i64* %cloptr88139, i64 1                  ; &eptr88141[1]
  store i64 %C6M$_37append, i64* %eptr88141                                          ; *eptr88141 = %C6M$_37append
  %eptr88140 = getelementptr inbounds i64, i64* %cloptr88139, i64 0                  ; &cloptr88139[0]
  %f88142 = ptrtoint void(i64,i64)* @lam86787 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88142, i64* %eptr88140                                                 ; store fptr
  %arg84621 = ptrtoint i64* %cloptr88139 to i64                                      ; closure cast; i64* -> i64
  %rva85998 = add i64 0, 0                                                           ; quoted ()
  %rva85997 = call i64 @prim_cons(i64 %arg84621, i64 %rva85998)                      ; call prim_cons
  %cloptr88143 = inttoptr i64 %arg84622 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88144 = getelementptr inbounds i64, i64* %cloptr88143, i64 0                 ; &cloptr88143[0]
  %f88146 = load i64, i64* %i0ptr88144, align 8                                      ; load; *i0ptr88144
  %fptr88145 = inttoptr i64 %f88146 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88145(i64 %arg84622, i64 %rva85997)                 ; tail call
  ret void
}


define void @lam86920(i64 %env86921, i64 %rvp85648) {
  %envptr88147 = inttoptr i64 %env86921 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88148 = getelementptr inbounds i64, i64* %envptr88147, i64 3                ; &envptr88147[3]
  %zle$_37drop = load i64, i64* %envptr88148, align 8                                ; load; *envptr88148
  %envptr88149 = inttoptr i64 %env86921 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88150 = getelementptr inbounds i64, i64* %envptr88149, i64 2                ; &envptr88149[2]
  %ruB$_37_62 = load i64, i64* %envptr88150, align 8                                 ; load; *envptr88150
  %envptr88151 = inttoptr i64 %env86921 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88152 = getelementptr inbounds i64, i64* %envptr88151, i64 1                ; &envptr88151[1]
  %cwM$_37length = load i64, i64* %envptr88152, align 8                              ; load; *envptr88152
  %cont83844 = call i64 @prim_car(i64 %rvp85648)                                     ; call prim_car
  %rvp85647 = call i64 @prim_cdr(i64 %rvp85648)                                      ; call prim_cdr
  %LLl$x = call i64 @prim_car(i64 %rvp85647)                                         ; call prim_car
  %rvp85646 = call i64 @prim_cdr(i64 %rvp85647)                                      ; call prim_cdr
  %J8q$y = call i64 @prim_car(i64 %rvp85646)                                         ; call prim_car
  %na85518 = call i64 @prim_cdr(i64 %rvp85646)                                       ; call prim_cdr
  %cloptr88153 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr88155 = getelementptr inbounds i64, i64* %cloptr88153, i64 1                  ; &eptr88155[1]
  %eptr88156 = getelementptr inbounds i64, i64* %cloptr88153, i64 2                  ; &eptr88156[2]
  %eptr88157 = getelementptr inbounds i64, i64* %cloptr88153, i64 3                  ; &eptr88157[3]
  %eptr88158 = getelementptr inbounds i64, i64* %cloptr88153, i64 4                  ; &eptr88158[4]
  %eptr88159 = getelementptr inbounds i64, i64* %cloptr88153, i64 5                  ; &eptr88159[5]
  %eptr88160 = getelementptr inbounds i64, i64* %cloptr88153, i64 6                  ; &eptr88160[6]
  store i64 %cwM$_37length, i64* %eptr88155                                          ; *eptr88155 = %cwM$_37length
  store i64 %J8q$y, i64* %eptr88156                                                  ; *eptr88156 = %J8q$y
  store i64 %cont83844, i64* %eptr88157                                              ; *eptr88157 = %cont83844
  store i64 %ruB$_37_62, i64* %eptr88158                                             ; *eptr88158 = %ruB$_37_62
  store i64 %zle$_37drop, i64* %eptr88159                                            ; *eptr88159 = %zle$_37drop
  store i64 %LLl$x, i64* %eptr88160                                                  ; *eptr88160 = %LLl$x
  %eptr88154 = getelementptr inbounds i64, i64* %cloptr88153, i64 0                  ; &cloptr88153[0]
  %f88161 = ptrtoint void(i64,i64)* @lam86918 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88161, i64* %eptr88154                                                 ; store fptr
  %arg84438 = ptrtoint i64* %cloptr88153 to i64                                      ; closure cast; i64* -> i64
  %rva85645 = add i64 0, 0                                                           ; quoted ()
  %rva85644 = call i64 @prim_cons(i64 %LLl$x, i64 %rva85645)                         ; call prim_cons
  %rva85643 = call i64 @prim_cons(i64 %arg84438, i64 %rva85644)                      ; call prim_cons
  %cloptr88162 = inttoptr i64 %cwM$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr88163 = getelementptr inbounds i64, i64* %cloptr88162, i64 0                 ; &cloptr88162[0]
  %f88165 = load i64, i64* %i0ptr88163, align 8                                      ; load; *i0ptr88163
  %fptr88164 = inttoptr i64 %f88165 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88164(i64 %cwM$_37length, i64 %rva85643)            ; tail call
  ret void
}


define void @lam86918(i64 %env86919, i64 %rvp85642) {
  %envptr88166 = inttoptr i64 %env86919 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88167 = getelementptr inbounds i64, i64* %envptr88166, i64 6                ; &envptr88166[6]
  %LLl$x = load i64, i64* %envptr88167, align 8                                      ; load; *envptr88167
  %envptr88168 = inttoptr i64 %env86919 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88169 = getelementptr inbounds i64, i64* %envptr88168, i64 5                ; &envptr88168[5]
  %zle$_37drop = load i64, i64* %envptr88169, align 8                                ; load; *envptr88169
  %envptr88170 = inttoptr i64 %env86919 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88171 = getelementptr inbounds i64, i64* %envptr88170, i64 4                ; &envptr88170[4]
  %ruB$_37_62 = load i64, i64* %envptr88171, align 8                                 ; load; *envptr88171
  %envptr88172 = inttoptr i64 %env86919 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88173 = getelementptr inbounds i64, i64* %envptr88172, i64 3                ; &envptr88172[3]
  %cont83844 = load i64, i64* %envptr88173, align 8                                  ; load; *envptr88173
  %envptr88174 = inttoptr i64 %env86919 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88175 = getelementptr inbounds i64, i64* %envptr88174, i64 2                ; &envptr88174[2]
  %J8q$y = load i64, i64* %envptr88175, align 8                                      ; load; *envptr88175
  %envptr88176 = inttoptr i64 %env86919 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88177 = getelementptr inbounds i64, i64* %envptr88176, i64 1                ; &envptr88176[1]
  %cwM$_37length = load i64, i64* %envptr88177, align 8                              ; load; *envptr88177
  %_9583845 = call i64 @prim_car(i64 %rvp85642)                                      ; call prim_car
  %rvp85641 = call i64 @prim_cdr(i64 %rvp85642)                                      ; call prim_cdr
  %e3g$lx = call i64 @prim_car(i64 %rvp85641)                                        ; call prim_car
  %na85520 = call i64 @prim_cdr(i64 %rvp85641)                                       ; call prim_cdr
  %cloptr88178 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr88180 = getelementptr inbounds i64, i64* %cloptr88178, i64 1                  ; &eptr88180[1]
  %eptr88181 = getelementptr inbounds i64, i64* %cloptr88178, i64 2                  ; &eptr88181[2]
  %eptr88182 = getelementptr inbounds i64, i64* %cloptr88178, i64 3                  ; &eptr88182[3]
  %eptr88183 = getelementptr inbounds i64, i64* %cloptr88178, i64 4                  ; &eptr88183[4]
  %eptr88184 = getelementptr inbounds i64, i64* %cloptr88178, i64 5                  ; &eptr88184[5]
  %eptr88185 = getelementptr inbounds i64, i64* %cloptr88178, i64 6                  ; &eptr88185[6]
  store i64 %J8q$y, i64* %eptr88180                                                  ; *eptr88180 = %J8q$y
  store i64 %cont83844, i64* %eptr88181                                              ; *eptr88181 = %cont83844
  store i64 %e3g$lx, i64* %eptr88182                                                 ; *eptr88182 = %e3g$lx
  store i64 %ruB$_37_62, i64* %eptr88183                                             ; *eptr88183 = %ruB$_37_62
  store i64 %zle$_37drop, i64* %eptr88184                                            ; *eptr88184 = %zle$_37drop
  store i64 %LLl$x, i64* %eptr88185                                                  ; *eptr88185 = %LLl$x
  %eptr88179 = getelementptr inbounds i64, i64* %cloptr88178, i64 0                  ; &cloptr88178[0]
  %f88186 = ptrtoint void(i64,i64)* @lam86916 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88186, i64* %eptr88179                                                 ; store fptr
  %arg84441 = ptrtoint i64* %cloptr88178 to i64                                      ; closure cast; i64* -> i64
  %rva85640 = add i64 0, 0                                                           ; quoted ()
  %rva85639 = call i64 @prim_cons(i64 %J8q$y, i64 %rva85640)                         ; call prim_cons
  %rva85638 = call i64 @prim_cons(i64 %arg84441, i64 %rva85639)                      ; call prim_cons
  %cloptr88187 = inttoptr i64 %cwM$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr88188 = getelementptr inbounds i64, i64* %cloptr88187, i64 0                 ; &cloptr88187[0]
  %f88190 = load i64, i64* %i0ptr88188, align 8                                      ; load; *i0ptr88188
  %fptr88189 = inttoptr i64 %f88190 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88189(i64 %cwM$_37length, i64 %rva85638)            ; tail call
  ret void
}


define void @lam86916(i64 %env86917, i64 %rvp85637) {
  %envptr88191 = inttoptr i64 %env86917 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88192 = getelementptr inbounds i64, i64* %envptr88191, i64 6                ; &envptr88191[6]
  %LLl$x = load i64, i64* %envptr88192, align 8                                      ; load; *envptr88192
  %envptr88193 = inttoptr i64 %env86917 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88194 = getelementptr inbounds i64, i64* %envptr88193, i64 5                ; &envptr88193[5]
  %zle$_37drop = load i64, i64* %envptr88194, align 8                                ; load; *envptr88194
  %envptr88195 = inttoptr i64 %env86917 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88196 = getelementptr inbounds i64, i64* %envptr88195, i64 4                ; &envptr88195[4]
  %ruB$_37_62 = load i64, i64* %envptr88196, align 8                                 ; load; *envptr88196
  %envptr88197 = inttoptr i64 %env86917 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88198 = getelementptr inbounds i64, i64* %envptr88197, i64 3                ; &envptr88197[3]
  %e3g$lx = load i64, i64* %envptr88198, align 8                                     ; load; *envptr88198
  %envptr88199 = inttoptr i64 %env86917 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88200 = getelementptr inbounds i64, i64* %envptr88199, i64 2                ; &envptr88199[2]
  %cont83844 = load i64, i64* %envptr88200, align 8                                  ; load; *envptr88200
  %envptr88201 = inttoptr i64 %env86917 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88202 = getelementptr inbounds i64, i64* %envptr88201, i64 1                ; &envptr88201[1]
  %J8q$y = load i64, i64* %envptr88202, align 8                                      ; load; *envptr88202
  %_9583846 = call i64 @prim_car(i64 %rvp85637)                                      ; call prim_car
  %rvp85636 = call i64 @prim_cdr(i64 %rvp85637)                                      ; call prim_cdr
  %EuO$ly = call i64 @prim_car(i64 %rvp85636)                                        ; call prim_car
  %na85522 = call i64 @prim_cdr(i64 %rvp85636)                                       ; call prim_cdr
  %cloptr88203 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88204 = getelementptr inbounds i64, i64* %cloptr88203, i64 0                  ; &cloptr88203[0]
  %f88205 = ptrtoint void(i64,i64)* @lam86914 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88205, i64* %eptr88204                                                 ; store fptr
  %arg84444 = ptrtoint i64* %cloptr88203 to i64                                      ; closure cast; i64* -> i64
  %cloptr88206 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr88208 = getelementptr inbounds i64, i64* %cloptr88206, i64 1                  ; &eptr88208[1]
  %eptr88209 = getelementptr inbounds i64, i64* %cloptr88206, i64 2                  ; &eptr88209[2]
  %eptr88210 = getelementptr inbounds i64, i64* %cloptr88206, i64 3                  ; &eptr88210[3]
  %eptr88211 = getelementptr inbounds i64, i64* %cloptr88206, i64 4                  ; &eptr88211[4]
  %eptr88212 = getelementptr inbounds i64, i64* %cloptr88206, i64 5                  ; &eptr88212[5]
  %eptr88213 = getelementptr inbounds i64, i64* %cloptr88206, i64 6                  ; &eptr88213[6]
  %eptr88214 = getelementptr inbounds i64, i64* %cloptr88206, i64 7                  ; &eptr88214[7]
  store i64 %EuO$ly, i64* %eptr88208                                                 ; *eptr88208 = %EuO$ly
  store i64 %J8q$y, i64* %eptr88209                                                  ; *eptr88209 = %J8q$y
  store i64 %cont83844, i64* %eptr88210                                              ; *eptr88210 = %cont83844
  store i64 %e3g$lx, i64* %eptr88211                                                 ; *eptr88211 = %e3g$lx
  store i64 %ruB$_37_62, i64* %eptr88212                                             ; *eptr88212 = %ruB$_37_62
  store i64 %zle$_37drop, i64* %eptr88213                                            ; *eptr88213 = %zle$_37drop
  store i64 %LLl$x, i64* %eptr88214                                                  ; *eptr88214 = %LLl$x
  %eptr88207 = getelementptr inbounds i64, i64* %cloptr88206, i64 0                  ; &cloptr88206[0]
  %f88215 = ptrtoint void(i64,i64)* @lam86910 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88215, i64* %eptr88207                                                 ; store fptr
  %arg84443 = ptrtoint i64* %cloptr88206 to i64                                      ; closure cast; i64* -> i64
  %rva85635 = add i64 0, 0                                                           ; quoted ()
  %rva85634 = call i64 @prim_cons(i64 %arg84443, i64 %rva85635)                      ; call prim_cons
  %cloptr88216 = inttoptr i64 %arg84444 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88217 = getelementptr inbounds i64, i64* %cloptr88216, i64 0                 ; &cloptr88216[0]
  %f88219 = load i64, i64* %i0ptr88217, align 8                                      ; load; *i0ptr88217
  %fptr88218 = inttoptr i64 %f88219 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88218(i64 %arg84444, i64 %rva85634)                 ; tail call
  ret void
}


define void @lam86914(i64 %env86915, i64 %rmh$lst83856) {
  %cont83855 = call i64 @prim_car(i64 %rmh$lst83856)                                 ; call prim_car
  %rmh$lst = call i64 @prim_cdr(i64 %rmh$lst83856)                                   ; call prim_cdr
  %arg84448 = add i64 0, 0                                                           ; quoted ()
  %rva85525 = add i64 0, 0                                                           ; quoted ()
  %rva85524 = call i64 @prim_cons(i64 %rmh$lst, i64 %rva85525)                       ; call prim_cons
  %rva85523 = call i64 @prim_cons(i64 %arg84448, i64 %rva85524)                      ; call prim_cons
  %cloptr88220 = inttoptr i64 %cont83855 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88221 = getelementptr inbounds i64, i64* %cloptr88220, i64 0                 ; &cloptr88220[0]
  %f88223 = load i64, i64* %i0ptr88221, align 8                                      ; load; *i0ptr88221
  %fptr88222 = inttoptr i64 %f88223 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88222(i64 %cont83855, i64 %rva85523)                ; tail call
  ret void
}


define void @lam86910(i64 %env86911, i64 %rvp85633) {
  %envptr88224 = inttoptr i64 %env86911 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88225 = getelementptr inbounds i64, i64* %envptr88224, i64 7                ; &envptr88224[7]
  %LLl$x = load i64, i64* %envptr88225, align 8                                      ; load; *envptr88225
  %envptr88226 = inttoptr i64 %env86911 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88227 = getelementptr inbounds i64, i64* %envptr88226, i64 6                ; &envptr88226[6]
  %zle$_37drop = load i64, i64* %envptr88227, align 8                                ; load; *envptr88227
  %envptr88228 = inttoptr i64 %env86911 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88229 = getelementptr inbounds i64, i64* %envptr88228, i64 5                ; &envptr88228[5]
  %ruB$_37_62 = load i64, i64* %envptr88229, align 8                                 ; load; *envptr88229
  %envptr88230 = inttoptr i64 %env86911 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88231 = getelementptr inbounds i64, i64* %envptr88230, i64 4                ; &envptr88230[4]
  %e3g$lx = load i64, i64* %envptr88231, align 8                                     ; load; *envptr88231
  %envptr88232 = inttoptr i64 %env86911 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88233 = getelementptr inbounds i64, i64* %envptr88232, i64 3                ; &envptr88232[3]
  %cont83844 = load i64, i64* %envptr88233, align 8                                  ; load; *envptr88233
  %envptr88234 = inttoptr i64 %env86911 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88235 = getelementptr inbounds i64, i64* %envptr88234, i64 2                ; &envptr88234[2]
  %J8q$y = load i64, i64* %envptr88235, align 8                                      ; load; *envptr88235
  %envptr88236 = inttoptr i64 %env86911 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88237 = getelementptr inbounds i64, i64* %envptr88236, i64 1                ; &envptr88236[1]
  %EuO$ly = load i64, i64* %envptr88237, align 8                                     ; load; *envptr88237
  %_9583853 = call i64 @prim_car(i64 %rvp85633)                                      ; call prim_car
  %rvp85632 = call i64 @prim_cdr(i64 %rvp85633)                                      ; call prim_cdr
  %a83698 = call i64 @prim_car(i64 %rvp85632)                                        ; call prim_car
  %na85527 = call i64 @prim_cdr(i64 %rvp85632)                                       ; call prim_cdr
  %arg84451 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83854 = call i64 @prim_make_45vector(i64 %arg84451, i64 %a83698)           ; call prim_make_45vector
  %cloptr88238 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr88240 = getelementptr inbounds i64, i64* %cloptr88238, i64 1                  ; &eptr88240[1]
  %eptr88241 = getelementptr inbounds i64, i64* %cloptr88238, i64 2                  ; &eptr88241[2]
  %eptr88242 = getelementptr inbounds i64, i64* %cloptr88238, i64 3                  ; &eptr88242[3]
  %eptr88243 = getelementptr inbounds i64, i64* %cloptr88238, i64 4                  ; &eptr88243[4]
  %eptr88244 = getelementptr inbounds i64, i64* %cloptr88238, i64 5                  ; &eptr88244[5]
  %eptr88245 = getelementptr inbounds i64, i64* %cloptr88238, i64 6                  ; &eptr88245[6]
  %eptr88246 = getelementptr inbounds i64, i64* %cloptr88238, i64 7                  ; &eptr88246[7]
  store i64 %EuO$ly, i64* %eptr88240                                                 ; *eptr88240 = %EuO$ly
  store i64 %J8q$y, i64* %eptr88241                                                  ; *eptr88241 = %J8q$y
  store i64 %cont83844, i64* %eptr88242                                              ; *eptr88242 = %cont83844
  store i64 %e3g$lx, i64* %eptr88243                                                 ; *eptr88243 = %e3g$lx
  store i64 %ruB$_37_62, i64* %eptr88244                                             ; *eptr88244 = %ruB$_37_62
  store i64 %zle$_37drop, i64* %eptr88245                                            ; *eptr88245 = %zle$_37drop
  store i64 %LLl$x, i64* %eptr88246                                                  ; *eptr88246 = %LLl$x
  %eptr88239 = getelementptr inbounds i64, i64* %cloptr88238, i64 0                  ; &cloptr88238[0]
  %f88247 = ptrtoint void(i64,i64)* @lam86907 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88247, i64* %eptr88239                                                 ; store fptr
  %arg84454 = ptrtoint i64* %cloptr88238 to i64                                      ; closure cast; i64* -> i64
  %arg84453 = add i64 0, 0                                                           ; quoted ()
  %rva85631 = add i64 0, 0                                                           ; quoted ()
  %rva85630 = call i64 @prim_cons(i64 %retprim83854, i64 %rva85631)                  ; call prim_cons
  %rva85629 = call i64 @prim_cons(i64 %arg84453, i64 %rva85630)                      ; call prim_cons
  %cloptr88248 = inttoptr i64 %arg84454 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88249 = getelementptr inbounds i64, i64* %cloptr88248, i64 0                 ; &cloptr88248[0]
  %f88251 = load i64, i64* %i0ptr88249, align 8                                      ; load; *i0ptr88249
  %fptr88250 = inttoptr i64 %f88251 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88250(i64 %arg84454, i64 %rva85629)                 ; tail call
  ret void
}


define void @lam86907(i64 %env86908, i64 %rvp85628) {
  %envptr88252 = inttoptr i64 %env86908 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88253 = getelementptr inbounds i64, i64* %envptr88252, i64 7                ; &envptr88252[7]
  %LLl$x = load i64, i64* %envptr88253, align 8                                      ; load; *envptr88253
  %envptr88254 = inttoptr i64 %env86908 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88255 = getelementptr inbounds i64, i64* %envptr88254, i64 6                ; &envptr88254[6]
  %zle$_37drop = load i64, i64* %envptr88255, align 8                                ; load; *envptr88255
  %envptr88256 = inttoptr i64 %env86908 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88257 = getelementptr inbounds i64, i64* %envptr88256, i64 5                ; &envptr88256[5]
  %ruB$_37_62 = load i64, i64* %envptr88257, align 8                                 ; load; *envptr88257
  %envptr88258 = inttoptr i64 %env86908 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88259 = getelementptr inbounds i64, i64* %envptr88258, i64 4                ; &envptr88258[4]
  %e3g$lx = load i64, i64* %envptr88259, align 8                                     ; load; *envptr88259
  %envptr88260 = inttoptr i64 %env86908 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88261 = getelementptr inbounds i64, i64* %envptr88260, i64 3                ; &envptr88260[3]
  %cont83844 = load i64, i64* %envptr88261, align 8                                  ; load; *envptr88261
  %envptr88262 = inttoptr i64 %env86908 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88263 = getelementptr inbounds i64, i64* %envptr88262, i64 2                ; &envptr88262[2]
  %J8q$y = load i64, i64* %envptr88263, align 8                                      ; load; *envptr88263
  %envptr88264 = inttoptr i64 %env86908 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88265 = getelementptr inbounds i64, i64* %envptr88264, i64 1                ; &envptr88264[1]
  %EuO$ly = load i64, i64* %envptr88265, align 8                                     ; load; *envptr88265
  %_9583847 = call i64 @prim_car(i64 %rvp85628)                                      ; call prim_car
  %rvp85627 = call i64 @prim_cdr(i64 %rvp85628)                                      ; call prim_cdr
  %PA4$loop = call i64 @prim_car(i64 %rvp85627)                                      ; call prim_car
  %na85529 = call i64 @prim_cdr(i64 %rvp85627)                                       ; call prim_cdr
  %arg84456 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr88266 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr88268 = getelementptr inbounds i64, i64* %cloptr88266, i64 1                  ; &eptr88268[1]
  store i64 %PA4$loop, i64* %eptr88268                                               ; *eptr88268 = %PA4$loop
  %eptr88267 = getelementptr inbounds i64, i64* %cloptr88266, i64 0                  ; &cloptr88266[0]
  %f88269 = ptrtoint void(i64,i64)* @lam86904 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88269, i64* %eptr88267                                                 ; store fptr
  %arg84455 = ptrtoint i64* %cloptr88266 to i64                                      ; closure cast; i64* -> i64
  %i0g$_9583594 = call i64 @prim_vector_45set_33(i64 %PA4$loop, i64 %arg84456, i64 %arg84455); call prim_vector_45set_33
  %arg84471 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83703 = call i64 @prim_vector_45ref(i64 %PA4$loop, i64 %arg84471)                ; call prim_vector_45ref
  %cloptr88270 = call i64* @alloc(i64 72)                                            ; malloc
  %eptr88272 = getelementptr inbounds i64, i64* %cloptr88270, i64 1                  ; &eptr88272[1]
  %eptr88273 = getelementptr inbounds i64, i64* %cloptr88270, i64 2                  ; &eptr88273[2]
  %eptr88274 = getelementptr inbounds i64, i64* %cloptr88270, i64 3                  ; &eptr88274[3]
  %eptr88275 = getelementptr inbounds i64, i64* %cloptr88270, i64 4                  ; &eptr88275[4]
  %eptr88276 = getelementptr inbounds i64, i64* %cloptr88270, i64 5                  ; &eptr88276[5]
  %eptr88277 = getelementptr inbounds i64, i64* %cloptr88270, i64 6                  ; &eptr88277[6]
  %eptr88278 = getelementptr inbounds i64, i64* %cloptr88270, i64 7                  ; &eptr88278[7]
  %eptr88279 = getelementptr inbounds i64, i64* %cloptr88270, i64 8                  ; &eptr88279[8]
  store i64 %EuO$ly, i64* %eptr88272                                                 ; *eptr88272 = %EuO$ly
  store i64 %J8q$y, i64* %eptr88273                                                  ; *eptr88273 = %J8q$y
  store i64 %cont83844, i64* %eptr88274                                              ; *eptr88274 = %cont83844
  store i64 %e3g$lx, i64* %eptr88275                                                 ; *eptr88275 = %e3g$lx
  store i64 %a83703, i64* %eptr88276                                                 ; *eptr88276 = %a83703
  store i64 %ruB$_37_62, i64* %eptr88277                                             ; *eptr88277 = %ruB$_37_62
  store i64 %zle$_37drop, i64* %eptr88278                                            ; *eptr88278 = %zle$_37drop
  store i64 %LLl$x, i64* %eptr88279                                                  ; *eptr88279 = %LLl$x
  %eptr88271 = getelementptr inbounds i64, i64* %cloptr88270, i64 0                  ; &cloptr88270[0]
  %f88280 = ptrtoint void(i64,i64)* @lam86897 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88280, i64* %eptr88271                                                 ; store fptr
  %arg84475 = ptrtoint i64* %cloptr88270 to i64                                      ; closure cast; i64* -> i64
  %rva85626 = add i64 0, 0                                                           ; quoted ()
  %rva85625 = call i64 @prim_cons(i64 %EuO$ly, i64 %rva85626)                        ; call prim_cons
  %rva85624 = call i64 @prim_cons(i64 %e3g$lx, i64 %rva85625)                        ; call prim_cons
  %rva85623 = call i64 @prim_cons(i64 %arg84475, i64 %rva85624)                      ; call prim_cons
  %cloptr88281 = inttoptr i64 %ruB$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr88282 = getelementptr inbounds i64, i64* %cloptr88281, i64 0                 ; &cloptr88281[0]
  %f88284 = load i64, i64* %i0ptr88282, align 8                                      ; load; *i0ptr88282
  %fptr88283 = inttoptr i64 %f88284 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88283(i64 %ruB$_37_62, i64 %rva85623)               ; tail call
  ret void
}


define void @lam86904(i64 %env86905, i64 %rvp85541) {
  %envptr88285 = inttoptr i64 %env86905 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88286 = getelementptr inbounds i64, i64* %envptr88285, i64 1                ; &envptr88285[1]
  %PA4$loop = load i64, i64* %envptr88286, align 8                                   ; load; *envptr88286
  %cont83848 = call i64 @prim_car(i64 %rvp85541)                                     ; call prim_car
  %rvp85540 = call i64 @prim_cdr(i64 %rvp85541)                                      ; call prim_cdr
  %Mib$x = call i64 @prim_car(i64 %rvp85540)                                         ; call prim_car
  %rvp85539 = call i64 @prim_cdr(i64 %rvp85540)                                      ; call prim_cdr
  %vSt$y = call i64 @prim_car(i64 %rvp85539)                                         ; call prim_car
  %na85531 = call i64 @prim_cdr(i64 %rvp85539)                                       ; call prim_cdr
  %a83699 = call i64 @prim_eq_63(i64 %Mib$x, i64 %vSt$y)                             ; call prim_eq_63
  %cmp88287 = icmp eq i64 %a83699, 15                                                ; false?
  br i1 %cmp88287, label %else88289, label %then88288                                ; if

then88288:
  %arg84461 = add i64 0, 0                                                           ; quoted ()
  %rva85534 = add i64 0, 0                                                           ; quoted ()
  %rva85533 = call i64 @prim_cons(i64 %Mib$x, i64 %rva85534)                         ; call prim_cons
  %rva85532 = call i64 @prim_cons(i64 %arg84461, i64 %rva85533)                      ; call prim_cons
  %cloptr88290 = inttoptr i64 %cont83848 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88291 = getelementptr inbounds i64, i64* %cloptr88290, i64 0                 ; &cloptr88290[0]
  %f88293 = load i64, i64* %i0ptr88291, align 8                                      ; load; *i0ptr88291
  %fptr88292 = inttoptr i64 %f88293 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88292(i64 %cont83848, i64 %rva85532)                ; tail call
  ret void

else88289:
  %arg84463 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83700 = call i64 @prim_vector_45ref(i64 %PA4$loop, i64 %arg84463)                ; call prim_vector_45ref
  %a83701 = call i64 @prim_cdr(i64 %Mib$x)                                           ; call prim_cdr
  %a83702 = call i64 @prim_cdr(i64 %vSt$y)                                           ; call prim_cdr
  %rva85538 = add i64 0, 0                                                           ; quoted ()
  %rva85537 = call i64 @prim_cons(i64 %a83702, i64 %rva85538)                        ; call prim_cons
  %rva85536 = call i64 @prim_cons(i64 %a83701, i64 %rva85537)                        ; call prim_cons
  %rva85535 = call i64 @prim_cons(i64 %cont83848, i64 %rva85536)                     ; call prim_cons
  %cloptr88294 = inttoptr i64 %a83700 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88295 = getelementptr inbounds i64, i64* %cloptr88294, i64 0                 ; &cloptr88294[0]
  %f88297 = load i64, i64* %i0ptr88295, align 8                                      ; load; *i0ptr88295
  %fptr88296 = inttoptr i64 %f88297 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88296(i64 %a83700, i64 %rva85535)                   ; tail call
  ret void
}


define void @lam86897(i64 %env86898, i64 %rvp85622) {
  %envptr88298 = inttoptr i64 %env86898 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88299 = getelementptr inbounds i64, i64* %envptr88298, i64 8                ; &envptr88298[8]
  %LLl$x = load i64, i64* %envptr88299, align 8                                      ; load; *envptr88299
  %envptr88300 = inttoptr i64 %env86898 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88301 = getelementptr inbounds i64, i64* %envptr88300, i64 7                ; &envptr88300[7]
  %zle$_37drop = load i64, i64* %envptr88301, align 8                                ; load; *envptr88301
  %envptr88302 = inttoptr i64 %env86898 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88303 = getelementptr inbounds i64, i64* %envptr88302, i64 6                ; &envptr88302[6]
  %ruB$_37_62 = load i64, i64* %envptr88303, align 8                                 ; load; *envptr88303
  %envptr88304 = inttoptr i64 %env86898 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88305 = getelementptr inbounds i64, i64* %envptr88304, i64 5                ; &envptr88304[5]
  %a83703 = load i64, i64* %envptr88305, align 8                                     ; load; *envptr88305
  %envptr88306 = inttoptr i64 %env86898 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88307 = getelementptr inbounds i64, i64* %envptr88306, i64 4                ; &envptr88306[4]
  %e3g$lx = load i64, i64* %envptr88307, align 8                                     ; load; *envptr88307
  %envptr88308 = inttoptr i64 %env86898 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88309 = getelementptr inbounds i64, i64* %envptr88308, i64 3                ; &envptr88308[3]
  %cont83844 = load i64, i64* %envptr88309, align 8                                  ; load; *envptr88309
  %envptr88310 = inttoptr i64 %env86898 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88311 = getelementptr inbounds i64, i64* %envptr88310, i64 2                ; &envptr88310[2]
  %J8q$y = load i64, i64* %envptr88311, align 8                                      ; load; *envptr88311
  %envptr88312 = inttoptr i64 %env86898 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88313 = getelementptr inbounds i64, i64* %envptr88312, i64 1                ; &envptr88312[1]
  %EuO$ly = load i64, i64* %envptr88313, align 8                                     ; load; *envptr88313
  %_9583849 = call i64 @prim_car(i64 %rvp85622)                                      ; call prim_car
  %rvp85621 = call i64 @prim_cdr(i64 %rvp85622)                                      ; call prim_cdr
  %a83704 = call i64 @prim_car(i64 %rvp85621)                                        ; call prim_car
  %na85543 = call i64 @prim_cdr(i64 %rvp85621)                                       ; call prim_cdr
  %cmp88314 = icmp eq i64 %a83704, 15                                                ; false?
  br i1 %cmp88314, label %else88316, label %then88315                                ; if

then88315:
  %a83705 = call i64 @prim__45(i64 %e3g$lx, i64 %EuO$ly)                             ; call prim__45
  %cloptr88317 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr88319 = getelementptr inbounds i64, i64* %cloptr88317, i64 1                  ; &eptr88319[1]
  %eptr88320 = getelementptr inbounds i64, i64* %cloptr88317, i64 2                  ; &eptr88320[2]
  %eptr88321 = getelementptr inbounds i64, i64* %cloptr88317, i64 3                  ; &eptr88321[3]
  %eptr88322 = getelementptr inbounds i64, i64* %cloptr88317, i64 4                  ; &eptr88322[4]
  %eptr88323 = getelementptr inbounds i64, i64* %cloptr88317, i64 5                  ; &eptr88323[5]
  %eptr88324 = getelementptr inbounds i64, i64* %cloptr88317, i64 6                  ; &eptr88324[6]
  %eptr88325 = getelementptr inbounds i64, i64* %cloptr88317, i64 7                  ; &eptr88325[7]
  store i64 %EuO$ly, i64* %eptr88319                                                 ; *eptr88319 = %EuO$ly
  store i64 %J8q$y, i64* %eptr88320                                                  ; *eptr88320 = %J8q$y
  store i64 %cont83844, i64* %eptr88321                                              ; *eptr88321 = %cont83844
  store i64 %e3g$lx, i64* %eptr88322                                                 ; *eptr88322 = %e3g$lx
  store i64 %a83703, i64* %eptr88323                                                 ; *eptr88323 = %a83703
  store i64 %ruB$_37_62, i64* %eptr88324                                             ; *eptr88324 = %ruB$_37_62
  store i64 %zle$_37drop, i64* %eptr88325                                            ; *eptr88325 = %zle$_37drop
  %eptr88318 = getelementptr inbounds i64, i64* %cloptr88317, i64 0                  ; &cloptr88317[0]
  %f88326 = ptrtoint void(i64,i64)* @lam86879 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88326, i64* %eptr88318                                                 ; store fptr
  %arg84481 = ptrtoint i64* %cloptr88317 to i64                                      ; closure cast; i64* -> i64
  %rva85582 = add i64 0, 0                                                           ; quoted ()
  %rva85581 = call i64 @prim_cons(i64 %a83705, i64 %rva85582)                        ; call prim_cons
  %rva85580 = call i64 @prim_cons(i64 %LLl$x, i64 %rva85581)                         ; call prim_cons
  %rva85579 = call i64 @prim_cons(i64 %arg84481, i64 %rva85580)                      ; call prim_cons
  %cloptr88327 = inttoptr i64 %zle$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr88328 = getelementptr inbounds i64, i64* %cloptr88327, i64 0                 ; &cloptr88327[0]
  %f88330 = load i64, i64* %i0ptr88328, align 8                                      ; load; *i0ptr88328
  %fptr88329 = inttoptr i64 %f88330 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88329(i64 %zle$_37drop, i64 %rva85579)              ; tail call
  ret void

else88316:
  %cloptr88331 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr88333 = getelementptr inbounds i64, i64* %cloptr88331, i64 1                  ; &eptr88333[1]
  %eptr88334 = getelementptr inbounds i64, i64* %cloptr88331, i64 2                  ; &eptr88334[2]
  %eptr88335 = getelementptr inbounds i64, i64* %cloptr88331, i64 3                  ; &eptr88335[3]
  %eptr88336 = getelementptr inbounds i64, i64* %cloptr88331, i64 4                  ; &eptr88336[4]
  %eptr88337 = getelementptr inbounds i64, i64* %cloptr88331, i64 5                  ; &eptr88337[5]
  %eptr88338 = getelementptr inbounds i64, i64* %cloptr88331, i64 6                  ; &eptr88338[6]
  %eptr88339 = getelementptr inbounds i64, i64* %cloptr88331, i64 7                  ; &eptr88339[7]
  store i64 %EuO$ly, i64* %eptr88333                                                 ; *eptr88333 = %EuO$ly
  store i64 %J8q$y, i64* %eptr88334                                                  ; *eptr88334 = %J8q$y
  store i64 %cont83844, i64* %eptr88335                                              ; *eptr88335 = %cont83844
  store i64 %e3g$lx, i64* %eptr88336                                                 ; *eptr88336 = %e3g$lx
  store i64 %a83703, i64* %eptr88337                                                 ; *eptr88337 = %a83703
  store i64 %ruB$_37_62, i64* %eptr88338                                             ; *eptr88338 = %ruB$_37_62
  store i64 %zle$_37drop, i64* %eptr88339                                            ; *eptr88339 = %zle$_37drop
  %eptr88332 = getelementptr inbounds i64, i64* %cloptr88331, i64 0                  ; &cloptr88331[0]
  %f88340 = ptrtoint void(i64,i64)* @lam86895 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88340, i64* %eptr88332                                                 ; store fptr
  %arg84506 = ptrtoint i64* %cloptr88331 to i64                                      ; closure cast; i64* -> i64
  %arg84505 = add i64 0, 0                                                           ; quoted ()
  %rva85620 = add i64 0, 0                                                           ; quoted ()
  %rva85619 = call i64 @prim_cons(i64 %LLl$x, i64 %rva85620)                         ; call prim_cons
  %rva85618 = call i64 @prim_cons(i64 %arg84505, i64 %rva85619)                      ; call prim_cons
  %cloptr88341 = inttoptr i64 %arg84506 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88342 = getelementptr inbounds i64, i64* %cloptr88341, i64 0                 ; &cloptr88341[0]
  %f88344 = load i64, i64* %i0ptr88342, align 8                                      ; load; *i0ptr88342
  %fptr88343 = inttoptr i64 %f88344 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88343(i64 %arg84506, i64 %rva85618)                 ; tail call
  ret void
}


define void @lam86895(i64 %env86896, i64 %rvp85617) {
  %envptr88345 = inttoptr i64 %env86896 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88346 = getelementptr inbounds i64, i64* %envptr88345, i64 7                ; &envptr88345[7]
  %zle$_37drop = load i64, i64* %envptr88346, align 8                                ; load; *envptr88346
  %envptr88347 = inttoptr i64 %env86896 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88348 = getelementptr inbounds i64, i64* %envptr88347, i64 6                ; &envptr88347[6]
  %ruB$_37_62 = load i64, i64* %envptr88348, align 8                                 ; load; *envptr88348
  %envptr88349 = inttoptr i64 %env86896 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88350 = getelementptr inbounds i64, i64* %envptr88349, i64 5                ; &envptr88349[5]
  %a83703 = load i64, i64* %envptr88350, align 8                                     ; load; *envptr88350
  %envptr88351 = inttoptr i64 %env86896 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88352 = getelementptr inbounds i64, i64* %envptr88351, i64 4                ; &envptr88351[4]
  %e3g$lx = load i64, i64* %envptr88352, align 8                                     ; load; *envptr88352
  %envptr88353 = inttoptr i64 %env86896 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88354 = getelementptr inbounds i64, i64* %envptr88353, i64 3                ; &envptr88353[3]
  %cont83844 = load i64, i64* %envptr88354, align 8                                  ; load; *envptr88354
  %envptr88355 = inttoptr i64 %env86896 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88356 = getelementptr inbounds i64, i64* %envptr88355, i64 2                ; &envptr88355[2]
  %J8q$y = load i64, i64* %envptr88356, align 8                                      ; load; *envptr88356
  %envptr88357 = inttoptr i64 %env86896 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88358 = getelementptr inbounds i64, i64* %envptr88357, i64 1                ; &envptr88357[1]
  %EuO$ly = load i64, i64* %envptr88358, align 8                                     ; load; *envptr88358
  %_9583850 = call i64 @prim_car(i64 %rvp85617)                                      ; call prim_car
  %rvp85616 = call i64 @prim_cdr(i64 %rvp85617)                                      ; call prim_cdr
  %a83706 = call i64 @prim_car(i64 %rvp85616)                                        ; call prim_car
  %na85584 = call i64 @prim_cdr(i64 %rvp85616)                                       ; call prim_cdr
  %cloptr88359 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr88361 = getelementptr inbounds i64, i64* %cloptr88359, i64 1                  ; &eptr88361[1]
  %eptr88362 = getelementptr inbounds i64, i64* %cloptr88359, i64 2                  ; &eptr88362[2]
  %eptr88363 = getelementptr inbounds i64, i64* %cloptr88359, i64 3                  ; &eptr88363[3]
  %eptr88364 = getelementptr inbounds i64, i64* %cloptr88359, i64 4                  ; &eptr88364[4]
  %eptr88365 = getelementptr inbounds i64, i64* %cloptr88359, i64 5                  ; &eptr88365[5]
  %eptr88366 = getelementptr inbounds i64, i64* %cloptr88359, i64 6                  ; &eptr88366[6]
  %eptr88367 = getelementptr inbounds i64, i64* %cloptr88359, i64 7                  ; &eptr88367[7]
  store i64 %EuO$ly, i64* %eptr88361                                                 ; *eptr88361 = %EuO$ly
  store i64 %J8q$y, i64* %eptr88362                                                  ; *eptr88362 = %J8q$y
  store i64 %cont83844, i64* %eptr88363                                              ; *eptr88363 = %cont83844
  store i64 %e3g$lx, i64* %eptr88364                                                 ; *eptr88364 = %e3g$lx
  store i64 %a83703, i64* %eptr88365                                                 ; *eptr88365 = %a83703
  store i64 %a83706, i64* %eptr88366                                                 ; *eptr88366 = %a83706
  store i64 %zle$_37drop, i64* %eptr88367                                            ; *eptr88367 = %zle$_37drop
  %eptr88360 = getelementptr inbounds i64, i64* %cloptr88359, i64 0                  ; &cloptr88359[0]
  %f88368 = ptrtoint void(i64,i64)* @lam86893 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88368, i64* %eptr88360                                                 ; store fptr
  %arg84509 = ptrtoint i64* %cloptr88359 to i64                                      ; closure cast; i64* -> i64
  %rva85615 = add i64 0, 0                                                           ; quoted ()
  %rva85614 = call i64 @prim_cons(i64 %e3g$lx, i64 %rva85615)                        ; call prim_cons
  %rva85613 = call i64 @prim_cons(i64 %EuO$ly, i64 %rva85614)                        ; call prim_cons
  %rva85612 = call i64 @prim_cons(i64 %arg84509, i64 %rva85613)                      ; call prim_cons
  %cloptr88369 = inttoptr i64 %ruB$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr88370 = getelementptr inbounds i64, i64* %cloptr88369, i64 0                 ; &cloptr88369[0]
  %f88372 = load i64, i64* %i0ptr88370, align 8                                      ; load; *i0ptr88370
  %fptr88371 = inttoptr i64 %f88372 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88371(i64 %ruB$_37_62, i64 %rva85612)               ; tail call
  ret void
}


define void @lam86893(i64 %env86894, i64 %rvp85611) {
  %envptr88373 = inttoptr i64 %env86894 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88374 = getelementptr inbounds i64, i64* %envptr88373, i64 7                ; &envptr88373[7]
  %zle$_37drop = load i64, i64* %envptr88374, align 8                                ; load; *envptr88374
  %envptr88375 = inttoptr i64 %env86894 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88376 = getelementptr inbounds i64, i64* %envptr88375, i64 6                ; &envptr88375[6]
  %a83706 = load i64, i64* %envptr88376, align 8                                     ; load; *envptr88376
  %envptr88377 = inttoptr i64 %env86894 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88378 = getelementptr inbounds i64, i64* %envptr88377, i64 5                ; &envptr88377[5]
  %a83703 = load i64, i64* %envptr88378, align 8                                     ; load; *envptr88378
  %envptr88379 = inttoptr i64 %env86894 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88380 = getelementptr inbounds i64, i64* %envptr88379, i64 4                ; &envptr88379[4]
  %e3g$lx = load i64, i64* %envptr88380, align 8                                     ; load; *envptr88380
  %envptr88381 = inttoptr i64 %env86894 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88382 = getelementptr inbounds i64, i64* %envptr88381, i64 3                ; &envptr88381[3]
  %cont83844 = load i64, i64* %envptr88382, align 8                                  ; load; *envptr88382
  %envptr88383 = inttoptr i64 %env86894 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88384 = getelementptr inbounds i64, i64* %envptr88383, i64 2                ; &envptr88383[2]
  %J8q$y = load i64, i64* %envptr88384, align 8                                      ; load; *envptr88384
  %envptr88385 = inttoptr i64 %env86894 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88386 = getelementptr inbounds i64, i64* %envptr88385, i64 1                ; &envptr88385[1]
  %EuO$ly = load i64, i64* %envptr88386, align 8                                     ; load; *envptr88386
  %_9583851 = call i64 @prim_car(i64 %rvp85611)                                      ; call prim_car
  %rvp85610 = call i64 @prim_cdr(i64 %rvp85611)                                      ; call prim_cdr
  %a83707 = call i64 @prim_car(i64 %rvp85610)                                        ; call prim_car
  %na85586 = call i64 @prim_cdr(i64 %rvp85610)                                       ; call prim_cdr
  %cmp88387 = icmp eq i64 %a83707, 15                                                ; false?
  br i1 %cmp88387, label %else88389, label %then88388                                ; if

then88388:
  %a83708 = call i64 @prim__45(i64 %EuO$ly, i64 %e3g$lx)                             ; call prim__45
  %cloptr88390 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88392 = getelementptr inbounds i64, i64* %cloptr88390, i64 1                  ; &eptr88392[1]
  %eptr88393 = getelementptr inbounds i64, i64* %cloptr88390, i64 2                  ; &eptr88393[2]
  %eptr88394 = getelementptr inbounds i64, i64* %cloptr88390, i64 3                  ; &eptr88394[3]
  store i64 %cont83844, i64* %eptr88392                                              ; *eptr88392 = %cont83844
  store i64 %a83703, i64* %eptr88393                                                 ; *eptr88393 = %a83703
  store i64 %a83706, i64* %eptr88394                                                 ; *eptr88394 = %a83706
  %eptr88391 = getelementptr inbounds i64, i64* %cloptr88390, i64 0                  ; &cloptr88390[0]
  %f88395 = ptrtoint void(i64,i64)* @lam86886 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88395, i64* %eptr88391                                                 ; store fptr
  %arg84515 = ptrtoint i64* %cloptr88390 to i64                                      ; closure cast; i64* -> i64
  %rva85598 = add i64 0, 0                                                           ; quoted ()
  %rva85597 = call i64 @prim_cons(i64 %a83708, i64 %rva85598)                        ; call prim_cons
  %rva85596 = call i64 @prim_cons(i64 %J8q$y, i64 %rva85597)                         ; call prim_cons
  %rva85595 = call i64 @prim_cons(i64 %arg84515, i64 %rva85596)                      ; call prim_cons
  %cloptr88396 = inttoptr i64 %zle$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr88397 = getelementptr inbounds i64, i64* %cloptr88396, i64 0                 ; &cloptr88396[0]
  %f88399 = load i64, i64* %i0ptr88397, align 8                                      ; load; *i0ptr88397
  %fptr88398 = inttoptr i64 %f88399 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88398(i64 %zle$_37drop, i64 %rva85595)              ; tail call
  ret void

else88389:
  %cloptr88400 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88402 = getelementptr inbounds i64, i64* %cloptr88400, i64 1                  ; &eptr88402[1]
  %eptr88403 = getelementptr inbounds i64, i64* %cloptr88400, i64 2                  ; &eptr88403[2]
  %eptr88404 = getelementptr inbounds i64, i64* %cloptr88400, i64 3                  ; &eptr88404[3]
  store i64 %cont83844, i64* %eptr88402                                              ; *eptr88402 = %cont83844
  store i64 %a83703, i64* %eptr88403                                                 ; *eptr88403 = %a83703
  store i64 %a83706, i64* %eptr88404                                                 ; *eptr88404 = %a83706
  %eptr88401 = getelementptr inbounds i64, i64* %cloptr88400, i64 0                  ; &cloptr88400[0]
  %f88405 = ptrtoint void(i64,i64)* @lam86891 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88405, i64* %eptr88401                                                 ; store fptr
  %arg84523 = ptrtoint i64* %cloptr88400 to i64                                      ; closure cast; i64* -> i64
  %arg84522 = add i64 0, 0                                                           ; quoted ()
  %rva85609 = add i64 0, 0                                                           ; quoted ()
  %rva85608 = call i64 @prim_cons(i64 %J8q$y, i64 %rva85609)                         ; call prim_cons
  %rva85607 = call i64 @prim_cons(i64 %arg84522, i64 %rva85608)                      ; call prim_cons
  %cloptr88406 = inttoptr i64 %arg84523 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88407 = getelementptr inbounds i64, i64* %cloptr88406, i64 0                 ; &cloptr88406[0]
  %f88409 = load i64, i64* %i0ptr88407, align 8                                      ; load; *i0ptr88407
  %fptr88408 = inttoptr i64 %f88409 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88408(i64 %arg84523, i64 %rva85607)                 ; tail call
  ret void
}


define void @lam86891(i64 %env86892, i64 %rvp85606) {
  %envptr88410 = inttoptr i64 %env86892 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88411 = getelementptr inbounds i64, i64* %envptr88410, i64 3                ; &envptr88410[3]
  %a83706 = load i64, i64* %envptr88411, align 8                                     ; load; *envptr88411
  %envptr88412 = inttoptr i64 %env86892 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88413 = getelementptr inbounds i64, i64* %envptr88412, i64 2                ; &envptr88412[2]
  %a83703 = load i64, i64* %envptr88413, align 8                                     ; load; *envptr88413
  %envptr88414 = inttoptr i64 %env86892 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88415 = getelementptr inbounds i64, i64* %envptr88414, i64 1                ; &envptr88414[1]
  %cont83844 = load i64, i64* %envptr88415, align 8                                  ; load; *envptr88415
  %_9583852 = call i64 @prim_car(i64 %rvp85606)                                      ; call prim_car
  %rvp85605 = call i64 @prim_cdr(i64 %rvp85606)                                      ; call prim_cdr
  %a83709 = call i64 @prim_car(i64 %rvp85605)                                        ; call prim_car
  %na85600 = call i64 @prim_cdr(i64 %rvp85605)                                       ; call prim_cdr
  %rva85604 = add i64 0, 0                                                           ; quoted ()
  %rva85603 = call i64 @prim_cons(i64 %a83709, i64 %rva85604)                        ; call prim_cons
  %rva85602 = call i64 @prim_cons(i64 %a83706, i64 %rva85603)                        ; call prim_cons
  %rva85601 = call i64 @prim_cons(i64 %cont83844, i64 %rva85602)                     ; call prim_cons
  %cloptr88416 = inttoptr i64 %a83703 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88417 = getelementptr inbounds i64, i64* %cloptr88416, i64 0                 ; &cloptr88416[0]
  %f88419 = load i64, i64* %i0ptr88417, align 8                                      ; load; *i0ptr88417
  %fptr88418 = inttoptr i64 %f88419 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88418(i64 %a83703, i64 %rva85601)                   ; tail call
  ret void
}


define void @lam86886(i64 %env86887, i64 %rvp85594) {
  %envptr88420 = inttoptr i64 %env86887 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88421 = getelementptr inbounds i64, i64* %envptr88420, i64 3                ; &envptr88420[3]
  %a83706 = load i64, i64* %envptr88421, align 8                                     ; load; *envptr88421
  %envptr88422 = inttoptr i64 %env86887 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88423 = getelementptr inbounds i64, i64* %envptr88422, i64 2                ; &envptr88422[2]
  %a83703 = load i64, i64* %envptr88423, align 8                                     ; load; *envptr88423
  %envptr88424 = inttoptr i64 %env86887 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88425 = getelementptr inbounds i64, i64* %envptr88424, i64 1                ; &envptr88424[1]
  %cont83844 = load i64, i64* %envptr88425, align 8                                  ; load; *envptr88425
  %_9583852 = call i64 @prim_car(i64 %rvp85594)                                      ; call prim_car
  %rvp85593 = call i64 @prim_cdr(i64 %rvp85594)                                      ; call prim_cdr
  %a83709 = call i64 @prim_car(i64 %rvp85593)                                        ; call prim_car
  %na85588 = call i64 @prim_cdr(i64 %rvp85593)                                       ; call prim_cdr
  %rva85592 = add i64 0, 0                                                           ; quoted ()
  %rva85591 = call i64 @prim_cons(i64 %a83709, i64 %rva85592)                        ; call prim_cons
  %rva85590 = call i64 @prim_cons(i64 %a83706, i64 %rva85591)                        ; call prim_cons
  %rva85589 = call i64 @prim_cons(i64 %cont83844, i64 %rva85590)                     ; call prim_cons
  %cloptr88426 = inttoptr i64 %a83703 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88427 = getelementptr inbounds i64, i64* %cloptr88426, i64 0                 ; &cloptr88426[0]
  %f88429 = load i64, i64* %i0ptr88427, align 8                                      ; load; *i0ptr88427
  %fptr88428 = inttoptr i64 %f88429 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88428(i64 %a83703, i64 %rva85589)                   ; tail call
  ret void
}


define void @lam86879(i64 %env86880, i64 %rvp85578) {
  %envptr88430 = inttoptr i64 %env86880 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88431 = getelementptr inbounds i64, i64* %envptr88430, i64 7                ; &envptr88430[7]
  %zle$_37drop = load i64, i64* %envptr88431, align 8                                ; load; *envptr88431
  %envptr88432 = inttoptr i64 %env86880 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88433 = getelementptr inbounds i64, i64* %envptr88432, i64 6                ; &envptr88432[6]
  %ruB$_37_62 = load i64, i64* %envptr88433, align 8                                 ; load; *envptr88433
  %envptr88434 = inttoptr i64 %env86880 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88435 = getelementptr inbounds i64, i64* %envptr88434, i64 5                ; &envptr88434[5]
  %a83703 = load i64, i64* %envptr88435, align 8                                     ; load; *envptr88435
  %envptr88436 = inttoptr i64 %env86880 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88437 = getelementptr inbounds i64, i64* %envptr88436, i64 4                ; &envptr88436[4]
  %e3g$lx = load i64, i64* %envptr88437, align 8                                     ; load; *envptr88437
  %envptr88438 = inttoptr i64 %env86880 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88439 = getelementptr inbounds i64, i64* %envptr88438, i64 3                ; &envptr88438[3]
  %cont83844 = load i64, i64* %envptr88439, align 8                                  ; load; *envptr88439
  %envptr88440 = inttoptr i64 %env86880 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88441 = getelementptr inbounds i64, i64* %envptr88440, i64 2                ; &envptr88440[2]
  %J8q$y = load i64, i64* %envptr88441, align 8                                      ; load; *envptr88441
  %envptr88442 = inttoptr i64 %env86880 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88443 = getelementptr inbounds i64, i64* %envptr88442, i64 1                ; &envptr88442[1]
  %EuO$ly = load i64, i64* %envptr88443, align 8                                     ; load; *envptr88443
  %_9583850 = call i64 @prim_car(i64 %rvp85578)                                      ; call prim_car
  %rvp85577 = call i64 @prim_cdr(i64 %rvp85578)                                      ; call prim_cdr
  %a83706 = call i64 @prim_car(i64 %rvp85577)                                        ; call prim_car
  %na85545 = call i64 @prim_cdr(i64 %rvp85577)                                       ; call prim_cdr
  %cloptr88444 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr88446 = getelementptr inbounds i64, i64* %cloptr88444, i64 1                  ; &eptr88446[1]
  %eptr88447 = getelementptr inbounds i64, i64* %cloptr88444, i64 2                  ; &eptr88447[2]
  %eptr88448 = getelementptr inbounds i64, i64* %cloptr88444, i64 3                  ; &eptr88448[3]
  %eptr88449 = getelementptr inbounds i64, i64* %cloptr88444, i64 4                  ; &eptr88449[4]
  %eptr88450 = getelementptr inbounds i64, i64* %cloptr88444, i64 5                  ; &eptr88450[5]
  %eptr88451 = getelementptr inbounds i64, i64* %cloptr88444, i64 6                  ; &eptr88451[6]
  %eptr88452 = getelementptr inbounds i64, i64* %cloptr88444, i64 7                  ; &eptr88452[7]
  store i64 %EuO$ly, i64* %eptr88446                                                 ; *eptr88446 = %EuO$ly
  store i64 %J8q$y, i64* %eptr88447                                                  ; *eptr88447 = %J8q$y
  store i64 %cont83844, i64* %eptr88448                                              ; *eptr88448 = %cont83844
  store i64 %e3g$lx, i64* %eptr88449                                                 ; *eptr88449 = %e3g$lx
  store i64 %a83703, i64* %eptr88450                                                 ; *eptr88450 = %a83703
  store i64 %a83706, i64* %eptr88451                                                 ; *eptr88451 = %a83706
  store i64 %zle$_37drop, i64* %eptr88452                                            ; *eptr88452 = %zle$_37drop
  %eptr88445 = getelementptr inbounds i64, i64* %cloptr88444, i64 0                  ; &cloptr88444[0]
  %f88453 = ptrtoint void(i64,i64)* @lam86877 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88453, i64* %eptr88445                                                 ; store fptr
  %arg84485 = ptrtoint i64* %cloptr88444 to i64                                      ; closure cast; i64* -> i64
  %rva85576 = add i64 0, 0                                                           ; quoted ()
  %rva85575 = call i64 @prim_cons(i64 %e3g$lx, i64 %rva85576)                        ; call prim_cons
  %rva85574 = call i64 @prim_cons(i64 %EuO$ly, i64 %rva85575)                        ; call prim_cons
  %rva85573 = call i64 @prim_cons(i64 %arg84485, i64 %rva85574)                      ; call prim_cons
  %cloptr88454 = inttoptr i64 %ruB$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr88455 = getelementptr inbounds i64, i64* %cloptr88454, i64 0                 ; &cloptr88454[0]
  %f88457 = load i64, i64* %i0ptr88455, align 8                                      ; load; *i0ptr88455
  %fptr88456 = inttoptr i64 %f88457 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88456(i64 %ruB$_37_62, i64 %rva85573)               ; tail call
  ret void
}


define void @lam86877(i64 %env86878, i64 %rvp85572) {
  %envptr88458 = inttoptr i64 %env86878 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88459 = getelementptr inbounds i64, i64* %envptr88458, i64 7                ; &envptr88458[7]
  %zle$_37drop = load i64, i64* %envptr88459, align 8                                ; load; *envptr88459
  %envptr88460 = inttoptr i64 %env86878 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88461 = getelementptr inbounds i64, i64* %envptr88460, i64 6                ; &envptr88460[6]
  %a83706 = load i64, i64* %envptr88461, align 8                                     ; load; *envptr88461
  %envptr88462 = inttoptr i64 %env86878 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88463 = getelementptr inbounds i64, i64* %envptr88462, i64 5                ; &envptr88462[5]
  %a83703 = load i64, i64* %envptr88463, align 8                                     ; load; *envptr88463
  %envptr88464 = inttoptr i64 %env86878 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88465 = getelementptr inbounds i64, i64* %envptr88464, i64 4                ; &envptr88464[4]
  %e3g$lx = load i64, i64* %envptr88465, align 8                                     ; load; *envptr88465
  %envptr88466 = inttoptr i64 %env86878 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88467 = getelementptr inbounds i64, i64* %envptr88466, i64 3                ; &envptr88466[3]
  %cont83844 = load i64, i64* %envptr88467, align 8                                  ; load; *envptr88467
  %envptr88468 = inttoptr i64 %env86878 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88469 = getelementptr inbounds i64, i64* %envptr88468, i64 2                ; &envptr88468[2]
  %J8q$y = load i64, i64* %envptr88469, align 8                                      ; load; *envptr88469
  %envptr88470 = inttoptr i64 %env86878 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88471 = getelementptr inbounds i64, i64* %envptr88470, i64 1                ; &envptr88470[1]
  %EuO$ly = load i64, i64* %envptr88471, align 8                                     ; load; *envptr88471
  %_9583851 = call i64 @prim_car(i64 %rvp85572)                                      ; call prim_car
  %rvp85571 = call i64 @prim_cdr(i64 %rvp85572)                                      ; call prim_cdr
  %a83707 = call i64 @prim_car(i64 %rvp85571)                                        ; call prim_car
  %na85547 = call i64 @prim_cdr(i64 %rvp85571)                                       ; call prim_cdr
  %cmp88472 = icmp eq i64 %a83707, 15                                                ; false?
  br i1 %cmp88472, label %else88474, label %then88473                                ; if

then88473:
  %a83708 = call i64 @prim__45(i64 %EuO$ly, i64 %e3g$lx)                             ; call prim__45
  %cloptr88475 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88477 = getelementptr inbounds i64, i64* %cloptr88475, i64 1                  ; &eptr88477[1]
  %eptr88478 = getelementptr inbounds i64, i64* %cloptr88475, i64 2                  ; &eptr88478[2]
  %eptr88479 = getelementptr inbounds i64, i64* %cloptr88475, i64 3                  ; &eptr88479[3]
  store i64 %cont83844, i64* %eptr88477                                              ; *eptr88477 = %cont83844
  store i64 %a83703, i64* %eptr88478                                                 ; *eptr88478 = %a83703
  store i64 %a83706, i64* %eptr88479                                                 ; *eptr88479 = %a83706
  %eptr88476 = getelementptr inbounds i64, i64* %cloptr88475, i64 0                  ; &cloptr88475[0]
  %f88480 = ptrtoint void(i64,i64)* @lam86870 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88480, i64* %eptr88476                                                 ; store fptr
  %arg84491 = ptrtoint i64* %cloptr88475 to i64                                      ; closure cast; i64* -> i64
  %rva85559 = add i64 0, 0                                                           ; quoted ()
  %rva85558 = call i64 @prim_cons(i64 %a83708, i64 %rva85559)                        ; call prim_cons
  %rva85557 = call i64 @prim_cons(i64 %J8q$y, i64 %rva85558)                         ; call prim_cons
  %rva85556 = call i64 @prim_cons(i64 %arg84491, i64 %rva85557)                      ; call prim_cons
  %cloptr88481 = inttoptr i64 %zle$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr88482 = getelementptr inbounds i64, i64* %cloptr88481, i64 0                 ; &cloptr88481[0]
  %f88484 = load i64, i64* %i0ptr88482, align 8                                      ; load; *i0ptr88482
  %fptr88483 = inttoptr i64 %f88484 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88483(i64 %zle$_37drop, i64 %rva85556)              ; tail call
  ret void

else88474:
  %cloptr88485 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88487 = getelementptr inbounds i64, i64* %cloptr88485, i64 1                  ; &eptr88487[1]
  %eptr88488 = getelementptr inbounds i64, i64* %cloptr88485, i64 2                  ; &eptr88488[2]
  %eptr88489 = getelementptr inbounds i64, i64* %cloptr88485, i64 3                  ; &eptr88489[3]
  store i64 %cont83844, i64* %eptr88487                                              ; *eptr88487 = %cont83844
  store i64 %a83703, i64* %eptr88488                                                 ; *eptr88488 = %a83703
  store i64 %a83706, i64* %eptr88489                                                 ; *eptr88489 = %a83706
  %eptr88486 = getelementptr inbounds i64, i64* %cloptr88485, i64 0                  ; &cloptr88485[0]
  %f88490 = ptrtoint void(i64,i64)* @lam86875 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88490, i64* %eptr88486                                                 ; store fptr
  %arg84499 = ptrtoint i64* %cloptr88485 to i64                                      ; closure cast; i64* -> i64
  %arg84498 = add i64 0, 0                                                           ; quoted ()
  %rva85570 = add i64 0, 0                                                           ; quoted ()
  %rva85569 = call i64 @prim_cons(i64 %J8q$y, i64 %rva85570)                         ; call prim_cons
  %rva85568 = call i64 @prim_cons(i64 %arg84498, i64 %rva85569)                      ; call prim_cons
  %cloptr88491 = inttoptr i64 %arg84499 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88492 = getelementptr inbounds i64, i64* %cloptr88491, i64 0                 ; &cloptr88491[0]
  %f88494 = load i64, i64* %i0ptr88492, align 8                                      ; load; *i0ptr88492
  %fptr88493 = inttoptr i64 %f88494 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88493(i64 %arg84499, i64 %rva85568)                 ; tail call
  ret void
}


define void @lam86875(i64 %env86876, i64 %rvp85567) {
  %envptr88495 = inttoptr i64 %env86876 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88496 = getelementptr inbounds i64, i64* %envptr88495, i64 3                ; &envptr88495[3]
  %a83706 = load i64, i64* %envptr88496, align 8                                     ; load; *envptr88496
  %envptr88497 = inttoptr i64 %env86876 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88498 = getelementptr inbounds i64, i64* %envptr88497, i64 2                ; &envptr88497[2]
  %a83703 = load i64, i64* %envptr88498, align 8                                     ; load; *envptr88498
  %envptr88499 = inttoptr i64 %env86876 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88500 = getelementptr inbounds i64, i64* %envptr88499, i64 1                ; &envptr88499[1]
  %cont83844 = load i64, i64* %envptr88500, align 8                                  ; load; *envptr88500
  %_9583852 = call i64 @prim_car(i64 %rvp85567)                                      ; call prim_car
  %rvp85566 = call i64 @prim_cdr(i64 %rvp85567)                                      ; call prim_cdr
  %a83709 = call i64 @prim_car(i64 %rvp85566)                                        ; call prim_car
  %na85561 = call i64 @prim_cdr(i64 %rvp85566)                                       ; call prim_cdr
  %rva85565 = add i64 0, 0                                                           ; quoted ()
  %rva85564 = call i64 @prim_cons(i64 %a83709, i64 %rva85565)                        ; call prim_cons
  %rva85563 = call i64 @prim_cons(i64 %a83706, i64 %rva85564)                        ; call prim_cons
  %rva85562 = call i64 @prim_cons(i64 %cont83844, i64 %rva85563)                     ; call prim_cons
  %cloptr88501 = inttoptr i64 %a83703 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88502 = getelementptr inbounds i64, i64* %cloptr88501, i64 0                 ; &cloptr88501[0]
  %f88504 = load i64, i64* %i0ptr88502, align 8                                      ; load; *i0ptr88502
  %fptr88503 = inttoptr i64 %f88504 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88503(i64 %a83703, i64 %rva85562)                   ; tail call
  ret void
}


define void @lam86870(i64 %env86871, i64 %rvp85555) {
  %envptr88505 = inttoptr i64 %env86871 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88506 = getelementptr inbounds i64, i64* %envptr88505, i64 3                ; &envptr88505[3]
  %a83706 = load i64, i64* %envptr88506, align 8                                     ; load; *envptr88506
  %envptr88507 = inttoptr i64 %env86871 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88508 = getelementptr inbounds i64, i64* %envptr88507, i64 2                ; &envptr88507[2]
  %a83703 = load i64, i64* %envptr88508, align 8                                     ; load; *envptr88508
  %envptr88509 = inttoptr i64 %env86871 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88510 = getelementptr inbounds i64, i64* %envptr88509, i64 1                ; &envptr88509[1]
  %cont83844 = load i64, i64* %envptr88510, align 8                                  ; load; *envptr88510
  %_9583852 = call i64 @prim_car(i64 %rvp85555)                                      ; call prim_car
  %rvp85554 = call i64 @prim_cdr(i64 %rvp85555)                                      ; call prim_cdr
  %a83709 = call i64 @prim_car(i64 %rvp85554)                                        ; call prim_car
  %na85549 = call i64 @prim_cdr(i64 %rvp85554)                                       ; call prim_cdr
  %rva85553 = add i64 0, 0                                                           ; quoted ()
  %rva85552 = call i64 @prim_cons(i64 %a83709, i64 %rva85553)                        ; call prim_cons
  %rva85551 = call i64 @prim_cons(i64 %a83706, i64 %rva85552)                        ; call prim_cons
  %rva85550 = call i64 @prim_cons(i64 %cont83844, i64 %rva85551)                     ; call prim_cons
  %cloptr88511 = inttoptr i64 %a83703 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88512 = getelementptr inbounds i64, i64* %cloptr88511, i64 0                 ; &cloptr88511[0]
  %f88514 = load i64, i64* %i0ptr88512, align 8                                      ; load; *i0ptr88512
  %fptr88513 = inttoptr i64 %f88514 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88513(i64 %a83703, i64 %rva85550)                   ; tail call
  ret void
}


define void @lam86858(i64 %env86859, i64 %rvp85748) {
  %envptr88515 = inttoptr i64 %env86859 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88516 = getelementptr inbounds i64, i64* %envptr88515, i64 2                ; &envptr88515[2]
  %knD$_37wind_45stack = load i64, i64* %envptr88516, align 8                        ; load; *envptr88516
  %envptr88517 = inttoptr i64 %env86859 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88518 = getelementptr inbounds i64, i64* %envptr88517, i64 1                ; &envptr88517[1]
  %pBD$_37common_45tail = load i64, i64* %envptr88518, align 8                       ; load; *envptr88518
  %cont83857 = call i64 @prim_car(i64 %rvp85748)                                     ; call prim_car
  %rvp85747 = call i64 @prim_cdr(i64 %rvp85748)                                      ; call prim_cdr
  %LI6$new = call i64 @prim_car(i64 %rvp85747)                                       ; call prim_car
  %na85650 = call i64 @prim_cdr(i64 %rvp85747)                                       ; call prim_cdr
  %arg84528 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83710 = call i64 @prim_vector_45ref(i64 %knD$_37wind_45stack, i64 %arg84528)     ; call prim_vector_45ref
  %cloptr88519 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88521 = getelementptr inbounds i64, i64* %cloptr88519, i64 1                  ; &eptr88521[1]
  %eptr88522 = getelementptr inbounds i64, i64* %cloptr88519, i64 2                  ; &eptr88522[2]
  %eptr88523 = getelementptr inbounds i64, i64* %cloptr88519, i64 3                  ; &eptr88523[3]
  store i64 %LI6$new, i64* %eptr88521                                                ; *eptr88521 = %LI6$new
  store i64 %knD$_37wind_45stack, i64* %eptr88522                                    ; *eptr88522 = %knD$_37wind_45stack
  store i64 %cont83857, i64* %eptr88523                                              ; *eptr88523 = %cont83857
  %eptr88520 = getelementptr inbounds i64, i64* %cloptr88519, i64 0                  ; &cloptr88519[0]
  %f88524 = ptrtoint void(i64,i64)* @lam86855 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88524, i64* %eptr88520                                                 ; store fptr
  %arg84532 = ptrtoint i64* %cloptr88519 to i64                                      ; closure cast; i64* -> i64
  %rva85746 = add i64 0, 0                                                           ; quoted ()
  %rva85745 = call i64 @prim_cons(i64 %a83710, i64 %rva85746)                        ; call prim_cons
  %rva85744 = call i64 @prim_cons(i64 %LI6$new, i64 %rva85745)                       ; call prim_cons
  %rva85743 = call i64 @prim_cons(i64 %arg84532, i64 %rva85744)                      ; call prim_cons
  %cloptr88525 = inttoptr i64 %pBD$_37common_45tail to i64*                          ; closure/env cast; i64 -> i64*
  %i0ptr88526 = getelementptr inbounds i64, i64* %cloptr88525, i64 0                 ; &cloptr88525[0]
  %f88528 = load i64, i64* %i0ptr88526, align 8                                      ; load; *i0ptr88526
  %fptr88527 = inttoptr i64 %f88528 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88527(i64 %pBD$_37common_45tail, i64 %rva85743)     ; tail call
  ret void
}


define void @lam86855(i64 %env86856, i64 %rvp85742) {
  %envptr88529 = inttoptr i64 %env86856 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88530 = getelementptr inbounds i64, i64* %envptr88529, i64 3                ; &envptr88529[3]
  %cont83857 = load i64, i64* %envptr88530, align 8                                  ; load; *envptr88530
  %envptr88531 = inttoptr i64 %env86856 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88532 = getelementptr inbounds i64, i64* %envptr88531, i64 2                ; &envptr88531[2]
  %knD$_37wind_45stack = load i64, i64* %envptr88532, align 8                        ; load; *envptr88532
  %envptr88533 = inttoptr i64 %env86856 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88534 = getelementptr inbounds i64, i64* %envptr88533, i64 1                ; &envptr88533[1]
  %LI6$new = load i64, i64* %envptr88534, align 8                                    ; load; *envptr88534
  %_9583858 = call i64 @prim_car(i64 %rvp85742)                                      ; call prim_car
  %rvp85741 = call i64 @prim_cdr(i64 %rvp85742)                                      ; call prim_cdr
  %TD6$tail = call i64 @prim_car(i64 %rvp85741)                                      ; call prim_car
  %na85652 = call i64 @prim_cdr(i64 %rvp85741)                                       ; call prim_cdr
  %cloptr88535 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88536 = getelementptr inbounds i64, i64* %cloptr88535, i64 0                  ; &cloptr88535[0]
  %f88537 = ptrtoint void(i64,i64)* @lam86853 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88537, i64* %eptr88536                                                 ; store fptr
  %arg84535 = ptrtoint i64* %cloptr88535 to i64                                      ; closure cast; i64* -> i64
  %cloptr88538 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88540 = getelementptr inbounds i64, i64* %cloptr88538, i64 1                  ; &eptr88540[1]
  %eptr88541 = getelementptr inbounds i64, i64* %cloptr88538, i64 2                  ; &eptr88541[2]
  %eptr88542 = getelementptr inbounds i64, i64* %cloptr88538, i64 3                  ; &eptr88542[3]
  %eptr88543 = getelementptr inbounds i64, i64* %cloptr88538, i64 4                  ; &eptr88543[4]
  store i64 %LI6$new, i64* %eptr88540                                                ; *eptr88540 = %LI6$new
  store i64 %TD6$tail, i64* %eptr88541                                               ; *eptr88541 = %TD6$tail
  store i64 %knD$_37wind_45stack, i64* %eptr88542                                    ; *eptr88542 = %knD$_37wind_45stack
  store i64 %cont83857, i64* %eptr88543                                              ; *eptr88543 = %cont83857
  %eptr88539 = getelementptr inbounds i64, i64* %cloptr88538, i64 0                  ; &cloptr88538[0]
  %f88544 = ptrtoint void(i64,i64)* @lam86849 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88544, i64* %eptr88539                                                 ; store fptr
  %arg84534 = ptrtoint i64* %cloptr88538 to i64                                      ; closure cast; i64* -> i64
  %rva85740 = add i64 0, 0                                                           ; quoted ()
  %rva85739 = call i64 @prim_cons(i64 %arg84534, i64 %rva85740)                      ; call prim_cons
  %cloptr88545 = inttoptr i64 %arg84535 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88546 = getelementptr inbounds i64, i64* %cloptr88545, i64 0                 ; &cloptr88545[0]
  %f88548 = load i64, i64* %i0ptr88546, align 8                                      ; load; *i0ptr88546
  %fptr88547 = inttoptr i64 %f88548 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88547(i64 %arg84535, i64 %rva85739)                 ; tail call
  ret void
}


define void @lam86853(i64 %env86854, i64 %DAf$lst83879) {
  %cont83878 = call i64 @prim_car(i64 %DAf$lst83879)                                 ; call prim_car
  %DAf$lst = call i64 @prim_cdr(i64 %DAf$lst83879)                                   ; call prim_cdr
  %arg84539 = add i64 0, 0                                                           ; quoted ()
  %rva85655 = add i64 0, 0                                                           ; quoted ()
  %rva85654 = call i64 @prim_cons(i64 %DAf$lst, i64 %rva85655)                       ; call prim_cons
  %rva85653 = call i64 @prim_cons(i64 %arg84539, i64 %rva85654)                      ; call prim_cons
  %cloptr88549 = inttoptr i64 %cont83878 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88550 = getelementptr inbounds i64, i64* %cloptr88549, i64 0                 ; &cloptr88549[0]
  %f88552 = load i64, i64* %i0ptr88550, align 8                                      ; load; *i0ptr88550
  %fptr88551 = inttoptr i64 %f88552 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88551(i64 %cont83878, i64 %rva85653)                ; tail call
  ret void
}


define void @lam86849(i64 %env86850, i64 %rvp85738) {
  %envptr88553 = inttoptr i64 %env86850 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88554 = getelementptr inbounds i64, i64* %envptr88553, i64 4                ; &envptr88553[4]
  %cont83857 = load i64, i64* %envptr88554, align 8                                  ; load; *envptr88554
  %envptr88555 = inttoptr i64 %env86850 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88556 = getelementptr inbounds i64, i64* %envptr88555, i64 3                ; &envptr88555[3]
  %knD$_37wind_45stack = load i64, i64* %envptr88556, align 8                        ; load; *envptr88556
  %envptr88557 = inttoptr i64 %env86850 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88558 = getelementptr inbounds i64, i64* %envptr88557, i64 2                ; &envptr88557[2]
  %TD6$tail = load i64, i64* %envptr88558, align 8                                   ; load; *envptr88558
  %envptr88559 = inttoptr i64 %env86850 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88560 = getelementptr inbounds i64, i64* %envptr88559, i64 1                ; &envptr88559[1]
  %LI6$new = load i64, i64* %envptr88560, align 8                                    ; load; *envptr88560
  %_9583876 = call i64 @prim_car(i64 %rvp85738)                                      ; call prim_car
  %rvp85737 = call i64 @prim_cdr(i64 %rvp85738)                                      ; call prim_cdr
  %a83711 = call i64 @prim_car(i64 %rvp85737)                                        ; call prim_car
  %na85657 = call i64 @prim_cdr(i64 %rvp85737)                                       ; call prim_cdr
  %arg84542 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83877 = call i64 @prim_make_45vector(i64 %arg84542, i64 %a83711)           ; call prim_make_45vector
  %cloptr88561 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88563 = getelementptr inbounds i64, i64* %cloptr88561, i64 1                  ; &eptr88563[1]
  %eptr88564 = getelementptr inbounds i64, i64* %cloptr88561, i64 2                  ; &eptr88564[2]
  %eptr88565 = getelementptr inbounds i64, i64* %cloptr88561, i64 3                  ; &eptr88565[3]
  %eptr88566 = getelementptr inbounds i64, i64* %cloptr88561, i64 4                  ; &eptr88566[4]
  store i64 %LI6$new, i64* %eptr88563                                                ; *eptr88563 = %LI6$new
  store i64 %TD6$tail, i64* %eptr88564                                               ; *eptr88564 = %TD6$tail
  store i64 %knD$_37wind_45stack, i64* %eptr88565                                    ; *eptr88565 = %knD$_37wind_45stack
  store i64 %cont83857, i64* %eptr88566                                              ; *eptr88566 = %cont83857
  %eptr88562 = getelementptr inbounds i64, i64* %cloptr88561, i64 0                  ; &cloptr88561[0]
  %f88567 = ptrtoint void(i64,i64)* @lam86846 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88567, i64* %eptr88562                                                 ; store fptr
  %arg84545 = ptrtoint i64* %cloptr88561 to i64                                      ; closure cast; i64* -> i64
  %arg84544 = add i64 0, 0                                                           ; quoted ()
  %rva85736 = add i64 0, 0                                                           ; quoted ()
  %rva85735 = call i64 @prim_cons(i64 %retprim83877, i64 %rva85736)                  ; call prim_cons
  %rva85734 = call i64 @prim_cons(i64 %arg84544, i64 %rva85735)                      ; call prim_cons
  %cloptr88568 = inttoptr i64 %arg84545 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88569 = getelementptr inbounds i64, i64* %cloptr88568, i64 0                 ; &cloptr88568[0]
  %f88571 = load i64, i64* %i0ptr88569, align 8                                      ; load; *i0ptr88569
  %fptr88570 = inttoptr i64 %f88571 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88570(i64 %arg84545, i64 %rva85734)                 ; tail call
  ret void
}


define void @lam86846(i64 %env86847, i64 %rvp85733) {
  %envptr88572 = inttoptr i64 %env86847 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88573 = getelementptr inbounds i64, i64* %envptr88572, i64 4                ; &envptr88572[4]
  %cont83857 = load i64, i64* %envptr88573, align 8                                  ; load; *envptr88573
  %envptr88574 = inttoptr i64 %env86847 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88575 = getelementptr inbounds i64, i64* %envptr88574, i64 3                ; &envptr88574[3]
  %knD$_37wind_45stack = load i64, i64* %envptr88575, align 8                        ; load; *envptr88575
  %envptr88576 = inttoptr i64 %env86847 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88577 = getelementptr inbounds i64, i64* %envptr88576, i64 2                ; &envptr88576[2]
  %TD6$tail = load i64, i64* %envptr88577, align 8                                   ; load; *envptr88577
  %envptr88578 = inttoptr i64 %env86847 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88579 = getelementptr inbounds i64, i64* %envptr88578, i64 1                ; &envptr88578[1]
  %LI6$new = load i64, i64* %envptr88579, align 8                                    ; load; *envptr88579
  %_9583870 = call i64 @prim_car(i64 %rvp85733)                                      ; call prim_car
  %rvp85732 = call i64 @prim_cdr(i64 %rvp85733)                                      ; call prim_cdr
  %OUX$f = call i64 @prim_car(i64 %rvp85732)                                         ; call prim_car
  %na85659 = call i64 @prim_cdr(i64 %rvp85732)                                       ; call prim_cdr
  %arg84547 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr88580 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88582 = getelementptr inbounds i64, i64* %cloptr88580, i64 1                  ; &eptr88582[1]
  %eptr88583 = getelementptr inbounds i64, i64* %cloptr88580, i64 2                  ; &eptr88583[2]
  %eptr88584 = getelementptr inbounds i64, i64* %cloptr88580, i64 3                  ; &eptr88584[3]
  store i64 %OUX$f, i64* %eptr88582                                                  ; *eptr88582 = %OUX$f
  store i64 %TD6$tail, i64* %eptr88583                                               ; *eptr88583 = %TD6$tail
  store i64 %knD$_37wind_45stack, i64* %eptr88584                                    ; *eptr88584 = %knD$_37wind_45stack
  %eptr88581 = getelementptr inbounds i64, i64* %cloptr88580, i64 0                  ; &cloptr88580[0]
  %f88585 = ptrtoint void(i64,i64)* @lam86843 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88585, i64* %eptr88581                                                 ; store fptr
  %arg84546 = ptrtoint i64* %cloptr88580 to i64                                      ; closure cast; i64* -> i64
  %eKl$_9583596 = call i64 @prim_vector_45set_33(i64 %OUX$f, i64 %arg84547, i64 %arg84546); call prim_vector_45set_33
  %arg84572 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83719 = call i64 @prim_vector_45ref(i64 %OUX$f, i64 %arg84572)                   ; call prim_vector_45ref
  %arg84574 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83720 = call i64 @prim_vector_45ref(i64 %knD$_37wind_45stack, i64 %arg84574)     ; call prim_vector_45ref
  %cloptr88586 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88588 = getelementptr inbounds i64, i64* %cloptr88586, i64 1                  ; &eptr88588[1]
  %eptr88589 = getelementptr inbounds i64, i64* %cloptr88586, i64 2                  ; &eptr88589[2]
  %eptr88590 = getelementptr inbounds i64, i64* %cloptr88586, i64 3                  ; &eptr88590[3]
  %eptr88591 = getelementptr inbounds i64, i64* %cloptr88586, i64 4                  ; &eptr88591[4]
  store i64 %LI6$new, i64* %eptr88588                                                ; *eptr88588 = %LI6$new
  store i64 %TD6$tail, i64* %eptr88589                                               ; *eptr88589 = %TD6$tail
  store i64 %knD$_37wind_45stack, i64* %eptr88590                                    ; *eptr88590 = %knD$_37wind_45stack
  store i64 %cont83857, i64* %eptr88591                                              ; *eptr88591 = %cont83857
  %eptr88587 = getelementptr inbounds i64, i64* %cloptr88586, i64 0                  ; &cloptr88586[0]
  %f88592 = ptrtoint void(i64,i64)* @lam86827 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88592, i64* %eptr88587                                                 ; store fptr
  %arg84577 = ptrtoint i64* %cloptr88586 to i64                                      ; closure cast; i64* -> i64
  %rva85731 = add i64 0, 0                                                           ; quoted ()
  %rva85730 = call i64 @prim_cons(i64 %a83720, i64 %rva85731)                        ; call prim_cons
  %rva85729 = call i64 @prim_cons(i64 %arg84577, i64 %rva85730)                      ; call prim_cons
  %cloptr88593 = inttoptr i64 %a83719 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88594 = getelementptr inbounds i64, i64* %cloptr88593, i64 0                 ; &cloptr88593[0]
  %f88596 = load i64, i64* %i0ptr88594, align 8                                      ; load; *i0ptr88594
  %fptr88595 = inttoptr i64 %f88596 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88595(i64 %a83719, i64 %rva85729)                   ; tail call
  ret void
}


define void @lam86843(i64 %env86844, i64 %rvp85682) {
  %envptr88597 = inttoptr i64 %env86844 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88598 = getelementptr inbounds i64, i64* %envptr88597, i64 3                ; &envptr88597[3]
  %knD$_37wind_45stack = load i64, i64* %envptr88598, align 8                        ; load; *envptr88598
  %envptr88599 = inttoptr i64 %env86844 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88600 = getelementptr inbounds i64, i64* %envptr88599, i64 2                ; &envptr88599[2]
  %TD6$tail = load i64, i64* %envptr88600, align 8                                   ; load; *envptr88600
  %envptr88601 = inttoptr i64 %env86844 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88602 = getelementptr inbounds i64, i64* %envptr88601, i64 1                ; &envptr88601[1]
  %OUX$f = load i64, i64* %envptr88602, align 8                                      ; load; *envptr88602
  %cont83871 = call i64 @prim_car(i64 %rvp85682)                                     ; call prim_car
  %rvp85681 = call i64 @prim_cdr(i64 %rvp85682)                                      ; call prim_cdr
  %ge1$l = call i64 @prim_car(i64 %rvp85681)                                         ; call prim_car
  %na85661 = call i64 @prim_cdr(i64 %rvp85681)                                       ; call prim_cdr
  %a83712 = call i64 @prim_eq_63(i64 %ge1$l, i64 %TD6$tail)                          ; call prim_eq_63
  %a83713 = call i64 @prim_not(i64 %a83712)                                          ; call prim_not
  %cmp88603 = icmp eq i64 %a83713, 15                                                ; false?
  br i1 %cmp88603, label %else88605, label %then88604                                ; if

then88604:
  %a83714 = call i64 @prim_cdr(i64 %ge1$l)                                           ; call prim_cdr
  %arg84554 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83874 = call i64 @prim_vector_45set_33(i64 %knD$_37wind_45stack, i64 %arg84554, i64 %a83714); call prim_vector_45set_33
  %cloptr88606 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88608 = getelementptr inbounds i64, i64* %cloptr88606, i64 1                  ; &eptr88608[1]
  %eptr88609 = getelementptr inbounds i64, i64* %cloptr88606, i64 2                  ; &eptr88609[2]
  %eptr88610 = getelementptr inbounds i64, i64* %cloptr88606, i64 3                  ; &eptr88610[3]
  store i64 %OUX$f, i64* %eptr88608                                                  ; *eptr88608 = %OUX$f
  store i64 %cont83871, i64* %eptr88609                                              ; *eptr88609 = %cont83871
  store i64 %ge1$l, i64* %eptr88610                                                  ; *eptr88610 = %ge1$l
  %eptr88607 = getelementptr inbounds i64, i64* %cloptr88606, i64 0                  ; &cloptr88606[0]
  %f88611 = ptrtoint void(i64,i64)* @lam86838 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88611, i64* %eptr88607                                                 ; store fptr
  %arg84558 = ptrtoint i64* %cloptr88606 to i64                                      ; closure cast; i64* -> i64
  %arg84557 = add i64 0, 0                                                           ; quoted ()
  %rva85677 = add i64 0, 0                                                           ; quoted ()
  %rva85676 = call i64 @prim_cons(i64 %retprim83874, i64 %rva85677)                  ; call prim_cons
  %rva85675 = call i64 @prim_cons(i64 %arg84557, i64 %rva85676)                      ; call prim_cons
  %cloptr88612 = inttoptr i64 %arg84558 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88613 = getelementptr inbounds i64, i64* %cloptr88612, i64 0                 ; &cloptr88612[0]
  %f88615 = load i64, i64* %i0ptr88613, align 8                                      ; load; *i0ptr88613
  %fptr88614 = inttoptr i64 %f88615 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88614(i64 %arg84558, i64 %rva85675)                 ; tail call
  ret void

else88605:
  %retprim83875 = call i64 @prim_void()                                              ; call prim_void
  %arg84570 = add i64 0, 0                                                           ; quoted ()
  %rva85680 = add i64 0, 0                                                           ; quoted ()
  %rva85679 = call i64 @prim_cons(i64 %retprim83875, i64 %rva85680)                  ; call prim_cons
  %rva85678 = call i64 @prim_cons(i64 %arg84570, i64 %rva85679)                      ; call prim_cons
  %cloptr88616 = inttoptr i64 %cont83871 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88617 = getelementptr inbounds i64, i64* %cloptr88616, i64 0                 ; &cloptr88616[0]
  %f88619 = load i64, i64* %i0ptr88617, align 8                                      ; load; *i0ptr88617
  %fptr88618 = inttoptr i64 %f88619 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88618(i64 %cont83871, i64 %rva85678)                ; tail call
  ret void
}


define void @lam86838(i64 %env86839, i64 %rvp85674) {
  %envptr88620 = inttoptr i64 %env86839 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88621 = getelementptr inbounds i64, i64* %envptr88620, i64 3                ; &envptr88620[3]
  %ge1$l = load i64, i64* %envptr88621, align 8                                      ; load; *envptr88621
  %envptr88622 = inttoptr i64 %env86839 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88623 = getelementptr inbounds i64, i64* %envptr88622, i64 2                ; &envptr88622[2]
  %cont83871 = load i64, i64* %envptr88623, align 8                                  ; load; *envptr88623
  %envptr88624 = inttoptr i64 %env86839 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88625 = getelementptr inbounds i64, i64* %envptr88624, i64 1                ; &envptr88624[1]
  %OUX$f = load i64, i64* %envptr88625, align 8                                      ; load; *envptr88625
  %_9583872 = call i64 @prim_car(i64 %rvp85674)                                      ; call prim_car
  %rvp85673 = call i64 @prim_cdr(i64 %rvp85674)                                      ; call prim_cdr
  %sAH$_9583597 = call i64 @prim_car(i64 %rvp85673)                                  ; call prim_car
  %na85663 = call i64 @prim_cdr(i64 %rvp85673)                                       ; call prim_cdr
  %a83715 = call i64 @prim_car(i64 %ge1$l)                                           ; call prim_car
  %a83716 = call i64 @prim_cdr(i64 %a83715)                                          ; call prim_cdr
  %cloptr88626 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88628 = getelementptr inbounds i64, i64* %cloptr88626, i64 1                  ; &eptr88628[1]
  %eptr88629 = getelementptr inbounds i64, i64* %cloptr88626, i64 2                  ; &eptr88629[2]
  %eptr88630 = getelementptr inbounds i64, i64* %cloptr88626, i64 3                  ; &eptr88630[3]
  store i64 %OUX$f, i64* %eptr88628                                                  ; *eptr88628 = %OUX$f
  store i64 %cont83871, i64* %eptr88629                                              ; *eptr88629 = %cont83871
  store i64 %ge1$l, i64* %eptr88630                                                  ; *eptr88630 = %ge1$l
  %eptr88627 = getelementptr inbounds i64, i64* %cloptr88626, i64 0                  ; &cloptr88626[0]
  %f88631 = ptrtoint void(i64,i64)* @lam86836 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88631, i64* %eptr88627                                                 ; store fptr
  %arg84561 = ptrtoint i64* %cloptr88626 to i64                                      ; closure cast; i64* -> i64
  %rva85672 = add i64 0, 0                                                           ; quoted ()
  %rva85671 = call i64 @prim_cons(i64 %arg84561, i64 %rva85672)                      ; call prim_cons
  %cloptr88632 = inttoptr i64 %a83716 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88633 = getelementptr inbounds i64, i64* %cloptr88632, i64 0                 ; &cloptr88632[0]
  %f88635 = load i64, i64* %i0ptr88633, align 8                                      ; load; *i0ptr88633
  %fptr88634 = inttoptr i64 %f88635 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88634(i64 %a83716, i64 %rva85671)                   ; tail call
  ret void
}


define void @lam86836(i64 %env86837, i64 %rvp85670) {
  %envptr88636 = inttoptr i64 %env86837 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88637 = getelementptr inbounds i64, i64* %envptr88636, i64 3                ; &envptr88636[3]
  %ge1$l = load i64, i64* %envptr88637, align 8                                      ; load; *envptr88637
  %envptr88638 = inttoptr i64 %env86837 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88639 = getelementptr inbounds i64, i64* %envptr88638, i64 2                ; &envptr88638[2]
  %cont83871 = load i64, i64* %envptr88639, align 8                                  ; load; *envptr88639
  %envptr88640 = inttoptr i64 %env86837 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88641 = getelementptr inbounds i64, i64* %envptr88640, i64 1                ; &envptr88640[1]
  %OUX$f = load i64, i64* %envptr88641, align 8                                      ; load; *envptr88641
  %_9583873 = call i64 @prim_car(i64 %rvp85670)                                      ; call prim_car
  %rvp85669 = call i64 @prim_cdr(i64 %rvp85670)                                      ; call prim_cdr
  %Ian$_9583598 = call i64 @prim_car(i64 %rvp85669)                                  ; call prim_car
  %na85665 = call i64 @prim_cdr(i64 %rvp85669)                                       ; call prim_cdr
  %arg84563 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83717 = call i64 @prim_vector_45ref(i64 %OUX$f, i64 %arg84563)                   ; call prim_vector_45ref
  %a83718 = call i64 @prim_cdr(i64 %ge1$l)                                           ; call prim_cdr
  %rva85668 = add i64 0, 0                                                           ; quoted ()
  %rva85667 = call i64 @prim_cons(i64 %a83718, i64 %rva85668)                        ; call prim_cons
  %rva85666 = call i64 @prim_cons(i64 %cont83871, i64 %rva85667)                     ; call prim_cons
  %cloptr88642 = inttoptr i64 %a83717 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88643 = getelementptr inbounds i64, i64* %cloptr88642, i64 0                 ; &cloptr88642[0]
  %f88645 = load i64, i64* %i0ptr88643, align 8                                      ; load; *i0ptr88643
  %fptr88644 = inttoptr i64 %f88645 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88644(i64 %a83717, i64 %rva85666)                   ; tail call
  ret void
}


define void @lam86827(i64 %env86828, i64 %rvp85728) {
  %envptr88646 = inttoptr i64 %env86828 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88647 = getelementptr inbounds i64, i64* %envptr88646, i64 4                ; &envptr88646[4]
  %cont83857 = load i64, i64* %envptr88647, align 8                                  ; load; *envptr88647
  %envptr88648 = inttoptr i64 %env86828 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88649 = getelementptr inbounds i64, i64* %envptr88648, i64 3                ; &envptr88648[3]
  %knD$_37wind_45stack = load i64, i64* %envptr88649, align 8                        ; load; *envptr88649
  %envptr88650 = inttoptr i64 %env86828 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88651 = getelementptr inbounds i64, i64* %envptr88650, i64 2                ; &envptr88650[2]
  %TD6$tail = load i64, i64* %envptr88651, align 8                                   ; load; *envptr88651
  %envptr88652 = inttoptr i64 %env86828 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88653 = getelementptr inbounds i64, i64* %envptr88652, i64 1                ; &envptr88652[1]
  %LI6$new = load i64, i64* %envptr88653, align 8                                    ; load; *envptr88653
  %_9583859 = call i64 @prim_car(i64 %rvp85728)                                      ; call prim_car
  %rvp85727 = call i64 @prim_cdr(i64 %rvp85728)                                      ; call prim_cdr
  %su8$_9583595 = call i64 @prim_car(i64 %rvp85727)                                  ; call prim_car
  %na85684 = call i64 @prim_cdr(i64 %rvp85727)                                       ; call prim_cdr
  %cloptr88654 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88655 = getelementptr inbounds i64, i64* %cloptr88654, i64 0                  ; &cloptr88654[0]
  %f88656 = ptrtoint void(i64,i64)* @lam86825 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88656, i64* %eptr88655                                                 ; store fptr
  %arg84580 = ptrtoint i64* %cloptr88654 to i64                                      ; closure cast; i64* -> i64
  %cloptr88657 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88659 = getelementptr inbounds i64, i64* %cloptr88657, i64 1                  ; &eptr88659[1]
  %eptr88660 = getelementptr inbounds i64, i64* %cloptr88657, i64 2                  ; &eptr88660[2]
  %eptr88661 = getelementptr inbounds i64, i64* %cloptr88657, i64 3                  ; &eptr88661[3]
  %eptr88662 = getelementptr inbounds i64, i64* %cloptr88657, i64 4                  ; &eptr88662[4]
  store i64 %LI6$new, i64* %eptr88659                                                ; *eptr88659 = %LI6$new
  store i64 %TD6$tail, i64* %eptr88660                                               ; *eptr88660 = %TD6$tail
  store i64 %knD$_37wind_45stack, i64* %eptr88661                                    ; *eptr88661 = %knD$_37wind_45stack
  store i64 %cont83857, i64* %eptr88662                                              ; *eptr88662 = %cont83857
  %eptr88658 = getelementptr inbounds i64, i64* %cloptr88657, i64 0                  ; &cloptr88657[0]
  %f88663 = ptrtoint void(i64,i64)* @lam86821 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88663, i64* %eptr88658                                                 ; store fptr
  %arg84579 = ptrtoint i64* %cloptr88657 to i64                                      ; closure cast; i64* -> i64
  %rva85726 = add i64 0, 0                                                           ; quoted ()
  %rva85725 = call i64 @prim_cons(i64 %arg84579, i64 %rva85726)                      ; call prim_cons
  %cloptr88664 = inttoptr i64 %arg84580 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88665 = getelementptr inbounds i64, i64* %cloptr88664, i64 0                 ; &cloptr88664[0]
  %f88667 = load i64, i64* %i0ptr88665, align 8                                      ; load; *i0ptr88665
  %fptr88666 = inttoptr i64 %f88667 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88666(i64 %arg84580, i64 %rva85725)                 ; tail call
  ret void
}


define void @lam86825(i64 %env86826, i64 %f3K$lst83869) {
  %cont83868 = call i64 @prim_car(i64 %f3K$lst83869)                                 ; call prim_car
  %f3K$lst = call i64 @prim_cdr(i64 %f3K$lst83869)                                   ; call prim_cdr
  %arg84584 = add i64 0, 0                                                           ; quoted ()
  %rva85687 = add i64 0, 0                                                           ; quoted ()
  %rva85686 = call i64 @prim_cons(i64 %f3K$lst, i64 %rva85687)                       ; call prim_cons
  %rva85685 = call i64 @prim_cons(i64 %arg84584, i64 %rva85686)                      ; call prim_cons
  %cloptr88668 = inttoptr i64 %cont83868 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88669 = getelementptr inbounds i64, i64* %cloptr88668, i64 0                 ; &cloptr88668[0]
  %f88671 = load i64, i64* %i0ptr88669, align 8                                      ; load; *i0ptr88669
  %fptr88670 = inttoptr i64 %f88671 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88670(i64 %cont83868, i64 %rva85685)                ; tail call
  ret void
}


define void @lam86821(i64 %env86822, i64 %rvp85724) {
  %envptr88672 = inttoptr i64 %env86822 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88673 = getelementptr inbounds i64, i64* %envptr88672, i64 4                ; &envptr88672[4]
  %cont83857 = load i64, i64* %envptr88673, align 8                                  ; load; *envptr88673
  %envptr88674 = inttoptr i64 %env86822 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88675 = getelementptr inbounds i64, i64* %envptr88674, i64 3                ; &envptr88674[3]
  %knD$_37wind_45stack = load i64, i64* %envptr88675, align 8                        ; load; *envptr88675
  %envptr88676 = inttoptr i64 %env86822 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88677 = getelementptr inbounds i64, i64* %envptr88676, i64 2                ; &envptr88676[2]
  %TD6$tail = load i64, i64* %envptr88677, align 8                                   ; load; *envptr88677
  %envptr88678 = inttoptr i64 %env86822 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88679 = getelementptr inbounds i64, i64* %envptr88678, i64 1                ; &envptr88678[1]
  %LI6$new = load i64, i64* %envptr88679, align 8                                    ; load; *envptr88679
  %_9583866 = call i64 @prim_car(i64 %rvp85724)                                      ; call prim_car
  %rvp85723 = call i64 @prim_cdr(i64 %rvp85724)                                      ; call prim_cdr
  %a83721 = call i64 @prim_car(i64 %rvp85723)                                        ; call prim_car
  %na85689 = call i64 @prim_cdr(i64 %rvp85723)                                       ; call prim_cdr
  %arg84587 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83867 = call i64 @prim_make_45vector(i64 %arg84587, i64 %a83721)           ; call prim_make_45vector
  %cloptr88680 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88682 = getelementptr inbounds i64, i64* %cloptr88680, i64 1                  ; &eptr88682[1]
  %eptr88683 = getelementptr inbounds i64, i64* %cloptr88680, i64 2                  ; &eptr88683[2]
  %eptr88684 = getelementptr inbounds i64, i64* %cloptr88680, i64 3                  ; &eptr88684[3]
  %eptr88685 = getelementptr inbounds i64, i64* %cloptr88680, i64 4                  ; &eptr88685[4]
  store i64 %LI6$new, i64* %eptr88682                                                ; *eptr88682 = %LI6$new
  store i64 %TD6$tail, i64* %eptr88683                                               ; *eptr88683 = %TD6$tail
  store i64 %knD$_37wind_45stack, i64* %eptr88684                                    ; *eptr88684 = %knD$_37wind_45stack
  store i64 %cont83857, i64* %eptr88685                                              ; *eptr88685 = %cont83857
  %eptr88681 = getelementptr inbounds i64, i64* %cloptr88680, i64 0                  ; &cloptr88680[0]
  %f88686 = ptrtoint void(i64,i64)* @lam86818 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88686, i64* %eptr88681                                                 ; store fptr
  %arg84590 = ptrtoint i64* %cloptr88680 to i64                                      ; closure cast; i64* -> i64
  %arg84589 = add i64 0, 0                                                           ; quoted ()
  %rva85722 = add i64 0, 0                                                           ; quoted ()
  %rva85721 = call i64 @prim_cons(i64 %retprim83867, i64 %rva85722)                  ; call prim_cons
  %rva85720 = call i64 @prim_cons(i64 %arg84589, i64 %rva85721)                      ; call prim_cons
  %cloptr88687 = inttoptr i64 %arg84590 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88688 = getelementptr inbounds i64, i64* %cloptr88687, i64 0                 ; &cloptr88687[0]
  %f88690 = load i64, i64* %i0ptr88688, align 8                                      ; load; *i0ptr88688
  %fptr88689 = inttoptr i64 %f88690 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88689(i64 %arg84590, i64 %rva85720)                 ; tail call
  ret void
}


define void @lam86818(i64 %env86819, i64 %rvp85719) {
  %envptr88691 = inttoptr i64 %env86819 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88692 = getelementptr inbounds i64, i64* %envptr88691, i64 4                ; &envptr88691[4]
  %cont83857 = load i64, i64* %envptr88692, align 8                                  ; load; *envptr88692
  %envptr88693 = inttoptr i64 %env86819 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88694 = getelementptr inbounds i64, i64* %envptr88693, i64 3                ; &envptr88693[3]
  %knD$_37wind_45stack = load i64, i64* %envptr88694, align 8                        ; load; *envptr88694
  %envptr88695 = inttoptr i64 %env86819 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88696 = getelementptr inbounds i64, i64* %envptr88695, i64 2                ; &envptr88695[2]
  %TD6$tail = load i64, i64* %envptr88696, align 8                                   ; load; *envptr88696
  %envptr88697 = inttoptr i64 %env86819 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88698 = getelementptr inbounds i64, i64* %envptr88697, i64 1                ; &envptr88697[1]
  %LI6$new = load i64, i64* %envptr88698, align 8                                    ; load; *envptr88698
  %_9583860 = call i64 @prim_car(i64 %rvp85719)                                      ; call prim_car
  %rvp85718 = call i64 @prim_cdr(i64 %rvp85719)                                      ; call prim_cdr
  %XjS$f = call i64 @prim_car(i64 %rvp85718)                                         ; call prim_car
  %na85691 = call i64 @prim_cdr(i64 %rvp85718)                                       ; call prim_cdr
  %arg84592 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr88699 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88701 = getelementptr inbounds i64, i64* %cloptr88699, i64 1                  ; &eptr88701[1]
  %eptr88702 = getelementptr inbounds i64, i64* %cloptr88699, i64 2                  ; &eptr88702[2]
  %eptr88703 = getelementptr inbounds i64, i64* %cloptr88699, i64 3                  ; &eptr88703[3]
  store i64 %TD6$tail, i64* %eptr88701                                               ; *eptr88701 = %TD6$tail
  store i64 %XjS$f, i64* %eptr88702                                                  ; *eptr88702 = %XjS$f
  store i64 %knD$_37wind_45stack, i64* %eptr88703                                    ; *eptr88703 = %knD$_37wind_45stack
  %eptr88700 = getelementptr inbounds i64, i64* %cloptr88699, i64 0                  ; &cloptr88699[0]
  %f88704 = ptrtoint void(i64,i64)* @lam86815 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88704, i64* %eptr88700                                                 ; store fptr
  %arg84591 = ptrtoint i64* %cloptr88699 to i64                                      ; closure cast; i64* -> i64
  %l7h$_9583599 = call i64 @prim_vector_45set_33(i64 %XjS$f, i64 %arg84592, i64 %arg84591); call prim_vector_45set_33
  %arg84616 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83728 = call i64 @prim_vector_45ref(i64 %XjS$f, i64 %arg84616)                   ; call prim_vector_45ref
  %rva85717 = add i64 0, 0                                                           ; quoted ()
  %rva85716 = call i64 @prim_cons(i64 %LI6$new, i64 %rva85717)                       ; call prim_cons
  %rva85715 = call i64 @prim_cons(i64 %cont83857, i64 %rva85716)                     ; call prim_cons
  %cloptr88705 = inttoptr i64 %a83728 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88706 = getelementptr inbounds i64, i64* %cloptr88705, i64 0                 ; &cloptr88705[0]
  %f88708 = load i64, i64* %i0ptr88706, align 8                                      ; load; *i0ptr88706
  %fptr88707 = inttoptr i64 %f88708 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88707(i64 %a83728, i64 %rva85715)                   ; tail call
  ret void
}


define void @lam86815(i64 %env86816, i64 %rvp85714) {
  %envptr88709 = inttoptr i64 %env86816 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88710 = getelementptr inbounds i64, i64* %envptr88709, i64 3                ; &envptr88709[3]
  %knD$_37wind_45stack = load i64, i64* %envptr88710, align 8                        ; load; *envptr88710
  %envptr88711 = inttoptr i64 %env86816 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88712 = getelementptr inbounds i64, i64* %envptr88711, i64 2                ; &envptr88711[2]
  %XjS$f = load i64, i64* %envptr88712, align 8                                      ; load; *envptr88712
  %envptr88713 = inttoptr i64 %env86816 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88714 = getelementptr inbounds i64, i64* %envptr88713, i64 1                ; &envptr88713[1]
  %TD6$tail = load i64, i64* %envptr88714, align 8                                   ; load; *envptr88714
  %cont83861 = call i64 @prim_car(i64 %rvp85714)                                     ; call prim_car
  %rvp85713 = call i64 @prim_cdr(i64 %rvp85714)                                      ; call prim_cdr
  %MYM$l = call i64 @prim_car(i64 %rvp85713)                                         ; call prim_car
  %na85693 = call i64 @prim_cdr(i64 %rvp85713)                                       ; call prim_cdr
  %a83722 = call i64 @prim_eq_63(i64 %MYM$l, i64 %TD6$tail)                          ; call prim_eq_63
  %a83723 = call i64 @prim_not(i64 %a83722)                                          ; call prim_not
  %cmp88715 = icmp eq i64 %a83723, 15                                                ; false?
  br i1 %cmp88715, label %else88717, label %then88716                                ; if

then88716:
  %arg84597 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83724 = call i64 @prim_vector_45ref(i64 %XjS$f, i64 %arg84597)                   ; call prim_vector_45ref
  %a83725 = call i64 @prim_cdr(i64 %MYM$l)                                           ; call prim_cdr
  %cloptr88718 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88720 = getelementptr inbounds i64, i64* %cloptr88718, i64 1                  ; &eptr88720[1]
  %eptr88721 = getelementptr inbounds i64, i64* %cloptr88718, i64 2                  ; &eptr88721[2]
  %eptr88722 = getelementptr inbounds i64, i64* %cloptr88718, i64 3                  ; &eptr88722[3]
  store i64 %MYM$l, i64* %eptr88720                                                  ; *eptr88720 = %MYM$l
  store i64 %knD$_37wind_45stack, i64* %eptr88721                                    ; *eptr88721 = %knD$_37wind_45stack
  store i64 %cont83861, i64* %eptr88722                                              ; *eptr88722 = %cont83861
  %eptr88719 = getelementptr inbounds i64, i64* %cloptr88718, i64 0                  ; &cloptr88718[0]
  %f88723 = ptrtoint void(i64,i64)* @lam86810 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88723, i64* %eptr88719                                                 ; store fptr
  %arg84601 = ptrtoint i64* %cloptr88718 to i64                                      ; closure cast; i64* -> i64
  %rva85709 = add i64 0, 0                                                           ; quoted ()
  %rva85708 = call i64 @prim_cons(i64 %a83725, i64 %rva85709)                        ; call prim_cons
  %rva85707 = call i64 @prim_cons(i64 %arg84601, i64 %rva85708)                      ; call prim_cons
  %cloptr88724 = inttoptr i64 %a83724 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88725 = getelementptr inbounds i64, i64* %cloptr88724, i64 0                 ; &cloptr88724[0]
  %f88727 = load i64, i64* %i0ptr88725, align 8                                      ; load; *i0ptr88725
  %fptr88726 = inttoptr i64 %f88727 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88726(i64 %a83724, i64 %rva85707)                   ; tail call
  ret void

else88717:
  %retprim83865 = call i64 @prim_void()                                              ; call prim_void
  %arg84614 = add i64 0, 0                                                           ; quoted ()
  %rva85712 = add i64 0, 0                                                           ; quoted ()
  %rva85711 = call i64 @prim_cons(i64 %retprim83865, i64 %rva85712)                  ; call prim_cons
  %rva85710 = call i64 @prim_cons(i64 %arg84614, i64 %rva85711)                      ; call prim_cons
  %cloptr88728 = inttoptr i64 %cont83861 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88729 = getelementptr inbounds i64, i64* %cloptr88728, i64 0                 ; &cloptr88728[0]
  %f88731 = load i64, i64* %i0ptr88729, align 8                                      ; load; *i0ptr88729
  %fptr88730 = inttoptr i64 %f88731 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88730(i64 %cont83861, i64 %rva85710)                ; tail call
  ret void
}


define void @lam86810(i64 %env86811, i64 %rvp85706) {
  %envptr88732 = inttoptr i64 %env86811 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88733 = getelementptr inbounds i64, i64* %envptr88732, i64 3                ; &envptr88732[3]
  %cont83861 = load i64, i64* %envptr88733, align 8                                  ; load; *envptr88733
  %envptr88734 = inttoptr i64 %env86811 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88735 = getelementptr inbounds i64, i64* %envptr88734, i64 2                ; &envptr88734[2]
  %knD$_37wind_45stack = load i64, i64* %envptr88735, align 8                        ; load; *envptr88735
  %envptr88736 = inttoptr i64 %env86811 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88737 = getelementptr inbounds i64, i64* %envptr88736, i64 1                ; &envptr88736[1]
  %MYM$l = load i64, i64* %envptr88737, align 8                                      ; load; *envptr88737
  %_9583862 = call i64 @prim_car(i64 %rvp85706)                                      ; call prim_car
  %rvp85705 = call i64 @prim_cdr(i64 %rvp85706)                                      ; call prim_cdr
  %sVF$_9583600 = call i64 @prim_car(i64 %rvp85705)                                  ; call prim_car
  %na85695 = call i64 @prim_cdr(i64 %rvp85705)                                       ; call prim_cdr
  %a83726 = call i64 @prim_car(i64 %MYM$l)                                           ; call prim_car
  %a83727 = call i64 @prim_car(i64 %a83726)                                          ; call prim_car
  %cloptr88738 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88740 = getelementptr inbounds i64, i64* %cloptr88738, i64 1                  ; &eptr88740[1]
  %eptr88741 = getelementptr inbounds i64, i64* %cloptr88738, i64 2                  ; &eptr88741[2]
  %eptr88742 = getelementptr inbounds i64, i64* %cloptr88738, i64 3                  ; &eptr88742[3]
  store i64 %MYM$l, i64* %eptr88740                                                  ; *eptr88740 = %MYM$l
  store i64 %knD$_37wind_45stack, i64* %eptr88741                                    ; *eptr88741 = %knD$_37wind_45stack
  store i64 %cont83861, i64* %eptr88742                                              ; *eptr88742 = %cont83861
  %eptr88739 = getelementptr inbounds i64, i64* %cloptr88738, i64 0                  ; &cloptr88738[0]
  %f88743 = ptrtoint void(i64,i64)* @lam86808 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88743, i64* %eptr88739                                                 ; store fptr
  %arg84605 = ptrtoint i64* %cloptr88738 to i64                                      ; closure cast; i64* -> i64
  %rva85704 = add i64 0, 0                                                           ; quoted ()
  %rva85703 = call i64 @prim_cons(i64 %arg84605, i64 %rva85704)                      ; call prim_cons
  %cloptr88744 = inttoptr i64 %a83727 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88745 = getelementptr inbounds i64, i64* %cloptr88744, i64 0                 ; &cloptr88744[0]
  %f88747 = load i64, i64* %i0ptr88745, align 8                                      ; load; *i0ptr88745
  %fptr88746 = inttoptr i64 %f88747 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88746(i64 %a83727, i64 %rva85703)                   ; tail call
  ret void
}


define void @lam86808(i64 %env86809, i64 %rvp85702) {
  %envptr88748 = inttoptr i64 %env86809 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88749 = getelementptr inbounds i64, i64* %envptr88748, i64 3                ; &envptr88748[3]
  %cont83861 = load i64, i64* %envptr88749, align 8                                  ; load; *envptr88749
  %envptr88750 = inttoptr i64 %env86809 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88751 = getelementptr inbounds i64, i64* %envptr88750, i64 2                ; &envptr88750[2]
  %knD$_37wind_45stack = load i64, i64* %envptr88751, align 8                        ; load; *envptr88751
  %envptr88752 = inttoptr i64 %env86809 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88753 = getelementptr inbounds i64, i64* %envptr88752, i64 1                ; &envptr88752[1]
  %MYM$l = load i64, i64* %envptr88753, align 8                                      ; load; *envptr88753
  %_9583863 = call i64 @prim_car(i64 %rvp85702)                                      ; call prim_car
  %rvp85701 = call i64 @prim_cdr(i64 %rvp85702)                                      ; call prim_cdr
  %gU2$_9583601 = call i64 @prim_car(i64 %rvp85701)                                  ; call prim_car
  %na85697 = call i64 @prim_cdr(i64 %rvp85701)                                       ; call prim_cdr
  %arg84608 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83864 = call i64 @prim_vector_45set_33(i64 %knD$_37wind_45stack, i64 %arg84608, i64 %MYM$l); call prim_vector_45set_33
  %arg84611 = add i64 0, 0                                                           ; quoted ()
  %rva85700 = add i64 0, 0                                                           ; quoted ()
  %rva85699 = call i64 @prim_cons(i64 %retprim83864, i64 %rva85700)                  ; call prim_cons
  %rva85698 = call i64 @prim_cons(i64 %arg84611, i64 %rva85699)                      ; call prim_cons
  %cloptr88754 = inttoptr i64 %cont83861 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88755 = getelementptr inbounds i64, i64* %cloptr88754, i64 0                 ; &cloptr88754[0]
  %f88757 = load i64, i64* %i0ptr88755, align 8                                      ; load; *i0ptr88755
  %fptr88756 = inttoptr i64 %f88757 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88756(i64 %cont83861, i64 %rva85698)                ; tail call
  ret void
}


define void @lam86791(i64 %env86792, i64 %TxM$lst83927) {
  %cont83926 = call i64 @prim_car(i64 %TxM$lst83927)                                 ; call prim_car
  %TxM$lst = call i64 @prim_cdr(i64 %TxM$lst83927)                                   ; call prim_cdr
  %arg84626 = add i64 0, 0                                                           ; quoted ()
  %rva85751 = add i64 0, 0                                                           ; quoted ()
  %rva85750 = call i64 @prim_cons(i64 %TxM$lst, i64 %rva85751)                       ; call prim_cons
  %rva85749 = call i64 @prim_cons(i64 %arg84626, i64 %rva85750)                      ; call prim_cons
  %cloptr88758 = inttoptr i64 %cont83926 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88759 = getelementptr inbounds i64, i64* %cloptr88758, i64 0                 ; &cloptr88758[0]
  %f88761 = load i64, i64* %i0ptr88759, align 8                                      ; load; *i0ptr88759
  %fptr88760 = inttoptr i64 %f88761 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88760(i64 %cont83926, i64 %rva85749)                ; tail call
  ret void
}


define void @lam86787(i64 %env86788, i64 %rvp85996) {
  %envptr88762 = inttoptr i64 %env86788 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88763 = getelementptr inbounds i64, i64* %envptr88762, i64 1                ; &envptr88762[1]
  %C6M$_37append = load i64, i64* %envptr88763, align 8                              ; load; *envptr88763
  %_9583924 = call i64 @prim_car(i64 %rvp85996)                                      ; call prim_car
  %rvp85995 = call i64 @prim_cdr(i64 %rvp85996)                                      ; call prim_cdr
  %a83729 = call i64 @prim_car(i64 %rvp85995)                                        ; call prim_car
  %na85753 = call i64 @prim_cdr(i64 %rvp85995)                                       ; call prim_cdr
  %arg84629 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83925 = call i64 @prim_make_45vector(i64 %arg84629, i64 %a83729)           ; call prim_make_45vector
  %cloptr88764 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr88766 = getelementptr inbounds i64, i64* %cloptr88764, i64 1                  ; &eptr88766[1]
  store i64 %C6M$_37append, i64* %eptr88766                                          ; *eptr88766 = %C6M$_37append
  %eptr88765 = getelementptr inbounds i64, i64* %cloptr88764, i64 0                  ; &cloptr88764[0]
  %f88767 = ptrtoint void(i64,i64)* @lam86784 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88767, i64* %eptr88765                                                 ; store fptr
  %arg84632 = ptrtoint i64* %cloptr88764 to i64                                      ; closure cast; i64* -> i64
  %arg84631 = add i64 0, 0                                                           ; quoted ()
  %rva85994 = add i64 0, 0                                                           ; quoted ()
  %rva85993 = call i64 @prim_cons(i64 %retprim83925, i64 %rva85994)                  ; call prim_cons
  %rva85992 = call i64 @prim_cons(i64 %arg84631, i64 %rva85993)                      ; call prim_cons
  %cloptr88768 = inttoptr i64 %arg84632 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88769 = getelementptr inbounds i64, i64* %cloptr88768, i64 0                 ; &cloptr88768[0]
  %f88771 = load i64, i64* %i0ptr88769, align 8                                      ; load; *i0ptr88769
  %fptr88770 = inttoptr i64 %f88771 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88770(i64 %arg84632, i64 %rva85992)                 ; tail call
  ret void
}


define void @lam86784(i64 %env86785, i64 %rvp85991) {
  %envptr88772 = inttoptr i64 %env86785 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88773 = getelementptr inbounds i64, i64* %envptr88772, i64 1                ; &envptr88772[1]
  %C6M$_37append = load i64, i64* %envptr88773, align 8                              ; load; *envptr88773
  %_9583880 = call i64 @prim_car(i64 %rvp85991)                                      ; call prim_car
  %rvp85990 = call i64 @prim_cdr(i64 %rvp85991)                                      ; call prim_cdr
  %emt$nqueens = call i64 @prim_car(i64 %rvp85990)                                   ; call prim_car
  %na85755 = call i64 @prim_cdr(i64 %rvp85990)                                       ; call prim_cdr
  %arg84634 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr88774 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr88776 = getelementptr inbounds i64, i64* %cloptr88774, i64 1                  ; &eptr88776[1]
  store i64 %C6M$_37append, i64* %eptr88776                                          ; *eptr88776 = %C6M$_37append
  %eptr88775 = getelementptr inbounds i64, i64* %cloptr88774, i64 0                  ; &cloptr88774[0]
  %f88777 = ptrtoint void(i64,i64)* @lam86781 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88777, i64* %eptr88775                                                 ; store fptr
  %arg84633 = ptrtoint i64* %cloptr88774 to i64                                      ; closure cast; i64* -> i64
  %YSW$_9583602 = call i64 @prim_vector_45set_33(i64 %emt$nqueens, i64 %arg84634, i64 %arg84633); call prim_vector_45set_33
  %arg84855 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83774 = call i64 @prim_vector_45ref(i64 %emt$nqueens, i64 %arg84855)             ; call prim_vector_45ref
  %cloptr88778 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88779 = getelementptr inbounds i64, i64* %cloptr88778, i64 0                  ; &cloptr88778[0]
  %f88780 = ptrtoint void(i64,i64)* @lam86629 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88780, i64* %eptr88779                                                 ; store fptr
  %arg84858 = ptrtoint i64* %cloptr88778 to i64                                      ; closure cast; i64* -> i64
  %arg84857 = call i64 @const_init_int(i64 8)                                        ; quoted int
  %rva85989 = add i64 0, 0                                                           ; quoted ()
  %rva85988 = call i64 @prim_cons(i64 %arg84857, i64 %rva85989)                      ; call prim_cons
  %rva85987 = call i64 @prim_cons(i64 %arg84858, i64 %rva85988)                      ; call prim_cons
  %cloptr88781 = inttoptr i64 %a83774 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88782 = getelementptr inbounds i64, i64* %cloptr88781, i64 0                 ; &cloptr88781[0]
  %f88784 = load i64, i64* %i0ptr88782, align 8                                      ; load; *i0ptr88782
  %fptr88783 = inttoptr i64 %f88784 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88783(i64 %a83774, i64 %rva85987)                   ; tail call
  ret void
}


define void @lam86781(i64 %env86782, i64 %rvp85980) {
  %envptr88785 = inttoptr i64 %env86782 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88786 = getelementptr inbounds i64, i64* %envptr88785, i64 1                ; &envptr88785[1]
  %C6M$_37append = load i64, i64* %envptr88786, align 8                              ; load; *envptr88786
  %cont83881 = call i64 @prim_car(i64 %rvp85980)                                     ; call prim_car
  %rvp85979 = call i64 @prim_cdr(i64 %rvp85980)                                      ; call prim_cdr
  %DWw$n = call i64 @prim_car(i64 %rvp85979)                                         ; call prim_car
  %na85757 = call i64 @prim_cdr(i64 %rvp85979)                                       ; call prim_cdr
  %cloptr88787 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88788 = getelementptr inbounds i64, i64* %cloptr88787, i64 0                  ; &cloptr88787[0]
  %f88789 = ptrtoint void(i64,i64)* @lam86779 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88789, i64* %eptr88788                                                 ; store fptr
  %arg84637 = ptrtoint i64* %cloptr88787 to i64                                      ; closure cast; i64* -> i64
  %cloptr88790 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88792 = getelementptr inbounds i64, i64* %cloptr88790, i64 1                  ; &eptr88792[1]
  %eptr88793 = getelementptr inbounds i64, i64* %cloptr88790, i64 2                  ; &eptr88793[2]
  %eptr88794 = getelementptr inbounds i64, i64* %cloptr88790, i64 3                  ; &eptr88794[3]
  store i64 %C6M$_37append, i64* %eptr88792                                          ; *eptr88792 = %C6M$_37append
  store i64 %DWw$n, i64* %eptr88793                                                  ; *eptr88793 = %DWw$n
  store i64 %cont83881, i64* %eptr88794                                              ; *eptr88794 = %cont83881
  %eptr88791 = getelementptr inbounds i64, i64* %cloptr88790, i64 0                  ; &cloptr88790[0]
  %f88795 = ptrtoint void(i64,i64)* @lam86775 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88795, i64* %eptr88791                                                 ; store fptr
  %arg84636 = ptrtoint i64* %cloptr88790 to i64                                      ; closure cast; i64* -> i64
  %rva85978 = add i64 0, 0                                                           ; quoted ()
  %rva85977 = call i64 @prim_cons(i64 %arg84636, i64 %rva85978)                      ; call prim_cons
  %cloptr88796 = inttoptr i64 %arg84637 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88797 = getelementptr inbounds i64, i64* %cloptr88796, i64 0                 ; &cloptr88796[0]
  %f88799 = load i64, i64* %i0ptr88797, align 8                                      ; load; *i0ptr88797
  %fptr88798 = inttoptr i64 %f88799 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88798(i64 %arg84637, i64 %rva85977)                 ; tail call
  ret void
}


define void @lam86779(i64 %env86780, i64 %c6V$lst83923) {
  %cont83922 = call i64 @prim_car(i64 %c6V$lst83923)                                 ; call prim_car
  %c6V$lst = call i64 @prim_cdr(i64 %c6V$lst83923)                                   ; call prim_cdr
  %arg84641 = add i64 0, 0                                                           ; quoted ()
  %rva85760 = add i64 0, 0                                                           ; quoted ()
  %rva85759 = call i64 @prim_cons(i64 %c6V$lst, i64 %rva85760)                       ; call prim_cons
  %rva85758 = call i64 @prim_cons(i64 %arg84641, i64 %rva85759)                      ; call prim_cons
  %cloptr88800 = inttoptr i64 %cont83922 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88801 = getelementptr inbounds i64, i64* %cloptr88800, i64 0                 ; &cloptr88800[0]
  %f88803 = load i64, i64* %i0ptr88801, align 8                                      ; load; *i0ptr88801
  %fptr88802 = inttoptr i64 %f88803 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88802(i64 %cont83922, i64 %rva85758)                ; tail call
  ret void
}


define void @lam86775(i64 %env86776, i64 %rvp85976) {
  %envptr88804 = inttoptr i64 %env86776 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88805 = getelementptr inbounds i64, i64* %envptr88804, i64 3                ; &envptr88804[3]
  %cont83881 = load i64, i64* %envptr88805, align 8                                  ; load; *envptr88805
  %envptr88806 = inttoptr i64 %env86776 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88807 = getelementptr inbounds i64, i64* %envptr88806, i64 2                ; &envptr88806[2]
  %DWw$n = load i64, i64* %envptr88807, align 8                                      ; load; *envptr88807
  %envptr88808 = inttoptr i64 %env86776 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88809 = getelementptr inbounds i64, i64* %envptr88808, i64 1                ; &envptr88808[1]
  %C6M$_37append = load i64, i64* %envptr88809, align 8                              ; load; *envptr88809
  %_9583920 = call i64 @prim_car(i64 %rvp85976)                                      ; call prim_car
  %rvp85975 = call i64 @prim_cdr(i64 %rvp85976)                                      ; call prim_cdr
  %a83730 = call i64 @prim_car(i64 %rvp85975)                                        ; call prim_car
  %na85762 = call i64 @prim_cdr(i64 %rvp85975)                                       ; call prim_cdr
  %arg84644 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83921 = call i64 @prim_make_45vector(i64 %arg84644, i64 %a83730)           ; call prim_make_45vector
  %cloptr88810 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88812 = getelementptr inbounds i64, i64* %cloptr88810, i64 1                  ; &eptr88812[1]
  %eptr88813 = getelementptr inbounds i64, i64* %cloptr88810, i64 2                  ; &eptr88813[2]
  %eptr88814 = getelementptr inbounds i64, i64* %cloptr88810, i64 3                  ; &eptr88814[3]
  store i64 %C6M$_37append, i64* %eptr88812                                          ; *eptr88812 = %C6M$_37append
  store i64 %DWw$n, i64* %eptr88813                                                  ; *eptr88813 = %DWw$n
  store i64 %cont83881, i64* %eptr88814                                              ; *eptr88814 = %cont83881
  %eptr88811 = getelementptr inbounds i64, i64* %cloptr88810, i64 0                  ; &cloptr88810[0]
  %f88815 = ptrtoint void(i64,i64)* @lam86772 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88815, i64* %eptr88811                                                 ; store fptr
  %arg84647 = ptrtoint i64* %cloptr88810 to i64                                      ; closure cast; i64* -> i64
  %arg84646 = add i64 0, 0                                                           ; quoted ()
  %rva85974 = add i64 0, 0                                                           ; quoted ()
  %rva85973 = call i64 @prim_cons(i64 %retprim83921, i64 %rva85974)                  ; call prim_cons
  %rva85972 = call i64 @prim_cons(i64 %arg84646, i64 %rva85973)                      ; call prim_cons
  %cloptr88816 = inttoptr i64 %arg84647 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88817 = getelementptr inbounds i64, i64* %cloptr88816, i64 0                 ; &cloptr88816[0]
  %f88819 = load i64, i64* %i0ptr88817, align 8                                      ; load; *i0ptr88817
  %fptr88818 = inttoptr i64 %f88819 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88818(i64 %arg84647, i64 %rva85972)                 ; tail call
  ret void
}


define void @lam86772(i64 %env86773, i64 %rvp85971) {
  %envptr88820 = inttoptr i64 %env86773 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88821 = getelementptr inbounds i64, i64* %envptr88820, i64 3                ; &envptr88820[3]
  %cont83881 = load i64, i64* %envptr88821, align 8                                  ; load; *envptr88821
  %envptr88822 = inttoptr i64 %env86773 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88823 = getelementptr inbounds i64, i64* %envptr88822, i64 2                ; &envptr88822[2]
  %DWw$n = load i64, i64* %envptr88823, align 8                                      ; load; *envptr88823
  %envptr88824 = inttoptr i64 %env86773 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88825 = getelementptr inbounds i64, i64* %envptr88824, i64 1                ; &envptr88824[1]
  %C6M$_37append = load i64, i64* %envptr88825, align 8                              ; load; *envptr88825
  %_9583882 = call i64 @prim_car(i64 %rvp85971)                                      ; call prim_car
  %rvp85970 = call i64 @prim_cdr(i64 %rvp85971)                                      ; call prim_cdr
  %HZg$one_45to = call i64 @prim_car(i64 %rvp85970)                                  ; call prim_car
  %na85764 = call i64 @prim_cdr(i64 %rvp85970)                                       ; call prim_cdr
  %cloptr88826 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88827 = getelementptr inbounds i64, i64* %cloptr88826, i64 0                  ; &cloptr88826[0]
  %f88828 = ptrtoint void(i64,i64)* @lam86770 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88828, i64* %eptr88827                                                 ; store fptr
  %arg84649 = ptrtoint i64* %cloptr88826 to i64                                      ; closure cast; i64* -> i64
  %cloptr88829 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88831 = getelementptr inbounds i64, i64* %cloptr88829, i64 1                  ; &eptr88831[1]
  %eptr88832 = getelementptr inbounds i64, i64* %cloptr88829, i64 2                  ; &eptr88832[2]
  %eptr88833 = getelementptr inbounds i64, i64* %cloptr88829, i64 3                  ; &eptr88833[3]
  %eptr88834 = getelementptr inbounds i64, i64* %cloptr88829, i64 4                  ; &eptr88834[4]
  store i64 %HZg$one_45to, i64* %eptr88831                                           ; *eptr88831 = %HZg$one_45to
  store i64 %C6M$_37append, i64* %eptr88832                                          ; *eptr88832 = %C6M$_37append
  store i64 %DWw$n, i64* %eptr88833                                                  ; *eptr88833 = %DWw$n
  store i64 %cont83881, i64* %eptr88834                                              ; *eptr88834 = %cont83881
  %eptr88830 = getelementptr inbounds i64, i64* %cloptr88829, i64 0                  ; &cloptr88829[0]
  %f88835 = ptrtoint void(i64,i64)* @lam86766 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88835, i64* %eptr88830                                                 ; store fptr
  %arg84648 = ptrtoint i64* %cloptr88829 to i64                                      ; closure cast; i64* -> i64
  %rva85969 = add i64 0, 0                                                           ; quoted ()
  %rva85968 = call i64 @prim_cons(i64 %arg84648, i64 %rva85969)                      ; call prim_cons
  %cloptr88836 = inttoptr i64 %arg84649 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88837 = getelementptr inbounds i64, i64* %cloptr88836, i64 0                 ; &cloptr88836[0]
  %f88839 = load i64, i64* %i0ptr88837, align 8                                      ; load; *i0ptr88837
  %fptr88838 = inttoptr i64 %f88839 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88838(i64 %arg84649, i64 %rva85968)                 ; tail call
  ret void
}


define void @lam86770(i64 %env86771, i64 %DUi$lst83919) {
  %cont83918 = call i64 @prim_car(i64 %DUi$lst83919)                                 ; call prim_car
  %DUi$lst = call i64 @prim_cdr(i64 %DUi$lst83919)                                   ; call prim_cdr
  %arg84653 = add i64 0, 0                                                           ; quoted ()
  %rva85767 = add i64 0, 0                                                           ; quoted ()
  %rva85766 = call i64 @prim_cons(i64 %DUi$lst, i64 %rva85767)                       ; call prim_cons
  %rva85765 = call i64 @prim_cons(i64 %arg84653, i64 %rva85766)                      ; call prim_cons
  %cloptr88840 = inttoptr i64 %cont83918 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88841 = getelementptr inbounds i64, i64* %cloptr88840, i64 0                 ; &cloptr88840[0]
  %f88843 = load i64, i64* %i0ptr88841, align 8                                      ; load; *i0ptr88841
  %fptr88842 = inttoptr i64 %f88843 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88842(i64 %cont83918, i64 %rva85765)                ; tail call
  ret void
}


define void @lam86766(i64 %env86767, i64 %rvp85967) {
  %envptr88844 = inttoptr i64 %env86767 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88845 = getelementptr inbounds i64, i64* %envptr88844, i64 4                ; &envptr88844[4]
  %cont83881 = load i64, i64* %envptr88845, align 8                                  ; load; *envptr88845
  %envptr88846 = inttoptr i64 %env86767 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88847 = getelementptr inbounds i64, i64* %envptr88846, i64 3                ; &envptr88846[3]
  %DWw$n = load i64, i64* %envptr88847, align 8                                      ; load; *envptr88847
  %envptr88848 = inttoptr i64 %env86767 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88849 = getelementptr inbounds i64, i64* %envptr88848, i64 2                ; &envptr88848[2]
  %C6M$_37append = load i64, i64* %envptr88849, align 8                              ; load; *envptr88849
  %envptr88850 = inttoptr i64 %env86767 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88851 = getelementptr inbounds i64, i64* %envptr88850, i64 1                ; &envptr88850[1]
  %HZg$one_45to = load i64, i64* %envptr88851, align 8                               ; load; *envptr88851
  %_9583916 = call i64 @prim_car(i64 %rvp85967)                                      ; call prim_car
  %rvp85966 = call i64 @prim_cdr(i64 %rvp85967)                                      ; call prim_cdr
  %a83731 = call i64 @prim_car(i64 %rvp85966)                                        ; call prim_car
  %na85769 = call i64 @prim_cdr(i64 %rvp85966)                                       ; call prim_cdr
  %arg84656 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83917 = call i64 @prim_make_45vector(i64 %arg84656, i64 %a83731)           ; call prim_make_45vector
  %cloptr88852 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88854 = getelementptr inbounds i64, i64* %cloptr88852, i64 1                  ; &eptr88854[1]
  %eptr88855 = getelementptr inbounds i64, i64* %cloptr88852, i64 2                  ; &eptr88855[2]
  %eptr88856 = getelementptr inbounds i64, i64* %cloptr88852, i64 3                  ; &eptr88856[3]
  %eptr88857 = getelementptr inbounds i64, i64* %cloptr88852, i64 4                  ; &eptr88857[4]
  store i64 %HZg$one_45to, i64* %eptr88854                                           ; *eptr88854 = %HZg$one_45to
  store i64 %C6M$_37append, i64* %eptr88855                                          ; *eptr88855 = %C6M$_37append
  store i64 %DWw$n, i64* %eptr88856                                                  ; *eptr88856 = %DWw$n
  store i64 %cont83881, i64* %eptr88857                                              ; *eptr88857 = %cont83881
  %eptr88853 = getelementptr inbounds i64, i64* %cloptr88852, i64 0                  ; &cloptr88852[0]
  %f88858 = ptrtoint void(i64,i64)* @lam86763 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88858, i64* %eptr88853                                                 ; store fptr
  %arg84659 = ptrtoint i64* %cloptr88852 to i64                                      ; closure cast; i64* -> i64
  %arg84658 = add i64 0, 0                                                           ; quoted ()
  %rva85965 = add i64 0, 0                                                           ; quoted ()
  %rva85964 = call i64 @prim_cons(i64 %retprim83917, i64 %rva85965)                  ; call prim_cons
  %rva85963 = call i64 @prim_cons(i64 %arg84658, i64 %rva85964)                      ; call prim_cons
  %cloptr88859 = inttoptr i64 %arg84659 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88860 = getelementptr inbounds i64, i64* %cloptr88859, i64 0                 ; &cloptr88859[0]
  %f88862 = load i64, i64* %i0ptr88860, align 8                                      ; load; *i0ptr88860
  %fptr88861 = inttoptr i64 %f88862 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88861(i64 %arg84659, i64 %rva85963)                 ; tail call
  ret void
}


define void @lam86763(i64 %env86764, i64 %rvp85962) {
  %envptr88863 = inttoptr i64 %env86764 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88864 = getelementptr inbounds i64, i64* %envptr88863, i64 4                ; &envptr88863[4]
  %cont83881 = load i64, i64* %envptr88864, align 8                                  ; load; *envptr88864
  %envptr88865 = inttoptr i64 %env86764 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88866 = getelementptr inbounds i64, i64* %envptr88865, i64 3                ; &envptr88865[3]
  %DWw$n = load i64, i64* %envptr88866, align 8                                      ; load; *envptr88866
  %envptr88867 = inttoptr i64 %env86764 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88868 = getelementptr inbounds i64, i64* %envptr88867, i64 2                ; &envptr88867[2]
  %C6M$_37append = load i64, i64* %envptr88868, align 8                              ; load; *envptr88868
  %envptr88869 = inttoptr i64 %env86764 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88870 = getelementptr inbounds i64, i64* %envptr88869, i64 1                ; &envptr88869[1]
  %HZg$one_45to = load i64, i64* %envptr88870, align 8                               ; load; *envptr88870
  %_9583883 = call i64 @prim_car(i64 %rvp85962)                                      ; call prim_car
  %rvp85961 = call i64 @prim_cdr(i64 %rvp85962)                                      ; call prim_cdr
  %ptl$my_45try = call i64 @prim_car(i64 %rvp85961)                                  ; call prim_car
  %na85771 = call i64 @prim_cdr(i64 %rvp85961)                                       ; call prim_cdr
  %cloptr88871 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88872 = getelementptr inbounds i64, i64* %cloptr88871, i64 0                  ; &cloptr88871[0]
  %f88873 = ptrtoint void(i64,i64)* @lam86761 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88873, i64* %eptr88872                                                 ; store fptr
  %arg84661 = ptrtoint i64* %cloptr88871 to i64                                      ; closure cast; i64* -> i64
  %cloptr88874 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr88876 = getelementptr inbounds i64, i64* %cloptr88874, i64 1                  ; &eptr88876[1]
  %eptr88877 = getelementptr inbounds i64, i64* %cloptr88874, i64 2                  ; &eptr88877[2]
  %eptr88878 = getelementptr inbounds i64, i64* %cloptr88874, i64 3                  ; &eptr88878[3]
  %eptr88879 = getelementptr inbounds i64, i64* %cloptr88874, i64 4                  ; &eptr88879[4]
  %eptr88880 = getelementptr inbounds i64, i64* %cloptr88874, i64 5                  ; &eptr88880[5]
  store i64 %HZg$one_45to, i64* %eptr88876                                           ; *eptr88876 = %HZg$one_45to
  store i64 %C6M$_37append, i64* %eptr88877                                          ; *eptr88877 = %C6M$_37append
  store i64 %ptl$my_45try, i64* %eptr88878                                           ; *eptr88878 = %ptl$my_45try
  store i64 %DWw$n, i64* %eptr88879                                                  ; *eptr88879 = %DWw$n
  store i64 %cont83881, i64* %eptr88880                                              ; *eptr88880 = %cont83881
  %eptr88875 = getelementptr inbounds i64, i64* %cloptr88874, i64 0                  ; &cloptr88874[0]
  %f88881 = ptrtoint void(i64,i64)* @lam86757 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88881, i64* %eptr88875                                                 ; store fptr
  %arg84660 = ptrtoint i64* %cloptr88874 to i64                                      ; closure cast; i64* -> i64
  %rva85960 = add i64 0, 0                                                           ; quoted ()
  %rva85959 = call i64 @prim_cons(i64 %arg84660, i64 %rva85960)                      ; call prim_cons
  %cloptr88882 = inttoptr i64 %arg84661 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88883 = getelementptr inbounds i64, i64* %cloptr88882, i64 0                 ; &cloptr88882[0]
  %f88885 = load i64, i64* %i0ptr88883, align 8                                      ; load; *i0ptr88883
  %fptr88884 = inttoptr i64 %f88885 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88884(i64 %arg84661, i64 %rva85959)                 ; tail call
  ret void
}


define void @lam86761(i64 %env86762, i64 %xQA$lst83915) {
  %cont83914 = call i64 @prim_car(i64 %xQA$lst83915)                                 ; call prim_car
  %xQA$lst = call i64 @prim_cdr(i64 %xQA$lst83915)                                   ; call prim_cdr
  %arg84665 = add i64 0, 0                                                           ; quoted ()
  %rva85774 = add i64 0, 0                                                           ; quoted ()
  %rva85773 = call i64 @prim_cons(i64 %xQA$lst, i64 %rva85774)                       ; call prim_cons
  %rva85772 = call i64 @prim_cons(i64 %arg84665, i64 %rva85773)                      ; call prim_cons
  %cloptr88886 = inttoptr i64 %cont83914 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88887 = getelementptr inbounds i64, i64* %cloptr88886, i64 0                 ; &cloptr88886[0]
  %f88889 = load i64, i64* %i0ptr88887, align 8                                      ; load; *i0ptr88887
  %fptr88888 = inttoptr i64 %f88889 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88888(i64 %cont83914, i64 %rva85772)                ; tail call
  ret void
}


define void @lam86757(i64 %env86758, i64 %rvp85958) {
  %envptr88890 = inttoptr i64 %env86758 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88891 = getelementptr inbounds i64, i64* %envptr88890, i64 5                ; &envptr88890[5]
  %cont83881 = load i64, i64* %envptr88891, align 8                                  ; load; *envptr88891
  %envptr88892 = inttoptr i64 %env86758 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88893 = getelementptr inbounds i64, i64* %envptr88892, i64 4                ; &envptr88892[4]
  %DWw$n = load i64, i64* %envptr88893, align 8                                      ; load; *envptr88893
  %envptr88894 = inttoptr i64 %env86758 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88895 = getelementptr inbounds i64, i64* %envptr88894, i64 3                ; &envptr88894[3]
  %ptl$my_45try = load i64, i64* %envptr88895, align 8                               ; load; *envptr88895
  %envptr88896 = inttoptr i64 %env86758 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88897 = getelementptr inbounds i64, i64* %envptr88896, i64 2                ; &envptr88896[2]
  %C6M$_37append = load i64, i64* %envptr88897, align 8                              ; load; *envptr88897
  %envptr88898 = inttoptr i64 %env86758 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88899 = getelementptr inbounds i64, i64* %envptr88898, i64 1                ; &envptr88898[1]
  %HZg$one_45to = load i64, i64* %envptr88899, align 8                               ; load; *envptr88899
  %_9583912 = call i64 @prim_car(i64 %rvp85958)                                      ; call prim_car
  %rvp85957 = call i64 @prim_cdr(i64 %rvp85958)                                      ; call prim_cdr
  %a83732 = call i64 @prim_car(i64 %rvp85957)                                        ; call prim_car
  %na85776 = call i64 @prim_cdr(i64 %rvp85957)                                       ; call prim_cdr
  %arg84668 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83913 = call i64 @prim_make_45vector(i64 %arg84668, i64 %a83732)           ; call prim_make_45vector
  %cloptr88900 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr88902 = getelementptr inbounds i64, i64* %cloptr88900, i64 1                  ; &eptr88902[1]
  %eptr88903 = getelementptr inbounds i64, i64* %cloptr88900, i64 2                  ; &eptr88903[2]
  %eptr88904 = getelementptr inbounds i64, i64* %cloptr88900, i64 3                  ; &eptr88904[3]
  %eptr88905 = getelementptr inbounds i64, i64* %cloptr88900, i64 4                  ; &eptr88905[4]
  %eptr88906 = getelementptr inbounds i64, i64* %cloptr88900, i64 5                  ; &eptr88906[5]
  store i64 %HZg$one_45to, i64* %eptr88902                                           ; *eptr88902 = %HZg$one_45to
  store i64 %C6M$_37append, i64* %eptr88903                                          ; *eptr88903 = %C6M$_37append
  store i64 %ptl$my_45try, i64* %eptr88904                                           ; *eptr88904 = %ptl$my_45try
  store i64 %DWw$n, i64* %eptr88905                                                  ; *eptr88905 = %DWw$n
  store i64 %cont83881, i64* %eptr88906                                              ; *eptr88906 = %cont83881
  %eptr88901 = getelementptr inbounds i64, i64* %cloptr88900, i64 0                  ; &cloptr88900[0]
  %f88907 = ptrtoint void(i64,i64)* @lam86754 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88907, i64* %eptr88901                                                 ; store fptr
  %arg84671 = ptrtoint i64* %cloptr88900 to i64                                      ; closure cast; i64* -> i64
  %arg84670 = add i64 0, 0                                                           ; quoted ()
  %rva85956 = add i64 0, 0                                                           ; quoted ()
  %rva85955 = call i64 @prim_cons(i64 %retprim83913, i64 %rva85956)                  ; call prim_cons
  %rva85954 = call i64 @prim_cons(i64 %arg84670, i64 %rva85955)                      ; call prim_cons
  %cloptr88908 = inttoptr i64 %arg84671 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88909 = getelementptr inbounds i64, i64* %cloptr88908, i64 0                 ; &cloptr88908[0]
  %f88911 = load i64, i64* %i0ptr88909, align 8                                      ; load; *i0ptr88909
  %fptr88910 = inttoptr i64 %f88911 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88910(i64 %arg84671, i64 %rva85954)                 ; tail call
  ret void
}


define void @lam86754(i64 %env86755, i64 %rvp85953) {
  %envptr88912 = inttoptr i64 %env86755 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88913 = getelementptr inbounds i64, i64* %envptr88912, i64 5                ; &envptr88912[5]
  %cont83881 = load i64, i64* %envptr88913, align 8                                  ; load; *envptr88913
  %envptr88914 = inttoptr i64 %env86755 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88915 = getelementptr inbounds i64, i64* %envptr88914, i64 4                ; &envptr88914[4]
  %DWw$n = load i64, i64* %envptr88915, align 8                                      ; load; *envptr88915
  %envptr88916 = inttoptr i64 %env86755 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88917 = getelementptr inbounds i64, i64* %envptr88916, i64 3                ; &envptr88916[3]
  %ptl$my_45try = load i64, i64* %envptr88917, align 8                               ; load; *envptr88917
  %envptr88918 = inttoptr i64 %env86755 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88919 = getelementptr inbounds i64, i64* %envptr88918, i64 2                ; &envptr88918[2]
  %C6M$_37append = load i64, i64* %envptr88919, align 8                              ; load; *envptr88919
  %envptr88920 = inttoptr i64 %env86755 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88921 = getelementptr inbounds i64, i64* %envptr88920, i64 1                ; &envptr88920[1]
  %HZg$one_45to = load i64, i64* %envptr88921, align 8                               ; load; *envptr88921
  %_9583884 = call i64 @prim_car(i64 %rvp85953)                                      ; call prim_car
  %rvp85952 = call i64 @prim_cdr(i64 %rvp85953)                                      ; call prim_cdr
  %bLX$ok_63 = call i64 @prim_car(i64 %rvp85952)                                     ; call prim_car
  %na85778 = call i64 @prim_cdr(i64 %rvp85952)                                       ; call prim_cdr
  %arg84673 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr88922 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88923 = getelementptr inbounds i64, i64* %cloptr88922, i64 0                  ; &cloptr88922[0]
  %f88924 = ptrtoint void(i64,i64)* @lam86751 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88924, i64* %eptr88923                                                 ; store fptr
  %arg84672 = ptrtoint i64* %cloptr88922 to i64                                      ; closure cast; i64* -> i64
  %bLw$_9583603 = call i64 @prim_vector_45set_33(i64 %HZg$one_45to, i64 %arg84673, i64 %arg84672); call prim_vector_45set_33
  %arg84719 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr88925 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88927 = getelementptr inbounds i64, i64* %cloptr88925, i64 1                  ; &eptr88927[1]
  %eptr88928 = getelementptr inbounds i64, i64* %cloptr88925, i64 2                  ; &eptr88928[2]
  %eptr88929 = getelementptr inbounds i64, i64* %cloptr88925, i64 3                  ; &eptr88929[3]
  store i64 %bLX$ok_63, i64* %eptr88927                                              ; *eptr88927 = %bLX$ok_63
  store i64 %C6M$_37append, i64* %eptr88928                                          ; *eptr88928 = %C6M$_37append
  store i64 %ptl$my_45try, i64* %eptr88929                                           ; *eptr88929 = %ptl$my_45try
  %eptr88926 = getelementptr inbounds i64, i64* %cloptr88925, i64 0                  ; &cloptr88925[0]
  %f88930 = ptrtoint void(i64,i64)* @lam86718 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88930, i64* %eptr88926                                                 ; store fptr
  %arg84718 = ptrtoint i64* %cloptr88925 to i64                                      ; closure cast; i64* -> i64
  %GFn$_9583605 = call i64 @prim_vector_45set_33(i64 %ptl$my_45try, i64 %arg84719, i64 %arg84718); call prim_vector_45set_33
  %arg84795 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr88931 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr88933 = getelementptr inbounds i64, i64* %cloptr88931, i64 1                  ; &eptr88933[1]
  store i64 %bLX$ok_63, i64* %eptr88933                                              ; *eptr88933 = %bLX$ok_63
  %eptr88932 = getelementptr inbounds i64, i64* %cloptr88931, i64 0                  ; &cloptr88931[0]
  %f88934 = ptrtoint void(i64,i64)* @lam86673 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88934, i64* %eptr88932                                                 ; store fptr
  %arg84794 = ptrtoint i64* %cloptr88931 to i64                                      ; closure cast; i64* -> i64
  %rkT$_9583606 = call i64 @prim_vector_45set_33(i64 %bLX$ok_63, i64 %arg84795, i64 %arg84794); call prim_vector_45set_33
  %arg84829 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83769 = call i64 @prim_vector_45ref(i64 %ptl$my_45try, i64 %arg84829)            ; call prim_vector_45ref
  %arg84831 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83770 = call i64 @prim_vector_45ref(i64 %HZg$one_45to, i64 %arg84831)            ; call prim_vector_45ref
  %cloptr88935 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr88937 = getelementptr inbounds i64, i64* %cloptr88935, i64 1                  ; &eptr88937[1]
  %eptr88938 = getelementptr inbounds i64, i64* %cloptr88935, i64 2                  ; &eptr88938[2]
  store i64 %a83769, i64* %eptr88937                                                 ; *eptr88937 = %a83769
  store i64 %cont83881, i64* %eptr88938                                              ; *eptr88938 = %cont83881
  %eptr88936 = getelementptr inbounds i64, i64* %cloptr88935, i64 0                  ; &cloptr88935[0]
  %f88939 = ptrtoint void(i64,i64)* @lam86657 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88939, i64* %eptr88936                                                 ; store fptr
  %arg84834 = ptrtoint i64* %cloptr88935 to i64                                      ; closure cast; i64* -> i64
  %rva85951 = add i64 0, 0                                                           ; quoted ()
  %rva85950 = call i64 @prim_cons(i64 %DWw$n, i64 %rva85951)                         ; call prim_cons
  %rva85949 = call i64 @prim_cons(i64 %arg84834, i64 %rva85950)                      ; call prim_cons
  %cloptr88940 = inttoptr i64 %a83770 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88941 = getelementptr inbounds i64, i64* %cloptr88940, i64 0                 ; &cloptr88940[0]
  %f88943 = load i64, i64* %i0ptr88941, align 8                                      ; load; *i0ptr88941
  %fptr88942 = inttoptr i64 %f88943 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88942(i64 %a83770, i64 %rva85949)                   ; tail call
  ret void
}


define void @lam86751(i64 %env86752, i64 %rvp85823) {
  %cont83885 = call i64 @prim_car(i64 %rvp85823)                                     ; call prim_car
  %rvp85822 = call i64 @prim_cdr(i64 %rvp85823)                                      ; call prim_cdr
  %irE$n = call i64 @prim_car(i64 %rvp85822)                                         ; call prim_car
  %na85780 = call i64 @prim_cdr(i64 %rvp85822)                                       ; call prim_cdr
  %cloptr88944 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88945 = getelementptr inbounds i64, i64* %cloptr88944, i64 0                  ; &cloptr88944[0]
  %f88946 = ptrtoint void(i64,i64)* @lam86749 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88946, i64* %eptr88945                                                 ; store fptr
  %arg84676 = ptrtoint i64* %cloptr88944 to i64                                      ; closure cast; i64* -> i64
  %cloptr88947 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr88949 = getelementptr inbounds i64, i64* %cloptr88947, i64 1                  ; &eptr88949[1]
  %eptr88950 = getelementptr inbounds i64, i64* %cloptr88947, i64 2                  ; &eptr88950[2]
  store i64 %cont83885, i64* %eptr88949                                              ; *eptr88949 = %cont83885
  store i64 %irE$n, i64* %eptr88950                                                  ; *eptr88950 = %irE$n
  %eptr88948 = getelementptr inbounds i64, i64* %cloptr88947, i64 0                  ; &cloptr88947[0]
  %f88951 = ptrtoint void(i64,i64)* @lam86745 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88951, i64* %eptr88948                                                 ; store fptr
  %arg84675 = ptrtoint i64* %cloptr88947 to i64                                      ; closure cast; i64* -> i64
  %rva85821 = add i64 0, 0                                                           ; quoted ()
  %rva85820 = call i64 @prim_cons(i64 %arg84675, i64 %rva85821)                      ; call prim_cons
  %cloptr88952 = inttoptr i64 %arg84676 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88953 = getelementptr inbounds i64, i64* %cloptr88952, i64 0                 ; &cloptr88952[0]
  %f88955 = load i64, i64* %i0ptr88953, align 8                                      ; load; *i0ptr88953
  %fptr88954 = inttoptr i64 %f88955 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88954(i64 %arg84676, i64 %rva85820)                 ; tail call
  ret void
}


define void @lam86749(i64 %env86750, i64 %sxY$lst83894) {
  %cont83893 = call i64 @prim_car(i64 %sxY$lst83894)                                 ; call prim_car
  %sxY$lst = call i64 @prim_cdr(i64 %sxY$lst83894)                                   ; call prim_cdr
  %arg84680 = add i64 0, 0                                                           ; quoted ()
  %rva85783 = add i64 0, 0                                                           ; quoted ()
  %rva85782 = call i64 @prim_cons(i64 %sxY$lst, i64 %rva85783)                       ; call prim_cons
  %rva85781 = call i64 @prim_cons(i64 %arg84680, i64 %rva85782)                      ; call prim_cons
  %cloptr88956 = inttoptr i64 %cont83893 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88957 = getelementptr inbounds i64, i64* %cloptr88956, i64 0                 ; &cloptr88956[0]
  %f88959 = load i64, i64* %i0ptr88957, align 8                                      ; load; *i0ptr88957
  %fptr88958 = inttoptr i64 %f88959 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88958(i64 %cont83893, i64 %rva85781)                ; tail call
  ret void
}


define void @lam86745(i64 %env86746, i64 %rvp85819) {
  %envptr88960 = inttoptr i64 %env86746 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88961 = getelementptr inbounds i64, i64* %envptr88960, i64 2                ; &envptr88960[2]
  %irE$n = load i64, i64* %envptr88961, align 8                                      ; load; *envptr88961
  %envptr88962 = inttoptr i64 %env86746 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88963 = getelementptr inbounds i64, i64* %envptr88962, i64 1                ; &envptr88962[1]
  %cont83885 = load i64, i64* %envptr88963, align 8                                  ; load; *envptr88963
  %_9583891 = call i64 @prim_car(i64 %rvp85819)                                      ; call prim_car
  %rvp85818 = call i64 @prim_cdr(i64 %rvp85819)                                      ; call prim_cdr
  %a83733 = call i64 @prim_car(i64 %rvp85818)                                        ; call prim_car
  %na85785 = call i64 @prim_cdr(i64 %rvp85818)                                       ; call prim_cdr
  %arg84683 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83892 = call i64 @prim_make_45vector(i64 %arg84683, i64 %a83733)           ; call prim_make_45vector
  %cloptr88964 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr88966 = getelementptr inbounds i64, i64* %cloptr88964, i64 1                  ; &eptr88966[1]
  %eptr88967 = getelementptr inbounds i64, i64* %cloptr88964, i64 2                  ; &eptr88967[2]
  store i64 %cont83885, i64* %eptr88966                                              ; *eptr88966 = %cont83885
  store i64 %irE$n, i64* %eptr88967                                                  ; *eptr88967 = %irE$n
  %eptr88965 = getelementptr inbounds i64, i64* %cloptr88964, i64 0                  ; &cloptr88964[0]
  %f88968 = ptrtoint void(i64,i64)* @lam86742 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88968, i64* %eptr88965                                                 ; store fptr
  %arg84686 = ptrtoint i64* %cloptr88964 to i64                                      ; closure cast; i64* -> i64
  %arg84685 = add i64 0, 0                                                           ; quoted ()
  %rva85817 = add i64 0, 0                                                           ; quoted ()
  %rva85816 = call i64 @prim_cons(i64 %retprim83892, i64 %rva85817)                  ; call prim_cons
  %rva85815 = call i64 @prim_cons(i64 %arg84685, i64 %rva85816)                      ; call prim_cons
  %cloptr88969 = inttoptr i64 %arg84686 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88970 = getelementptr inbounds i64, i64* %cloptr88969, i64 0                 ; &cloptr88969[0]
  %f88972 = load i64, i64* %i0ptr88970, align 8                                      ; load; *i0ptr88970
  %fptr88971 = inttoptr i64 %f88972 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88971(i64 %arg84686, i64 %rva85815)                 ; tail call
  ret void
}


define void @lam86742(i64 %env86743, i64 %rvp85814) {
  %envptr88973 = inttoptr i64 %env86743 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88974 = getelementptr inbounds i64, i64* %envptr88973, i64 2                ; &envptr88973[2]
  %irE$n = load i64, i64* %envptr88974, align 8                                      ; load; *envptr88974
  %envptr88975 = inttoptr i64 %env86743 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88976 = getelementptr inbounds i64, i64* %envptr88975, i64 1                ; &envptr88975[1]
  %cont83885 = load i64, i64* %envptr88976, align 8                                  ; load; *envptr88976
  %_9583886 = call i64 @prim_car(i64 %rvp85814)                                      ; call prim_car
  %rvp85813 = call i64 @prim_cdr(i64 %rvp85814)                                      ; call prim_cdr
  %Fo9$loop = call i64 @prim_car(i64 %rvp85813)                                      ; call prim_car
  %na85787 = call i64 @prim_cdr(i64 %rvp85813)                                       ; call prim_cdr
  %arg84688 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr88977 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr88979 = getelementptr inbounds i64, i64* %cloptr88977, i64 1                  ; &eptr88979[1]
  store i64 %Fo9$loop, i64* %eptr88979                                               ; *eptr88979 = %Fo9$loop
  %eptr88978 = getelementptr inbounds i64, i64* %cloptr88977, i64 0                  ; &cloptr88977[0]
  %f88980 = ptrtoint void(i64,i64)* @lam86739 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88980, i64* %eptr88978                                                 ; store fptr
  %arg84687 = ptrtoint i64* %cloptr88977 to i64                                      ; closure cast; i64* -> i64
  %osA$_9583604 = call i64 @prim_vector_45set_33(i64 %Fo9$loop, i64 %arg84688, i64 %arg84687); call prim_vector_45set_33
  %arg84705 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83738 = call i64 @prim_vector_45ref(i64 %Fo9$loop, i64 %arg84705)                ; call prim_vector_45ref
  %cloptr88981 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88982 = getelementptr inbounds i64, i64* %cloptr88981, i64 0                  ; &cloptr88981[0]
  %f88983 = ptrtoint void(i64,i64)* @lam86730 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88983, i64* %eptr88982                                                 ; store fptr
  %arg84708 = ptrtoint i64* %cloptr88981 to i64                                      ; closure cast; i64* -> i64
  %cloptr88984 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88986 = getelementptr inbounds i64, i64* %cloptr88984, i64 1                  ; &eptr88986[1]
  %eptr88987 = getelementptr inbounds i64, i64* %cloptr88984, i64 2                  ; &eptr88987[2]
  %eptr88988 = getelementptr inbounds i64, i64* %cloptr88984, i64 3                  ; &eptr88988[3]
  store i64 %a83738, i64* %eptr88986                                                 ; *eptr88986 = %a83738
  store i64 %cont83885, i64* %eptr88987                                              ; *eptr88987 = %cont83885
  store i64 %irE$n, i64* %eptr88988                                                  ; *eptr88988 = %irE$n
  %eptr88985 = getelementptr inbounds i64, i64* %cloptr88984, i64 0                  ; &cloptr88984[0]
  %f88989 = ptrtoint void(i64,i64)* @lam86726 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88989, i64* %eptr88985                                                 ; store fptr
  %arg84707 = ptrtoint i64* %cloptr88984 to i64                                      ; closure cast; i64* -> i64
  %rva85812 = add i64 0, 0                                                           ; quoted ()
  %rva85811 = call i64 @prim_cons(i64 %arg84707, i64 %rva85812)                      ; call prim_cons
  %cloptr88990 = inttoptr i64 %arg84708 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88991 = getelementptr inbounds i64, i64* %cloptr88990, i64 0                 ; &cloptr88990[0]
  %f88993 = load i64, i64* %i0ptr88991, align 8                                      ; load; *i0ptr88991
  %fptr88992 = inttoptr i64 %f88993 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88992(i64 %arg84708, i64 %rva85811)                 ; tail call
  ret void
}


define void @lam86739(i64 %env86740, i64 %rvp85799) {
  %envptr88994 = inttoptr i64 %env86740 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88995 = getelementptr inbounds i64, i64* %envptr88994, i64 1                ; &envptr88994[1]
  %Fo9$loop = load i64, i64* %envptr88995, align 8                                   ; load; *envptr88995
  %cont83887 = call i64 @prim_car(i64 %rvp85799)                                     ; call prim_car
  %rvp85798 = call i64 @prim_cdr(i64 %rvp85799)                                      ; call prim_cdr
  %ml3$i = call i64 @prim_car(i64 %rvp85798)                                         ; call prim_car
  %rvp85797 = call i64 @prim_cdr(i64 %rvp85798)                                      ; call prim_cdr
  %Xl4$l = call i64 @prim_car(i64 %rvp85797)                                         ; call prim_car
  %na85789 = call i64 @prim_cdr(i64 %rvp85797)                                       ; call prim_cdr
  %arg84690 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83734 = call i64 @prim__61(i64 %ml3$i, i64 %arg84690)                            ; call prim__61
  %cmp88996 = icmp eq i64 %a83734, 15                                                ; false?
  br i1 %cmp88996, label %else88998, label %then88997                                ; if

then88997:
  %arg84693 = add i64 0, 0                                                           ; quoted ()
  %rva85792 = add i64 0, 0                                                           ; quoted ()
  %rva85791 = call i64 @prim_cons(i64 %Xl4$l, i64 %rva85792)                         ; call prim_cons
  %rva85790 = call i64 @prim_cons(i64 %arg84693, i64 %rva85791)                      ; call prim_cons
  %cloptr88999 = inttoptr i64 %cont83887 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89000 = getelementptr inbounds i64, i64* %cloptr88999, i64 0                 ; &cloptr88999[0]
  %f89002 = load i64, i64* %i0ptr89000, align 8                                      ; load; *i0ptr89000
  %fptr89001 = inttoptr i64 %f89002 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89001(i64 %cont83887, i64 %rva85790)                ; tail call
  ret void

else88998:
  %arg84695 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83735 = call i64 @prim_vector_45ref(i64 %Fo9$loop, i64 %arg84695)                ; call prim_vector_45ref
  %arg84697 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a83736 = call i64 @prim__45(i64 %ml3$i, i64 %arg84697)                            ; call prim__45
  %a83737 = call i64 @prim_cons(i64 %ml3$i, i64 %Xl4$l)                              ; call prim_cons
  %rva85796 = add i64 0, 0                                                           ; quoted ()
  %rva85795 = call i64 @prim_cons(i64 %a83737, i64 %rva85796)                        ; call prim_cons
  %rva85794 = call i64 @prim_cons(i64 %a83736, i64 %rva85795)                        ; call prim_cons
  %rva85793 = call i64 @prim_cons(i64 %cont83887, i64 %rva85794)                     ; call prim_cons
  %cloptr89003 = inttoptr i64 %a83735 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr89004 = getelementptr inbounds i64, i64* %cloptr89003, i64 0                 ; &cloptr89003[0]
  %f89006 = load i64, i64* %i0ptr89004, align 8                                      ; load; *i0ptr89004
  %fptr89005 = inttoptr i64 %f89006 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89005(i64 %a83735, i64 %rva85793)                   ; tail call
  ret void
}


define void @lam86730(i64 %env86731, i64 %Y1C$lst83890) {
  %cont83889 = call i64 @prim_car(i64 %Y1C$lst83890)                                 ; call prim_car
  %Y1C$lst = call i64 @prim_cdr(i64 %Y1C$lst83890)                                   ; call prim_cdr
  %arg84712 = add i64 0, 0                                                           ; quoted ()
  %rva85802 = add i64 0, 0                                                           ; quoted ()
  %rva85801 = call i64 @prim_cons(i64 %Y1C$lst, i64 %rva85802)                       ; call prim_cons
  %rva85800 = call i64 @prim_cons(i64 %arg84712, i64 %rva85801)                      ; call prim_cons
  %cloptr89007 = inttoptr i64 %cont83889 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89008 = getelementptr inbounds i64, i64* %cloptr89007, i64 0                 ; &cloptr89007[0]
  %f89010 = load i64, i64* %i0ptr89008, align 8                                      ; load; *i0ptr89008
  %fptr89009 = inttoptr i64 %f89010 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89009(i64 %cont83889, i64 %rva85800)                ; tail call
  ret void
}


define void @lam86726(i64 %env86727, i64 %rvp85810) {
  %envptr89011 = inttoptr i64 %env86727 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89012 = getelementptr inbounds i64, i64* %envptr89011, i64 3                ; &envptr89011[3]
  %irE$n = load i64, i64* %envptr89012, align 8                                      ; load; *envptr89012
  %envptr89013 = inttoptr i64 %env86727 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89014 = getelementptr inbounds i64, i64* %envptr89013, i64 2                ; &envptr89013[2]
  %cont83885 = load i64, i64* %envptr89014, align 8                                  ; load; *envptr89014
  %envptr89015 = inttoptr i64 %env86727 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89016 = getelementptr inbounds i64, i64* %envptr89015, i64 1                ; &envptr89015[1]
  %a83738 = load i64, i64* %envptr89016, align 8                                     ; load; *envptr89016
  %_9583888 = call i64 @prim_car(i64 %rvp85810)                                      ; call prim_car
  %rvp85809 = call i64 @prim_cdr(i64 %rvp85810)                                      ; call prim_cdr
  %a83739 = call i64 @prim_car(i64 %rvp85809)                                        ; call prim_car
  %na85804 = call i64 @prim_cdr(i64 %rvp85809)                                       ; call prim_cdr
  %rva85808 = add i64 0, 0                                                           ; quoted ()
  %rva85807 = call i64 @prim_cons(i64 %a83739, i64 %rva85808)                        ; call prim_cons
  %rva85806 = call i64 @prim_cons(i64 %irE$n, i64 %rva85807)                         ; call prim_cons
  %rva85805 = call i64 @prim_cons(i64 %cont83885, i64 %rva85806)                     ; call prim_cons
  %cloptr89017 = inttoptr i64 %a83738 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr89018 = getelementptr inbounds i64, i64* %cloptr89017, i64 0                 ; &cloptr89017[0]
  %f89020 = load i64, i64* %i0ptr89018, align 8                                      ; load; *i0ptr89018
  %fptr89019 = inttoptr i64 %f89020 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89019(i64 %a83738, i64 %rva85805)                   ; tail call
  ret void
}


define void @lam86718(i64 %env86719, i64 %rvp85901) {
  %envptr89021 = inttoptr i64 %env86719 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89022 = getelementptr inbounds i64, i64* %envptr89021, i64 3                ; &envptr89021[3]
  %ptl$my_45try = load i64, i64* %envptr89022, align 8                               ; load; *envptr89022
  %envptr89023 = inttoptr i64 %env86719 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89024 = getelementptr inbounds i64, i64* %envptr89023, i64 2                ; &envptr89023[2]
  %C6M$_37append = load i64, i64* %envptr89024, align 8                              ; load; *envptr89024
  %envptr89025 = inttoptr i64 %env86719 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89026 = getelementptr inbounds i64, i64* %envptr89025, i64 1                ; &envptr89025[1]
  %bLX$ok_63 = load i64, i64* %envptr89026, align 8                                  ; load; *envptr89026
  %cont83895 = call i64 @prim_car(i64 %rvp85901)                                     ; call prim_car
  %rvp85900 = call i64 @prim_cdr(i64 %rvp85901)                                      ; call prim_cdr
  %qmN$x = call i64 @prim_car(i64 %rvp85900)                                         ; call prim_car
  %rvp85899 = call i64 @prim_cdr(i64 %rvp85900)                                      ; call prim_cdr
  %MKE$y = call i64 @prim_car(i64 %rvp85899)                                         ; call prim_car
  %rvp85898 = call i64 @prim_cdr(i64 %rvp85899)                                      ; call prim_cdr
  %K2X$z = call i64 @prim_car(i64 %rvp85898)                                         ; call prim_car
  %na85825 = call i64 @prim_cdr(i64 %rvp85898)                                       ; call prim_cdr
  %a83740 = call i64 @prim_null_63(i64 %qmN$x)                                       ; call prim_null_63
  %cmp89027 = icmp eq i64 %a83740, 15                                                ; false?
  br i1 %cmp89027, label %else89029, label %then89028                                ; if

then89028:
  %a83741 = call i64 @prim_null_63(i64 %MKE$y)                                       ; call prim_null_63
  %cmp89030 = icmp eq i64 %a83741, 15                                                ; false?
  br i1 %cmp89030, label %else89032, label %then89031                                ; if

then89031:
  %arg84724 = add i64 0, 0                                                           ; quoted ()
  %arg84723 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %rva85828 = add i64 0, 0                                                           ; quoted ()
  %rva85827 = call i64 @prim_cons(i64 %arg84723, i64 %rva85828)                      ; call prim_cons
  %rva85826 = call i64 @prim_cons(i64 %arg84724, i64 %rva85827)                      ; call prim_cons
  %cloptr89033 = inttoptr i64 %cont83895 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89034 = getelementptr inbounds i64, i64* %cloptr89033, i64 0                 ; &cloptr89033[0]
  %f89036 = load i64, i64* %i0ptr89034, align 8                                      ; load; *i0ptr89034
  %fptr89035 = inttoptr i64 %f89036 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89035(i64 %cont83895, i64 %rva85826)                ; tail call
  ret void

else89032:
  %arg84727 = add i64 0, 0                                                           ; quoted ()
  %arg84726 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %rva85831 = add i64 0, 0                                                           ; quoted ()
  %rva85830 = call i64 @prim_cons(i64 %arg84726, i64 %rva85831)                      ; call prim_cons
  %rva85829 = call i64 @prim_cons(i64 %arg84727, i64 %rva85830)                      ; call prim_cons
  %cloptr89037 = inttoptr i64 %cont83895 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89038 = getelementptr inbounds i64, i64* %cloptr89037, i64 0                 ; &cloptr89037[0]
  %f89040 = load i64, i64* %i0ptr89038, align 8                                      ; load; *i0ptr89038
  %fptr89039 = inttoptr i64 %f89040 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89039(i64 %cont83895, i64 %rva85829)                ; tail call
  ret void

else89029:
  %arg84729 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83742 = call i64 @prim_vector_45ref(i64 %bLX$ok_63, i64 %arg84729)               ; call prim_vector_45ref
  %a83743 = call i64 @prim_car(i64 %qmN$x)                                           ; call prim_car
  %cloptr89041 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr89043 = getelementptr inbounds i64, i64* %cloptr89041, i64 1                  ; &eptr89043[1]
  %eptr89044 = getelementptr inbounds i64, i64* %cloptr89041, i64 2                  ; &eptr89044[2]
  %eptr89045 = getelementptr inbounds i64, i64* %cloptr89041, i64 3                  ; &eptr89045[3]
  %eptr89046 = getelementptr inbounds i64, i64* %cloptr89041, i64 4                  ; &eptr89046[4]
  %eptr89047 = getelementptr inbounds i64, i64* %cloptr89041, i64 5                  ; &eptr89047[5]
  %eptr89048 = getelementptr inbounds i64, i64* %cloptr89041, i64 6                  ; &eptr89048[6]
  store i64 %qmN$x, i64* %eptr89043                                                  ; *eptr89043 = %qmN$x
  store i64 %K2X$z, i64* %eptr89044                                                  ; *eptr89044 = %K2X$z
  store i64 %cont83895, i64* %eptr89045                                              ; *eptr89045 = %cont83895
  store i64 %C6M$_37append, i64* %eptr89046                                          ; *eptr89046 = %C6M$_37append
  store i64 %ptl$my_45try, i64* %eptr89047                                           ; *eptr89047 = %ptl$my_45try
  store i64 %MKE$y, i64* %eptr89048                                                  ; *eptr89048 = %MKE$y
  %eptr89042 = getelementptr inbounds i64, i64* %cloptr89041, i64 0                  ; &cloptr89041[0]
  %f89049 = ptrtoint void(i64,i64)* @lam86715 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89049, i64* %eptr89042                                                 ; store fptr
  %arg84735 = ptrtoint i64* %cloptr89041 to i64                                      ; closure cast; i64* -> i64
  %arg84733 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %rva85897 = add i64 0, 0                                                           ; quoted ()
  %rva85896 = call i64 @prim_cons(i64 %K2X$z, i64 %rva85897)                         ; call prim_cons
  %rva85895 = call i64 @prim_cons(i64 %arg84733, i64 %rva85896)                      ; call prim_cons
  %rva85894 = call i64 @prim_cons(i64 %a83743, i64 %rva85895)                        ; call prim_cons
  %rva85893 = call i64 @prim_cons(i64 %arg84735, i64 %rva85894)                      ; call prim_cons
  %cloptr89050 = inttoptr i64 %a83742 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr89051 = getelementptr inbounds i64, i64* %cloptr89050, i64 0                 ; &cloptr89050[0]
  %f89053 = load i64, i64* %i0ptr89051, align 8                                      ; load; *i0ptr89051
  %fptr89052 = inttoptr i64 %f89053 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89052(i64 %a83742, i64 %rva85893)                   ; tail call
  ret void
}


define void @lam86715(i64 %env86716, i64 %rvp85892) {
  %envptr89054 = inttoptr i64 %env86716 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89055 = getelementptr inbounds i64, i64* %envptr89054, i64 6                ; &envptr89054[6]
  %MKE$y = load i64, i64* %envptr89055, align 8                                      ; load; *envptr89055
  %envptr89056 = inttoptr i64 %env86716 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89057 = getelementptr inbounds i64, i64* %envptr89056, i64 5                ; &envptr89056[5]
  %ptl$my_45try = load i64, i64* %envptr89057, align 8                               ; load; *envptr89057
  %envptr89058 = inttoptr i64 %env86716 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89059 = getelementptr inbounds i64, i64* %envptr89058, i64 4                ; &envptr89058[4]
  %C6M$_37append = load i64, i64* %envptr89059, align 8                              ; load; *envptr89059
  %envptr89060 = inttoptr i64 %env86716 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89061 = getelementptr inbounds i64, i64* %envptr89060, i64 3                ; &envptr89060[3]
  %cont83895 = load i64, i64* %envptr89061, align 8                                  ; load; *envptr89061
  %envptr89062 = inttoptr i64 %env86716 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89063 = getelementptr inbounds i64, i64* %envptr89062, i64 2                ; &envptr89062[2]
  %K2X$z = load i64, i64* %envptr89063, align 8                                      ; load; *envptr89063
  %envptr89064 = inttoptr i64 %env86716 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89065 = getelementptr inbounds i64, i64* %envptr89064, i64 1                ; &envptr89064[1]
  %qmN$x = load i64, i64* %envptr89065, align 8                                      ; load; *envptr89065
  %_9583896 = call i64 @prim_car(i64 %rvp85892)                                      ; call prim_car
  %rvp85891 = call i64 @prim_cdr(i64 %rvp85892)                                      ; call prim_cdr
  %a83744 = call i64 @prim_car(i64 %rvp85891)                                        ; call prim_car
  %na85833 = call i64 @prim_cdr(i64 %rvp85891)                                       ; call prim_cdr
  %cmp89066 = icmp eq i64 %a83744, 15                                                ; false?
  br i1 %cmp89066, label %else89068, label %then89067                                ; if

then89067:
  %arg84737 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83745 = call i64 @prim_vector_45ref(i64 %ptl$my_45try, i64 %arg84737)            ; call prim_vector_45ref
  %a83746 = call i64 @prim_cdr(i64 %qmN$x)                                           ; call prim_cdr
  %cloptr89069 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr89071 = getelementptr inbounds i64, i64* %cloptr89069, i64 1                  ; &eptr89071[1]
  %eptr89072 = getelementptr inbounds i64, i64* %cloptr89069, i64 2                  ; &eptr89072[2]
  %eptr89073 = getelementptr inbounds i64, i64* %cloptr89069, i64 3                  ; &eptr89073[3]
  %eptr89074 = getelementptr inbounds i64, i64* %cloptr89069, i64 4                  ; &eptr89074[4]
  %eptr89075 = getelementptr inbounds i64, i64* %cloptr89069, i64 5                  ; &eptr89075[5]
  %eptr89076 = getelementptr inbounds i64, i64* %cloptr89069, i64 6                  ; &eptr89076[6]
  store i64 %qmN$x, i64* %eptr89071                                                  ; *eptr89071 = %qmN$x
  store i64 %K2X$z, i64* %eptr89072                                                  ; *eptr89072 = %K2X$z
  store i64 %a83745, i64* %eptr89073                                                 ; *eptr89073 = %a83745
  store i64 %cont83895, i64* %eptr89074                                              ; *eptr89074 = %cont83895
  store i64 %ptl$my_45try, i64* %eptr89075                                           ; *eptr89075 = %ptl$my_45try
  store i64 %MKE$y, i64* %eptr89076                                                  ; *eptr89076 = %MKE$y
  %eptr89070 = getelementptr inbounds i64, i64* %cloptr89069, i64 0                  ; &cloptr89069[0]
  %f89077 = ptrtoint void(i64,i64)* @lam86701 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89077, i64* %eptr89070                                                 ; store fptr
  %arg84742 = ptrtoint i64* %cloptr89069 to i64                                      ; closure cast; i64* -> i64
  %rva85871 = add i64 0, 0                                                           ; quoted ()
  %rva85870 = call i64 @prim_cons(i64 %MKE$y, i64 %rva85871)                         ; call prim_cons
  %rva85869 = call i64 @prim_cons(i64 %a83746, i64 %rva85870)                        ; call prim_cons
  %rva85868 = call i64 @prim_cons(i64 %arg84742, i64 %rva85869)                      ; call prim_cons
  %cloptr89078 = inttoptr i64 %C6M$_37append to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr89079 = getelementptr inbounds i64, i64* %cloptr89078, i64 0                 ; &cloptr89078[0]
  %f89081 = load i64, i64* %i0ptr89079, align 8                                      ; load; *i0ptr89079
  %fptr89080 = inttoptr i64 %f89081 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89080(i64 %C6M$_37append, i64 %rva85868)            ; tail call
  ret void

else89068:
  %cloptr89082 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr89084 = getelementptr inbounds i64, i64* %cloptr89082, i64 1                  ; &eptr89084[1]
  %eptr89085 = getelementptr inbounds i64, i64* %cloptr89082, i64 2                  ; &eptr89085[2]
  %eptr89086 = getelementptr inbounds i64, i64* %cloptr89082, i64 3                  ; &eptr89086[3]
  %eptr89087 = getelementptr inbounds i64, i64* %cloptr89082, i64 4                  ; &eptr89087[4]
  %eptr89088 = getelementptr inbounds i64, i64* %cloptr89082, i64 5                  ; &eptr89088[5]
  store i64 %qmN$x, i64* %eptr89084                                                  ; *eptr89084 = %qmN$x
  store i64 %K2X$z, i64* %eptr89085                                                  ; *eptr89085 = %K2X$z
  store i64 %cont83895, i64* %eptr89086                                              ; *eptr89086 = %cont83895
  store i64 %ptl$my_45try, i64* %eptr89087                                           ; *eptr89087 = %ptl$my_45try
  store i64 %MKE$y, i64* %eptr89088                                                  ; *eptr89088 = %MKE$y
  %eptr89083 = getelementptr inbounds i64, i64* %cloptr89082, i64 0                  ; &cloptr89082[0]
  %f89089 = ptrtoint void(i64,i64)* @lam86713 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89089, i64* %eptr89083                                                 ; store fptr
  %arg84777 = ptrtoint i64* %cloptr89082 to i64                                      ; closure cast; i64* -> i64
  %arg84776 = add i64 0, 0                                                           ; quoted ()
  %arg84775 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %rva85890 = add i64 0, 0                                                           ; quoted ()
  %rva85889 = call i64 @prim_cons(i64 %arg84775, i64 %rva85890)                      ; call prim_cons
  %rva85888 = call i64 @prim_cons(i64 %arg84776, i64 %rva85889)                      ; call prim_cons
  %cloptr89090 = inttoptr i64 %arg84777 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr89091 = getelementptr inbounds i64, i64* %cloptr89090, i64 0                 ; &cloptr89090[0]
  %f89093 = load i64, i64* %i0ptr89091, align 8                                      ; load; *i0ptr89091
  %fptr89092 = inttoptr i64 %f89093 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89092(i64 %arg84777, i64 %rva85888)                 ; tail call
  ret void
}


define void @lam86713(i64 %env86714, i64 %rvp85887) {
  %envptr89094 = inttoptr i64 %env86714 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89095 = getelementptr inbounds i64, i64* %envptr89094, i64 5                ; &envptr89094[5]
  %MKE$y = load i64, i64* %envptr89095, align 8                                      ; load; *envptr89095
  %envptr89096 = inttoptr i64 %env86714 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89097 = getelementptr inbounds i64, i64* %envptr89096, i64 4                ; &envptr89096[4]
  %ptl$my_45try = load i64, i64* %envptr89097, align 8                               ; load; *envptr89097
  %envptr89098 = inttoptr i64 %env86714 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89099 = getelementptr inbounds i64, i64* %envptr89098, i64 3                ; &envptr89098[3]
  %cont83895 = load i64, i64* %envptr89099, align 8                                  ; load; *envptr89099
  %envptr89100 = inttoptr i64 %env86714 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89101 = getelementptr inbounds i64, i64* %envptr89100, i64 2                ; &envptr89100[2]
  %K2X$z = load i64, i64* %envptr89101, align 8                                      ; load; *envptr89101
  %envptr89102 = inttoptr i64 %env86714 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89103 = getelementptr inbounds i64, i64* %envptr89102, i64 1                ; &envptr89102[1]
  %qmN$x = load i64, i64* %envptr89103, align 8                                      ; load; *envptr89103
  %_9583897 = call i64 @prim_car(i64 %rvp85887)                                      ; call prim_car
  %rvp85886 = call i64 @prim_cdr(i64 %rvp85887)                                      ; call prim_cdr
  %a83751 = call i64 @prim_car(i64 %rvp85886)                                        ; call prim_car
  %na85873 = call i64 @prim_cdr(i64 %rvp85886)                                       ; call prim_cdr
  %arg84778 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83752 = call i64 @prim_vector_45ref(i64 %ptl$my_45try, i64 %arg84778)            ; call prim_vector_45ref
  %a83753 = call i64 @prim_cdr(i64 %qmN$x)                                           ; call prim_cdr
  %a83754 = call i64 @prim_car(i64 %qmN$x)                                           ; call prim_car
  %a83755 = call i64 @prim_cons(i64 %a83754, i64 %MKE$y)                             ; call prim_cons
  %cloptr89104 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr89106 = getelementptr inbounds i64, i64* %cloptr89104, i64 1                  ; &eptr89106[1]
  %eptr89107 = getelementptr inbounds i64, i64* %cloptr89104, i64 2                  ; &eptr89107[2]
  store i64 %a83751, i64* %eptr89106                                                 ; *eptr89106 = %a83751
  store i64 %cont83895, i64* %eptr89107                                              ; *eptr89107 = %cont83895
  %eptr89105 = getelementptr inbounds i64, i64* %cloptr89104, i64 0                  ; &cloptr89104[0]
  %f89108 = ptrtoint void(i64,i64)* @lam86710 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89108, i64* %eptr89105                                                 ; store fptr
  %arg84787 = ptrtoint i64* %cloptr89104 to i64                                      ; closure cast; i64* -> i64
  %rva85885 = add i64 0, 0                                                           ; quoted ()
  %rva85884 = call i64 @prim_cons(i64 %K2X$z, i64 %rva85885)                         ; call prim_cons
  %rva85883 = call i64 @prim_cons(i64 %a83755, i64 %rva85884)                        ; call prim_cons
  %rva85882 = call i64 @prim_cons(i64 %a83753, i64 %rva85883)                        ; call prim_cons
  %rva85881 = call i64 @prim_cons(i64 %arg84787, i64 %rva85882)                      ; call prim_cons
  %cloptr89109 = inttoptr i64 %a83752 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr89110 = getelementptr inbounds i64, i64* %cloptr89109, i64 0                 ; &cloptr89109[0]
  %f89112 = load i64, i64* %i0ptr89110, align 8                                      ; load; *i0ptr89110
  %fptr89111 = inttoptr i64 %f89112 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89111(i64 %a83752, i64 %rva85881)                   ; tail call
  ret void
}


define void @lam86710(i64 %env86711, i64 %rvp85880) {
  %envptr89113 = inttoptr i64 %env86711 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89114 = getelementptr inbounds i64, i64* %envptr89113, i64 2                ; &envptr89113[2]
  %cont83895 = load i64, i64* %envptr89114, align 8                                  ; load; *envptr89114
  %envptr89115 = inttoptr i64 %env86711 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89116 = getelementptr inbounds i64, i64* %envptr89115, i64 1                ; &envptr89115[1]
  %a83751 = load i64, i64* %envptr89116, align 8                                     ; load; *envptr89116
  %_9583898 = call i64 @prim_car(i64 %rvp85880)                                      ; call prim_car
  %rvp85879 = call i64 @prim_cdr(i64 %rvp85880)                                      ; call prim_cdr
  %a83756 = call i64 @prim_car(i64 %rvp85879)                                        ; call prim_car
  %na85875 = call i64 @prim_cdr(i64 %rvp85879)                                       ; call prim_cdr
  %retprim83899 = call i64 @prim__43(i64 %a83751, i64 %a83756)                       ; call prim__43
  %arg84792 = add i64 0, 0                                                           ; quoted ()
  %rva85878 = add i64 0, 0                                                           ; quoted ()
  %rva85877 = call i64 @prim_cons(i64 %retprim83899, i64 %rva85878)                  ; call prim_cons
  %rva85876 = call i64 @prim_cons(i64 %arg84792, i64 %rva85877)                      ; call prim_cons
  %cloptr89117 = inttoptr i64 %cont83895 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89118 = getelementptr inbounds i64, i64* %cloptr89117, i64 0                 ; &cloptr89117[0]
  %f89120 = load i64, i64* %i0ptr89118, align 8                                      ; load; *i0ptr89118
  %fptr89119 = inttoptr i64 %f89120 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89119(i64 %cont83895, i64 %rva85876)                ; tail call
  ret void
}


define void @lam86701(i64 %env86702, i64 %rvp85867) {
  %envptr89121 = inttoptr i64 %env86702 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89122 = getelementptr inbounds i64, i64* %envptr89121, i64 6                ; &envptr89121[6]
  %MKE$y = load i64, i64* %envptr89122, align 8                                      ; load; *envptr89122
  %envptr89123 = inttoptr i64 %env86702 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89124 = getelementptr inbounds i64, i64* %envptr89123, i64 5                ; &envptr89123[5]
  %ptl$my_45try = load i64, i64* %envptr89124, align 8                               ; load; *envptr89124
  %envptr89125 = inttoptr i64 %env86702 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89126 = getelementptr inbounds i64, i64* %envptr89125, i64 4                ; &envptr89125[4]
  %cont83895 = load i64, i64* %envptr89126, align 8                                  ; load; *envptr89126
  %envptr89127 = inttoptr i64 %env86702 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89128 = getelementptr inbounds i64, i64* %envptr89127, i64 3                ; &envptr89127[3]
  %a83745 = load i64, i64* %envptr89128, align 8                                     ; load; *envptr89128
  %envptr89129 = inttoptr i64 %env86702 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89130 = getelementptr inbounds i64, i64* %envptr89129, i64 2                ; &envptr89129[2]
  %K2X$z = load i64, i64* %envptr89130, align 8                                      ; load; *envptr89130
  %envptr89131 = inttoptr i64 %env86702 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89132 = getelementptr inbounds i64, i64* %envptr89131, i64 1                ; &envptr89131[1]
  %qmN$x = load i64, i64* %envptr89132, align 8                                      ; load; *envptr89132
  %_9583900 = call i64 @prim_car(i64 %rvp85867)                                      ; call prim_car
  %rvp85866 = call i64 @prim_cdr(i64 %rvp85867)                                      ; call prim_cdr
  %a83747 = call i64 @prim_car(i64 %rvp85866)                                        ; call prim_car
  %na85835 = call i64 @prim_cdr(i64 %rvp85866)                                       ; call prim_cdr
  %cloptr89133 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr89134 = getelementptr inbounds i64, i64* %cloptr89133, i64 0                  ; &cloptr89133[0]
  %f89135 = ptrtoint void(i64,i64)* @lam86699 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89135, i64* %eptr89134                                                 ; store fptr
  %arg84745 = ptrtoint i64* %cloptr89133 to i64                                      ; closure cast; i64* -> i64
  %cloptr89136 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr89138 = getelementptr inbounds i64, i64* %cloptr89136, i64 1                  ; &eptr89138[1]
  %eptr89139 = getelementptr inbounds i64, i64* %cloptr89136, i64 2                  ; &eptr89139[2]
  %eptr89140 = getelementptr inbounds i64, i64* %cloptr89136, i64 3                  ; &eptr89140[3]
  %eptr89141 = getelementptr inbounds i64, i64* %cloptr89136, i64 4                  ; &eptr89141[4]
  %eptr89142 = getelementptr inbounds i64, i64* %cloptr89136, i64 5                  ; &eptr89142[5]
  %eptr89143 = getelementptr inbounds i64, i64* %cloptr89136, i64 6                  ; &eptr89143[6]
  %eptr89144 = getelementptr inbounds i64, i64* %cloptr89136, i64 7                  ; &eptr89144[7]
  store i64 %qmN$x, i64* %eptr89138                                                  ; *eptr89138 = %qmN$x
  store i64 %K2X$z, i64* %eptr89139                                                  ; *eptr89139 = %K2X$z
  store i64 %a83745, i64* %eptr89140                                                 ; *eptr89140 = %a83745
  store i64 %cont83895, i64* %eptr89141                                              ; *eptr89141 = %cont83895
  store i64 %ptl$my_45try, i64* %eptr89142                                           ; *eptr89142 = %ptl$my_45try
  store i64 %MKE$y, i64* %eptr89143                                                  ; *eptr89143 = %MKE$y
  store i64 %a83747, i64* %eptr89144                                                 ; *eptr89144 = %a83747
  %eptr89137 = getelementptr inbounds i64, i64* %cloptr89136, i64 0                  ; &cloptr89136[0]
  %f89145 = ptrtoint void(i64,i64)* @lam86695 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89145, i64* %eptr89137                                                 ; store fptr
  %arg84744 = ptrtoint i64* %cloptr89136 to i64                                      ; closure cast; i64* -> i64
  %rva85865 = add i64 0, 0                                                           ; quoted ()
  %rva85864 = call i64 @prim_cons(i64 %arg84744, i64 %rva85865)                      ; call prim_cons
  %cloptr89146 = inttoptr i64 %arg84745 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr89147 = getelementptr inbounds i64, i64* %cloptr89146, i64 0                 ; &cloptr89146[0]
  %f89149 = load i64, i64* %i0ptr89147, align 8                                      ; load; *i0ptr89147
  %fptr89148 = inttoptr i64 %f89149 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89148(i64 %arg84745, i64 %rva85864)                 ; tail call
  ret void
}


define void @lam86699(i64 %env86700, i64 %g8T$lst83903) {
  %cont83902 = call i64 @prim_car(i64 %g8T$lst83903)                                 ; call prim_car
  %g8T$lst = call i64 @prim_cdr(i64 %g8T$lst83903)                                   ; call prim_cdr
  %arg84749 = add i64 0, 0                                                           ; quoted ()
  %rva85838 = add i64 0, 0                                                           ; quoted ()
  %rva85837 = call i64 @prim_cons(i64 %g8T$lst, i64 %rva85838)                       ; call prim_cons
  %rva85836 = call i64 @prim_cons(i64 %arg84749, i64 %rva85837)                      ; call prim_cons
  %cloptr89150 = inttoptr i64 %cont83902 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89151 = getelementptr inbounds i64, i64* %cloptr89150, i64 0                 ; &cloptr89150[0]
  %f89153 = load i64, i64* %i0ptr89151, align 8                                      ; load; *i0ptr89151
  %fptr89152 = inttoptr i64 %f89153 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89152(i64 %cont83902, i64 %rva85836)                ; tail call
  ret void
}


define void @lam86695(i64 %env86696, i64 %rvp85863) {
  %envptr89154 = inttoptr i64 %env86696 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89155 = getelementptr inbounds i64, i64* %envptr89154, i64 7                ; &envptr89154[7]
  %a83747 = load i64, i64* %envptr89155, align 8                                     ; load; *envptr89155
  %envptr89156 = inttoptr i64 %env86696 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89157 = getelementptr inbounds i64, i64* %envptr89156, i64 6                ; &envptr89156[6]
  %MKE$y = load i64, i64* %envptr89157, align 8                                      ; load; *envptr89157
  %envptr89158 = inttoptr i64 %env86696 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89159 = getelementptr inbounds i64, i64* %envptr89158, i64 5                ; &envptr89158[5]
  %ptl$my_45try = load i64, i64* %envptr89159, align 8                               ; load; *envptr89159
  %envptr89160 = inttoptr i64 %env86696 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89161 = getelementptr inbounds i64, i64* %envptr89160, i64 4                ; &envptr89160[4]
  %cont83895 = load i64, i64* %envptr89161, align 8                                  ; load; *envptr89161
  %envptr89162 = inttoptr i64 %env86696 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89163 = getelementptr inbounds i64, i64* %envptr89162, i64 3                ; &envptr89162[3]
  %a83745 = load i64, i64* %envptr89163, align 8                                     ; load; *envptr89163
  %envptr89164 = inttoptr i64 %env86696 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89165 = getelementptr inbounds i64, i64* %envptr89164, i64 2                ; &envptr89164[2]
  %K2X$z = load i64, i64* %envptr89165, align 8                                      ; load; *envptr89165
  %envptr89166 = inttoptr i64 %env86696 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89167 = getelementptr inbounds i64, i64* %envptr89166, i64 1                ; &envptr89166[1]
  %qmN$x = load i64, i64* %envptr89167, align 8                                      ; load; *envptr89167
  %_9583901 = call i64 @prim_car(i64 %rvp85863)                                      ; call prim_car
  %rvp85862 = call i64 @prim_cdr(i64 %rvp85863)                                      ; call prim_cdr
  %a83748 = call i64 @prim_car(i64 %rvp85862)                                        ; call prim_car
  %na85840 = call i64 @prim_cdr(i64 %rvp85862)                                       ; call prim_cdr
  %a83749 = call i64 @prim_car(i64 %qmN$x)                                           ; call prim_car
  %a83750 = call i64 @prim_cons(i64 %a83749, i64 %K2X$z)                             ; call prim_cons
  %cloptr89168 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr89170 = getelementptr inbounds i64, i64* %cloptr89168, i64 1                  ; &eptr89170[1]
  %eptr89171 = getelementptr inbounds i64, i64* %cloptr89168, i64 2                  ; &eptr89171[2]
  %eptr89172 = getelementptr inbounds i64, i64* %cloptr89168, i64 3                  ; &eptr89172[3]
  %eptr89173 = getelementptr inbounds i64, i64* %cloptr89168, i64 4                  ; &eptr89173[4]
  %eptr89174 = getelementptr inbounds i64, i64* %cloptr89168, i64 5                  ; &eptr89174[5]
  store i64 %qmN$x, i64* %eptr89170                                                  ; *eptr89170 = %qmN$x
  store i64 %K2X$z, i64* %eptr89171                                                  ; *eptr89171 = %K2X$z
  store i64 %cont83895, i64* %eptr89172                                              ; *eptr89172 = %cont83895
  store i64 %ptl$my_45try, i64* %eptr89173                                           ; *eptr89173 = %ptl$my_45try
  store i64 %MKE$y, i64* %eptr89174                                                  ; *eptr89174 = %MKE$y
  %eptr89169 = getelementptr inbounds i64, i64* %cloptr89168, i64 0                  ; &cloptr89168[0]
  %f89175 = ptrtoint void(i64,i64)* @lam86693 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89175, i64* %eptr89169                                                 ; store fptr
  %arg84757 = ptrtoint i64* %cloptr89168 to i64                                      ; closure cast; i64* -> i64
  %rva85861 = add i64 0, 0                                                           ; quoted ()
  %rva85860 = call i64 @prim_cons(i64 %a83750, i64 %rva85861)                        ; call prim_cons
  %rva85859 = call i64 @prim_cons(i64 %a83748, i64 %rva85860)                        ; call prim_cons
  %rva85858 = call i64 @prim_cons(i64 %a83747, i64 %rva85859)                        ; call prim_cons
  %rva85857 = call i64 @prim_cons(i64 %arg84757, i64 %rva85858)                      ; call prim_cons
  %cloptr89176 = inttoptr i64 %a83745 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr89177 = getelementptr inbounds i64, i64* %cloptr89176, i64 0                 ; &cloptr89176[0]
  %f89179 = load i64, i64* %i0ptr89177, align 8                                      ; load; *i0ptr89177
  %fptr89178 = inttoptr i64 %f89179 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89178(i64 %a83745, i64 %rva85857)                   ; tail call
  ret void
}


define void @lam86693(i64 %env86694, i64 %rvp85856) {
  %envptr89180 = inttoptr i64 %env86694 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89181 = getelementptr inbounds i64, i64* %envptr89180, i64 5                ; &envptr89180[5]
  %MKE$y = load i64, i64* %envptr89181, align 8                                      ; load; *envptr89181
  %envptr89182 = inttoptr i64 %env86694 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89183 = getelementptr inbounds i64, i64* %envptr89182, i64 4                ; &envptr89182[4]
  %ptl$my_45try = load i64, i64* %envptr89183, align 8                               ; load; *envptr89183
  %envptr89184 = inttoptr i64 %env86694 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89185 = getelementptr inbounds i64, i64* %envptr89184, i64 3                ; &envptr89184[3]
  %cont83895 = load i64, i64* %envptr89185, align 8                                  ; load; *envptr89185
  %envptr89186 = inttoptr i64 %env86694 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89187 = getelementptr inbounds i64, i64* %envptr89186, i64 2                ; &envptr89186[2]
  %K2X$z = load i64, i64* %envptr89187, align 8                                      ; load; *envptr89187
  %envptr89188 = inttoptr i64 %env86694 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89189 = getelementptr inbounds i64, i64* %envptr89188, i64 1                ; &envptr89188[1]
  %qmN$x = load i64, i64* %envptr89189, align 8                                      ; load; *envptr89189
  %_9583897 = call i64 @prim_car(i64 %rvp85856)                                      ; call prim_car
  %rvp85855 = call i64 @prim_cdr(i64 %rvp85856)                                      ; call prim_cdr
  %a83751 = call i64 @prim_car(i64 %rvp85855)                                        ; call prim_car
  %na85842 = call i64 @prim_cdr(i64 %rvp85855)                                       ; call prim_cdr
  %arg84759 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83752 = call i64 @prim_vector_45ref(i64 %ptl$my_45try, i64 %arg84759)            ; call prim_vector_45ref
  %a83753 = call i64 @prim_cdr(i64 %qmN$x)                                           ; call prim_cdr
  %a83754 = call i64 @prim_car(i64 %qmN$x)                                           ; call prim_car
  %a83755 = call i64 @prim_cons(i64 %a83754, i64 %MKE$y)                             ; call prim_cons
  %cloptr89190 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr89192 = getelementptr inbounds i64, i64* %cloptr89190, i64 1                  ; &eptr89192[1]
  %eptr89193 = getelementptr inbounds i64, i64* %cloptr89190, i64 2                  ; &eptr89193[2]
  store i64 %a83751, i64* %eptr89192                                                 ; *eptr89192 = %a83751
  store i64 %cont83895, i64* %eptr89193                                              ; *eptr89193 = %cont83895
  %eptr89191 = getelementptr inbounds i64, i64* %cloptr89190, i64 0                  ; &cloptr89190[0]
  %f89194 = ptrtoint void(i64,i64)* @lam86690 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89194, i64* %eptr89191                                                 ; store fptr
  %arg84768 = ptrtoint i64* %cloptr89190 to i64                                      ; closure cast; i64* -> i64
  %rva85854 = add i64 0, 0                                                           ; quoted ()
  %rva85853 = call i64 @prim_cons(i64 %K2X$z, i64 %rva85854)                         ; call prim_cons
  %rva85852 = call i64 @prim_cons(i64 %a83755, i64 %rva85853)                        ; call prim_cons
  %rva85851 = call i64 @prim_cons(i64 %a83753, i64 %rva85852)                        ; call prim_cons
  %rva85850 = call i64 @prim_cons(i64 %arg84768, i64 %rva85851)                      ; call prim_cons
  %cloptr89195 = inttoptr i64 %a83752 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr89196 = getelementptr inbounds i64, i64* %cloptr89195, i64 0                 ; &cloptr89195[0]
  %f89198 = load i64, i64* %i0ptr89196, align 8                                      ; load; *i0ptr89196
  %fptr89197 = inttoptr i64 %f89198 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89197(i64 %a83752, i64 %rva85850)                   ; tail call
  ret void
}


define void @lam86690(i64 %env86691, i64 %rvp85849) {
  %envptr89199 = inttoptr i64 %env86691 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89200 = getelementptr inbounds i64, i64* %envptr89199, i64 2                ; &envptr89199[2]
  %cont83895 = load i64, i64* %envptr89200, align 8                                  ; load; *envptr89200
  %envptr89201 = inttoptr i64 %env86691 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89202 = getelementptr inbounds i64, i64* %envptr89201, i64 1                ; &envptr89201[1]
  %a83751 = load i64, i64* %envptr89202, align 8                                     ; load; *envptr89202
  %_9583898 = call i64 @prim_car(i64 %rvp85849)                                      ; call prim_car
  %rvp85848 = call i64 @prim_cdr(i64 %rvp85849)                                      ; call prim_cdr
  %a83756 = call i64 @prim_car(i64 %rvp85848)                                        ; call prim_car
  %na85844 = call i64 @prim_cdr(i64 %rvp85848)                                       ; call prim_cdr
  %retprim83899 = call i64 @prim__43(i64 %a83751, i64 %a83756)                       ; call prim__43
  %arg84773 = add i64 0, 0                                                           ; quoted ()
  %rva85847 = add i64 0, 0                                                           ; quoted ()
  %rva85846 = call i64 @prim_cons(i64 %retprim83899, i64 %rva85847)                  ; call prim_cons
  %rva85845 = call i64 @prim_cons(i64 %arg84773, i64 %rva85846)                      ; call prim_cons
  %cloptr89203 = inttoptr i64 %cont83895 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89204 = getelementptr inbounds i64, i64* %cloptr89203, i64 0                 ; &cloptr89203[0]
  %f89206 = load i64, i64* %i0ptr89204, align 8                                      ; load; *i0ptr89204
  %fptr89205 = inttoptr i64 %f89206 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89205(i64 %cont83895, i64 %rva85845)                ; tail call
  ret void
}


define void @lam86673(i64 %env86674, i64 %rvp85921) {
  %envptr89207 = inttoptr i64 %env86674 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89208 = getelementptr inbounds i64, i64* %envptr89207, i64 1                ; &envptr89207[1]
  %bLX$ok_63 = load i64, i64* %envptr89208, align 8                                  ; load; *envptr89208
  %cont83904 = call i64 @prim_car(i64 %rvp85921)                                     ; call prim_car
  %rvp85920 = call i64 @prim_cdr(i64 %rvp85921)                                      ; call prim_cdr
  %wmX$row = call i64 @prim_car(i64 %rvp85920)                                       ; call prim_car
  %rvp85919 = call i64 @prim_cdr(i64 %rvp85920)                                      ; call prim_cdr
  %VAu$dist = call i64 @prim_car(i64 %rvp85919)                                      ; call prim_car
  %rvp85918 = call i64 @prim_cdr(i64 %rvp85919)                                      ; call prim_cdr
  %o3q$placed = call i64 @prim_car(i64 %rvp85918)                                    ; call prim_car
  %na85903 = call i64 @prim_cdr(i64 %rvp85918)                                       ; call prim_cdr
  %a83757 = call i64 @prim_null_63(i64 %o3q$placed)                                  ; call prim_null_63
  %cmp89209 = icmp eq i64 %a83757, 15                                                ; false?
  br i1 %cmp89209, label %else89211, label %then89210                                ; if

then89210:
  %arg84799 = add i64 0, 0                                                           ; quoted ()
  %arg84798 = call i64 @const_init_true()                                            ; quoted #t
  %rva85906 = add i64 0, 0                                                           ; quoted ()
  %rva85905 = call i64 @prim_cons(i64 %arg84798, i64 %rva85906)                      ; call prim_cons
  %rva85904 = call i64 @prim_cons(i64 %arg84799, i64 %rva85905)                      ; call prim_cons
  %cloptr89212 = inttoptr i64 %cont83904 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89213 = getelementptr inbounds i64, i64* %cloptr89212, i64 0                 ; &cloptr89212[0]
  %f89215 = load i64, i64* %i0ptr89213, align 8                                      ; load; *i0ptr89213
  %fptr89214 = inttoptr i64 %f89215 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89214(i64 %cont83904, i64 %rva85904)                ; tail call
  ret void

else89211:
  %a83758 = call i64 @prim_car(i64 %o3q$placed)                                      ; call prim_car
  %a83759 = call i64 @prim__43(i64 %wmX$row, i64 %VAu$dist)                          ; call prim__43
  %a83760 = call i64 @prim__61(i64 %a83758, i64 %a83759)                             ; call prim__61
  %a83761 = call i64 @prim_not(i64 %a83760)                                          ; call prim_not
  %cmp89216 = icmp eq i64 %a83761, 15                                                ; false?
  br i1 %cmp89216, label %else89218, label %then89217                                ; if

then89217:
  %a83762 = call i64 @prim_car(i64 %o3q$placed)                                      ; call prim_car
  %a83763 = call i64 @prim__45(i64 %wmX$row, i64 %VAu$dist)                          ; call prim__45
  %a83764 = call i64 @prim__61(i64 %a83762, i64 %a83763)                             ; call prim__61
  %a83765 = call i64 @prim_not(i64 %a83764)                                          ; call prim_not
  %cmp89219 = icmp eq i64 %a83765, 15                                                ; false?
  br i1 %cmp89219, label %else89221, label %then89220                                ; if

then89220:
  %arg84813 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83766 = call i64 @prim_vector_45ref(i64 %bLX$ok_63, i64 %arg84813)               ; call prim_vector_45ref
  %arg84815 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a83767 = call i64 @prim__43(i64 %VAu$dist, i64 %arg84815)                         ; call prim__43
  %a83768 = call i64 @prim_cdr(i64 %o3q$placed)                                      ; call prim_cdr
  %rva85911 = add i64 0, 0                                                           ; quoted ()
  %rva85910 = call i64 @prim_cons(i64 %a83768, i64 %rva85911)                        ; call prim_cons
  %rva85909 = call i64 @prim_cons(i64 %a83767, i64 %rva85910)                        ; call prim_cons
  %rva85908 = call i64 @prim_cons(i64 %wmX$row, i64 %rva85909)                       ; call prim_cons
  %rva85907 = call i64 @prim_cons(i64 %cont83904, i64 %rva85908)                     ; call prim_cons
  %cloptr89222 = inttoptr i64 %a83766 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr89223 = getelementptr inbounds i64, i64* %cloptr89222, i64 0                 ; &cloptr89222[0]
  %f89225 = load i64, i64* %i0ptr89223, align 8                                      ; load; *i0ptr89223
  %fptr89224 = inttoptr i64 %f89225 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89224(i64 %a83766, i64 %rva85907)                   ; tail call
  ret void

else89221:
  %arg84824 = add i64 0, 0                                                           ; quoted ()
  %arg84823 = call i64 @const_init_false()                                           ; quoted #f
  %rva85914 = add i64 0, 0                                                           ; quoted ()
  %rva85913 = call i64 @prim_cons(i64 %arg84823, i64 %rva85914)                      ; call prim_cons
  %rva85912 = call i64 @prim_cons(i64 %arg84824, i64 %rva85913)                      ; call prim_cons
  %cloptr89226 = inttoptr i64 %cont83904 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89227 = getelementptr inbounds i64, i64* %cloptr89226, i64 0                 ; &cloptr89226[0]
  %f89229 = load i64, i64* %i0ptr89227, align 8                                      ; load; *i0ptr89227
  %fptr89228 = inttoptr i64 %f89229 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89228(i64 %cont83904, i64 %rva85912)                ; tail call
  ret void

else89218:
  %arg84827 = add i64 0, 0                                                           ; quoted ()
  %arg84826 = call i64 @const_init_false()                                           ; quoted #f
  %rva85917 = add i64 0, 0                                                           ; quoted ()
  %rva85916 = call i64 @prim_cons(i64 %arg84826, i64 %rva85917)                      ; call prim_cons
  %rva85915 = call i64 @prim_cons(i64 %arg84827, i64 %rva85916)                      ; call prim_cons
  %cloptr89230 = inttoptr i64 %cont83904 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89231 = getelementptr inbounds i64, i64* %cloptr89230, i64 0                 ; &cloptr89230[0]
  %f89233 = load i64, i64* %i0ptr89231, align 8                                      ; load; *i0ptr89231
  %fptr89232 = inttoptr i64 %f89233 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89232(i64 %cont83904, i64 %rva85915)                ; tail call
  ret void
}


define void @lam86657(i64 %env86658, i64 %rvp85948) {
  %envptr89234 = inttoptr i64 %env86658 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89235 = getelementptr inbounds i64, i64* %envptr89234, i64 2                ; &envptr89234[2]
  %cont83881 = load i64, i64* %envptr89235, align 8                                  ; load; *envptr89235
  %envptr89236 = inttoptr i64 %env86658 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89237 = getelementptr inbounds i64, i64* %envptr89236, i64 1                ; &envptr89236[1]
  %a83769 = load i64, i64* %envptr89237, align 8                                     ; load; *envptr89237
  %_9583905 = call i64 @prim_car(i64 %rvp85948)                                      ; call prim_car
  %rvp85947 = call i64 @prim_cdr(i64 %rvp85948)                                      ; call prim_cdr
  %a83771 = call i64 @prim_car(i64 %rvp85947)                                        ; call prim_car
  %na85923 = call i64 @prim_cdr(i64 %rvp85947)                                       ; call prim_cdr
  %cloptr89238 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr89239 = getelementptr inbounds i64, i64* %cloptr89238, i64 0                  ; &cloptr89238[0]
  %f89240 = ptrtoint void(i64,i64)* @lam86655 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89240, i64* %eptr89239                                                 ; store fptr
  %arg84837 = ptrtoint i64* %cloptr89238 to i64                                      ; closure cast; i64* -> i64
  %cloptr89241 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr89243 = getelementptr inbounds i64, i64* %cloptr89241, i64 1                  ; &eptr89243[1]
  %eptr89244 = getelementptr inbounds i64, i64* %cloptr89241, i64 2                  ; &eptr89244[2]
  %eptr89245 = getelementptr inbounds i64, i64* %cloptr89241, i64 3                  ; &eptr89245[3]
  store i64 %a83769, i64* %eptr89243                                                 ; *eptr89243 = %a83769
  store i64 %a83771, i64* %eptr89244                                                 ; *eptr89244 = %a83771
  store i64 %cont83881, i64* %eptr89245                                              ; *eptr89245 = %cont83881
  %eptr89242 = getelementptr inbounds i64, i64* %cloptr89241, i64 0                  ; &cloptr89241[0]
  %f89246 = ptrtoint void(i64,i64)* @lam86651 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89246, i64* %eptr89242                                                 ; store fptr
  %arg84836 = ptrtoint i64* %cloptr89241 to i64                                      ; closure cast; i64* -> i64
  %rva85946 = add i64 0, 0                                                           ; quoted ()
  %rva85945 = call i64 @prim_cons(i64 %arg84836, i64 %rva85946)                      ; call prim_cons
  %cloptr89247 = inttoptr i64 %arg84837 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr89248 = getelementptr inbounds i64, i64* %cloptr89247, i64 0                 ; &cloptr89247[0]
  %f89250 = load i64, i64* %i0ptr89248, align 8                                      ; load; *i0ptr89248
  %fptr89249 = inttoptr i64 %f89250 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89249(i64 %arg84837, i64 %rva85945)                 ; tail call
  ret void
}


define void @lam86655(i64 %env86656, i64 %SMt$lst83911) {
  %cont83910 = call i64 @prim_car(i64 %SMt$lst83911)                                 ; call prim_car
  %SMt$lst = call i64 @prim_cdr(i64 %SMt$lst83911)                                   ; call prim_cdr
  %arg84841 = add i64 0, 0                                                           ; quoted ()
  %rva85926 = add i64 0, 0                                                           ; quoted ()
  %rva85925 = call i64 @prim_cons(i64 %SMt$lst, i64 %rva85926)                       ; call prim_cons
  %rva85924 = call i64 @prim_cons(i64 %arg84841, i64 %rva85925)                      ; call prim_cons
  %cloptr89251 = inttoptr i64 %cont83910 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89252 = getelementptr inbounds i64, i64* %cloptr89251, i64 0                 ; &cloptr89251[0]
  %f89254 = load i64, i64* %i0ptr89252, align 8                                      ; load; *i0ptr89252
  %fptr89253 = inttoptr i64 %f89254 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89253(i64 %cont83910, i64 %rva85924)                ; tail call
  ret void
}


define void @lam86651(i64 %env86652, i64 %rvp85944) {
  %envptr89255 = inttoptr i64 %env86652 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89256 = getelementptr inbounds i64, i64* %envptr89255, i64 3                ; &envptr89255[3]
  %cont83881 = load i64, i64* %envptr89256, align 8                                  ; load; *envptr89256
  %envptr89257 = inttoptr i64 %env86652 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89258 = getelementptr inbounds i64, i64* %envptr89257, i64 2                ; &envptr89257[2]
  %a83771 = load i64, i64* %envptr89258, align 8                                     ; load; *envptr89258
  %envptr89259 = inttoptr i64 %env86652 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89260 = getelementptr inbounds i64, i64* %envptr89259, i64 1                ; &envptr89259[1]
  %a83769 = load i64, i64* %envptr89260, align 8                                     ; load; *envptr89260
  %_9583906 = call i64 @prim_car(i64 %rvp85944)                                      ; call prim_car
  %rvp85943 = call i64 @prim_cdr(i64 %rvp85944)                                      ; call prim_cdr
  %a83772 = call i64 @prim_car(i64 %rvp85943)                                        ; call prim_car
  %na85928 = call i64 @prim_cdr(i64 %rvp85943)                                       ; call prim_cdr
  %cloptr89261 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr89262 = getelementptr inbounds i64, i64* %cloptr89261, i64 0                  ; &cloptr89261[0]
  %f89263 = ptrtoint void(i64,i64)* @lam86649 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89263, i64* %eptr89262                                                 ; store fptr
  %arg84844 = ptrtoint i64* %cloptr89261 to i64                                      ; closure cast; i64* -> i64
  %cloptr89264 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr89266 = getelementptr inbounds i64, i64* %cloptr89264, i64 1                  ; &eptr89266[1]
  %eptr89267 = getelementptr inbounds i64, i64* %cloptr89264, i64 2                  ; &eptr89267[2]
  %eptr89268 = getelementptr inbounds i64, i64* %cloptr89264, i64 3                  ; &eptr89268[3]
  %eptr89269 = getelementptr inbounds i64, i64* %cloptr89264, i64 4                  ; &eptr89269[4]
  store i64 %a83772, i64* %eptr89266                                                 ; *eptr89266 = %a83772
  store i64 %a83769, i64* %eptr89267                                                 ; *eptr89267 = %a83769
  store i64 %a83771, i64* %eptr89268                                                 ; *eptr89268 = %a83771
  store i64 %cont83881, i64* %eptr89269                                              ; *eptr89269 = %cont83881
  %eptr89265 = getelementptr inbounds i64, i64* %cloptr89264, i64 0                  ; &cloptr89264[0]
  %f89270 = ptrtoint void(i64,i64)* @lam86645 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89270, i64* %eptr89265                                                 ; store fptr
  %arg84843 = ptrtoint i64* %cloptr89264 to i64                                      ; closure cast; i64* -> i64
  %rva85942 = add i64 0, 0                                                           ; quoted ()
  %rva85941 = call i64 @prim_cons(i64 %arg84843, i64 %rva85942)                      ; call prim_cons
  %cloptr89271 = inttoptr i64 %arg84844 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr89272 = getelementptr inbounds i64, i64* %cloptr89271, i64 0                 ; &cloptr89271[0]
  %f89274 = load i64, i64* %i0ptr89272, align 8                                      ; load; *i0ptr89272
  %fptr89273 = inttoptr i64 %f89274 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89273(i64 %arg84844, i64 %rva85941)                 ; tail call
  ret void
}


define void @lam86649(i64 %env86650, i64 %DXz$lst83909) {
  %cont83908 = call i64 @prim_car(i64 %DXz$lst83909)                                 ; call prim_car
  %DXz$lst = call i64 @prim_cdr(i64 %DXz$lst83909)                                   ; call prim_cdr
  %arg84848 = add i64 0, 0                                                           ; quoted ()
  %rva85931 = add i64 0, 0                                                           ; quoted ()
  %rva85930 = call i64 @prim_cons(i64 %DXz$lst, i64 %rva85931)                       ; call prim_cons
  %rva85929 = call i64 @prim_cons(i64 %arg84848, i64 %rva85930)                      ; call prim_cons
  %cloptr89275 = inttoptr i64 %cont83908 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89276 = getelementptr inbounds i64, i64* %cloptr89275, i64 0                 ; &cloptr89275[0]
  %f89278 = load i64, i64* %i0ptr89276, align 8                                      ; load; *i0ptr89276
  %fptr89277 = inttoptr i64 %f89278 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89277(i64 %cont83908, i64 %rva85929)                ; tail call
  ret void
}


define void @lam86645(i64 %env86646, i64 %rvp85940) {
  %envptr89279 = inttoptr i64 %env86646 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89280 = getelementptr inbounds i64, i64* %envptr89279, i64 4                ; &envptr89279[4]
  %cont83881 = load i64, i64* %envptr89280, align 8                                  ; load; *envptr89280
  %envptr89281 = inttoptr i64 %env86646 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89282 = getelementptr inbounds i64, i64* %envptr89281, i64 3                ; &envptr89281[3]
  %a83771 = load i64, i64* %envptr89282, align 8                                     ; load; *envptr89282
  %envptr89283 = inttoptr i64 %env86646 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89284 = getelementptr inbounds i64, i64* %envptr89283, i64 2                ; &envptr89283[2]
  %a83769 = load i64, i64* %envptr89284, align 8                                     ; load; *envptr89284
  %envptr89285 = inttoptr i64 %env86646 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89286 = getelementptr inbounds i64, i64* %envptr89285, i64 1                ; &envptr89285[1]
  %a83772 = load i64, i64* %envptr89286, align 8                                     ; load; *envptr89286
  %_9583907 = call i64 @prim_car(i64 %rvp85940)                                      ; call prim_car
  %rvp85939 = call i64 @prim_cdr(i64 %rvp85940)                                      ; call prim_cdr
  %a83773 = call i64 @prim_car(i64 %rvp85939)                                        ; call prim_car
  %na85933 = call i64 @prim_cdr(i64 %rvp85939)                                       ; call prim_cdr
  %rva85938 = add i64 0, 0                                                           ; quoted ()
  %rva85937 = call i64 @prim_cons(i64 %a83773, i64 %rva85938)                        ; call prim_cons
  %rva85936 = call i64 @prim_cons(i64 %a83772, i64 %rva85937)                        ; call prim_cons
  %rva85935 = call i64 @prim_cons(i64 %a83771, i64 %rva85936)                        ; call prim_cons
  %rva85934 = call i64 @prim_cons(i64 %cont83881, i64 %rva85935)                     ; call prim_cons
  %cloptr89287 = inttoptr i64 %a83769 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr89288 = getelementptr inbounds i64, i64* %cloptr89287, i64 0                 ; &cloptr89287[0]
  %f89290 = load i64, i64* %i0ptr89288, align 8                                      ; load; *i0ptr89288
  %fptr89289 = inttoptr i64 %f89290 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89289(i64 %a83769, i64 %rva85934)                   ; tail call
  ret void
}


define void @lam86629(i64 %env86630, i64 %rvp85986) {
  %_950 = call i64 @prim_car(i64 %rvp85986)                                          ; call prim_car
  %rvp85985 = call i64 @prim_cdr(i64 %rvp85986)                                      ; call prim_cdr
  %x = call i64 @prim_car(i64 %rvp85985)                                             ; call prim_car
  %na85982 = call i64 @prim_cdr(i64 %rvp85985)                                       ; call prim_cdr
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %rva85984 = add i64 0, 0                                                           ; quoted ()
  %rva85983 = call i64 @prim_cons(i64 %_951, i64 %rva85984)                          ; call prim_cons
  %cloptr89291 = inttoptr i64 %_951 to i64*                                          ; closure/env cast; i64 -> i64*
  %i0ptr89292 = getelementptr inbounds i64, i64* %cloptr89291, i64 0                 ; &cloptr89291[0]
  %f89294 = load i64, i64* %i0ptr89292, align 8                                      ; load; *i0ptr89292
  %fptr89293 = inttoptr i64 %f89294 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89293(i64 %_951, i64 %rva85983)                     ; tail call
  ret void
}


define void @lam86615(i64 %env86616, i64 %rvp86113) {
  %envptr89295 = inttoptr i64 %env86616 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89296 = getelementptr inbounds i64, i64* %envptr89295, i64 3                ; &envptr89295[3]
  %S1G$_37map1 = load i64, i64* %envptr89296, align 8                                ; load; *envptr89296
  %envptr89297 = inttoptr i64 %env86616 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89298 = getelementptr inbounds i64, i64* %envptr89297, i64 2                ; &envptr89297[2]
  %pG2$_37foldr = load i64, i64* %envptr89298, align 8                               ; load; *envptr89298
  %envptr89299 = inttoptr i64 %env86616 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89300 = getelementptr inbounds i64, i64* %envptr89299, i64 1                ; &envptr89299[1]
  %bVq$_37foldr1 = load i64, i64* %envptr89300, align 8                              ; load; *envptr89300
  %cont83942 = call i64 @prim_car(i64 %rvp86113)                                     ; call prim_car
  %rvp86112 = call i64 @prim_cdr(i64 %rvp86113)                                      ; call prim_cdr
  %WGz$_37foldl = call i64 @prim_car(i64 %rvp86112)                                  ; call prim_car
  %na86020 = call i64 @prim_cdr(i64 %rvp86112)                                       ; call prim_cdr
  %arg84864 = add i64 0, 0                                                           ; quoted ()
  %cloptr89301 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr89303 = getelementptr inbounds i64, i64* %cloptr89301, i64 1                  ; &eptr89303[1]
  %eptr89304 = getelementptr inbounds i64, i64* %cloptr89301, i64 2                  ; &eptr89304[2]
  %eptr89305 = getelementptr inbounds i64, i64* %cloptr89301, i64 3                  ; &eptr89305[3]
  %eptr89306 = getelementptr inbounds i64, i64* %cloptr89301, i64 4                  ; &eptr89306[4]
  store i64 %WGz$_37foldl, i64* %eptr89303                                           ; *eptr89303 = %WGz$_37foldl
  store i64 %bVq$_37foldr1, i64* %eptr89304                                          ; *eptr89304 = %bVq$_37foldr1
  store i64 %pG2$_37foldr, i64* %eptr89305                                           ; *eptr89305 = %pG2$_37foldr
  store i64 %S1G$_37map1, i64* %eptr89306                                            ; *eptr89306 = %S1G$_37map1
  %eptr89302 = getelementptr inbounds i64, i64* %cloptr89301, i64 0                  ; &cloptr89301[0]
  %f89307 = ptrtoint void(i64,i64)* @lam86612 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89307, i64* %eptr89302                                                 ; store fptr
  %arg84863 = ptrtoint i64* %cloptr89301 to i64                                      ; closure cast; i64* -> i64
  %rva86111 = add i64 0, 0                                                           ; quoted ()
  %rva86110 = call i64 @prim_cons(i64 %arg84863, i64 %rva86111)                      ; call prim_cons
  %rva86109 = call i64 @prim_cons(i64 %arg84864, i64 %rva86110)                      ; call prim_cons
  %cloptr89308 = inttoptr i64 %cont83942 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89309 = getelementptr inbounds i64, i64* %cloptr89308, i64 0                 ; &cloptr89308[0]
  %f89311 = load i64, i64* %i0ptr89309, align 8                                      ; load; *i0ptr89309
  %fptr89310 = inttoptr i64 %f89311 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89310(i64 %cont83942, i64 %rva86109)                ; tail call
  ret void
}


define void @lam86612(i64 %env86613, i64 %Ouw$args83944) {
  %envptr89312 = inttoptr i64 %env86613 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89313 = getelementptr inbounds i64, i64* %envptr89312, i64 4                ; &envptr89312[4]
  %S1G$_37map1 = load i64, i64* %envptr89313, align 8                                ; load; *envptr89313
  %envptr89314 = inttoptr i64 %env86613 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89315 = getelementptr inbounds i64, i64* %envptr89314, i64 3                ; &envptr89314[3]
  %pG2$_37foldr = load i64, i64* %envptr89315, align 8                               ; load; *envptr89315
  %envptr89316 = inttoptr i64 %env86613 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89317 = getelementptr inbounds i64, i64* %envptr89316, i64 2                ; &envptr89316[2]
  %bVq$_37foldr1 = load i64, i64* %envptr89317, align 8                              ; load; *envptr89317
  %envptr89318 = inttoptr i64 %env86613 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89319 = getelementptr inbounds i64, i64* %envptr89318, i64 1                ; &envptr89318[1]
  %WGz$_37foldl = load i64, i64* %envptr89319, align 8                               ; load; *envptr89319
  %cont83943 = call i64 @prim_car(i64 %Ouw$args83944)                                ; call prim_car
  %Ouw$args = call i64 @prim_cdr(i64 %Ouw$args83944)                                 ; call prim_cdr
  %uaY$f = call i64 @prim_car(i64 %Ouw$args)                                         ; call prim_car
  %a83647 = call i64 @prim_cdr(i64 %Ouw$args)                                        ; call prim_cdr
  %retprim83963 = call i64 @prim_car(i64 %a83647)                                    ; call prim_car
  %cloptr89320 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr89322 = getelementptr inbounds i64, i64* %cloptr89320, i64 1                  ; &eptr89322[1]
  %eptr89323 = getelementptr inbounds i64, i64* %cloptr89320, i64 2                  ; &eptr89323[2]
  %eptr89324 = getelementptr inbounds i64, i64* %cloptr89320, i64 3                  ; &eptr89324[3]
  %eptr89325 = getelementptr inbounds i64, i64* %cloptr89320, i64 4                  ; &eptr89325[4]
  %eptr89326 = getelementptr inbounds i64, i64* %cloptr89320, i64 5                  ; &eptr89326[5]
  %eptr89327 = getelementptr inbounds i64, i64* %cloptr89320, i64 6                  ; &eptr89327[6]
  %eptr89328 = getelementptr inbounds i64, i64* %cloptr89320, i64 7                  ; &eptr89328[7]
  store i64 %uaY$f, i64* %eptr89322                                                  ; *eptr89322 = %uaY$f
  store i64 %WGz$_37foldl, i64* %eptr89323                                           ; *eptr89323 = %WGz$_37foldl
  store i64 %bVq$_37foldr1, i64* %eptr89324                                          ; *eptr89324 = %bVq$_37foldr1
  store i64 %cont83943, i64* %eptr89325                                              ; *eptr89325 = %cont83943
  store i64 %Ouw$args, i64* %eptr89326                                               ; *eptr89326 = %Ouw$args
  store i64 %pG2$_37foldr, i64* %eptr89327                                           ; *eptr89327 = %pG2$_37foldr
  store i64 %S1G$_37map1, i64* %eptr89328                                            ; *eptr89328 = %S1G$_37map1
  %eptr89321 = getelementptr inbounds i64, i64* %cloptr89320, i64 0                  ; &cloptr89320[0]
  %f89329 = ptrtoint void(i64,i64)* @lam86610 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89329, i64* %eptr89321                                                 ; store fptr
  %arg84873 = ptrtoint i64* %cloptr89320 to i64                                      ; closure cast; i64* -> i64
  %arg84872 = add i64 0, 0                                                           ; quoted ()
  %rva86108 = add i64 0, 0                                                           ; quoted ()
  %rva86107 = call i64 @prim_cons(i64 %retprim83963, i64 %rva86108)                  ; call prim_cons
  %rva86106 = call i64 @prim_cons(i64 %arg84872, i64 %rva86107)                      ; call prim_cons
  %cloptr89330 = inttoptr i64 %arg84873 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr89331 = getelementptr inbounds i64, i64* %cloptr89330, i64 0                 ; &cloptr89330[0]
  %f89333 = load i64, i64* %i0ptr89331, align 8                                      ; load; *i0ptr89331
  %fptr89332 = inttoptr i64 %f89333 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89332(i64 %arg84873, i64 %rva86106)                 ; tail call
  ret void
}


define void @lam86610(i64 %env86611, i64 %rvp86105) {
  %envptr89334 = inttoptr i64 %env86611 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89335 = getelementptr inbounds i64, i64* %envptr89334, i64 7                ; &envptr89334[7]
  %S1G$_37map1 = load i64, i64* %envptr89335, align 8                                ; load; *envptr89335
  %envptr89336 = inttoptr i64 %env86611 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89337 = getelementptr inbounds i64, i64* %envptr89336, i64 6                ; &envptr89336[6]
  %pG2$_37foldr = load i64, i64* %envptr89337, align 8                               ; load; *envptr89337
  %envptr89338 = inttoptr i64 %env86611 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89339 = getelementptr inbounds i64, i64* %envptr89338, i64 5                ; &envptr89338[5]
  %Ouw$args = load i64, i64* %envptr89339, align 8                                   ; load; *envptr89339
  %envptr89340 = inttoptr i64 %env86611 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89341 = getelementptr inbounds i64, i64* %envptr89340, i64 4                ; &envptr89340[4]
  %cont83943 = load i64, i64* %envptr89341, align 8                                  ; load; *envptr89341
  %envptr89342 = inttoptr i64 %env86611 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89343 = getelementptr inbounds i64, i64* %envptr89342, i64 3                ; &envptr89342[3]
  %bVq$_37foldr1 = load i64, i64* %envptr89343, align 8                              ; load; *envptr89343
  %envptr89344 = inttoptr i64 %env86611 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89345 = getelementptr inbounds i64, i64* %envptr89344, i64 2                ; &envptr89344[2]
  %WGz$_37foldl = load i64, i64* %envptr89345, align 8                               ; load; *envptr89345
  %envptr89346 = inttoptr i64 %env86611 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89347 = getelementptr inbounds i64, i64* %envptr89346, i64 1                ; &envptr89346[1]
  %uaY$f = load i64, i64* %envptr89347, align 8                                      ; load; *envptr89347
  %_9583945 = call i64 @prim_car(i64 %rvp86105)                                      ; call prim_car
  %rvp86104 = call i64 @prim_cdr(i64 %rvp86105)                                      ; call prim_cdr
  %N51$acc = call i64 @prim_car(i64 %rvp86104)                                       ; call prim_car
  %na86022 = call i64 @prim_cdr(i64 %rvp86104)                                       ; call prim_cdr
  %a83648 = call i64 @prim_cdr(i64 %Ouw$args)                                        ; call prim_cdr
  %retprim83962 = call i64 @prim_cdr(i64 %a83648)                                    ; call prim_cdr
  %cloptr89348 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr89350 = getelementptr inbounds i64, i64* %cloptr89348, i64 1                  ; &eptr89350[1]
  %eptr89351 = getelementptr inbounds i64, i64* %cloptr89348, i64 2                  ; &eptr89351[2]
  %eptr89352 = getelementptr inbounds i64, i64* %cloptr89348, i64 3                  ; &eptr89352[3]
  %eptr89353 = getelementptr inbounds i64, i64* %cloptr89348, i64 4                  ; &eptr89353[4]
  %eptr89354 = getelementptr inbounds i64, i64* %cloptr89348, i64 5                  ; &eptr89354[5]
  %eptr89355 = getelementptr inbounds i64, i64* %cloptr89348, i64 6                  ; &eptr89355[6]
  %eptr89356 = getelementptr inbounds i64, i64* %cloptr89348, i64 7                  ; &eptr89356[7]
  store i64 %uaY$f, i64* %eptr89350                                                  ; *eptr89350 = %uaY$f
  store i64 %WGz$_37foldl, i64* %eptr89351                                           ; *eptr89351 = %WGz$_37foldl
  store i64 %bVq$_37foldr1, i64* %eptr89352                                          ; *eptr89352 = %bVq$_37foldr1
  store i64 %cont83943, i64* %eptr89353                                              ; *eptr89353 = %cont83943
  store i64 %pG2$_37foldr, i64* %eptr89354                                           ; *eptr89354 = %pG2$_37foldr
  store i64 %N51$acc, i64* %eptr89355                                                ; *eptr89355 = %N51$acc
  store i64 %S1G$_37map1, i64* %eptr89356                                            ; *eptr89356 = %S1G$_37map1
  %eptr89349 = getelementptr inbounds i64, i64* %cloptr89348, i64 0                  ; &cloptr89348[0]
  %f89357 = ptrtoint void(i64,i64)* @lam86608 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89357, i64* %eptr89349                                                 ; store fptr
  %arg84878 = ptrtoint i64* %cloptr89348 to i64                                      ; closure cast; i64* -> i64
  %arg84877 = add i64 0, 0                                                           ; quoted ()
  %rva86103 = add i64 0, 0                                                           ; quoted ()
  %rva86102 = call i64 @prim_cons(i64 %retprim83962, i64 %rva86103)                  ; call prim_cons
  %rva86101 = call i64 @prim_cons(i64 %arg84877, i64 %rva86102)                      ; call prim_cons
  %cloptr89358 = inttoptr i64 %arg84878 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr89359 = getelementptr inbounds i64, i64* %cloptr89358, i64 0                 ; &cloptr89358[0]
  %f89361 = load i64, i64* %i0ptr89359, align 8                                      ; load; *i0ptr89359
  %fptr89360 = inttoptr i64 %f89361 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89360(i64 %arg84878, i64 %rva86101)                 ; tail call
  ret void
}


define void @lam86608(i64 %env86609, i64 %rvp86100) {
  %envptr89362 = inttoptr i64 %env86609 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89363 = getelementptr inbounds i64, i64* %envptr89362, i64 7                ; &envptr89362[7]
  %S1G$_37map1 = load i64, i64* %envptr89363, align 8                                ; load; *envptr89363
  %envptr89364 = inttoptr i64 %env86609 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89365 = getelementptr inbounds i64, i64* %envptr89364, i64 6                ; &envptr89364[6]
  %N51$acc = load i64, i64* %envptr89365, align 8                                    ; load; *envptr89365
  %envptr89366 = inttoptr i64 %env86609 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89367 = getelementptr inbounds i64, i64* %envptr89366, i64 5                ; &envptr89366[5]
  %pG2$_37foldr = load i64, i64* %envptr89367, align 8                               ; load; *envptr89367
  %envptr89368 = inttoptr i64 %env86609 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89369 = getelementptr inbounds i64, i64* %envptr89368, i64 4                ; &envptr89368[4]
  %cont83943 = load i64, i64* %envptr89369, align 8                                  ; load; *envptr89369
  %envptr89370 = inttoptr i64 %env86609 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89371 = getelementptr inbounds i64, i64* %envptr89370, i64 3                ; &envptr89370[3]
  %bVq$_37foldr1 = load i64, i64* %envptr89371, align 8                              ; load; *envptr89371
  %envptr89372 = inttoptr i64 %env86609 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89373 = getelementptr inbounds i64, i64* %envptr89372, i64 2                ; &envptr89372[2]
  %WGz$_37foldl = load i64, i64* %envptr89373, align 8                               ; load; *envptr89373
  %envptr89374 = inttoptr i64 %env86609 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89375 = getelementptr inbounds i64, i64* %envptr89374, i64 1                ; &envptr89374[1]
  %uaY$f = load i64, i64* %envptr89375, align 8                                      ; load; *envptr89375
  %_9583946 = call i64 @prim_car(i64 %rvp86100)                                      ; call prim_car
  %rvp86099 = call i64 @prim_cdr(i64 %rvp86100)                                      ; call prim_cdr
  %a4r$lsts = call i64 @prim_car(i64 %rvp86099)                                      ; call prim_car
  %na86024 = call i64 @prim_cdr(i64 %rvp86099)                                       ; call prim_cdr
  %cloptr89376 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr89378 = getelementptr inbounds i64, i64* %cloptr89376, i64 1                  ; &eptr89378[1]
  %eptr89379 = getelementptr inbounds i64, i64* %cloptr89376, i64 2                  ; &eptr89379[2]
  %eptr89380 = getelementptr inbounds i64, i64* %cloptr89376, i64 3                  ; &eptr89380[3]
  %eptr89381 = getelementptr inbounds i64, i64* %cloptr89376, i64 4                  ; &eptr89381[4]
  %eptr89382 = getelementptr inbounds i64, i64* %cloptr89376, i64 5                  ; &eptr89382[5]
  %eptr89383 = getelementptr inbounds i64, i64* %cloptr89376, i64 6                  ; &eptr89383[6]
  %eptr89384 = getelementptr inbounds i64, i64* %cloptr89376, i64 7                  ; &eptr89384[7]
  store i64 %uaY$f, i64* %eptr89378                                                  ; *eptr89378 = %uaY$f
  store i64 %WGz$_37foldl, i64* %eptr89379                                           ; *eptr89379 = %WGz$_37foldl
  store i64 %cont83943, i64* %eptr89380                                              ; *eptr89380 = %cont83943
  store i64 %a4r$lsts, i64* %eptr89381                                               ; *eptr89381 = %a4r$lsts
  store i64 %pG2$_37foldr, i64* %eptr89382                                           ; *eptr89382 = %pG2$_37foldr
  store i64 %N51$acc, i64* %eptr89383                                                ; *eptr89383 = %N51$acc
  store i64 %S1G$_37map1, i64* %eptr89384                                            ; *eptr89384 = %S1G$_37map1
  %eptr89377 = getelementptr inbounds i64, i64* %cloptr89376, i64 0                  ; &cloptr89376[0]
  %f89385 = ptrtoint void(i64,i64)* @lam86606 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89385, i64* %eptr89377                                                 ; store fptr
  %arg84882 = ptrtoint i64* %cloptr89376 to i64                                      ; closure cast; i64* -> i64
  %cloptr89386 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr89387 = getelementptr inbounds i64, i64* %cloptr89386, i64 0                  ; &cloptr89386[0]
  %f89388 = ptrtoint void(i64,i64)* @lam86578 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89388, i64* %eptr89387                                                 ; store fptr
  %arg84881 = ptrtoint i64* %cloptr89386 to i64                                      ; closure cast; i64* -> i64
  %arg84880 = call i64 @const_init_false()                                           ; quoted #f
  %rva86098 = add i64 0, 0                                                           ; quoted ()
  %rva86097 = call i64 @prim_cons(i64 %a4r$lsts, i64 %rva86098)                      ; call prim_cons
  %rva86096 = call i64 @prim_cons(i64 %arg84880, i64 %rva86097)                      ; call prim_cons
  %rva86095 = call i64 @prim_cons(i64 %arg84881, i64 %rva86096)                      ; call prim_cons
  %rva86094 = call i64 @prim_cons(i64 %arg84882, i64 %rva86095)                      ; call prim_cons
  %cloptr89389 = inttoptr i64 %bVq$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr89390 = getelementptr inbounds i64, i64* %cloptr89389, i64 0                 ; &cloptr89389[0]
  %f89392 = load i64, i64* %i0ptr89390, align 8                                      ; load; *i0ptr89390
  %fptr89391 = inttoptr i64 %f89392 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89391(i64 %bVq$_37foldr1, i64 %rva86094)            ; tail call
  ret void
}


define void @lam86606(i64 %env86607, i64 %rvp86082) {
  %envptr89393 = inttoptr i64 %env86607 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89394 = getelementptr inbounds i64, i64* %envptr89393, i64 7                ; &envptr89393[7]
  %S1G$_37map1 = load i64, i64* %envptr89394, align 8                                ; load; *envptr89394
  %envptr89395 = inttoptr i64 %env86607 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89396 = getelementptr inbounds i64, i64* %envptr89395, i64 6                ; &envptr89395[6]
  %N51$acc = load i64, i64* %envptr89396, align 8                                    ; load; *envptr89396
  %envptr89397 = inttoptr i64 %env86607 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89398 = getelementptr inbounds i64, i64* %envptr89397, i64 5                ; &envptr89397[5]
  %pG2$_37foldr = load i64, i64* %envptr89398, align 8                               ; load; *envptr89398
  %envptr89399 = inttoptr i64 %env86607 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89400 = getelementptr inbounds i64, i64* %envptr89399, i64 4                ; &envptr89399[4]
  %a4r$lsts = load i64, i64* %envptr89400, align 8                                   ; load; *envptr89400
  %envptr89401 = inttoptr i64 %env86607 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89402 = getelementptr inbounds i64, i64* %envptr89401, i64 3                ; &envptr89401[3]
  %cont83943 = load i64, i64* %envptr89402, align 8                                  ; load; *envptr89402
  %envptr89403 = inttoptr i64 %env86607 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89404 = getelementptr inbounds i64, i64* %envptr89403, i64 2                ; &envptr89403[2]
  %WGz$_37foldl = load i64, i64* %envptr89404, align 8                               ; load; *envptr89404
  %envptr89405 = inttoptr i64 %env86607 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89406 = getelementptr inbounds i64, i64* %envptr89405, i64 1                ; &envptr89405[1]
  %uaY$f = load i64, i64* %envptr89406, align 8                                      ; load; *envptr89406
  %_9583947 = call i64 @prim_car(i64 %rvp86082)                                      ; call prim_car
  %rvp86081 = call i64 @prim_cdr(i64 %rvp86082)                                      ; call prim_cdr
  %a83649 = call i64 @prim_car(i64 %rvp86081)                                        ; call prim_car
  %na86026 = call i64 @prim_cdr(i64 %rvp86081)                                       ; call prim_cdr
  %cmp89407 = icmp eq i64 %a83649, 15                                                ; false?
  br i1 %cmp89407, label %else89409, label %then89408                                ; if

then89408:
  %arg84885 = add i64 0, 0                                                           ; quoted ()
  %rva86029 = add i64 0, 0                                                           ; quoted ()
  %rva86028 = call i64 @prim_cons(i64 %N51$acc, i64 %rva86029)                       ; call prim_cons
  %rva86027 = call i64 @prim_cons(i64 %arg84885, i64 %rva86028)                      ; call prim_cons
  %cloptr89410 = inttoptr i64 %cont83943 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89411 = getelementptr inbounds i64, i64* %cloptr89410, i64 0                 ; &cloptr89410[0]
  %f89413 = load i64, i64* %i0ptr89411, align 8                                      ; load; *i0ptr89411
  %fptr89412 = inttoptr i64 %f89413 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89412(i64 %cont83943, i64 %rva86027)                ; tail call
  ret void

else89409:
  %cloptr89414 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr89416 = getelementptr inbounds i64, i64* %cloptr89414, i64 1                  ; &eptr89416[1]
  %eptr89417 = getelementptr inbounds i64, i64* %cloptr89414, i64 2                  ; &eptr89417[2]
  %eptr89418 = getelementptr inbounds i64, i64* %cloptr89414, i64 3                  ; &eptr89418[3]
  %eptr89419 = getelementptr inbounds i64, i64* %cloptr89414, i64 4                  ; &eptr89419[4]
  %eptr89420 = getelementptr inbounds i64, i64* %cloptr89414, i64 5                  ; &eptr89420[5]
  %eptr89421 = getelementptr inbounds i64, i64* %cloptr89414, i64 6                  ; &eptr89421[6]
  %eptr89422 = getelementptr inbounds i64, i64* %cloptr89414, i64 7                  ; &eptr89422[7]
  store i64 %uaY$f, i64* %eptr89416                                                  ; *eptr89416 = %uaY$f
  store i64 %WGz$_37foldl, i64* %eptr89417                                           ; *eptr89417 = %WGz$_37foldl
  store i64 %cont83943, i64* %eptr89418                                              ; *eptr89418 = %cont83943
  store i64 %a4r$lsts, i64* %eptr89419                                               ; *eptr89419 = %a4r$lsts
  store i64 %pG2$_37foldr, i64* %eptr89420                                           ; *eptr89420 = %pG2$_37foldr
  store i64 %N51$acc, i64* %eptr89421                                                ; *eptr89421 = %N51$acc
  store i64 %S1G$_37map1, i64* %eptr89422                                            ; *eptr89422 = %S1G$_37map1
  %eptr89415 = getelementptr inbounds i64, i64* %cloptr89414, i64 0                  ; &cloptr89414[0]
  %f89423 = ptrtoint void(i64,i64)* @lam86604 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89423, i64* %eptr89415                                                 ; store fptr
  %arg84889 = ptrtoint i64* %cloptr89414 to i64                                      ; closure cast; i64* -> i64
  %cloptr89424 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr89425 = getelementptr inbounds i64, i64* %cloptr89424, i64 0                  ; &cloptr89424[0]
  %f89426 = ptrtoint void(i64,i64)* @lam86585 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89426, i64* %eptr89425                                                 ; store fptr
  %arg84888 = ptrtoint i64* %cloptr89424 to i64                                      ; closure cast; i64* -> i64
  %rva86080 = add i64 0, 0                                                           ; quoted ()
  %rva86079 = call i64 @prim_cons(i64 %a4r$lsts, i64 %rva86080)                      ; call prim_cons
  %rva86078 = call i64 @prim_cons(i64 %arg84888, i64 %rva86079)                      ; call prim_cons
  %rva86077 = call i64 @prim_cons(i64 %arg84889, i64 %rva86078)                      ; call prim_cons
  %cloptr89427 = inttoptr i64 %S1G$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr89428 = getelementptr inbounds i64, i64* %cloptr89427, i64 0                 ; &cloptr89427[0]
  %f89430 = load i64, i64* %i0ptr89428, align 8                                      ; load; *i0ptr89428
  %fptr89429 = inttoptr i64 %f89430 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89429(i64 %S1G$_37map1, i64 %rva86077)              ; tail call
  ret void
}


define void @lam86604(i64 %env86605, i64 %rvp86069) {
  %envptr89431 = inttoptr i64 %env86605 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89432 = getelementptr inbounds i64, i64* %envptr89431, i64 7                ; &envptr89431[7]
  %S1G$_37map1 = load i64, i64* %envptr89432, align 8                                ; load; *envptr89432
  %envptr89433 = inttoptr i64 %env86605 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89434 = getelementptr inbounds i64, i64* %envptr89433, i64 6                ; &envptr89433[6]
  %N51$acc = load i64, i64* %envptr89434, align 8                                    ; load; *envptr89434
  %envptr89435 = inttoptr i64 %env86605 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89436 = getelementptr inbounds i64, i64* %envptr89435, i64 5                ; &envptr89435[5]
  %pG2$_37foldr = load i64, i64* %envptr89436, align 8                               ; load; *envptr89436
  %envptr89437 = inttoptr i64 %env86605 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89438 = getelementptr inbounds i64, i64* %envptr89437, i64 4                ; &envptr89437[4]
  %a4r$lsts = load i64, i64* %envptr89438, align 8                                   ; load; *envptr89438
  %envptr89439 = inttoptr i64 %env86605 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89440 = getelementptr inbounds i64, i64* %envptr89439, i64 3                ; &envptr89439[3]
  %cont83943 = load i64, i64* %envptr89440, align 8                                  ; load; *envptr89440
  %envptr89441 = inttoptr i64 %env86605 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89442 = getelementptr inbounds i64, i64* %envptr89441, i64 2                ; &envptr89441[2]
  %WGz$_37foldl = load i64, i64* %envptr89442, align 8                               ; load; *envptr89442
  %envptr89443 = inttoptr i64 %env86605 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89444 = getelementptr inbounds i64, i64* %envptr89443, i64 1                ; &envptr89443[1]
  %uaY$f = load i64, i64* %envptr89444, align 8                                      ; load; *envptr89444
  %_9583948 = call i64 @prim_car(i64 %rvp86069)                                      ; call prim_car
  %rvp86068 = call i64 @prim_cdr(i64 %rvp86069)                                      ; call prim_cdr
  %JWz$lsts_43 = call i64 @prim_car(i64 %rvp86068)                                   ; call prim_car
  %na86031 = call i64 @prim_cdr(i64 %rvp86068)                                       ; call prim_cdr
  %cloptr89445 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr89447 = getelementptr inbounds i64, i64* %cloptr89445, i64 1                  ; &eptr89447[1]
  %eptr89448 = getelementptr inbounds i64, i64* %cloptr89445, i64 2                  ; &eptr89448[2]
  %eptr89449 = getelementptr inbounds i64, i64* %cloptr89445, i64 3                  ; &eptr89449[3]
  %eptr89450 = getelementptr inbounds i64, i64* %cloptr89445, i64 4                  ; &eptr89450[4]
  %eptr89451 = getelementptr inbounds i64, i64* %cloptr89445, i64 5                  ; &eptr89451[5]
  %eptr89452 = getelementptr inbounds i64, i64* %cloptr89445, i64 6                  ; &eptr89452[6]
  store i64 %uaY$f, i64* %eptr89447                                                  ; *eptr89447 = %uaY$f
  store i64 %WGz$_37foldl, i64* %eptr89448                                           ; *eptr89448 = %WGz$_37foldl
  store i64 %JWz$lsts_43, i64* %eptr89449                                            ; *eptr89449 = %JWz$lsts_43
  store i64 %cont83943, i64* %eptr89450                                              ; *eptr89450 = %cont83943
  store i64 %pG2$_37foldr, i64* %eptr89451                                           ; *eptr89451 = %pG2$_37foldr
  store i64 %N51$acc, i64* %eptr89452                                                ; *eptr89452 = %N51$acc
  %eptr89446 = getelementptr inbounds i64, i64* %cloptr89445, i64 0                  ; &cloptr89445[0]
  %f89453 = ptrtoint void(i64,i64)* @lam86602 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89453, i64* %eptr89446                                                 ; store fptr
  %arg84893 = ptrtoint i64* %cloptr89445 to i64                                      ; closure cast; i64* -> i64
  %cloptr89454 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr89455 = getelementptr inbounds i64, i64* %cloptr89454, i64 0                  ; &cloptr89454[0]
  %f89456 = ptrtoint void(i64,i64)* @lam86590 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89456, i64* %eptr89455                                                 ; store fptr
  %arg84892 = ptrtoint i64* %cloptr89454 to i64                                      ; closure cast; i64* -> i64
  %rva86067 = add i64 0, 0                                                           ; quoted ()
  %rva86066 = call i64 @prim_cons(i64 %a4r$lsts, i64 %rva86067)                      ; call prim_cons
  %rva86065 = call i64 @prim_cons(i64 %arg84892, i64 %rva86066)                      ; call prim_cons
  %rva86064 = call i64 @prim_cons(i64 %arg84893, i64 %rva86065)                      ; call prim_cons
  %cloptr89457 = inttoptr i64 %S1G$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr89458 = getelementptr inbounds i64, i64* %cloptr89457, i64 0                 ; &cloptr89457[0]
  %f89460 = load i64, i64* %i0ptr89458, align 8                                      ; load; *i0ptr89458
  %fptr89459 = inttoptr i64 %f89460 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89459(i64 %S1G$_37map1, i64 %rva86064)              ; tail call
  ret void
}


define void @lam86602(i64 %env86603, i64 %rvp86056) {
  %envptr89461 = inttoptr i64 %env86603 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89462 = getelementptr inbounds i64, i64* %envptr89461, i64 6                ; &envptr89461[6]
  %N51$acc = load i64, i64* %envptr89462, align 8                                    ; load; *envptr89462
  %envptr89463 = inttoptr i64 %env86603 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89464 = getelementptr inbounds i64, i64* %envptr89463, i64 5                ; &envptr89463[5]
  %pG2$_37foldr = load i64, i64* %envptr89464, align 8                               ; load; *envptr89464
  %envptr89465 = inttoptr i64 %env86603 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89466 = getelementptr inbounds i64, i64* %envptr89465, i64 4                ; &envptr89465[4]
  %cont83943 = load i64, i64* %envptr89466, align 8                                  ; load; *envptr89466
  %envptr89467 = inttoptr i64 %env86603 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89468 = getelementptr inbounds i64, i64* %envptr89467, i64 3                ; &envptr89467[3]
  %JWz$lsts_43 = load i64, i64* %envptr89468, align 8                                ; load; *envptr89468
  %envptr89469 = inttoptr i64 %env86603 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89470 = getelementptr inbounds i64, i64* %envptr89469, i64 2                ; &envptr89469[2]
  %WGz$_37foldl = load i64, i64* %envptr89470, align 8                               ; load; *envptr89470
  %envptr89471 = inttoptr i64 %env86603 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89472 = getelementptr inbounds i64, i64* %envptr89471, i64 1                ; &envptr89471[1]
  %uaY$f = load i64, i64* %envptr89472, align 8                                      ; load; *envptr89472
  %_9583949 = call i64 @prim_car(i64 %rvp86056)                                      ; call prim_car
  %rvp86055 = call i64 @prim_cdr(i64 %rvp86056)                                      ; call prim_cdr
  %Jzs$vs = call i64 @prim_car(i64 %rvp86055)                                        ; call prim_car
  %na86033 = call i64 @prim_cdr(i64 %rvp86055)                                       ; call prim_cdr
  %arg84895 = add i64 0, 0                                                           ; quoted ()
  %a83650 = call i64 @prim_cons(i64 %N51$acc, i64 %arg84895)                         ; call prim_cons
  %cloptr89473 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr89475 = getelementptr inbounds i64, i64* %cloptr89473, i64 1                  ; &eptr89475[1]
  %eptr89476 = getelementptr inbounds i64, i64* %cloptr89473, i64 2                  ; &eptr89476[2]
  %eptr89477 = getelementptr inbounds i64, i64* %cloptr89473, i64 3                  ; &eptr89477[3]
  %eptr89478 = getelementptr inbounds i64, i64* %cloptr89473, i64 4                  ; &eptr89478[4]
  store i64 %uaY$f, i64* %eptr89475                                                  ; *eptr89475 = %uaY$f
  store i64 %WGz$_37foldl, i64* %eptr89476                                           ; *eptr89476 = %WGz$_37foldl
  store i64 %JWz$lsts_43, i64* %eptr89477                                            ; *eptr89477 = %JWz$lsts_43
  store i64 %cont83943, i64* %eptr89478                                              ; *eptr89478 = %cont83943
  %eptr89474 = getelementptr inbounds i64, i64* %cloptr89473, i64 0                  ; &cloptr89473[0]
  %f89479 = ptrtoint void(i64,i64)* @lam86599 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89479, i64* %eptr89474                                                 ; store fptr
  %arg84900 = ptrtoint i64* %cloptr89473 to i64                                      ; closure cast; i64* -> i64
  %cloptr89480 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr89481 = getelementptr inbounds i64, i64* %cloptr89480, i64 0                  ; &cloptr89480[0]
  %f89482 = ptrtoint void(i64,i64)* @lam86595 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89482, i64* %eptr89481                                                 ; store fptr
  %arg84899 = ptrtoint i64* %cloptr89480 to i64                                      ; closure cast; i64* -> i64
  %rva86054 = add i64 0, 0                                                           ; quoted ()
  %rva86053 = call i64 @prim_cons(i64 %Jzs$vs, i64 %rva86054)                        ; call prim_cons
  %rva86052 = call i64 @prim_cons(i64 %a83650, i64 %rva86053)                        ; call prim_cons
  %rva86051 = call i64 @prim_cons(i64 %arg84899, i64 %rva86052)                      ; call prim_cons
  %rva86050 = call i64 @prim_cons(i64 %arg84900, i64 %rva86051)                      ; call prim_cons
  %cloptr89483 = inttoptr i64 %pG2$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr89484 = getelementptr inbounds i64, i64* %cloptr89483, i64 0                 ; &cloptr89483[0]
  %f89486 = load i64, i64* %i0ptr89484, align 8                                      ; load; *i0ptr89484
  %fptr89485 = inttoptr i64 %f89486 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89485(i64 %pG2$_37foldr, i64 %rva86050)             ; tail call
  ret void
}


define void @lam86599(i64 %env86600, i64 %rvp86041) {
  %envptr89487 = inttoptr i64 %env86600 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89488 = getelementptr inbounds i64, i64* %envptr89487, i64 4                ; &envptr89487[4]
  %cont83943 = load i64, i64* %envptr89488, align 8                                  ; load; *envptr89488
  %envptr89489 = inttoptr i64 %env86600 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89490 = getelementptr inbounds i64, i64* %envptr89489, i64 3                ; &envptr89489[3]
  %JWz$lsts_43 = load i64, i64* %envptr89490, align 8                                ; load; *envptr89490
  %envptr89491 = inttoptr i64 %env86600 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89492 = getelementptr inbounds i64, i64* %envptr89491, i64 2                ; &envptr89491[2]
  %WGz$_37foldl = load i64, i64* %envptr89492, align 8                               ; load; *envptr89492
  %envptr89493 = inttoptr i64 %env86600 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89494 = getelementptr inbounds i64, i64* %envptr89493, i64 1                ; &envptr89493[1]
  %uaY$f = load i64, i64* %envptr89494, align 8                                      ; load; *envptr89494
  %_9583952 = call i64 @prim_car(i64 %rvp86041)                                      ; call prim_car
  %rvp86040 = call i64 @prim_cdr(i64 %rvp86041)                                      ; call prim_cdr
  %a83651 = call i64 @prim_car(i64 %rvp86040)                                        ; call prim_car
  %na86035 = call i64 @prim_cdr(i64 %rvp86040)                                       ; call prim_cdr
  %cloptr89495 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr89497 = getelementptr inbounds i64, i64* %cloptr89495, i64 1                  ; &eptr89497[1]
  %eptr89498 = getelementptr inbounds i64, i64* %cloptr89495, i64 2                  ; &eptr89498[2]
  %eptr89499 = getelementptr inbounds i64, i64* %cloptr89495, i64 3                  ; &eptr89499[3]
  %eptr89500 = getelementptr inbounds i64, i64* %cloptr89495, i64 4                  ; &eptr89500[4]
  store i64 %uaY$f, i64* %eptr89497                                                  ; *eptr89497 = %uaY$f
  store i64 %WGz$_37foldl, i64* %eptr89498                                           ; *eptr89498 = %WGz$_37foldl
  store i64 %JWz$lsts_43, i64* %eptr89499                                            ; *eptr89499 = %JWz$lsts_43
  store i64 %cont83943, i64* %eptr89500                                              ; *eptr89500 = %cont83943
  %eptr89496 = getelementptr inbounds i64, i64* %cloptr89495, i64 0                  ; &cloptr89495[0]
  %f89501 = ptrtoint void(i64,i64)* @lam86597 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89501, i64* %eptr89496                                                 ; store fptr
  %arg84903 = ptrtoint i64* %cloptr89495 to i64                                      ; closure cast; i64* -> i64
  %cps_45lst83953 = call i64 @prim_cons(i64 %arg84903, i64 %a83651)                  ; call prim_cons
  %cloptr89502 = inttoptr i64 %uaY$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr89503 = getelementptr inbounds i64, i64* %cloptr89502, i64 0                 ; &cloptr89502[0]
  %f89505 = load i64, i64* %i0ptr89503, align 8                                      ; load; *i0ptr89503
  %fptr89504 = inttoptr i64 %f89505 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89504(i64 %uaY$f, i64 %cps_45lst83953)              ; tail call
  ret void
}


define void @lam86597(i64 %env86598, i64 %rvp86039) {
  %envptr89506 = inttoptr i64 %env86598 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89507 = getelementptr inbounds i64, i64* %envptr89506, i64 4                ; &envptr89506[4]
  %cont83943 = load i64, i64* %envptr89507, align 8                                  ; load; *envptr89507
  %envptr89508 = inttoptr i64 %env86598 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89509 = getelementptr inbounds i64, i64* %envptr89508, i64 3                ; &envptr89508[3]
  %JWz$lsts_43 = load i64, i64* %envptr89509, align 8                                ; load; *envptr89509
  %envptr89510 = inttoptr i64 %env86598 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89511 = getelementptr inbounds i64, i64* %envptr89510, i64 2                ; &envptr89510[2]
  %WGz$_37foldl = load i64, i64* %envptr89511, align 8                               ; load; *envptr89511
  %envptr89512 = inttoptr i64 %env86598 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89513 = getelementptr inbounds i64, i64* %envptr89512, i64 1                ; &envptr89512[1]
  %uaY$f = load i64, i64* %envptr89513, align 8                                      ; load; *envptr89513
  %_9583950 = call i64 @prim_car(i64 %rvp86039)                                      ; call prim_car
  %rvp86038 = call i64 @prim_cdr(i64 %rvp86039)                                      ; call prim_cdr
  %MUZ$acc_43 = call i64 @prim_car(i64 %rvp86038)                                    ; call prim_car
  %na86037 = call i64 @prim_cdr(i64 %rvp86038)                                       ; call prim_cdr
  %a83652 = call i64 @prim_cons(i64 %MUZ$acc_43, i64 %JWz$lsts_43)                   ; call prim_cons
  %a83653 = call i64 @prim_cons(i64 %uaY$f, i64 %a83652)                             ; call prim_cons
  %cps_45lst83951 = call i64 @prim_cons(i64 %cont83943, i64 %a83653)                 ; call prim_cons
  %cloptr89514 = inttoptr i64 %WGz$_37foldl to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr89515 = getelementptr inbounds i64, i64* %cloptr89514, i64 0                 ; &cloptr89514[0]
  %f89517 = load i64, i64* %i0ptr89515, align 8                                      ; load; *i0ptr89515
  %fptr89516 = inttoptr i64 %f89517 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89516(i64 %WGz$_37foldl, i64 %cps_45lst83951)       ; tail call
  ret void
}


define void @lam86595(i64 %env86596, i64 %rvp86049) {
  %cont83954 = call i64 @prim_car(i64 %rvp86049)                                     ; call prim_car
  %rvp86048 = call i64 @prim_cdr(i64 %rvp86049)                                      ; call prim_cdr
  %OBB$a = call i64 @prim_car(i64 %rvp86048)                                         ; call prim_car
  %rvp86047 = call i64 @prim_cdr(i64 %rvp86048)                                      ; call prim_cdr
  %Ezx$b = call i64 @prim_car(i64 %rvp86047)                                         ; call prim_car
  %na86043 = call i64 @prim_cdr(i64 %rvp86047)                                       ; call prim_cdr
  %retprim83955 = call i64 @prim_cons(i64 %OBB$a, i64 %Ezx$b)                        ; call prim_cons
  %arg84913 = add i64 0, 0                                                           ; quoted ()
  %rva86046 = add i64 0, 0                                                           ; quoted ()
  %rva86045 = call i64 @prim_cons(i64 %retprim83955, i64 %rva86046)                  ; call prim_cons
  %rva86044 = call i64 @prim_cons(i64 %arg84913, i64 %rva86045)                      ; call prim_cons
  %cloptr89518 = inttoptr i64 %cont83954 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89519 = getelementptr inbounds i64, i64* %cloptr89518, i64 0                 ; &cloptr89518[0]
  %f89521 = load i64, i64* %i0ptr89519, align 8                                      ; load; *i0ptr89519
  %fptr89520 = inttoptr i64 %f89521 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89520(i64 %cont83954, i64 %rva86044)                ; tail call
  ret void
}


define void @lam86590(i64 %env86591, i64 %rvp86063) {
  %cont83956 = call i64 @prim_car(i64 %rvp86063)                                     ; call prim_car
  %rvp86062 = call i64 @prim_cdr(i64 %rvp86063)                                      ; call prim_cdr
  %Xyt$x = call i64 @prim_car(i64 %rvp86062)                                         ; call prim_car
  %na86058 = call i64 @prim_cdr(i64 %rvp86062)                                       ; call prim_cdr
  %retprim83957 = call i64 @prim_car(i64 %Xyt$x)                                     ; call prim_car
  %arg84917 = add i64 0, 0                                                           ; quoted ()
  %rva86061 = add i64 0, 0                                                           ; quoted ()
  %rva86060 = call i64 @prim_cons(i64 %retprim83957, i64 %rva86061)                  ; call prim_cons
  %rva86059 = call i64 @prim_cons(i64 %arg84917, i64 %rva86060)                      ; call prim_cons
  %cloptr89522 = inttoptr i64 %cont83956 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89523 = getelementptr inbounds i64, i64* %cloptr89522, i64 0                 ; &cloptr89522[0]
  %f89525 = load i64, i64* %i0ptr89523, align 8                                      ; load; *i0ptr89523
  %fptr89524 = inttoptr i64 %f89525 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89524(i64 %cont83956, i64 %rva86059)                ; tail call
  ret void
}


define void @lam86585(i64 %env86586, i64 %rvp86076) {
  %cont83958 = call i64 @prim_car(i64 %rvp86076)                                     ; call prim_car
  %rvp86075 = call i64 @prim_cdr(i64 %rvp86076)                                      ; call prim_cdr
  %IxX$x = call i64 @prim_car(i64 %rvp86075)                                         ; call prim_car
  %na86071 = call i64 @prim_cdr(i64 %rvp86075)                                       ; call prim_cdr
  %retprim83959 = call i64 @prim_cdr(i64 %IxX$x)                                     ; call prim_cdr
  %arg84921 = add i64 0, 0                                                           ; quoted ()
  %rva86074 = add i64 0, 0                                                           ; quoted ()
  %rva86073 = call i64 @prim_cons(i64 %retprim83959, i64 %rva86074)                  ; call prim_cons
  %rva86072 = call i64 @prim_cons(i64 %arg84921, i64 %rva86073)                      ; call prim_cons
  %cloptr89526 = inttoptr i64 %cont83958 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89527 = getelementptr inbounds i64, i64* %cloptr89526, i64 0                 ; &cloptr89526[0]
  %f89529 = load i64, i64* %i0ptr89527, align 8                                      ; load; *i0ptr89527
  %fptr89528 = inttoptr i64 %f89529 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89528(i64 %cont83958, i64 %rva86072)                ; tail call
  ret void
}


define void @lam86578(i64 %env86579, i64 %rvp86093) {
  %cont83960 = call i64 @prim_car(i64 %rvp86093)                                     ; call prim_car
  %rvp86092 = call i64 @prim_cdr(i64 %rvp86093)                                      ; call prim_cdr
  %Oex$lst = call i64 @prim_car(i64 %rvp86092)                                       ; call prim_car
  %rvp86091 = call i64 @prim_cdr(i64 %rvp86092)                                      ; call prim_cdr
  %BhG$b = call i64 @prim_car(i64 %rvp86091)                                         ; call prim_car
  %na86084 = call i64 @prim_cdr(i64 %rvp86091)                                       ; call prim_cdr
  %cmp89530 = icmp eq i64 %BhG$b, 15                                                 ; false?
  br i1 %cmp89530, label %else89532, label %then89531                                ; if

then89531:
  %arg84924 = add i64 0, 0                                                           ; quoted ()
  %rva86087 = add i64 0, 0                                                           ; quoted ()
  %rva86086 = call i64 @prim_cons(i64 %BhG$b, i64 %rva86087)                         ; call prim_cons
  %rva86085 = call i64 @prim_cons(i64 %arg84924, i64 %rva86086)                      ; call prim_cons
  %cloptr89533 = inttoptr i64 %cont83960 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89534 = getelementptr inbounds i64, i64* %cloptr89533, i64 0                 ; &cloptr89533[0]
  %f89536 = load i64, i64* %i0ptr89534, align 8                                      ; load; *i0ptr89534
  %fptr89535 = inttoptr i64 %f89536 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89535(i64 %cont83960, i64 %rva86085)                ; tail call
  ret void

else89532:
  %retprim83961 = call i64 @prim_null_63(i64 %Oex$lst)                               ; call prim_null_63
  %arg84928 = add i64 0, 0                                                           ; quoted ()
  %rva86090 = add i64 0, 0                                                           ; quoted ()
  %rva86089 = call i64 @prim_cons(i64 %retprim83961, i64 %rva86090)                  ; call prim_cons
  %rva86088 = call i64 @prim_cons(i64 %arg84928, i64 %rva86089)                      ; call prim_cons
  %cloptr89537 = inttoptr i64 %cont83960 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89538 = getelementptr inbounds i64, i64* %cloptr89537, i64 0                 ; &cloptr89537[0]
  %f89540 = load i64, i64* %i0ptr89538, align 8                                      ; load; *i0ptr89538
  %fptr89539 = inttoptr i64 %f89540 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89539(i64 %cont83960, i64 %rva86088)                ; tail call
  ret void
}


define void @lam86564(i64 %env86565, i64 %rvp86213) {
  %envptr89541 = inttoptr i64 %env86565 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89542 = getelementptr inbounds i64, i64* %envptr89541, i64 2                ; &envptr89541[2]
  %bVq$_37foldr1 = load i64, i64* %envptr89542, align 8                              ; load; *envptr89542
  %envptr89543 = inttoptr i64 %env86565 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89544 = getelementptr inbounds i64, i64* %envptr89543, i64 1                ; &envptr89543[1]
  %mHI$_37map1 = load i64, i64* %envptr89544, align 8                                ; load; *envptr89544
  %cont83964 = call i64 @prim_car(i64 %rvp86213)                                     ; call prim_car
  %rvp86212 = call i64 @prim_cdr(i64 %rvp86213)                                      ; call prim_cdr
  %d37$_37foldr = call i64 @prim_car(i64 %rvp86212)                                  ; call prim_car
  %na86120 = call i64 @prim_cdr(i64 %rvp86212)                                       ; call prim_cdr
  %arg84931 = add i64 0, 0                                                           ; quoted ()
  %cloptr89545 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr89547 = getelementptr inbounds i64, i64* %cloptr89545, i64 1                  ; &eptr89547[1]
  %eptr89548 = getelementptr inbounds i64, i64* %cloptr89545, i64 2                  ; &eptr89548[2]
  %eptr89549 = getelementptr inbounds i64, i64* %cloptr89545, i64 3                  ; &eptr89549[3]
  store i64 %d37$_37foldr, i64* %eptr89547                                           ; *eptr89547 = %d37$_37foldr
  store i64 %mHI$_37map1, i64* %eptr89548                                            ; *eptr89548 = %mHI$_37map1
  store i64 %bVq$_37foldr1, i64* %eptr89549                                          ; *eptr89549 = %bVq$_37foldr1
  %eptr89546 = getelementptr inbounds i64, i64* %cloptr89545, i64 0                  ; &cloptr89545[0]
  %f89550 = ptrtoint void(i64,i64)* @lam86561 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89550, i64* %eptr89546                                                 ; store fptr
  %arg84930 = ptrtoint i64* %cloptr89545 to i64                                      ; closure cast; i64* -> i64
  %rva86211 = add i64 0, 0                                                           ; quoted ()
  %rva86210 = call i64 @prim_cons(i64 %arg84930, i64 %rva86211)                      ; call prim_cons
  %rva86209 = call i64 @prim_cons(i64 %arg84931, i64 %rva86210)                      ; call prim_cons
  %cloptr89551 = inttoptr i64 %cont83964 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89552 = getelementptr inbounds i64, i64* %cloptr89551, i64 0                 ; &cloptr89551[0]
  %f89554 = load i64, i64* %i0ptr89552, align 8                                      ; load; *i0ptr89552
  %fptr89553 = inttoptr i64 %f89554 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89553(i64 %cont83964, i64 %rva86209)                ; tail call
  ret void
}


define void @lam86561(i64 %env86562, i64 %ASL$args83966) {
  %envptr89555 = inttoptr i64 %env86562 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89556 = getelementptr inbounds i64, i64* %envptr89555, i64 3                ; &envptr89555[3]
  %bVq$_37foldr1 = load i64, i64* %envptr89556, align 8                              ; load; *envptr89556
  %envptr89557 = inttoptr i64 %env86562 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89558 = getelementptr inbounds i64, i64* %envptr89557, i64 2                ; &envptr89557[2]
  %mHI$_37map1 = load i64, i64* %envptr89558, align 8                                ; load; *envptr89558
  %envptr89559 = inttoptr i64 %env86562 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89560 = getelementptr inbounds i64, i64* %envptr89559, i64 1                ; &envptr89559[1]
  %d37$_37foldr = load i64, i64* %envptr89560, align 8                               ; load; *envptr89560
  %cont83965 = call i64 @prim_car(i64 %ASL$args83966)                                ; call prim_car
  %ASL$args = call i64 @prim_cdr(i64 %ASL$args83966)                                 ; call prim_cdr
  %RdT$f = call i64 @prim_car(i64 %ASL$args)                                         ; call prim_car
  %a83633 = call i64 @prim_cdr(i64 %ASL$args)                                        ; call prim_cdr
  %retprim83985 = call i64 @prim_car(i64 %a83633)                                    ; call prim_car
  %cloptr89561 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr89563 = getelementptr inbounds i64, i64* %cloptr89561, i64 1                  ; &eptr89563[1]
  %eptr89564 = getelementptr inbounds i64, i64* %cloptr89561, i64 2                  ; &eptr89564[2]
  %eptr89565 = getelementptr inbounds i64, i64* %cloptr89561, i64 3                  ; &eptr89565[3]
  %eptr89566 = getelementptr inbounds i64, i64* %cloptr89561, i64 4                  ; &eptr89566[4]
  %eptr89567 = getelementptr inbounds i64, i64* %cloptr89561, i64 5                  ; &eptr89567[5]
  %eptr89568 = getelementptr inbounds i64, i64* %cloptr89561, i64 6                  ; &eptr89568[6]
  store i64 %d37$_37foldr, i64* %eptr89563                                           ; *eptr89563 = %d37$_37foldr
  store i64 %mHI$_37map1, i64* %eptr89564                                            ; *eptr89564 = %mHI$_37map1
  store i64 %ASL$args, i64* %eptr89565                                               ; *eptr89565 = %ASL$args
  store i64 %bVq$_37foldr1, i64* %eptr89566                                          ; *eptr89566 = %bVq$_37foldr1
  store i64 %RdT$f, i64* %eptr89567                                                  ; *eptr89567 = %RdT$f
  store i64 %cont83965, i64* %eptr89568                                              ; *eptr89568 = %cont83965
  %eptr89562 = getelementptr inbounds i64, i64* %cloptr89561, i64 0                  ; &cloptr89561[0]
  %f89569 = ptrtoint void(i64,i64)* @lam86559 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89569, i64* %eptr89562                                                 ; store fptr
  %arg84940 = ptrtoint i64* %cloptr89561 to i64                                      ; closure cast; i64* -> i64
  %arg84939 = add i64 0, 0                                                           ; quoted ()
  %rva86208 = add i64 0, 0                                                           ; quoted ()
  %rva86207 = call i64 @prim_cons(i64 %retprim83985, i64 %rva86208)                  ; call prim_cons
  %rva86206 = call i64 @prim_cons(i64 %arg84939, i64 %rva86207)                      ; call prim_cons
  %cloptr89570 = inttoptr i64 %arg84940 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr89571 = getelementptr inbounds i64, i64* %cloptr89570, i64 0                 ; &cloptr89570[0]
  %f89573 = load i64, i64* %i0ptr89571, align 8                                      ; load; *i0ptr89571
  %fptr89572 = inttoptr i64 %f89573 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89572(i64 %arg84940, i64 %rva86206)                 ; tail call
  ret void
}


define void @lam86559(i64 %env86560, i64 %rvp86205) {
  %envptr89574 = inttoptr i64 %env86560 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89575 = getelementptr inbounds i64, i64* %envptr89574, i64 6                ; &envptr89574[6]
  %cont83965 = load i64, i64* %envptr89575, align 8                                  ; load; *envptr89575
  %envptr89576 = inttoptr i64 %env86560 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89577 = getelementptr inbounds i64, i64* %envptr89576, i64 5                ; &envptr89576[5]
  %RdT$f = load i64, i64* %envptr89577, align 8                                      ; load; *envptr89577
  %envptr89578 = inttoptr i64 %env86560 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89579 = getelementptr inbounds i64, i64* %envptr89578, i64 4                ; &envptr89578[4]
  %bVq$_37foldr1 = load i64, i64* %envptr89579, align 8                              ; load; *envptr89579
  %envptr89580 = inttoptr i64 %env86560 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89581 = getelementptr inbounds i64, i64* %envptr89580, i64 3                ; &envptr89580[3]
  %ASL$args = load i64, i64* %envptr89581, align 8                                   ; load; *envptr89581
  %envptr89582 = inttoptr i64 %env86560 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89583 = getelementptr inbounds i64, i64* %envptr89582, i64 2                ; &envptr89582[2]
  %mHI$_37map1 = load i64, i64* %envptr89583, align 8                                ; load; *envptr89583
  %envptr89584 = inttoptr i64 %env86560 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89585 = getelementptr inbounds i64, i64* %envptr89584, i64 1                ; &envptr89584[1]
  %d37$_37foldr = load i64, i64* %envptr89585, align 8                               ; load; *envptr89585
  %_9583967 = call i64 @prim_car(i64 %rvp86205)                                      ; call prim_car
  %rvp86204 = call i64 @prim_cdr(i64 %rvp86205)                                      ; call prim_cdr
  %TGL$acc = call i64 @prim_car(i64 %rvp86204)                                       ; call prim_car
  %na86122 = call i64 @prim_cdr(i64 %rvp86204)                                       ; call prim_cdr
  %a83634 = call i64 @prim_cdr(i64 %ASL$args)                                        ; call prim_cdr
  %retprim83984 = call i64 @prim_cdr(i64 %a83634)                                    ; call prim_cdr
  %cloptr89586 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr89588 = getelementptr inbounds i64, i64* %cloptr89586, i64 1                  ; &eptr89588[1]
  %eptr89589 = getelementptr inbounds i64, i64* %cloptr89586, i64 2                  ; &eptr89589[2]
  %eptr89590 = getelementptr inbounds i64, i64* %cloptr89586, i64 3                  ; &eptr89590[3]
  %eptr89591 = getelementptr inbounds i64, i64* %cloptr89586, i64 4                  ; &eptr89591[4]
  %eptr89592 = getelementptr inbounds i64, i64* %cloptr89586, i64 5                  ; &eptr89592[5]
  %eptr89593 = getelementptr inbounds i64, i64* %cloptr89586, i64 6                  ; &eptr89593[6]
  store i64 %d37$_37foldr, i64* %eptr89588                                           ; *eptr89588 = %d37$_37foldr
  store i64 %TGL$acc, i64* %eptr89589                                                ; *eptr89589 = %TGL$acc
  store i64 %mHI$_37map1, i64* %eptr89590                                            ; *eptr89590 = %mHI$_37map1
  store i64 %bVq$_37foldr1, i64* %eptr89591                                          ; *eptr89591 = %bVq$_37foldr1
  store i64 %RdT$f, i64* %eptr89592                                                  ; *eptr89592 = %RdT$f
  store i64 %cont83965, i64* %eptr89593                                              ; *eptr89593 = %cont83965
  %eptr89587 = getelementptr inbounds i64, i64* %cloptr89586, i64 0                  ; &cloptr89586[0]
  %f89594 = ptrtoint void(i64,i64)* @lam86557 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89594, i64* %eptr89587                                                 ; store fptr
  %arg84945 = ptrtoint i64* %cloptr89586 to i64                                      ; closure cast; i64* -> i64
  %arg84944 = add i64 0, 0                                                           ; quoted ()
  %rva86203 = add i64 0, 0                                                           ; quoted ()
  %rva86202 = call i64 @prim_cons(i64 %retprim83984, i64 %rva86203)                  ; call prim_cons
  %rva86201 = call i64 @prim_cons(i64 %arg84944, i64 %rva86202)                      ; call prim_cons
  %cloptr89595 = inttoptr i64 %arg84945 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr89596 = getelementptr inbounds i64, i64* %cloptr89595, i64 0                 ; &cloptr89595[0]
  %f89598 = load i64, i64* %i0ptr89596, align 8                                      ; load; *i0ptr89596
  %fptr89597 = inttoptr i64 %f89598 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89597(i64 %arg84945, i64 %rva86201)                 ; tail call
  ret void
}


define void @lam86557(i64 %env86558, i64 %rvp86200) {
  %envptr89599 = inttoptr i64 %env86558 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89600 = getelementptr inbounds i64, i64* %envptr89599, i64 6                ; &envptr89599[6]
  %cont83965 = load i64, i64* %envptr89600, align 8                                  ; load; *envptr89600
  %envptr89601 = inttoptr i64 %env86558 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89602 = getelementptr inbounds i64, i64* %envptr89601, i64 5                ; &envptr89601[5]
  %RdT$f = load i64, i64* %envptr89602, align 8                                      ; load; *envptr89602
  %envptr89603 = inttoptr i64 %env86558 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89604 = getelementptr inbounds i64, i64* %envptr89603, i64 4                ; &envptr89603[4]
  %bVq$_37foldr1 = load i64, i64* %envptr89604, align 8                              ; load; *envptr89604
  %envptr89605 = inttoptr i64 %env86558 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89606 = getelementptr inbounds i64, i64* %envptr89605, i64 3                ; &envptr89605[3]
  %mHI$_37map1 = load i64, i64* %envptr89606, align 8                                ; load; *envptr89606
  %envptr89607 = inttoptr i64 %env86558 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89608 = getelementptr inbounds i64, i64* %envptr89607, i64 2                ; &envptr89607[2]
  %TGL$acc = load i64, i64* %envptr89608, align 8                                    ; load; *envptr89608
  %envptr89609 = inttoptr i64 %env86558 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89610 = getelementptr inbounds i64, i64* %envptr89609, i64 1                ; &envptr89609[1]
  %d37$_37foldr = load i64, i64* %envptr89610, align 8                               ; load; *envptr89610
  %_9583968 = call i64 @prim_car(i64 %rvp86200)                                      ; call prim_car
  %rvp86199 = call i64 @prim_cdr(i64 %rvp86200)                                      ; call prim_cdr
  %u15$lsts = call i64 @prim_car(i64 %rvp86199)                                      ; call prim_car
  %na86124 = call i64 @prim_cdr(i64 %rvp86199)                                       ; call prim_cdr
  %cloptr89611 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr89613 = getelementptr inbounds i64, i64* %cloptr89611, i64 1                  ; &eptr89613[1]
  %eptr89614 = getelementptr inbounds i64, i64* %cloptr89611, i64 2                  ; &eptr89614[2]
  %eptr89615 = getelementptr inbounds i64, i64* %cloptr89611, i64 3                  ; &eptr89615[3]
  %eptr89616 = getelementptr inbounds i64, i64* %cloptr89611, i64 4                  ; &eptr89616[4]
  %eptr89617 = getelementptr inbounds i64, i64* %cloptr89611, i64 5                  ; &eptr89617[5]
  %eptr89618 = getelementptr inbounds i64, i64* %cloptr89611, i64 6                  ; &eptr89618[6]
  %eptr89619 = getelementptr inbounds i64, i64* %cloptr89611, i64 7                  ; &eptr89619[7]
  store i64 %d37$_37foldr, i64* %eptr89613                                           ; *eptr89613 = %d37$_37foldr
  store i64 %TGL$acc, i64* %eptr89614                                                ; *eptr89614 = %TGL$acc
  store i64 %mHI$_37map1, i64* %eptr89615                                            ; *eptr89615 = %mHI$_37map1
  store i64 %bVq$_37foldr1, i64* %eptr89616                                          ; *eptr89616 = %bVq$_37foldr1
  store i64 %u15$lsts, i64* %eptr89617                                               ; *eptr89617 = %u15$lsts
  store i64 %RdT$f, i64* %eptr89618                                                  ; *eptr89618 = %RdT$f
  store i64 %cont83965, i64* %eptr89619                                              ; *eptr89619 = %cont83965
  %eptr89612 = getelementptr inbounds i64, i64* %cloptr89611, i64 0                  ; &cloptr89611[0]
  %f89620 = ptrtoint void(i64,i64)* @lam86555 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89620, i64* %eptr89612                                                 ; store fptr
  %arg84949 = ptrtoint i64* %cloptr89611 to i64                                      ; closure cast; i64* -> i64
  %cloptr89621 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr89622 = getelementptr inbounds i64, i64* %cloptr89621, i64 0                  ; &cloptr89621[0]
  %f89623 = ptrtoint void(i64,i64)* @lam86527 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89623, i64* %eptr89622                                                 ; store fptr
  %arg84948 = ptrtoint i64* %cloptr89621 to i64                                      ; closure cast; i64* -> i64
  %arg84947 = call i64 @const_init_false()                                           ; quoted #f
  %rva86198 = add i64 0, 0                                                           ; quoted ()
  %rva86197 = call i64 @prim_cons(i64 %u15$lsts, i64 %rva86198)                      ; call prim_cons
  %rva86196 = call i64 @prim_cons(i64 %arg84947, i64 %rva86197)                      ; call prim_cons
  %rva86195 = call i64 @prim_cons(i64 %arg84948, i64 %rva86196)                      ; call prim_cons
  %rva86194 = call i64 @prim_cons(i64 %arg84949, i64 %rva86195)                      ; call prim_cons
  %cloptr89624 = inttoptr i64 %bVq$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr89625 = getelementptr inbounds i64, i64* %cloptr89624, i64 0                 ; &cloptr89624[0]
  %f89627 = load i64, i64* %i0ptr89625, align 8                                      ; load; *i0ptr89625
  %fptr89626 = inttoptr i64 %f89627 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89626(i64 %bVq$_37foldr1, i64 %rva86194)            ; tail call
  ret void
}


define void @lam86555(i64 %env86556, i64 %rvp86182) {
  %envptr89628 = inttoptr i64 %env86556 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89629 = getelementptr inbounds i64, i64* %envptr89628, i64 7                ; &envptr89628[7]
  %cont83965 = load i64, i64* %envptr89629, align 8                                  ; load; *envptr89629
  %envptr89630 = inttoptr i64 %env86556 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89631 = getelementptr inbounds i64, i64* %envptr89630, i64 6                ; &envptr89630[6]
  %RdT$f = load i64, i64* %envptr89631, align 8                                      ; load; *envptr89631
  %envptr89632 = inttoptr i64 %env86556 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89633 = getelementptr inbounds i64, i64* %envptr89632, i64 5                ; &envptr89632[5]
  %u15$lsts = load i64, i64* %envptr89633, align 8                                   ; load; *envptr89633
  %envptr89634 = inttoptr i64 %env86556 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89635 = getelementptr inbounds i64, i64* %envptr89634, i64 4                ; &envptr89634[4]
  %bVq$_37foldr1 = load i64, i64* %envptr89635, align 8                              ; load; *envptr89635
  %envptr89636 = inttoptr i64 %env86556 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89637 = getelementptr inbounds i64, i64* %envptr89636, i64 3                ; &envptr89636[3]
  %mHI$_37map1 = load i64, i64* %envptr89637, align 8                                ; load; *envptr89637
  %envptr89638 = inttoptr i64 %env86556 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89639 = getelementptr inbounds i64, i64* %envptr89638, i64 2                ; &envptr89638[2]
  %TGL$acc = load i64, i64* %envptr89639, align 8                                    ; load; *envptr89639
  %envptr89640 = inttoptr i64 %env86556 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89641 = getelementptr inbounds i64, i64* %envptr89640, i64 1                ; &envptr89640[1]
  %d37$_37foldr = load i64, i64* %envptr89641, align 8                               ; load; *envptr89641
  %_9583969 = call i64 @prim_car(i64 %rvp86182)                                      ; call prim_car
  %rvp86181 = call i64 @prim_cdr(i64 %rvp86182)                                      ; call prim_cdr
  %a83635 = call i64 @prim_car(i64 %rvp86181)                                        ; call prim_car
  %na86126 = call i64 @prim_cdr(i64 %rvp86181)                                       ; call prim_cdr
  %cmp89642 = icmp eq i64 %a83635, 15                                                ; false?
  br i1 %cmp89642, label %else89644, label %then89643                                ; if

then89643:
  %arg84952 = add i64 0, 0                                                           ; quoted ()
  %rva86129 = add i64 0, 0                                                           ; quoted ()
  %rva86128 = call i64 @prim_cons(i64 %TGL$acc, i64 %rva86129)                       ; call prim_cons
  %rva86127 = call i64 @prim_cons(i64 %arg84952, i64 %rva86128)                      ; call prim_cons
  %cloptr89645 = inttoptr i64 %cont83965 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89646 = getelementptr inbounds i64, i64* %cloptr89645, i64 0                 ; &cloptr89645[0]
  %f89648 = load i64, i64* %i0ptr89646, align 8                                      ; load; *i0ptr89646
  %fptr89647 = inttoptr i64 %f89648 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89647(i64 %cont83965, i64 %rva86127)                ; tail call
  ret void

else89644:
  %cloptr89649 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr89651 = getelementptr inbounds i64, i64* %cloptr89649, i64 1                  ; &eptr89651[1]
  %eptr89652 = getelementptr inbounds i64, i64* %cloptr89649, i64 2                  ; &eptr89652[2]
  %eptr89653 = getelementptr inbounds i64, i64* %cloptr89649, i64 3                  ; &eptr89653[3]
  %eptr89654 = getelementptr inbounds i64, i64* %cloptr89649, i64 4                  ; &eptr89654[4]
  %eptr89655 = getelementptr inbounds i64, i64* %cloptr89649, i64 5                  ; &eptr89655[5]
  %eptr89656 = getelementptr inbounds i64, i64* %cloptr89649, i64 6                  ; &eptr89656[6]
  %eptr89657 = getelementptr inbounds i64, i64* %cloptr89649, i64 7                  ; &eptr89657[7]
  store i64 %d37$_37foldr, i64* %eptr89651                                           ; *eptr89651 = %d37$_37foldr
  store i64 %TGL$acc, i64* %eptr89652                                                ; *eptr89652 = %TGL$acc
  store i64 %mHI$_37map1, i64* %eptr89653                                            ; *eptr89653 = %mHI$_37map1
  store i64 %bVq$_37foldr1, i64* %eptr89654                                          ; *eptr89654 = %bVq$_37foldr1
  store i64 %u15$lsts, i64* %eptr89655                                               ; *eptr89655 = %u15$lsts
  store i64 %RdT$f, i64* %eptr89656                                                  ; *eptr89656 = %RdT$f
  store i64 %cont83965, i64* %eptr89657                                              ; *eptr89657 = %cont83965
  %eptr89650 = getelementptr inbounds i64, i64* %cloptr89649, i64 0                  ; &cloptr89649[0]
  %f89658 = ptrtoint void(i64,i64)* @lam86553 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89658, i64* %eptr89650                                                 ; store fptr
  %arg84956 = ptrtoint i64* %cloptr89649 to i64                                      ; closure cast; i64* -> i64
  %cloptr89659 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr89660 = getelementptr inbounds i64, i64* %cloptr89659, i64 0                  ; &cloptr89659[0]
  %f89661 = ptrtoint void(i64,i64)* @lam86534 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89661, i64* %eptr89660                                                 ; store fptr
  %arg84955 = ptrtoint i64* %cloptr89659 to i64                                      ; closure cast; i64* -> i64
  %rva86180 = add i64 0, 0                                                           ; quoted ()
  %rva86179 = call i64 @prim_cons(i64 %u15$lsts, i64 %rva86180)                      ; call prim_cons
  %rva86178 = call i64 @prim_cons(i64 %arg84955, i64 %rva86179)                      ; call prim_cons
  %rva86177 = call i64 @prim_cons(i64 %arg84956, i64 %rva86178)                      ; call prim_cons
  %cloptr89662 = inttoptr i64 %mHI$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr89663 = getelementptr inbounds i64, i64* %cloptr89662, i64 0                 ; &cloptr89662[0]
  %f89665 = load i64, i64* %i0ptr89663, align 8                                      ; load; *i0ptr89663
  %fptr89664 = inttoptr i64 %f89665 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89664(i64 %mHI$_37map1, i64 %rva86177)              ; tail call
  ret void
}


define void @lam86553(i64 %env86554, i64 %rvp86169) {
  %envptr89666 = inttoptr i64 %env86554 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89667 = getelementptr inbounds i64, i64* %envptr89666, i64 7                ; &envptr89666[7]
  %cont83965 = load i64, i64* %envptr89667, align 8                                  ; load; *envptr89667
  %envptr89668 = inttoptr i64 %env86554 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89669 = getelementptr inbounds i64, i64* %envptr89668, i64 6                ; &envptr89668[6]
  %RdT$f = load i64, i64* %envptr89669, align 8                                      ; load; *envptr89669
  %envptr89670 = inttoptr i64 %env86554 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89671 = getelementptr inbounds i64, i64* %envptr89670, i64 5                ; &envptr89670[5]
  %u15$lsts = load i64, i64* %envptr89671, align 8                                   ; load; *envptr89671
  %envptr89672 = inttoptr i64 %env86554 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89673 = getelementptr inbounds i64, i64* %envptr89672, i64 4                ; &envptr89672[4]
  %bVq$_37foldr1 = load i64, i64* %envptr89673, align 8                              ; load; *envptr89673
  %envptr89674 = inttoptr i64 %env86554 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89675 = getelementptr inbounds i64, i64* %envptr89674, i64 3                ; &envptr89674[3]
  %mHI$_37map1 = load i64, i64* %envptr89675, align 8                                ; load; *envptr89675
  %envptr89676 = inttoptr i64 %env86554 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89677 = getelementptr inbounds i64, i64* %envptr89676, i64 2                ; &envptr89676[2]
  %TGL$acc = load i64, i64* %envptr89677, align 8                                    ; load; *envptr89677
  %envptr89678 = inttoptr i64 %env86554 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89679 = getelementptr inbounds i64, i64* %envptr89678, i64 1                ; &envptr89678[1]
  %d37$_37foldr = load i64, i64* %envptr89679, align 8                               ; load; *envptr89679
  %_9583970 = call i64 @prim_car(i64 %rvp86169)                                      ; call prim_car
  %rvp86168 = call i64 @prim_cdr(i64 %rvp86169)                                      ; call prim_cdr
  %dDy$lsts_43 = call i64 @prim_car(i64 %rvp86168)                                   ; call prim_car
  %na86131 = call i64 @prim_cdr(i64 %rvp86168)                                       ; call prim_cdr
  %cloptr89680 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr89682 = getelementptr inbounds i64, i64* %cloptr89680, i64 1                  ; &eptr89682[1]
  %eptr89683 = getelementptr inbounds i64, i64* %cloptr89680, i64 2                  ; &eptr89683[2]
  %eptr89684 = getelementptr inbounds i64, i64* %cloptr89680, i64 3                  ; &eptr89684[3]
  %eptr89685 = getelementptr inbounds i64, i64* %cloptr89680, i64 4                  ; &eptr89685[4]
  %eptr89686 = getelementptr inbounds i64, i64* %cloptr89680, i64 5                  ; &eptr89686[5]
  %eptr89687 = getelementptr inbounds i64, i64* %cloptr89680, i64 6                  ; &eptr89687[6]
  store i64 %d37$_37foldr, i64* %eptr89682                                           ; *eptr89682 = %d37$_37foldr
  store i64 %TGL$acc, i64* %eptr89683                                                ; *eptr89683 = %TGL$acc
  store i64 %bVq$_37foldr1, i64* %eptr89684                                          ; *eptr89684 = %bVq$_37foldr1
  store i64 %RdT$f, i64* %eptr89685                                                  ; *eptr89685 = %RdT$f
  store i64 %cont83965, i64* %eptr89686                                              ; *eptr89686 = %cont83965
  store i64 %dDy$lsts_43, i64* %eptr89687                                            ; *eptr89687 = %dDy$lsts_43
  %eptr89681 = getelementptr inbounds i64, i64* %cloptr89680, i64 0                  ; &cloptr89680[0]
  %f89688 = ptrtoint void(i64,i64)* @lam86551 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89688, i64* %eptr89681                                                 ; store fptr
  %arg84960 = ptrtoint i64* %cloptr89680 to i64                                      ; closure cast; i64* -> i64
  %cloptr89689 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr89690 = getelementptr inbounds i64, i64* %cloptr89689, i64 0                  ; &cloptr89689[0]
  %f89691 = ptrtoint void(i64,i64)* @lam86539 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89691, i64* %eptr89690                                                 ; store fptr
  %arg84959 = ptrtoint i64* %cloptr89689 to i64                                      ; closure cast; i64* -> i64
  %rva86167 = add i64 0, 0                                                           ; quoted ()
  %rva86166 = call i64 @prim_cons(i64 %u15$lsts, i64 %rva86167)                      ; call prim_cons
  %rva86165 = call i64 @prim_cons(i64 %arg84959, i64 %rva86166)                      ; call prim_cons
  %rva86164 = call i64 @prim_cons(i64 %arg84960, i64 %rva86165)                      ; call prim_cons
  %cloptr89692 = inttoptr i64 %mHI$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr89693 = getelementptr inbounds i64, i64* %cloptr89692, i64 0                 ; &cloptr89692[0]
  %f89695 = load i64, i64* %i0ptr89693, align 8                                      ; load; *i0ptr89693
  %fptr89694 = inttoptr i64 %f89695 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89694(i64 %mHI$_37map1, i64 %rva86164)              ; tail call
  ret void
}


define void @lam86551(i64 %env86552, i64 %rvp86156) {
  %envptr89696 = inttoptr i64 %env86552 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89697 = getelementptr inbounds i64, i64* %envptr89696, i64 6                ; &envptr89696[6]
  %dDy$lsts_43 = load i64, i64* %envptr89697, align 8                                ; load; *envptr89697
  %envptr89698 = inttoptr i64 %env86552 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89699 = getelementptr inbounds i64, i64* %envptr89698, i64 5                ; &envptr89698[5]
  %cont83965 = load i64, i64* %envptr89699, align 8                                  ; load; *envptr89699
  %envptr89700 = inttoptr i64 %env86552 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89701 = getelementptr inbounds i64, i64* %envptr89700, i64 4                ; &envptr89700[4]
  %RdT$f = load i64, i64* %envptr89701, align 8                                      ; load; *envptr89701
  %envptr89702 = inttoptr i64 %env86552 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89703 = getelementptr inbounds i64, i64* %envptr89702, i64 3                ; &envptr89702[3]
  %bVq$_37foldr1 = load i64, i64* %envptr89703, align 8                              ; load; *envptr89703
  %envptr89704 = inttoptr i64 %env86552 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89705 = getelementptr inbounds i64, i64* %envptr89704, i64 2                ; &envptr89704[2]
  %TGL$acc = load i64, i64* %envptr89705, align 8                                    ; load; *envptr89705
  %envptr89706 = inttoptr i64 %env86552 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89707 = getelementptr inbounds i64, i64* %envptr89706, i64 1                ; &envptr89706[1]
  %d37$_37foldr = load i64, i64* %envptr89707, align 8                               ; load; *envptr89707
  %_9583971 = call i64 @prim_car(i64 %rvp86156)                                      ; call prim_car
  %rvp86155 = call i64 @prim_cdr(i64 %rvp86156)                                      ; call prim_cdr
  %nhF$vs = call i64 @prim_car(i64 %rvp86155)                                        ; call prim_car
  %na86133 = call i64 @prim_cdr(i64 %rvp86155)                                       ; call prim_cdr
  %a83636 = call i64 @prim_cons(i64 %TGL$acc, i64 %dDy$lsts_43)                      ; call prim_cons
  %a83637 = call i64 @prim_cons(i64 %RdT$f, i64 %a83636)                             ; call prim_cons
  %cloptr89708 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr89710 = getelementptr inbounds i64, i64* %cloptr89708, i64 1                  ; &eptr89710[1]
  %eptr89711 = getelementptr inbounds i64, i64* %cloptr89708, i64 2                  ; &eptr89711[2]
  %eptr89712 = getelementptr inbounds i64, i64* %cloptr89708, i64 3                  ; &eptr89712[3]
  %eptr89713 = getelementptr inbounds i64, i64* %cloptr89708, i64 4                  ; &eptr89713[4]
  store i64 %nhF$vs, i64* %eptr89710                                                 ; *eptr89710 = %nhF$vs
  store i64 %bVq$_37foldr1, i64* %eptr89711                                          ; *eptr89711 = %bVq$_37foldr1
  store i64 %RdT$f, i64* %eptr89712                                                  ; *eptr89712 = %RdT$f
  store i64 %cont83965, i64* %eptr89713                                              ; *eptr89713 = %cont83965
  %eptr89709 = getelementptr inbounds i64, i64* %cloptr89708, i64 0                  ; &cloptr89708[0]
  %f89714 = ptrtoint void(i64,i64)* @lam86549 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89714, i64* %eptr89709                                                 ; store fptr
  %arg84967 = ptrtoint i64* %cloptr89708 to i64                                      ; closure cast; i64* -> i64
  %cps_45lst83977 = call i64 @prim_cons(i64 %arg84967, i64 %a83637)                  ; call prim_cons
  %cloptr89715 = inttoptr i64 %d37$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr89716 = getelementptr inbounds i64, i64* %cloptr89715, i64 0                 ; &cloptr89715[0]
  %f89718 = load i64, i64* %i0ptr89716, align 8                                      ; load; *i0ptr89716
  %fptr89717 = inttoptr i64 %f89718 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89717(i64 %d37$_37foldr, i64 %cps_45lst83977)       ; tail call
  ret void
}


define void @lam86549(i64 %env86550, i64 %rvp86154) {
  %envptr89719 = inttoptr i64 %env86550 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89720 = getelementptr inbounds i64, i64* %envptr89719, i64 4                ; &envptr89719[4]
  %cont83965 = load i64, i64* %envptr89720, align 8                                  ; load; *envptr89720
  %envptr89721 = inttoptr i64 %env86550 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89722 = getelementptr inbounds i64, i64* %envptr89721, i64 3                ; &envptr89721[3]
  %RdT$f = load i64, i64* %envptr89722, align 8                                      ; load; *envptr89722
  %envptr89723 = inttoptr i64 %env86550 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89724 = getelementptr inbounds i64, i64* %envptr89723, i64 2                ; &envptr89723[2]
  %bVq$_37foldr1 = load i64, i64* %envptr89724, align 8                              ; load; *envptr89724
  %envptr89725 = inttoptr i64 %env86550 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89726 = getelementptr inbounds i64, i64* %envptr89725, i64 1                ; &envptr89725[1]
  %nhF$vs = load i64, i64* %envptr89726, align 8                                     ; load; *envptr89726
  %_9583972 = call i64 @prim_car(i64 %rvp86154)                                      ; call prim_car
  %rvp86153 = call i64 @prim_cdr(i64 %rvp86154)                                      ; call prim_cdr
  %a83638 = call i64 @prim_car(i64 %rvp86153)                                        ; call prim_car
  %na86135 = call i64 @prim_cdr(i64 %rvp86153)                                       ; call prim_cdr
  %arg84968 = add i64 0, 0                                                           ; quoted ()
  %a83639 = call i64 @prim_cons(i64 %a83638, i64 %arg84968)                          ; call prim_cons
  %cloptr89727 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr89729 = getelementptr inbounds i64, i64* %cloptr89727, i64 1                  ; &eptr89729[1]
  %eptr89730 = getelementptr inbounds i64, i64* %cloptr89727, i64 2                  ; &eptr89730[2]
  store i64 %RdT$f, i64* %eptr89729                                                  ; *eptr89729 = %RdT$f
  store i64 %cont83965, i64* %eptr89730                                              ; *eptr89730 = %cont83965
  %eptr89728 = getelementptr inbounds i64, i64* %cloptr89727, i64 0                  ; &cloptr89727[0]
  %f89731 = ptrtoint void(i64,i64)* @lam86546 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89731, i64* %eptr89728                                                 ; store fptr
  %arg84973 = ptrtoint i64* %cloptr89727 to i64                                      ; closure cast; i64* -> i64
  %cloptr89732 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr89733 = getelementptr inbounds i64, i64* %cloptr89732, i64 0                  ; &cloptr89732[0]
  %f89734 = ptrtoint void(i64,i64)* @lam86544 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89734, i64* %eptr89733                                                 ; store fptr
  %arg84972 = ptrtoint i64* %cloptr89732 to i64                                      ; closure cast; i64* -> i64
  %rva86152 = add i64 0, 0                                                           ; quoted ()
  %rva86151 = call i64 @prim_cons(i64 %nhF$vs, i64 %rva86152)                        ; call prim_cons
  %rva86150 = call i64 @prim_cons(i64 %a83639, i64 %rva86151)                        ; call prim_cons
  %rva86149 = call i64 @prim_cons(i64 %arg84972, i64 %rva86150)                      ; call prim_cons
  %rva86148 = call i64 @prim_cons(i64 %arg84973, i64 %rva86149)                      ; call prim_cons
  %cloptr89735 = inttoptr i64 %bVq$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr89736 = getelementptr inbounds i64, i64* %cloptr89735, i64 0                 ; &cloptr89735[0]
  %f89738 = load i64, i64* %i0ptr89736, align 8                                      ; load; *i0ptr89736
  %fptr89737 = inttoptr i64 %f89738 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89737(i64 %bVq$_37foldr1, i64 %rva86148)            ; tail call
  ret void
}


define void @lam86546(i64 %env86547, i64 %rvp86139) {
  %envptr89739 = inttoptr i64 %env86547 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89740 = getelementptr inbounds i64, i64* %envptr89739, i64 2                ; &envptr89739[2]
  %cont83965 = load i64, i64* %envptr89740, align 8                                  ; load; *envptr89740
  %envptr89741 = inttoptr i64 %env86547 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89742 = getelementptr inbounds i64, i64* %envptr89741, i64 1                ; &envptr89741[1]
  %RdT$f = load i64, i64* %envptr89742, align 8                                      ; load; *envptr89742
  %_9583973 = call i64 @prim_car(i64 %rvp86139)                                      ; call prim_car
  %rvp86138 = call i64 @prim_cdr(i64 %rvp86139)                                      ; call prim_cdr
  %a83640 = call i64 @prim_car(i64 %rvp86138)                                        ; call prim_car
  %na86137 = call i64 @prim_cdr(i64 %rvp86138)                                       ; call prim_cdr
  %cps_45lst83974 = call i64 @prim_cons(i64 %cont83965, i64 %a83640)                 ; call prim_cons
  %cloptr89743 = inttoptr i64 %RdT$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr89744 = getelementptr inbounds i64, i64* %cloptr89743, i64 0                 ; &cloptr89743[0]
  %f89746 = load i64, i64* %i0ptr89744, align 8                                      ; load; *i0ptr89744
  %fptr89745 = inttoptr i64 %f89746 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89745(i64 %RdT$f, i64 %cps_45lst83974)              ; tail call
  ret void
}


define void @lam86544(i64 %env86545, i64 %rvp86147) {
  %cont83975 = call i64 @prim_car(i64 %rvp86147)                                     ; call prim_car
  %rvp86146 = call i64 @prim_cdr(i64 %rvp86147)                                      ; call prim_cdr
  %C3I$a = call i64 @prim_car(i64 %rvp86146)                                         ; call prim_car
  %rvp86145 = call i64 @prim_cdr(i64 %rvp86146)                                      ; call prim_cdr
  %BgI$b = call i64 @prim_car(i64 %rvp86145)                                         ; call prim_car
  %na86141 = call i64 @prim_cdr(i64 %rvp86145)                                       ; call prim_cdr
  %retprim83976 = call i64 @prim_cons(i64 %C3I$a, i64 %BgI$b)                        ; call prim_cons
  %arg84980 = add i64 0, 0                                                           ; quoted ()
  %rva86144 = add i64 0, 0                                                           ; quoted ()
  %rva86143 = call i64 @prim_cons(i64 %retprim83976, i64 %rva86144)                  ; call prim_cons
  %rva86142 = call i64 @prim_cons(i64 %arg84980, i64 %rva86143)                      ; call prim_cons
  %cloptr89747 = inttoptr i64 %cont83975 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89748 = getelementptr inbounds i64, i64* %cloptr89747, i64 0                 ; &cloptr89747[0]
  %f89750 = load i64, i64* %i0ptr89748, align 8                                      ; load; *i0ptr89748
  %fptr89749 = inttoptr i64 %f89750 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89749(i64 %cont83975, i64 %rva86142)                ; tail call
  ret void
}


define void @lam86539(i64 %env86540, i64 %rvp86163) {
  %cont83978 = call i64 @prim_car(i64 %rvp86163)                                     ; call prim_car
  %rvp86162 = call i64 @prim_cdr(i64 %rvp86163)                                      ; call prim_cdr
  %px8$x = call i64 @prim_car(i64 %rvp86162)                                         ; call prim_car
  %na86158 = call i64 @prim_cdr(i64 %rvp86162)                                       ; call prim_cdr
  %retprim83979 = call i64 @prim_car(i64 %px8$x)                                     ; call prim_car
  %arg84984 = add i64 0, 0                                                           ; quoted ()
  %rva86161 = add i64 0, 0                                                           ; quoted ()
  %rva86160 = call i64 @prim_cons(i64 %retprim83979, i64 %rva86161)                  ; call prim_cons
  %rva86159 = call i64 @prim_cons(i64 %arg84984, i64 %rva86160)                      ; call prim_cons
  %cloptr89751 = inttoptr i64 %cont83978 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89752 = getelementptr inbounds i64, i64* %cloptr89751, i64 0                 ; &cloptr89751[0]
  %f89754 = load i64, i64* %i0ptr89752, align 8                                      ; load; *i0ptr89752
  %fptr89753 = inttoptr i64 %f89754 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89753(i64 %cont83978, i64 %rva86159)                ; tail call
  ret void
}


define void @lam86534(i64 %env86535, i64 %rvp86176) {
  %cont83980 = call i64 @prim_car(i64 %rvp86176)                                     ; call prim_car
  %rvp86175 = call i64 @prim_cdr(i64 %rvp86176)                                      ; call prim_cdr
  %L0P$x = call i64 @prim_car(i64 %rvp86175)                                         ; call prim_car
  %na86171 = call i64 @prim_cdr(i64 %rvp86175)                                       ; call prim_cdr
  %retprim83981 = call i64 @prim_cdr(i64 %L0P$x)                                     ; call prim_cdr
  %arg84988 = add i64 0, 0                                                           ; quoted ()
  %rva86174 = add i64 0, 0                                                           ; quoted ()
  %rva86173 = call i64 @prim_cons(i64 %retprim83981, i64 %rva86174)                  ; call prim_cons
  %rva86172 = call i64 @prim_cons(i64 %arg84988, i64 %rva86173)                      ; call prim_cons
  %cloptr89755 = inttoptr i64 %cont83980 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89756 = getelementptr inbounds i64, i64* %cloptr89755, i64 0                 ; &cloptr89755[0]
  %f89758 = load i64, i64* %i0ptr89756, align 8                                      ; load; *i0ptr89756
  %fptr89757 = inttoptr i64 %f89758 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89757(i64 %cont83980, i64 %rva86172)                ; tail call
  ret void
}


define void @lam86527(i64 %env86528, i64 %rvp86193) {
  %cont83982 = call i64 @prim_car(i64 %rvp86193)                                     ; call prim_car
  %rvp86192 = call i64 @prim_cdr(i64 %rvp86193)                                      ; call prim_cdr
  %p30$lst = call i64 @prim_car(i64 %rvp86192)                                       ; call prim_car
  %rvp86191 = call i64 @prim_cdr(i64 %rvp86192)                                      ; call prim_cdr
  %AyT$b = call i64 @prim_car(i64 %rvp86191)                                         ; call prim_car
  %na86184 = call i64 @prim_cdr(i64 %rvp86191)                                       ; call prim_cdr
  %cmp89759 = icmp eq i64 %AyT$b, 15                                                 ; false?
  br i1 %cmp89759, label %else89761, label %then89760                                ; if

then89760:
  %arg84991 = add i64 0, 0                                                           ; quoted ()
  %rva86187 = add i64 0, 0                                                           ; quoted ()
  %rva86186 = call i64 @prim_cons(i64 %AyT$b, i64 %rva86187)                         ; call prim_cons
  %rva86185 = call i64 @prim_cons(i64 %arg84991, i64 %rva86186)                      ; call prim_cons
  %cloptr89762 = inttoptr i64 %cont83982 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89763 = getelementptr inbounds i64, i64* %cloptr89762, i64 0                 ; &cloptr89762[0]
  %f89765 = load i64, i64* %i0ptr89763, align 8                                      ; load; *i0ptr89763
  %fptr89764 = inttoptr i64 %f89765 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89764(i64 %cont83982, i64 %rva86185)                ; tail call
  ret void

else89761:
  %retprim83983 = call i64 @prim_null_63(i64 %p30$lst)                               ; call prim_null_63
  %arg84995 = add i64 0, 0                                                           ; quoted ()
  %rva86190 = add i64 0, 0                                                           ; quoted ()
  %rva86189 = call i64 @prim_cons(i64 %retprim83983, i64 %rva86190)                  ; call prim_cons
  %rva86188 = call i64 @prim_cons(i64 %arg84995, i64 %rva86189)                      ; call prim_cons
  %cloptr89766 = inttoptr i64 %cont83982 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89767 = getelementptr inbounds i64, i64* %cloptr89766, i64 0                 ; &cloptr89766[0]
  %f89769 = load i64, i64* %i0ptr89767, align 8                                      ; load; *i0ptr89767
  %fptr89768 = inttoptr i64 %f89769 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89768(i64 %cont83982, i64 %rva86188)                ; tail call
  ret void
}


define void @lam86513(i64 %env86514, i64 %rvp86247) {
  %cont83986 = call i64 @prim_car(i64 %rvp86247)                                     ; call prim_car
  %rvp86246 = call i64 @prim_cdr(i64 %rvp86247)                                      ; call prim_cdr
  %iA4$_37foldl1 = call i64 @prim_car(i64 %rvp86246)                                 ; call prim_car
  %na86220 = call i64 @prim_cdr(i64 %rvp86246)                                       ; call prim_cdr
  %arg84998 = add i64 0, 0                                                           ; quoted ()
  %cloptr89770 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr89772 = getelementptr inbounds i64, i64* %cloptr89770, i64 1                  ; &eptr89772[1]
  store i64 %iA4$_37foldl1, i64* %eptr89772                                          ; *eptr89772 = %iA4$_37foldl1
  %eptr89771 = getelementptr inbounds i64, i64* %cloptr89770, i64 0                  ; &cloptr89770[0]
  %f89773 = ptrtoint void(i64,i64)* @lam86510 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89773, i64* %eptr89771                                                 ; store fptr
  %arg84997 = ptrtoint i64* %cloptr89770 to i64                                      ; closure cast; i64* -> i64
  %rva86245 = add i64 0, 0                                                           ; quoted ()
  %rva86244 = call i64 @prim_cons(i64 %arg84997, i64 %rva86245)                      ; call prim_cons
  %rva86243 = call i64 @prim_cons(i64 %arg84998, i64 %rva86244)                      ; call prim_cons
  %cloptr89774 = inttoptr i64 %cont83986 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89775 = getelementptr inbounds i64, i64* %cloptr89774, i64 0                 ; &cloptr89774[0]
  %f89777 = load i64, i64* %i0ptr89775, align 8                                      ; load; *i0ptr89775
  %fptr89776 = inttoptr i64 %f89777 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89776(i64 %cont83986, i64 %rva86243)                ; tail call
  ret void
}


define void @lam86510(i64 %env86511, i64 %rvp86242) {
  %envptr89778 = inttoptr i64 %env86511 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89779 = getelementptr inbounds i64, i64* %envptr89778, i64 1                ; &envptr89778[1]
  %iA4$_37foldl1 = load i64, i64* %envptr89779, align 8                              ; load; *envptr89779
  %cont83987 = call i64 @prim_car(i64 %rvp86242)                                     ; call prim_car
  %rvp86241 = call i64 @prim_cdr(i64 %rvp86242)                                      ; call prim_cdr
  %qpu$f = call i64 @prim_car(i64 %rvp86241)                                         ; call prim_car
  %rvp86240 = call i64 @prim_cdr(i64 %rvp86241)                                      ; call prim_cdr
  %RjG$acc = call i64 @prim_car(i64 %rvp86240)                                       ; call prim_car
  %rvp86239 = call i64 @prim_cdr(i64 %rvp86240)                                      ; call prim_cdr
  %O7L$lst = call i64 @prim_car(i64 %rvp86239)                                       ; call prim_car
  %na86222 = call i64 @prim_cdr(i64 %rvp86239)                                       ; call prim_cdr
  %a83627 = call i64 @prim_null_63(i64 %O7L$lst)                                     ; call prim_null_63
  %cmp89780 = icmp eq i64 %a83627, 15                                                ; false?
  br i1 %cmp89780, label %else89782, label %then89781                                ; if

then89781:
  %arg85002 = add i64 0, 0                                                           ; quoted ()
  %rva86225 = add i64 0, 0                                                           ; quoted ()
  %rva86224 = call i64 @prim_cons(i64 %RjG$acc, i64 %rva86225)                       ; call prim_cons
  %rva86223 = call i64 @prim_cons(i64 %arg85002, i64 %rva86224)                      ; call prim_cons
  %cloptr89783 = inttoptr i64 %cont83987 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89784 = getelementptr inbounds i64, i64* %cloptr89783, i64 0                 ; &cloptr89783[0]
  %f89786 = load i64, i64* %i0ptr89784, align 8                                      ; load; *i0ptr89784
  %fptr89785 = inttoptr i64 %f89786 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89785(i64 %cont83987, i64 %rva86223)                ; tail call
  ret void

else89782:
  %a83628 = call i64 @prim_car(i64 %O7L$lst)                                         ; call prim_car
  %cloptr89787 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr89789 = getelementptr inbounds i64, i64* %cloptr89787, i64 1                  ; &eptr89789[1]
  %eptr89790 = getelementptr inbounds i64, i64* %cloptr89787, i64 2                  ; &eptr89790[2]
  %eptr89791 = getelementptr inbounds i64, i64* %cloptr89787, i64 3                  ; &eptr89791[3]
  %eptr89792 = getelementptr inbounds i64, i64* %cloptr89787, i64 4                  ; &eptr89792[4]
  store i64 %iA4$_37foldl1, i64* %eptr89789                                          ; *eptr89789 = %iA4$_37foldl1
  store i64 %cont83987, i64* %eptr89790                                              ; *eptr89790 = %cont83987
  store i64 %qpu$f, i64* %eptr89791                                                  ; *eptr89791 = %qpu$f
  store i64 %O7L$lst, i64* %eptr89792                                                ; *eptr89792 = %O7L$lst
  %eptr89788 = getelementptr inbounds i64, i64* %cloptr89787, i64 0                  ; &cloptr89787[0]
  %f89793 = ptrtoint void(i64,i64)* @lam86508 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89793, i64* %eptr89788                                                 ; store fptr
  %arg85007 = ptrtoint i64* %cloptr89787 to i64                                      ; closure cast; i64* -> i64
  %rva86238 = add i64 0, 0                                                           ; quoted ()
  %rva86237 = call i64 @prim_cons(i64 %RjG$acc, i64 %rva86238)                       ; call prim_cons
  %rva86236 = call i64 @prim_cons(i64 %a83628, i64 %rva86237)                        ; call prim_cons
  %rva86235 = call i64 @prim_cons(i64 %arg85007, i64 %rva86236)                      ; call prim_cons
  %cloptr89794 = inttoptr i64 %qpu$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr89795 = getelementptr inbounds i64, i64* %cloptr89794, i64 0                 ; &cloptr89794[0]
  %f89797 = load i64, i64* %i0ptr89795, align 8                                      ; load; *i0ptr89795
  %fptr89796 = inttoptr i64 %f89797 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89796(i64 %qpu$f, i64 %rva86235)                    ; tail call
  ret void
}


define void @lam86508(i64 %env86509, i64 %rvp86234) {
  %envptr89798 = inttoptr i64 %env86509 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89799 = getelementptr inbounds i64, i64* %envptr89798, i64 4                ; &envptr89798[4]
  %O7L$lst = load i64, i64* %envptr89799, align 8                                    ; load; *envptr89799
  %envptr89800 = inttoptr i64 %env86509 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89801 = getelementptr inbounds i64, i64* %envptr89800, i64 3                ; &envptr89800[3]
  %qpu$f = load i64, i64* %envptr89801, align 8                                      ; load; *envptr89801
  %envptr89802 = inttoptr i64 %env86509 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89803 = getelementptr inbounds i64, i64* %envptr89802, i64 2                ; &envptr89802[2]
  %cont83987 = load i64, i64* %envptr89803, align 8                                  ; load; *envptr89803
  %envptr89804 = inttoptr i64 %env86509 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89805 = getelementptr inbounds i64, i64* %envptr89804, i64 1                ; &envptr89804[1]
  %iA4$_37foldl1 = load i64, i64* %envptr89805, align 8                              ; load; *envptr89805
  %_9583988 = call i64 @prim_car(i64 %rvp86234)                                      ; call prim_car
  %rvp86233 = call i64 @prim_cdr(i64 %rvp86234)                                      ; call prim_cdr
  %a83629 = call i64 @prim_car(i64 %rvp86233)                                        ; call prim_car
  %na86227 = call i64 @prim_cdr(i64 %rvp86233)                                       ; call prim_cdr
  %a83630 = call i64 @prim_cdr(i64 %O7L$lst)                                         ; call prim_cdr
  %rva86232 = add i64 0, 0                                                           ; quoted ()
  %rva86231 = call i64 @prim_cons(i64 %a83630, i64 %rva86232)                        ; call prim_cons
  %rva86230 = call i64 @prim_cons(i64 %a83629, i64 %rva86231)                        ; call prim_cons
  %rva86229 = call i64 @prim_cons(i64 %qpu$f, i64 %rva86230)                         ; call prim_cons
  %rva86228 = call i64 @prim_cons(i64 %cont83987, i64 %rva86229)                     ; call prim_cons
  %cloptr89806 = inttoptr i64 %iA4$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr89807 = getelementptr inbounds i64, i64* %cloptr89806, i64 0                 ; &cloptr89806[0]
  %f89809 = load i64, i64* %i0ptr89807, align 8                                      ; load; *i0ptr89807
  %fptr89808 = inttoptr i64 %f89809 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89808(i64 %iA4$_37foldl1, i64 %rva86228)            ; tail call
  ret void
}


define void @lam86500(i64 %env86501, i64 %rvp86276) {
  %cont83989 = call i64 @prim_car(i64 %rvp86276)                                     ; call prim_car
  %rvp86275 = call i64 @prim_cdr(i64 %rvp86276)                                      ; call prim_cdr
  %otJ$_37length = call i64 @prim_car(i64 %rvp86275)                                 ; call prim_car
  %na86254 = call i64 @prim_cdr(i64 %rvp86275)                                       ; call prim_cdr
  %arg85016 = add i64 0, 0                                                           ; quoted ()
  %cloptr89810 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr89812 = getelementptr inbounds i64, i64* %cloptr89810, i64 1                  ; &eptr89812[1]
  store i64 %otJ$_37length, i64* %eptr89812                                          ; *eptr89812 = %otJ$_37length
  %eptr89811 = getelementptr inbounds i64, i64* %cloptr89810, i64 0                  ; &cloptr89810[0]
  %f89813 = ptrtoint void(i64,i64)* @lam86497 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89813, i64* %eptr89811                                                 ; store fptr
  %arg85015 = ptrtoint i64* %cloptr89810 to i64                                      ; closure cast; i64* -> i64
  %rva86274 = add i64 0, 0                                                           ; quoted ()
  %rva86273 = call i64 @prim_cons(i64 %arg85015, i64 %rva86274)                      ; call prim_cons
  %rva86272 = call i64 @prim_cons(i64 %arg85016, i64 %rva86273)                      ; call prim_cons
  %cloptr89814 = inttoptr i64 %cont83989 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89815 = getelementptr inbounds i64, i64* %cloptr89814, i64 0                 ; &cloptr89814[0]
  %f89817 = load i64, i64* %i0ptr89815, align 8                                      ; load; *i0ptr89815
  %fptr89816 = inttoptr i64 %f89817 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89816(i64 %cont83989, i64 %rva86272)                ; tail call
  ret void
}


define void @lam86497(i64 %env86498, i64 %rvp86271) {
  %envptr89818 = inttoptr i64 %env86498 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89819 = getelementptr inbounds i64, i64* %envptr89818, i64 1                ; &envptr89818[1]
  %otJ$_37length = load i64, i64* %envptr89819, align 8                              ; load; *envptr89819
  %cont83990 = call i64 @prim_car(i64 %rvp86271)                                     ; call prim_car
  %rvp86270 = call i64 @prim_cdr(i64 %rvp86271)                                      ; call prim_cdr
  %E2Q$lst = call i64 @prim_car(i64 %rvp86270)                                       ; call prim_car
  %na86256 = call i64 @prim_cdr(i64 %rvp86270)                                       ; call prim_cdr
  %a83624 = call i64 @prim_null_63(i64 %E2Q$lst)                                     ; call prim_null_63
  %cmp89820 = icmp eq i64 %a83624, 15                                                ; false?
  br i1 %cmp89820, label %else89822, label %then89821                                ; if

then89821:
  %arg85020 = add i64 0, 0                                                           ; quoted ()
  %arg85019 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %rva86259 = add i64 0, 0                                                           ; quoted ()
  %rva86258 = call i64 @prim_cons(i64 %arg85019, i64 %rva86259)                      ; call prim_cons
  %rva86257 = call i64 @prim_cons(i64 %arg85020, i64 %rva86258)                      ; call prim_cons
  %cloptr89823 = inttoptr i64 %cont83990 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89824 = getelementptr inbounds i64, i64* %cloptr89823, i64 0                 ; &cloptr89823[0]
  %f89826 = load i64, i64* %i0ptr89824, align 8                                      ; load; *i0ptr89824
  %fptr89825 = inttoptr i64 %f89826 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89825(i64 %cont83990, i64 %rva86257)                ; tail call
  ret void

else89822:
  %a83625 = call i64 @prim_cdr(i64 %E2Q$lst)                                         ; call prim_cdr
  %cloptr89827 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr89829 = getelementptr inbounds i64, i64* %cloptr89827, i64 1                  ; &eptr89829[1]
  store i64 %cont83990, i64* %eptr89829                                              ; *eptr89829 = %cont83990
  %eptr89828 = getelementptr inbounds i64, i64* %cloptr89827, i64 0                  ; &cloptr89827[0]
  %f89830 = ptrtoint void(i64,i64)* @lam86495 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89830, i64* %eptr89828                                                 ; store fptr
  %arg85024 = ptrtoint i64* %cloptr89827 to i64                                      ; closure cast; i64* -> i64
  %rva86269 = add i64 0, 0                                                           ; quoted ()
  %rva86268 = call i64 @prim_cons(i64 %a83625, i64 %rva86269)                        ; call prim_cons
  %rva86267 = call i64 @prim_cons(i64 %arg85024, i64 %rva86268)                      ; call prim_cons
  %cloptr89831 = inttoptr i64 %otJ$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr89832 = getelementptr inbounds i64, i64* %cloptr89831, i64 0                 ; &cloptr89831[0]
  %f89834 = load i64, i64* %i0ptr89832, align 8                                      ; load; *i0ptr89832
  %fptr89833 = inttoptr i64 %f89834 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89833(i64 %otJ$_37length, i64 %rva86267)            ; tail call
  ret void
}


define void @lam86495(i64 %env86496, i64 %rvp86266) {
  %envptr89835 = inttoptr i64 %env86496 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89836 = getelementptr inbounds i64, i64* %envptr89835, i64 1                ; &envptr89835[1]
  %cont83990 = load i64, i64* %envptr89836, align 8                                  ; load; *envptr89836
  %_9583991 = call i64 @prim_car(i64 %rvp86266)                                      ; call prim_car
  %rvp86265 = call i64 @prim_cdr(i64 %rvp86266)                                      ; call prim_cdr
  %a83626 = call i64 @prim_car(i64 %rvp86265)                                        ; call prim_car
  %na86261 = call i64 @prim_cdr(i64 %rvp86265)                                       ; call prim_cdr
  %arg85027 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83992 = call i64 @prim__43(i64 %arg85027, i64 %a83626)                     ; call prim__43
  %arg85029 = add i64 0, 0                                                           ; quoted ()
  %rva86264 = add i64 0, 0                                                           ; quoted ()
  %rva86263 = call i64 @prim_cons(i64 %retprim83992, i64 %rva86264)                  ; call prim_cons
  %rva86262 = call i64 @prim_cons(i64 %arg85029, i64 %rva86263)                      ; call prim_cons
  %cloptr89837 = inttoptr i64 %cont83990 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89838 = getelementptr inbounds i64, i64* %cloptr89837, i64 0                 ; &cloptr89837[0]
  %f89840 = load i64, i64* %i0ptr89838, align 8                                      ; load; *i0ptr89838
  %fptr89839 = inttoptr i64 %f89840 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89839(i64 %cont83990, i64 %rva86262)                ; tail call
  ret void
}


define void @lam86484(i64 %env86485, i64 %rvp86310) {
  %cont83993 = call i64 @prim_car(i64 %rvp86310)                                     ; call prim_car
  %rvp86309 = call i64 @prim_cdr(i64 %rvp86310)                                      ; call prim_cdr
  %HOM$_37take = call i64 @prim_car(i64 %rvp86309)                                   ; call prim_car
  %na86283 = call i64 @prim_cdr(i64 %rvp86309)                                       ; call prim_cdr
  %arg85032 = add i64 0, 0                                                           ; quoted ()
  %cloptr89841 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr89843 = getelementptr inbounds i64, i64* %cloptr89841, i64 1                  ; &eptr89843[1]
  store i64 %HOM$_37take, i64* %eptr89843                                            ; *eptr89843 = %HOM$_37take
  %eptr89842 = getelementptr inbounds i64, i64* %cloptr89841, i64 0                  ; &cloptr89841[0]
  %f89844 = ptrtoint void(i64,i64)* @lam86481 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89844, i64* %eptr89842                                                 ; store fptr
  %arg85031 = ptrtoint i64* %cloptr89841 to i64                                      ; closure cast; i64* -> i64
  %rva86308 = add i64 0, 0                                                           ; quoted ()
  %rva86307 = call i64 @prim_cons(i64 %arg85031, i64 %rva86308)                      ; call prim_cons
  %rva86306 = call i64 @prim_cons(i64 %arg85032, i64 %rva86307)                      ; call prim_cons
  %cloptr89845 = inttoptr i64 %cont83993 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89846 = getelementptr inbounds i64, i64* %cloptr89845, i64 0                 ; &cloptr89845[0]
  %f89848 = load i64, i64* %i0ptr89846, align 8                                      ; load; *i0ptr89846
  %fptr89847 = inttoptr i64 %f89848 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89847(i64 %cont83993, i64 %rva86306)                ; tail call
  ret void
}


define void @lam86481(i64 %env86482, i64 %rvp86305) {
  %envptr89849 = inttoptr i64 %env86482 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89850 = getelementptr inbounds i64, i64* %envptr89849, i64 1                ; &envptr89849[1]
  %HOM$_37take = load i64, i64* %envptr89850, align 8                                ; load; *envptr89850
  %cont83994 = call i64 @prim_car(i64 %rvp86305)                                     ; call prim_car
  %rvp86304 = call i64 @prim_cdr(i64 %rvp86305)                                      ; call prim_cdr
  %p6Y$lst = call i64 @prim_car(i64 %rvp86304)                                       ; call prim_car
  %rvp86303 = call i64 @prim_cdr(i64 %rvp86304)                                      ; call prim_cdr
  %AOI$n = call i64 @prim_car(i64 %rvp86303)                                         ; call prim_car
  %na86285 = call i64 @prim_cdr(i64 %rvp86303)                                       ; call prim_cdr
  %arg85034 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83618 = call i64 @prim__61(i64 %AOI$n, i64 %arg85034)                            ; call prim__61
  %cmp89851 = icmp eq i64 %a83618, 15                                                ; false?
  br i1 %cmp89851, label %else89853, label %then89852                                ; if

then89852:
  %arg85037 = add i64 0, 0                                                           ; quoted ()
  %arg85036 = add i64 0, 0                                                           ; quoted ()
  %rva86288 = add i64 0, 0                                                           ; quoted ()
  %rva86287 = call i64 @prim_cons(i64 %arg85036, i64 %rva86288)                      ; call prim_cons
  %rva86286 = call i64 @prim_cons(i64 %arg85037, i64 %rva86287)                      ; call prim_cons
  %cloptr89854 = inttoptr i64 %cont83994 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89855 = getelementptr inbounds i64, i64* %cloptr89854, i64 0                 ; &cloptr89854[0]
  %f89857 = load i64, i64* %i0ptr89855, align 8                                      ; load; *i0ptr89855
  %fptr89856 = inttoptr i64 %f89857 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89856(i64 %cont83994, i64 %rva86286)                ; tail call
  ret void

else89853:
  %a83619 = call i64 @prim_null_63(i64 %p6Y$lst)                                     ; call prim_null_63
  %cmp89858 = icmp eq i64 %a83619, 15                                                ; false?
  br i1 %cmp89858, label %else89860, label %then89859                                ; if

then89859:
  %arg85041 = add i64 0, 0                                                           ; quoted ()
  %arg85040 = add i64 0, 0                                                           ; quoted ()
  %rva86291 = add i64 0, 0                                                           ; quoted ()
  %rva86290 = call i64 @prim_cons(i64 %arg85040, i64 %rva86291)                      ; call prim_cons
  %rva86289 = call i64 @prim_cons(i64 %arg85041, i64 %rva86290)                      ; call prim_cons
  %cloptr89861 = inttoptr i64 %cont83994 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89862 = getelementptr inbounds i64, i64* %cloptr89861, i64 0                 ; &cloptr89861[0]
  %f89864 = load i64, i64* %i0ptr89862, align 8                                      ; load; *i0ptr89862
  %fptr89863 = inttoptr i64 %f89864 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89863(i64 %cont83994, i64 %rva86289)                ; tail call
  ret void

else89860:
  %a83620 = call i64 @prim_car(i64 %p6Y$lst)                                         ; call prim_car
  %a83621 = call i64 @prim_cdr(i64 %p6Y$lst)                                         ; call prim_cdr
  %arg85045 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a83622 = call i64 @prim__45(i64 %AOI$n, i64 %arg85045)                            ; call prim__45
  %cloptr89865 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr89867 = getelementptr inbounds i64, i64* %cloptr89865, i64 1                  ; &eptr89867[1]
  %eptr89868 = getelementptr inbounds i64, i64* %cloptr89865, i64 2                  ; &eptr89868[2]
  store i64 %a83620, i64* %eptr89867                                                 ; *eptr89867 = %a83620
  store i64 %cont83994, i64* %eptr89868                                              ; *eptr89868 = %cont83994
  %eptr89866 = getelementptr inbounds i64, i64* %cloptr89865, i64 0                  ; &cloptr89865[0]
  %f89869 = ptrtoint void(i64,i64)* @lam86477 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89869, i64* %eptr89866                                                 ; store fptr
  %arg85049 = ptrtoint i64* %cloptr89865 to i64                                      ; closure cast; i64* -> i64
  %rva86302 = add i64 0, 0                                                           ; quoted ()
  %rva86301 = call i64 @prim_cons(i64 %a83622, i64 %rva86302)                        ; call prim_cons
  %rva86300 = call i64 @prim_cons(i64 %a83621, i64 %rva86301)                        ; call prim_cons
  %rva86299 = call i64 @prim_cons(i64 %arg85049, i64 %rva86300)                      ; call prim_cons
  %cloptr89870 = inttoptr i64 %HOM$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr89871 = getelementptr inbounds i64, i64* %cloptr89870, i64 0                 ; &cloptr89870[0]
  %f89873 = load i64, i64* %i0ptr89871, align 8                                      ; load; *i0ptr89871
  %fptr89872 = inttoptr i64 %f89873 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89872(i64 %HOM$_37take, i64 %rva86299)              ; tail call
  ret void
}


define void @lam86477(i64 %env86478, i64 %rvp86298) {
  %envptr89874 = inttoptr i64 %env86478 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89875 = getelementptr inbounds i64, i64* %envptr89874, i64 2                ; &envptr89874[2]
  %cont83994 = load i64, i64* %envptr89875, align 8                                  ; load; *envptr89875
  %envptr89876 = inttoptr i64 %env86478 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89877 = getelementptr inbounds i64, i64* %envptr89876, i64 1                ; &envptr89876[1]
  %a83620 = load i64, i64* %envptr89877, align 8                                     ; load; *envptr89877
  %_9583995 = call i64 @prim_car(i64 %rvp86298)                                      ; call prim_car
  %rvp86297 = call i64 @prim_cdr(i64 %rvp86298)                                      ; call prim_cdr
  %a83623 = call i64 @prim_car(i64 %rvp86297)                                        ; call prim_car
  %na86293 = call i64 @prim_cdr(i64 %rvp86297)                                       ; call prim_cdr
  %retprim83996 = call i64 @prim_cons(i64 %a83620, i64 %a83623)                      ; call prim_cons
  %arg85054 = add i64 0, 0                                                           ; quoted ()
  %rva86296 = add i64 0, 0                                                           ; quoted ()
  %rva86295 = call i64 @prim_cons(i64 %retprim83996, i64 %rva86296)                  ; call prim_cons
  %rva86294 = call i64 @prim_cons(i64 %arg85054, i64 %rva86295)                      ; call prim_cons
  %cloptr89878 = inttoptr i64 %cont83994 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89879 = getelementptr inbounds i64, i64* %cloptr89878, i64 0                 ; &cloptr89878[0]
  %f89881 = load i64, i64* %i0ptr89879, align 8                                      ; load; *i0ptr89879
  %fptr89880 = inttoptr i64 %f89881 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89880(i64 %cont83994, i64 %rva86294)                ; tail call
  ret void
}


define void @lam86464(i64 %env86465, i64 %rvp86348) {
  %cont83997 = call i64 @prim_car(i64 %rvp86348)                                     ; call prim_car
  %rvp86347 = call i64 @prim_cdr(i64 %rvp86348)                                      ; call prim_cdr
  %PR0$_37map = call i64 @prim_car(i64 %rvp86347)                                    ; call prim_car
  %na86317 = call i64 @prim_cdr(i64 %rvp86347)                                       ; call prim_cdr
  %arg85057 = add i64 0, 0                                                           ; quoted ()
  %cloptr89882 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr89884 = getelementptr inbounds i64, i64* %cloptr89882, i64 1                  ; &eptr89884[1]
  store i64 %PR0$_37map, i64* %eptr89884                                             ; *eptr89884 = %PR0$_37map
  %eptr89883 = getelementptr inbounds i64, i64* %cloptr89882, i64 0                  ; &cloptr89882[0]
  %f89885 = ptrtoint void(i64,i64)* @lam86461 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89885, i64* %eptr89883                                                 ; store fptr
  %arg85056 = ptrtoint i64* %cloptr89882 to i64                                      ; closure cast; i64* -> i64
  %rva86346 = add i64 0, 0                                                           ; quoted ()
  %rva86345 = call i64 @prim_cons(i64 %arg85056, i64 %rva86346)                      ; call prim_cons
  %rva86344 = call i64 @prim_cons(i64 %arg85057, i64 %rva86345)                      ; call prim_cons
  %cloptr89886 = inttoptr i64 %cont83997 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89887 = getelementptr inbounds i64, i64* %cloptr89886, i64 0                 ; &cloptr89886[0]
  %f89889 = load i64, i64* %i0ptr89887, align 8                                      ; load; *i0ptr89887
  %fptr89888 = inttoptr i64 %f89889 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89888(i64 %cont83997, i64 %rva86344)                ; tail call
  ret void
}


define void @lam86461(i64 %env86462, i64 %rvp86343) {
  %envptr89890 = inttoptr i64 %env86462 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89891 = getelementptr inbounds i64, i64* %envptr89890, i64 1                ; &envptr89890[1]
  %PR0$_37map = load i64, i64* %envptr89891, align 8                                 ; load; *envptr89891
  %cont83998 = call i64 @prim_car(i64 %rvp86343)                                     ; call prim_car
  %rvp86342 = call i64 @prim_cdr(i64 %rvp86343)                                      ; call prim_cdr
  %FWc$f = call i64 @prim_car(i64 %rvp86342)                                         ; call prim_car
  %rvp86341 = call i64 @prim_cdr(i64 %rvp86342)                                      ; call prim_cdr
  %gAk$lst = call i64 @prim_car(i64 %rvp86341)                                       ; call prim_car
  %na86319 = call i64 @prim_cdr(i64 %rvp86341)                                       ; call prim_cdr
  %a83613 = call i64 @prim_null_63(i64 %gAk$lst)                                     ; call prim_null_63
  %cmp89892 = icmp eq i64 %a83613, 15                                                ; false?
  br i1 %cmp89892, label %else89894, label %then89893                                ; if

then89893:
  %arg85061 = add i64 0, 0                                                           ; quoted ()
  %arg85060 = add i64 0, 0                                                           ; quoted ()
  %rva86322 = add i64 0, 0                                                           ; quoted ()
  %rva86321 = call i64 @prim_cons(i64 %arg85060, i64 %rva86322)                      ; call prim_cons
  %rva86320 = call i64 @prim_cons(i64 %arg85061, i64 %rva86321)                      ; call prim_cons
  %cloptr89895 = inttoptr i64 %cont83998 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89896 = getelementptr inbounds i64, i64* %cloptr89895, i64 0                 ; &cloptr89895[0]
  %f89898 = load i64, i64* %i0ptr89896, align 8                                      ; load; *i0ptr89896
  %fptr89897 = inttoptr i64 %f89898 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89897(i64 %cont83998, i64 %rva86320)                ; tail call
  ret void

else89894:
  %a83614 = call i64 @prim_car(i64 %gAk$lst)                                         ; call prim_car
  %cloptr89899 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr89901 = getelementptr inbounds i64, i64* %cloptr89899, i64 1                  ; &eptr89901[1]
  %eptr89902 = getelementptr inbounds i64, i64* %cloptr89899, i64 2                  ; &eptr89902[2]
  %eptr89903 = getelementptr inbounds i64, i64* %cloptr89899, i64 3                  ; &eptr89903[3]
  %eptr89904 = getelementptr inbounds i64, i64* %cloptr89899, i64 4                  ; &eptr89904[4]
  store i64 %gAk$lst, i64* %eptr89901                                                ; *eptr89901 = %gAk$lst
  store i64 %PR0$_37map, i64* %eptr89902                                             ; *eptr89902 = %PR0$_37map
  store i64 %FWc$f, i64* %eptr89903                                                  ; *eptr89903 = %FWc$f
  store i64 %cont83998, i64* %eptr89904                                              ; *eptr89904 = %cont83998
  %eptr89900 = getelementptr inbounds i64, i64* %cloptr89899, i64 0                  ; &cloptr89899[0]
  %f89905 = ptrtoint void(i64,i64)* @lam86459 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89905, i64* %eptr89900                                                 ; store fptr
  %arg85065 = ptrtoint i64* %cloptr89899 to i64                                      ; closure cast; i64* -> i64
  %rva86340 = add i64 0, 0                                                           ; quoted ()
  %rva86339 = call i64 @prim_cons(i64 %a83614, i64 %rva86340)                        ; call prim_cons
  %rva86338 = call i64 @prim_cons(i64 %arg85065, i64 %rva86339)                      ; call prim_cons
  %cloptr89906 = inttoptr i64 %FWc$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr89907 = getelementptr inbounds i64, i64* %cloptr89906, i64 0                 ; &cloptr89906[0]
  %f89909 = load i64, i64* %i0ptr89907, align 8                                      ; load; *i0ptr89907
  %fptr89908 = inttoptr i64 %f89909 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89908(i64 %FWc$f, i64 %rva86338)                    ; tail call
  ret void
}


define void @lam86459(i64 %env86460, i64 %rvp86337) {
  %envptr89910 = inttoptr i64 %env86460 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89911 = getelementptr inbounds i64, i64* %envptr89910, i64 4                ; &envptr89910[4]
  %cont83998 = load i64, i64* %envptr89911, align 8                                  ; load; *envptr89911
  %envptr89912 = inttoptr i64 %env86460 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89913 = getelementptr inbounds i64, i64* %envptr89912, i64 3                ; &envptr89912[3]
  %FWc$f = load i64, i64* %envptr89913, align 8                                      ; load; *envptr89913
  %envptr89914 = inttoptr i64 %env86460 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89915 = getelementptr inbounds i64, i64* %envptr89914, i64 2                ; &envptr89914[2]
  %PR0$_37map = load i64, i64* %envptr89915, align 8                                 ; load; *envptr89915
  %envptr89916 = inttoptr i64 %env86460 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89917 = getelementptr inbounds i64, i64* %envptr89916, i64 1                ; &envptr89916[1]
  %gAk$lst = load i64, i64* %envptr89917, align 8                                    ; load; *envptr89917
  %_9583999 = call i64 @prim_car(i64 %rvp86337)                                      ; call prim_car
  %rvp86336 = call i64 @prim_cdr(i64 %rvp86337)                                      ; call prim_cdr
  %a83615 = call i64 @prim_car(i64 %rvp86336)                                        ; call prim_car
  %na86324 = call i64 @prim_cdr(i64 %rvp86336)                                       ; call prim_cdr
  %a83616 = call i64 @prim_cdr(i64 %gAk$lst)                                         ; call prim_cdr
  %cloptr89918 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr89920 = getelementptr inbounds i64, i64* %cloptr89918, i64 1                  ; &eptr89920[1]
  %eptr89921 = getelementptr inbounds i64, i64* %cloptr89918, i64 2                  ; &eptr89921[2]
  store i64 %a83615, i64* %eptr89920                                                 ; *eptr89920 = %a83615
  store i64 %cont83998, i64* %eptr89921                                              ; *eptr89921 = %cont83998
  %eptr89919 = getelementptr inbounds i64, i64* %cloptr89918, i64 0                  ; &cloptr89918[0]
  %f89922 = ptrtoint void(i64,i64)* @lam86457 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89922, i64* %eptr89919                                                 ; store fptr
  %arg85070 = ptrtoint i64* %cloptr89918 to i64                                      ; closure cast; i64* -> i64
  %rva86335 = add i64 0, 0                                                           ; quoted ()
  %rva86334 = call i64 @prim_cons(i64 %a83616, i64 %rva86335)                        ; call prim_cons
  %rva86333 = call i64 @prim_cons(i64 %FWc$f, i64 %rva86334)                         ; call prim_cons
  %rva86332 = call i64 @prim_cons(i64 %arg85070, i64 %rva86333)                      ; call prim_cons
  %cloptr89923 = inttoptr i64 %PR0$_37map to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr89924 = getelementptr inbounds i64, i64* %cloptr89923, i64 0                 ; &cloptr89923[0]
  %f89926 = load i64, i64* %i0ptr89924, align 8                                      ; load; *i0ptr89924
  %fptr89925 = inttoptr i64 %f89926 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89925(i64 %PR0$_37map, i64 %rva86332)               ; tail call
  ret void
}


define void @lam86457(i64 %env86458, i64 %rvp86331) {
  %envptr89927 = inttoptr i64 %env86458 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89928 = getelementptr inbounds i64, i64* %envptr89927, i64 2                ; &envptr89927[2]
  %cont83998 = load i64, i64* %envptr89928, align 8                                  ; load; *envptr89928
  %envptr89929 = inttoptr i64 %env86458 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89930 = getelementptr inbounds i64, i64* %envptr89929, i64 1                ; &envptr89929[1]
  %a83615 = load i64, i64* %envptr89930, align 8                                     ; load; *envptr89930
  %_9584000 = call i64 @prim_car(i64 %rvp86331)                                      ; call prim_car
  %rvp86330 = call i64 @prim_cdr(i64 %rvp86331)                                      ; call prim_cdr
  %a83617 = call i64 @prim_car(i64 %rvp86330)                                        ; call prim_car
  %na86326 = call i64 @prim_cdr(i64 %rvp86330)                                       ; call prim_cdr
  %retprim84001 = call i64 @prim_cons(i64 %a83615, i64 %a83617)                      ; call prim_cons
  %arg85075 = add i64 0, 0                                                           ; quoted ()
  %rva86329 = add i64 0, 0                                                           ; quoted ()
  %rva86328 = call i64 @prim_cons(i64 %retprim84001, i64 %rva86329)                  ; call prim_cons
  %rva86327 = call i64 @prim_cons(i64 %arg85075, i64 %rva86328)                      ; call prim_cons
  %cloptr89931 = inttoptr i64 %cont83998 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89932 = getelementptr inbounds i64, i64* %cloptr89931, i64 0                 ; &cloptr89931[0]
  %f89934 = load i64, i64* %i0ptr89932, align 8                                      ; load; *i0ptr89932
  %fptr89933 = inttoptr i64 %f89934 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89933(i64 %cont83998, i64 %rva86327)                ; tail call
  ret void
}


define void @lam86446(i64 %env86447, i64 %rvp86382) {
  %cont84002 = call i64 @prim_car(i64 %rvp86382)                                     ; call prim_car
  %rvp86381 = call i64 @prim_cdr(i64 %rvp86382)                                      ; call prim_cdr
  %lqZ$_37foldr1 = call i64 @prim_car(i64 %rvp86381)                                 ; call prim_car
  %na86355 = call i64 @prim_cdr(i64 %rvp86381)                                       ; call prim_cdr
  %arg85078 = add i64 0, 0                                                           ; quoted ()
  %cloptr89935 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr89937 = getelementptr inbounds i64, i64* %cloptr89935, i64 1                  ; &eptr89937[1]
  store i64 %lqZ$_37foldr1, i64* %eptr89937                                          ; *eptr89937 = %lqZ$_37foldr1
  %eptr89936 = getelementptr inbounds i64, i64* %cloptr89935, i64 0                  ; &cloptr89935[0]
  %f89938 = ptrtoint void(i64,i64)* @lam86443 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89938, i64* %eptr89936                                                 ; store fptr
  %arg85077 = ptrtoint i64* %cloptr89935 to i64                                      ; closure cast; i64* -> i64
  %rva86380 = add i64 0, 0                                                           ; quoted ()
  %rva86379 = call i64 @prim_cons(i64 %arg85077, i64 %rva86380)                      ; call prim_cons
  %rva86378 = call i64 @prim_cons(i64 %arg85078, i64 %rva86379)                      ; call prim_cons
  %cloptr89939 = inttoptr i64 %cont84002 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89940 = getelementptr inbounds i64, i64* %cloptr89939, i64 0                 ; &cloptr89939[0]
  %f89942 = load i64, i64* %i0ptr89940, align 8                                      ; load; *i0ptr89940
  %fptr89941 = inttoptr i64 %f89942 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89941(i64 %cont84002, i64 %rva86378)                ; tail call
  ret void
}


define void @lam86443(i64 %env86444, i64 %rvp86377) {
  %envptr89943 = inttoptr i64 %env86444 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89944 = getelementptr inbounds i64, i64* %envptr89943, i64 1                ; &envptr89943[1]
  %lqZ$_37foldr1 = load i64, i64* %envptr89944, align 8                              ; load; *envptr89944
  %cont84003 = call i64 @prim_car(i64 %rvp86377)                                     ; call prim_car
  %rvp86376 = call i64 @prim_cdr(i64 %rvp86377)                                      ; call prim_cdr
  %NVL$f = call i64 @prim_car(i64 %rvp86376)                                         ; call prim_car
  %rvp86375 = call i64 @prim_cdr(i64 %rvp86376)                                      ; call prim_cdr
  %f88$acc = call i64 @prim_car(i64 %rvp86375)                                       ; call prim_car
  %rvp86374 = call i64 @prim_cdr(i64 %rvp86375)                                      ; call prim_cdr
  %pOg$lst = call i64 @prim_car(i64 %rvp86374)                                       ; call prim_car
  %na86357 = call i64 @prim_cdr(i64 %rvp86374)                                       ; call prim_cdr
  %a83609 = call i64 @prim_null_63(i64 %pOg$lst)                                     ; call prim_null_63
  %cmp89945 = icmp eq i64 %a83609, 15                                                ; false?
  br i1 %cmp89945, label %else89947, label %then89946                                ; if

then89946:
  %arg85082 = add i64 0, 0                                                           ; quoted ()
  %rva86360 = add i64 0, 0                                                           ; quoted ()
  %rva86359 = call i64 @prim_cons(i64 %f88$acc, i64 %rva86360)                       ; call prim_cons
  %rva86358 = call i64 @prim_cons(i64 %arg85082, i64 %rva86359)                      ; call prim_cons
  %cloptr89948 = inttoptr i64 %cont84003 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89949 = getelementptr inbounds i64, i64* %cloptr89948, i64 0                 ; &cloptr89948[0]
  %f89951 = load i64, i64* %i0ptr89949, align 8                                      ; load; *i0ptr89949
  %fptr89950 = inttoptr i64 %f89951 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89950(i64 %cont84003, i64 %rva86358)                ; tail call
  ret void

else89947:
  %a83610 = call i64 @prim_car(i64 %pOg$lst)                                         ; call prim_car
  %a83611 = call i64 @prim_cdr(i64 %pOg$lst)                                         ; call prim_cdr
  %cloptr89952 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr89954 = getelementptr inbounds i64, i64* %cloptr89952, i64 1                  ; &eptr89954[1]
  %eptr89955 = getelementptr inbounds i64, i64* %cloptr89952, i64 2                  ; &eptr89955[2]
  %eptr89956 = getelementptr inbounds i64, i64* %cloptr89952, i64 3                  ; &eptr89956[3]
  store i64 %cont84003, i64* %eptr89954                                              ; *eptr89954 = %cont84003
  store i64 %NVL$f, i64* %eptr89955                                                  ; *eptr89955 = %NVL$f
  store i64 %a83610, i64* %eptr89956                                                 ; *eptr89956 = %a83610
  %eptr89953 = getelementptr inbounds i64, i64* %cloptr89952, i64 0                  ; &cloptr89952[0]
  %f89957 = ptrtoint void(i64,i64)* @lam86441 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89957, i64* %eptr89953                                                 ; store fptr
  %arg85089 = ptrtoint i64* %cloptr89952 to i64                                      ; closure cast; i64* -> i64
  %rva86373 = add i64 0, 0                                                           ; quoted ()
  %rva86372 = call i64 @prim_cons(i64 %a83611, i64 %rva86373)                        ; call prim_cons
  %rva86371 = call i64 @prim_cons(i64 %f88$acc, i64 %rva86372)                       ; call prim_cons
  %rva86370 = call i64 @prim_cons(i64 %NVL$f, i64 %rva86371)                         ; call prim_cons
  %rva86369 = call i64 @prim_cons(i64 %arg85089, i64 %rva86370)                      ; call prim_cons
  %cloptr89958 = inttoptr i64 %lqZ$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr89959 = getelementptr inbounds i64, i64* %cloptr89958, i64 0                 ; &cloptr89958[0]
  %f89961 = load i64, i64* %i0ptr89959, align 8                                      ; load; *i0ptr89959
  %fptr89960 = inttoptr i64 %f89961 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89960(i64 %lqZ$_37foldr1, i64 %rva86369)            ; tail call
  ret void
}


define void @lam86441(i64 %env86442, i64 %rvp86368) {
  %envptr89962 = inttoptr i64 %env86442 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89963 = getelementptr inbounds i64, i64* %envptr89962, i64 3                ; &envptr89962[3]
  %a83610 = load i64, i64* %envptr89963, align 8                                     ; load; *envptr89963
  %envptr89964 = inttoptr i64 %env86442 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89965 = getelementptr inbounds i64, i64* %envptr89964, i64 2                ; &envptr89964[2]
  %NVL$f = load i64, i64* %envptr89965, align 8                                      ; load; *envptr89965
  %envptr89966 = inttoptr i64 %env86442 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89967 = getelementptr inbounds i64, i64* %envptr89966, i64 1                ; &envptr89966[1]
  %cont84003 = load i64, i64* %envptr89967, align 8                                  ; load; *envptr89967
  %_9584004 = call i64 @prim_car(i64 %rvp86368)                                      ; call prim_car
  %rvp86367 = call i64 @prim_cdr(i64 %rvp86368)                                      ; call prim_cdr
  %a83612 = call i64 @prim_car(i64 %rvp86367)                                        ; call prim_car
  %na86362 = call i64 @prim_cdr(i64 %rvp86367)                                       ; call prim_cdr
  %rva86366 = add i64 0, 0                                                           ; quoted ()
  %rva86365 = call i64 @prim_cons(i64 %a83612, i64 %rva86366)                        ; call prim_cons
  %rva86364 = call i64 @prim_cons(i64 %a83610, i64 %rva86365)                        ; call prim_cons
  %rva86363 = call i64 @prim_cons(i64 %cont84003, i64 %rva86364)                     ; call prim_cons
  %cloptr89968 = inttoptr i64 %NVL$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr89969 = getelementptr inbounds i64, i64* %cloptr89968, i64 0                 ; &cloptr89968[0]
  %f89971 = load i64, i64* %i0ptr89969, align 8                                      ; load; *i0ptr89969
  %fptr89970 = inttoptr i64 %f89971 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89970(i64 %NVL$f, i64 %rva86363)                    ; tail call
  ret void
}


define void @lam86433(i64 %env86434, i64 %rvp86415) {
  %cont84006 = call i64 @prim_car(i64 %rvp86415)                                     ; call prim_car
  %rvp86414 = call i64 @prim_cdr(i64 %rvp86415)                                      ; call prim_cdr
  %rD4$y = call i64 @prim_car(i64 %rvp86414)                                         ; call prim_car
  %na86389 = call i64 @prim_cdr(i64 %rvp86414)                                       ; call prim_cdr
  %arg85096 = add i64 0, 0                                                           ; quoted ()
  %cloptr89972 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr89974 = getelementptr inbounds i64, i64* %cloptr89972, i64 1                  ; &eptr89974[1]
  store i64 %rD4$y, i64* %eptr89974                                                  ; *eptr89974 = %rD4$y
  %eptr89973 = getelementptr inbounds i64, i64* %cloptr89972, i64 0                  ; &cloptr89972[0]
  %f89975 = ptrtoint void(i64,i64)* @lam86430 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89975, i64* %eptr89973                                                 ; store fptr
  %arg85095 = ptrtoint i64* %cloptr89972 to i64                                      ; closure cast; i64* -> i64
  %rva86413 = add i64 0, 0                                                           ; quoted ()
  %rva86412 = call i64 @prim_cons(i64 %arg85095, i64 %rva86413)                      ; call prim_cons
  %rva86411 = call i64 @prim_cons(i64 %arg85096, i64 %rva86412)                      ; call prim_cons
  %cloptr89976 = inttoptr i64 %cont84006 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89977 = getelementptr inbounds i64, i64* %cloptr89976, i64 0                 ; &cloptr89976[0]
  %f89979 = load i64, i64* %i0ptr89977, align 8                                      ; load; *i0ptr89977
  %fptr89978 = inttoptr i64 %f89979 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89978(i64 %cont84006, i64 %rva86411)                ; tail call
  ret void
}


define void @lam86430(i64 %env86431, i64 %rvp86410) {
  %envptr89980 = inttoptr i64 %env86431 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89981 = getelementptr inbounds i64, i64* %envptr89980, i64 1                ; &envptr89980[1]
  %rD4$y = load i64, i64* %envptr89981, align 8                                      ; load; *envptr89981
  %cont84007 = call i64 @prim_car(i64 %rvp86410)                                     ; call prim_car
  %rvp86409 = call i64 @prim_cdr(i64 %rvp86410)                                      ; call prim_cdr
  %erF$f = call i64 @prim_car(i64 %rvp86409)                                         ; call prim_car
  %na86391 = call i64 @prim_cdr(i64 %rvp86409)                                       ; call prim_cdr
  %cloptr89982 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr89984 = getelementptr inbounds i64, i64* %cloptr89982, i64 1                  ; &eptr89984[1]
  %eptr89985 = getelementptr inbounds i64, i64* %cloptr89982, i64 2                  ; &eptr89985[2]
  store i64 %erF$f, i64* %eptr89984                                                  ; *eptr89984 = %erF$f
  store i64 %rD4$y, i64* %eptr89985                                                  ; *eptr89985 = %rD4$y
  %eptr89983 = getelementptr inbounds i64, i64* %cloptr89982, i64 0                  ; &cloptr89982[0]
  %f89986 = ptrtoint void(i64,i64)* @lam86428 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89986, i64* %eptr89983                                                 ; store fptr
  %arg85098 = ptrtoint i64* %cloptr89982 to i64                                      ; closure cast; i64* -> i64
  %rva86408 = add i64 0, 0                                                           ; quoted ()
  %rva86407 = call i64 @prim_cons(i64 %arg85098, i64 %rva86408)                      ; call prim_cons
  %rva86406 = call i64 @prim_cons(i64 %cont84007, i64 %rva86407)                     ; call prim_cons
  %cloptr89987 = inttoptr i64 %erF$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr89988 = getelementptr inbounds i64, i64* %cloptr89987, i64 0                 ; &cloptr89987[0]
  %f89990 = load i64, i64* %i0ptr89988, align 8                                      ; load; *i0ptr89988
  %fptr89989 = inttoptr i64 %f89990 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89989(i64 %erF$f, i64 %rva86406)                    ; tail call
  ret void
}


define void @lam86428(i64 %env86429, i64 %tuH$args84009) {
  %envptr89991 = inttoptr i64 %env86429 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89992 = getelementptr inbounds i64, i64* %envptr89991, i64 2                ; &envptr89991[2]
  %rD4$y = load i64, i64* %envptr89992, align 8                                      ; load; *envptr89992
  %envptr89993 = inttoptr i64 %env86429 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89994 = getelementptr inbounds i64, i64* %envptr89993, i64 1                ; &envptr89993[1]
  %erF$f = load i64, i64* %envptr89994, align 8                                      ; load; *envptr89994
  %cont84008 = call i64 @prim_car(i64 %tuH$args84009)                                ; call prim_car
  %tuH$args = call i64 @prim_cdr(i64 %tuH$args84009)                                 ; call prim_cdr
  %cloptr89995 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr89997 = getelementptr inbounds i64, i64* %cloptr89995, i64 1                  ; &eptr89997[1]
  %eptr89998 = getelementptr inbounds i64, i64* %cloptr89995, i64 2                  ; &eptr89998[2]
  %eptr89999 = getelementptr inbounds i64, i64* %cloptr89995, i64 3                  ; &eptr89999[3]
  store i64 %erF$f, i64* %eptr89997                                                  ; *eptr89997 = %erF$f
  store i64 %tuH$args, i64* %eptr89998                                               ; *eptr89998 = %tuH$args
  store i64 %cont84008, i64* %eptr89999                                              ; *eptr89999 = %cont84008
  %eptr89996 = getelementptr inbounds i64, i64* %cloptr89995, i64 0                  ; &cloptr89995[0]
  %f90000 = ptrtoint void(i64,i64)* @lam86426 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f90000, i64* %eptr89996                                                 ; store fptr
  %arg85104 = ptrtoint i64* %cloptr89995 to i64                                      ; closure cast; i64* -> i64
  %rva86405 = add i64 0, 0                                                           ; quoted ()
  %rva86404 = call i64 @prim_cons(i64 %rD4$y, i64 %rva86405)                         ; call prim_cons
  %rva86403 = call i64 @prim_cons(i64 %arg85104, i64 %rva86404)                      ; call prim_cons
  %cloptr90001 = inttoptr i64 %rD4$y to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr90002 = getelementptr inbounds i64, i64* %cloptr90001, i64 0                 ; &cloptr90001[0]
  %f90004 = load i64, i64* %i0ptr90002, align 8                                      ; load; *i0ptr90002
  %fptr90003 = inttoptr i64 %f90004 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr90003(i64 %rD4$y, i64 %rva86403)                    ; tail call
  ret void
}


define void @lam86426(i64 %env86427, i64 %rvp86402) {
  %envptr90005 = inttoptr i64 %env86427 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr90006 = getelementptr inbounds i64, i64* %envptr90005, i64 3                ; &envptr90005[3]
  %cont84008 = load i64, i64* %envptr90006, align 8                                  ; load; *envptr90006
  %envptr90007 = inttoptr i64 %env86427 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr90008 = getelementptr inbounds i64, i64* %envptr90007, i64 2                ; &envptr90007[2]
  %tuH$args = load i64, i64* %envptr90008, align 8                                   ; load; *envptr90008
  %envptr90009 = inttoptr i64 %env86427 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr90010 = getelementptr inbounds i64, i64* %envptr90009, i64 1                ; &envptr90009[1]
  %erF$f = load i64, i64* %envptr90010, align 8                                      ; load; *envptr90010
  %_9584010 = call i64 @prim_car(i64 %rvp86402)                                      ; call prim_car
  %rvp86401 = call i64 @prim_cdr(i64 %rvp86402)                                      ; call prim_cdr
  %a83607 = call i64 @prim_car(i64 %rvp86401)                                        ; call prim_car
  %na86393 = call i64 @prim_cdr(i64 %rvp86401)                                       ; call prim_cdr
  %cloptr90011 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr90013 = getelementptr inbounds i64, i64* %cloptr90011, i64 1                  ; &eptr90013[1]
  %eptr90014 = getelementptr inbounds i64, i64* %cloptr90011, i64 2                  ; &eptr90014[2]
  store i64 %tuH$args, i64* %eptr90013                                               ; *eptr90013 = %tuH$args
  store i64 %cont84008, i64* %eptr90014                                              ; *eptr90014 = %cont84008
  %eptr90012 = getelementptr inbounds i64, i64* %cloptr90011, i64 0                  ; &cloptr90011[0]
  %f90015 = ptrtoint void(i64,i64)* @lam86424 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f90015, i64* %eptr90012                                                 ; store fptr
  %arg85107 = ptrtoint i64* %cloptr90011 to i64                                      ; closure cast; i64* -> i64
  %rva86400 = add i64 0, 0                                                           ; quoted ()
  %rva86399 = call i64 @prim_cons(i64 %erF$f, i64 %rva86400)                         ; call prim_cons
  %rva86398 = call i64 @prim_cons(i64 %arg85107, i64 %rva86399)                      ; call prim_cons
  %cloptr90016 = inttoptr i64 %a83607 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr90017 = getelementptr inbounds i64, i64* %cloptr90016, i64 0                 ; &cloptr90016[0]
  %f90019 = load i64, i64* %i0ptr90017, align 8                                      ; load; *i0ptr90017
  %fptr90018 = inttoptr i64 %f90019 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr90018(i64 %a83607, i64 %rva86398)                   ; tail call
  ret void
}


define void @lam86424(i64 %env86425, i64 %rvp86397) {
  %envptr90020 = inttoptr i64 %env86425 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr90021 = getelementptr inbounds i64, i64* %envptr90020, i64 2                ; &envptr90020[2]
  %cont84008 = load i64, i64* %envptr90021, align 8                                  ; load; *envptr90021
  %envptr90022 = inttoptr i64 %env86425 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr90023 = getelementptr inbounds i64, i64* %envptr90022, i64 1                ; &envptr90022[1]
  %tuH$args = load i64, i64* %envptr90023, align 8                                   ; load; *envptr90023
  %_9584011 = call i64 @prim_car(i64 %rvp86397)                                      ; call prim_car
  %rvp86396 = call i64 @prim_cdr(i64 %rvp86397)                                      ; call prim_cdr
  %a83608 = call i64 @prim_car(i64 %rvp86396)                                        ; call prim_car
  %na86395 = call i64 @prim_cdr(i64 %rvp86396)                                       ; call prim_cdr
  %cps_45lst84012 = call i64 @prim_cons(i64 %cont84008, i64 %tuH$args)               ; call prim_cons
  %cloptr90024 = inttoptr i64 %a83608 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr90025 = getelementptr inbounds i64, i64* %cloptr90024, i64 0                 ; &cloptr90024[0]
  %f90027 = load i64, i64* %i0ptr90025, align 8                                      ; load; *i0ptr90025
  %fptr90026 = inttoptr i64 %f90027 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr90026(i64 %a83608, i64 %cps_45lst84012)             ; tail call
  ret void
}





@sym88059 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
