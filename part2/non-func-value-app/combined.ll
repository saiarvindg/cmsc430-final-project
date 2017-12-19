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
@.str.37 = private unnamed_addr constant [54 x i8] c"Division by zero. Ensure that no denominator is zero.\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"(prim = a b); a is not an integer\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"(prim = a b); b is not an integer\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"(prim < a b); a is not an integer\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"(prim < a b); b is not an integer\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"(prim <= a b); a is not an integer\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"(prim <= a b); b is not an integer\00", align 1

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
  %15 = load i64, i64* %4, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %14
  call void @fatal_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.37, i32 0, i32 0))
  br label %21

; <label>:21                                      ; preds = %20, %14
  %22 = load i64, i64* %3, align 8
  %23 = and i64 %22, -8
  %24 = lshr i64 %23, 32
  %25 = trunc i64 %24 to i32
  %26 = load i64, i64* %4, align 8
  %27 = and i64 %26, -8
  %28 = lshr i64 %27, 32
  %29 = trunc i64 %28 to i32
  %30 = sdiv i32 %25, %29
  %31 = zext i32 %30 to i64
  %32 = shl i64 %31, 32
  %33 = or i64 %32, 2
  ret i64 %33
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
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i32 0, i32 0))
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
  %cloptr157591 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157592 = getelementptr inbounds i64, i64* %cloptr157591, i64 0                ; &cloptr157591[0]
  %f157593 = ptrtoint void(i64,i64,i64)* @lam157589 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157593, i64* %eptr157592                                               ; store fptr
  %arg156251 = ptrtoint i64* %cloptr157591 to i64                                    ; closure cast; i64* -> i64
  %cloptr157594 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157595 = getelementptr inbounds i64, i64* %cloptr157594, i64 0                ; &cloptr157594[0]
  %f157596 = ptrtoint void(i64,i64,i64)* @lam157587 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157596, i64* %eptr157595                                               ; store fptr
  %arg156250 = ptrtoint i64* %cloptr157594 to i64                                    ; closure cast; i64* -> i64
  %cloptr157597 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157598 = getelementptr inbounds i64, i64* %cloptr157597, i64 0                ; &cloptr157597[0]
  %f157599 = ptrtoint void(i64,i64,i64)* @lam157131 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157599, i64* %eptr157598                                               ; store fptr
  %arg156249 = ptrtoint i64* %cloptr157597 to i64                                    ; closure cast; i64* -> i64
  %cloptr157600 = inttoptr i64 %arg156251 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157601 = getelementptr inbounds i64, i64* %cloptr157600, i64 0               ; &cloptr157600[0]
  %f157603 = load i64, i64* %i0ptr157601, align 8                                    ; load; *i0ptr157601
  %fptr157602 = inttoptr i64 %f157603 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157602(i64 %arg156251, i64 %arg156250, i64 %arg156249); tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam157589(i64 %env157590, i64 %cont156241, i64 %cur$yu) {
  %cloptr157604 = inttoptr i64 %cur$yu to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr157605 = getelementptr inbounds i64, i64* %cloptr157604, i64 0               ; &cloptr157604[0]
  %f157607 = load i64, i64* %i0ptr157605, align 8                                    ; load; *i0ptr157605
  %fptr157606 = inttoptr i64 %f157607 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157606(i64 %cur$yu, i64 %cont156241, i64 %cur$yu)   ; tail call
  ret void
}


define void @lam157587(i64 %env157588, i64 %_95156059, i64 %iLn$Ycmb) {
  %cloptr157608 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr157610 = getelementptr inbounds i64, i64* %cloptr157608, i64 1                ; &eptr157610[1]
  store i64 %iLn$Ycmb, i64* %eptr157610                                              ; *eptr157610 = %iLn$Ycmb
  %eptr157609 = getelementptr inbounds i64, i64* %cloptr157608, i64 0                ; &cloptr157608[0]
  %f157611 = ptrtoint void(i64,i64,i64)* @lam157585 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157611, i64* %eptr157609                                               ; store fptr
  %arg156256 = ptrtoint i64* %cloptr157608 to i64                                    ; closure cast; i64* -> i64
  %cloptr157612 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157613 = getelementptr inbounds i64, i64* %cloptr157612, i64 0                ; &cloptr157612[0]
  %f157614 = ptrtoint void(i64,i64,i64)* @lam157139 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157614, i64* %eptr157613                                               ; store fptr
  %arg156255 = ptrtoint i64* %cloptr157612 to i64                                    ; closure cast; i64* -> i64
  %cloptr157615 = inttoptr i64 %iLn$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr157616 = getelementptr inbounds i64, i64* %cloptr157615, i64 0               ; &cloptr157615[0]
  %f157618 = load i64, i64* %i0ptr157616, align 8                                    ; load; *i0ptr157616
  %fptr157617 = inttoptr i64 %f157618 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157617(i64 %iLn$Ycmb, i64 %arg156256, i64 %arg156255); tail call
  ret void
}


define void @lam157585(i64 %env157586, i64 %_95156060, i64 %Jzl$_37foldr1) {
  %envptr157619 = inttoptr i64 %env157586 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157620 = getelementptr inbounds i64, i64* %envptr157619, i64 1              ; &envptr157619[1]
  %iLn$Ycmb = load i64, i64* %envptr157620, align 8                                  ; load; *envptr157620
  %cloptr157621 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr157623 = getelementptr inbounds i64, i64* %cloptr157621, i64 1                ; &eptr157623[1]
  %eptr157624 = getelementptr inbounds i64, i64* %cloptr157621, i64 2                ; &eptr157624[2]
  store i64 %Jzl$_37foldr1, i64* %eptr157623                                         ; *eptr157623 = %Jzl$_37foldr1
  store i64 %iLn$Ycmb, i64* %eptr157624                                              ; *eptr157624 = %iLn$Ycmb
  %eptr157622 = getelementptr inbounds i64, i64* %cloptr157621, i64 0                ; &cloptr157621[0]
  %f157625 = ptrtoint void(i64,i64,i64)* @lam157583 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157625, i64* %eptr157622                                               ; store fptr
  %arg156259 = ptrtoint i64* %cloptr157621 to i64                                    ; closure cast; i64* -> i64
  %cloptr157626 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157627 = getelementptr inbounds i64, i64* %cloptr157626, i64 0                ; &cloptr157626[0]
  %f157628 = ptrtoint void(i64,i64,i64)* @lam157151 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157628, i64* %eptr157627                                               ; store fptr
  %arg156258 = ptrtoint i64* %cloptr157626 to i64                                    ; closure cast; i64* -> i64
  %cloptr157629 = inttoptr i64 %iLn$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr157630 = getelementptr inbounds i64, i64* %cloptr157629, i64 0               ; &cloptr157629[0]
  %f157632 = load i64, i64* %i0ptr157630, align 8                                    ; load; *i0ptr157630
  %fptr157631 = inttoptr i64 %f157632 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157631(i64 %iLn$Ycmb, i64 %arg156259, i64 %arg156258); tail call
  ret void
}


define void @lam157583(i64 %env157584, i64 %_95156061, i64 %mkH$_37map1) {
  %envptr157633 = inttoptr i64 %env157584 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157634 = getelementptr inbounds i64, i64* %envptr157633, i64 2              ; &envptr157633[2]
  %iLn$Ycmb = load i64, i64* %envptr157634, align 8                                  ; load; *envptr157634
  %envptr157635 = inttoptr i64 %env157584 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157636 = getelementptr inbounds i64, i64* %envptr157635, i64 1              ; &envptr157635[1]
  %Jzl$_37foldr1 = load i64, i64* %envptr157636, align 8                             ; load; *envptr157636
  %cloptr157637 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157639 = getelementptr inbounds i64, i64* %cloptr157637, i64 1                ; &eptr157639[1]
  %eptr157640 = getelementptr inbounds i64, i64* %cloptr157637, i64 2                ; &eptr157640[2]
  %eptr157641 = getelementptr inbounds i64, i64* %cloptr157637, i64 3                ; &eptr157641[3]
  store i64 %Jzl$_37foldr1, i64* %eptr157639                                         ; *eptr157639 = %Jzl$_37foldr1
  store i64 %mkH$_37map1, i64* %eptr157640                                           ; *eptr157640 = %mkH$_37map1
  store i64 %iLn$Ycmb, i64* %eptr157641                                              ; *eptr157641 = %iLn$Ycmb
  %eptr157638 = getelementptr inbounds i64, i64* %cloptr157637, i64 0                ; &cloptr157637[0]
  %f157642 = ptrtoint void(i64,i64,i64)* @lam157581 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157642, i64* %eptr157638                                               ; store fptr
  %arg156262 = ptrtoint i64* %cloptr157637 to i64                                    ; closure cast; i64* -> i64
  %cloptr157643 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157644 = getelementptr inbounds i64, i64* %cloptr157643, i64 0                ; &cloptr157643[0]
  %f157645 = ptrtoint void(i64,i64,i64)* @lam157165 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157645, i64* %eptr157644                                               ; store fptr
  %arg156261 = ptrtoint i64* %cloptr157643 to i64                                    ; closure cast; i64* -> i64
  %cloptr157646 = inttoptr i64 %iLn$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr157647 = getelementptr inbounds i64, i64* %cloptr157646, i64 0               ; &cloptr157646[0]
  %f157649 = load i64, i64* %i0ptr157647, align 8                                    ; load; *i0ptr157647
  %fptr157648 = inttoptr i64 %f157649 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157648(i64 %iLn$Ycmb, i64 %arg156262, i64 %arg156261); tail call
  ret void
}


define void @lam157581(i64 %env157582, i64 %_95156062, i64 %lrz$_37take) {
  %envptr157650 = inttoptr i64 %env157582 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157651 = getelementptr inbounds i64, i64* %envptr157650, i64 3              ; &envptr157650[3]
  %iLn$Ycmb = load i64, i64* %envptr157651, align 8                                  ; load; *envptr157651
  %envptr157652 = inttoptr i64 %env157582 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157653 = getelementptr inbounds i64, i64* %envptr157652, i64 2              ; &envptr157652[2]
  %mkH$_37map1 = load i64, i64* %envptr157653, align 8                               ; load; *envptr157653
  %envptr157654 = inttoptr i64 %env157582 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157655 = getelementptr inbounds i64, i64* %envptr157654, i64 1              ; &envptr157654[1]
  %Jzl$_37foldr1 = load i64, i64* %envptr157655, align 8                             ; load; *envptr157655
  %cloptr157656 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr157658 = getelementptr inbounds i64, i64* %cloptr157656, i64 1                ; &eptr157658[1]
  %eptr157659 = getelementptr inbounds i64, i64* %cloptr157656, i64 2                ; &eptr157659[2]
  %eptr157660 = getelementptr inbounds i64, i64* %cloptr157656, i64 3                ; &eptr157660[3]
  %eptr157661 = getelementptr inbounds i64, i64* %cloptr157656, i64 4                ; &eptr157661[4]
  store i64 %Jzl$_37foldr1, i64* %eptr157658                                         ; *eptr157658 = %Jzl$_37foldr1
  store i64 %mkH$_37map1, i64* %eptr157659                                           ; *eptr157659 = %mkH$_37map1
  store i64 %lrz$_37take, i64* %eptr157660                                           ; *eptr157660 = %lrz$_37take
  store i64 %iLn$Ycmb, i64* %eptr157661                                              ; *eptr157661 = %iLn$Ycmb
  %eptr157657 = getelementptr inbounds i64, i64* %cloptr157656, i64 0                ; &cloptr157656[0]
  %f157662 = ptrtoint void(i64,i64,i64)* @lam157579 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157662, i64* %eptr157657                                               ; store fptr
  %arg156265 = ptrtoint i64* %cloptr157656 to i64                                    ; closure cast; i64* -> i64
  %cloptr157663 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157664 = getelementptr inbounds i64, i64* %cloptr157663, i64 0                ; &cloptr157663[0]
  %f157665 = ptrtoint void(i64,i64,i64)* @lam157176 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157665, i64* %eptr157664                                               ; store fptr
  %arg156264 = ptrtoint i64* %cloptr157663 to i64                                    ; closure cast; i64* -> i64
  %cloptr157666 = inttoptr i64 %iLn$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr157667 = getelementptr inbounds i64, i64* %cloptr157666, i64 0               ; &cloptr157666[0]
  %f157669 = load i64, i64* %i0ptr157667, align 8                                    ; load; *i0ptr157667
  %fptr157668 = inttoptr i64 %f157669 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157668(i64 %iLn$Ycmb, i64 %arg156265, i64 %arg156264); tail call
  ret void
}


define void @lam157579(i64 %env157580, i64 %_95156063, i64 %O82$_37length) {
  %envptr157670 = inttoptr i64 %env157580 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157671 = getelementptr inbounds i64, i64* %envptr157670, i64 4              ; &envptr157670[4]
  %iLn$Ycmb = load i64, i64* %envptr157671, align 8                                  ; load; *envptr157671
  %envptr157672 = inttoptr i64 %env157580 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157673 = getelementptr inbounds i64, i64* %envptr157672, i64 3              ; &envptr157672[3]
  %lrz$_37take = load i64, i64* %envptr157673, align 8                               ; load; *envptr157673
  %envptr157674 = inttoptr i64 %env157580 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157675 = getelementptr inbounds i64, i64* %envptr157674, i64 2              ; &envptr157674[2]
  %mkH$_37map1 = load i64, i64* %envptr157675, align 8                               ; load; *envptr157675
  %envptr157676 = inttoptr i64 %env157580 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157677 = getelementptr inbounds i64, i64* %envptr157676, i64 1              ; &envptr157676[1]
  %Jzl$_37foldr1 = load i64, i64* %envptr157677, align 8                             ; load; *envptr157677
  %cloptr157678 = call i64* @alloc(i64 48)                                           ; malloc
  %eptr157680 = getelementptr inbounds i64, i64* %cloptr157678, i64 1                ; &eptr157680[1]
  %eptr157681 = getelementptr inbounds i64, i64* %cloptr157678, i64 2                ; &eptr157681[2]
  %eptr157682 = getelementptr inbounds i64, i64* %cloptr157678, i64 3                ; &eptr157682[3]
  %eptr157683 = getelementptr inbounds i64, i64* %cloptr157678, i64 4                ; &eptr157683[4]
  %eptr157684 = getelementptr inbounds i64, i64* %cloptr157678, i64 5                ; &eptr157684[5]
  store i64 %Jzl$_37foldr1, i64* %eptr157680                                         ; *eptr157680 = %Jzl$_37foldr1
  store i64 %mkH$_37map1, i64* %eptr157681                                           ; *eptr157681 = %mkH$_37map1
  store i64 %lrz$_37take, i64* %eptr157682                                           ; *eptr157682 = %lrz$_37take
  store i64 %iLn$Ycmb, i64* %eptr157683                                              ; *eptr157683 = %iLn$Ycmb
  store i64 %O82$_37length, i64* %eptr157684                                         ; *eptr157684 = %O82$_37length
  %eptr157679 = getelementptr inbounds i64, i64* %cloptr157678, i64 0                ; &cloptr157678[0]
  %f157685 = ptrtoint void(i64,i64,i64)* @lam157577 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157685, i64* %eptr157679                                               ; store fptr
  %arg156268 = ptrtoint i64* %cloptr157678 to i64                                    ; closure cast; i64* -> i64
  %cloptr157686 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157687 = getelementptr inbounds i64, i64* %cloptr157686, i64 0                ; &cloptr157686[0]
  %f157688 = ptrtoint void(i64,i64,i64)* @lam157184 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157688, i64* %eptr157687                                               ; store fptr
  %arg156267 = ptrtoint i64* %cloptr157686 to i64                                    ; closure cast; i64* -> i64
  %cloptr157689 = inttoptr i64 %iLn$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr157690 = getelementptr inbounds i64, i64* %cloptr157689, i64 0               ; &cloptr157689[0]
  %f157692 = load i64, i64* %i0ptr157690, align 8                                    ; load; *i0ptr157690
  %fptr157691 = inttoptr i64 %f157692 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157691(i64 %iLn$Ycmb, i64 %arg156268, i64 %arg156267); tail call
  ret void
}


define void @lam157577(i64 %env157578, i64 %_95156064, i64 %EcI$_37foldl1) {
  %envptr157693 = inttoptr i64 %env157578 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157694 = getelementptr inbounds i64, i64* %envptr157693, i64 5              ; &envptr157693[5]
  %O82$_37length = load i64, i64* %envptr157694, align 8                             ; load; *envptr157694
  %envptr157695 = inttoptr i64 %env157578 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157696 = getelementptr inbounds i64, i64* %envptr157695, i64 4              ; &envptr157695[4]
  %iLn$Ycmb = load i64, i64* %envptr157696, align 8                                  ; load; *envptr157696
  %envptr157697 = inttoptr i64 %env157578 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157698 = getelementptr inbounds i64, i64* %envptr157697, i64 3              ; &envptr157697[3]
  %lrz$_37take = load i64, i64* %envptr157698, align 8                               ; load; *envptr157698
  %envptr157699 = inttoptr i64 %env157578 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157700 = getelementptr inbounds i64, i64* %envptr157699, i64 2              ; &envptr157699[2]
  %mkH$_37map1 = load i64, i64* %envptr157700, align 8                               ; load; *envptr157700
  %envptr157701 = inttoptr i64 %env157578 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157702 = getelementptr inbounds i64, i64* %envptr157701, i64 1              ; &envptr157701[1]
  %Jzl$_37foldr1 = load i64, i64* %envptr157702, align 8                             ; load; *envptr157702
  %cloptr157703 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr157705 = getelementptr inbounds i64, i64* %cloptr157703, i64 1                ; &eptr157705[1]
  store i64 %EcI$_37foldl1, i64* %eptr157705                                         ; *eptr157705 = %EcI$_37foldl1
  %eptr157704 = getelementptr inbounds i64, i64* %cloptr157703, i64 0                ; &cloptr157703[0]
  %f157706 = ptrtoint void(i64,i64,i64)* @lam157575 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157706, i64* %eptr157704                                               ; store fptr
  %Kv8$_37last = ptrtoint i64* %cloptr157703 to i64                                  ; closure cast; i64* -> i64
  %cloptr157707 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr157709 = getelementptr inbounds i64, i64* %cloptr157707, i64 1                ; &eptr157709[1]
  %eptr157710 = getelementptr inbounds i64, i64* %cloptr157707, i64 2                ; &eptr157710[2]
  store i64 %lrz$_37take, i64* %eptr157709                                           ; *eptr157709 = %lrz$_37take
  store i64 %O82$_37length, i64* %eptr157710                                         ; *eptr157710 = %O82$_37length
  %eptr157708 = getelementptr inbounds i64, i64* %cloptr157707, i64 0                ; &cloptr157707[0]
  %f157711 = ptrtoint void(i64,i64,i64,i64)* @lam157569 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f157711, i64* %eptr157708                                               ; store fptr
  %JOh$_37drop_45right = ptrtoint i64* %cloptr157707 to i64                          ; closure cast; i64* -> i64
  %cloptr157712 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr157714 = getelementptr inbounds i64, i64* %cloptr157712, i64 1                ; &eptr157714[1]
  %eptr157715 = getelementptr inbounds i64, i64* %cloptr157712, i64 2                ; &eptr157715[2]
  %eptr157716 = getelementptr inbounds i64, i64* %cloptr157712, i64 3                ; &eptr157716[3]
  %eptr157717 = getelementptr inbounds i64, i64* %cloptr157712, i64 4                ; &eptr157717[4]
  %eptr157718 = getelementptr inbounds i64, i64* %cloptr157712, i64 5                ; &eptr157718[5]
  %eptr157719 = getelementptr inbounds i64, i64* %cloptr157712, i64 6                ; &eptr157719[6]
  store i64 %Jzl$_37foldr1, i64* %eptr157714                                         ; *eptr157714 = %Jzl$_37foldr1
  store i64 %Kv8$_37last, i64* %eptr157715                                           ; *eptr157715 = %Kv8$_37last
  store i64 %JOh$_37drop_45right, i64* %eptr157716                                   ; *eptr157716 = %JOh$_37drop_45right
  store i64 %iLn$Ycmb, i64* %eptr157717                                              ; *eptr157717 = %iLn$Ycmb
  store i64 %EcI$_37foldl1, i64* %eptr157718                                         ; *eptr157718 = %EcI$_37foldl1
  store i64 %O82$_37length, i64* %eptr157719                                         ; *eptr157719 = %O82$_37length
  %eptr157713 = getelementptr inbounds i64, i64* %cloptr157712, i64 0                ; &cloptr157712[0]
  %f157720 = ptrtoint void(i64,i64,i64)* @lam157565 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157720, i64* %eptr157713                                               ; store fptr
  %arg156288 = ptrtoint i64* %cloptr157712 to i64                                    ; closure cast; i64* -> i64
  %cloptr157721 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr157723 = getelementptr inbounds i64, i64* %cloptr157721, i64 1                ; &eptr157723[1]
  %eptr157724 = getelementptr inbounds i64, i64* %cloptr157721, i64 2                ; &eptr157724[2]
  store i64 %Jzl$_37foldr1, i64* %eptr157723                                         ; *eptr157723 = %Jzl$_37foldr1
  store i64 %mkH$_37map1, i64* %eptr157724                                           ; *eptr157724 = %mkH$_37map1
  %eptr157722 = getelementptr inbounds i64, i64* %cloptr157721, i64 0                ; &cloptr157721[0]
  %f157725 = ptrtoint void(i64,i64,i64)* @lam157221 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157725, i64* %eptr157722                                               ; store fptr
  %arg156287 = ptrtoint i64* %cloptr157721 to i64                                    ; closure cast; i64* -> i64
  %cloptr157726 = inttoptr i64 %iLn$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr157727 = getelementptr inbounds i64, i64* %cloptr157726, i64 0               ; &cloptr157726[0]
  %f157729 = load i64, i64* %i0ptr157727, align 8                                    ; load; *i0ptr157727
  %fptr157728 = inttoptr i64 %f157729 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157728(i64 %iLn$Ycmb, i64 %arg156288, i64 %arg156287); tail call
  ret void
}


define void @lam157575(i64 %env157576, i64 %cont156065, i64 %nDb$lst) {
  %envptr157730 = inttoptr i64 %env157576 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157731 = getelementptr inbounds i64, i64* %envptr157730, i64 1              ; &envptr157730[1]
  %EcI$_37foldl1 = load i64, i64* %envptr157731, align 8                             ; load; *envptr157731
  %cloptr157732 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157733 = getelementptr inbounds i64, i64* %cloptr157732, i64 0                ; &cloptr157732[0]
  %f157734 = ptrtoint void(i64,i64,i64,i64)* @lam157573 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f157734, i64* %eptr157733                                               ; store fptr
  %arg156272 = ptrtoint i64* %cloptr157732 to i64                                    ; closure cast; i64* -> i64
  %arg156271 = add i64 0, 0                                                          ; quoted ()
  %cloptr157735 = inttoptr i64 %EcI$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr157736 = getelementptr inbounds i64, i64* %cloptr157735, i64 0               ; &cloptr157735[0]
  %f157738 = load i64, i64* %i0ptr157736, align 8                                    ; load; *i0ptr157736
  %fptr157737 = inttoptr i64 %f157738 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157737(i64 %EcI$_37foldl1, i64 %cont156065, i64 %arg156272, i64 %arg156271, i64 %nDb$lst); tail call
  ret void
}


define void @lam157573(i64 %env157574, i64 %cont156066, i64 %e5B$x, i64 %x5G$y) {
  %arg156276 = add i64 0, 0                                                          ; quoted ()
  %cloptr157739 = inttoptr i64 %cont156066 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157740 = getelementptr inbounds i64, i64* %cloptr157739, i64 0               ; &cloptr157739[0]
  %f157742 = load i64, i64* %i0ptr157740, align 8                                    ; load; *i0ptr157740
  %fptr157741 = inttoptr i64 %f157742 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157741(i64 %cont156066, i64 %arg156276, i64 %e5B$x) ; tail call
  ret void
}


define void @lam157569(i64 %env157570, i64 %cont156067, i64 %ROI$lst, i64 %Zr3$n) {
  %envptr157743 = inttoptr i64 %env157570 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157744 = getelementptr inbounds i64, i64* %envptr157743, i64 2              ; &envptr157743[2]
  %O82$_37length = load i64, i64* %envptr157744, align 8                             ; load; *envptr157744
  %envptr157745 = inttoptr i64 %env157570 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157746 = getelementptr inbounds i64, i64* %envptr157745, i64 1              ; &envptr157745[1]
  %lrz$_37take = load i64, i64* %envptr157746, align 8                               ; load; *envptr157746
  %cloptr157747 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr157749 = getelementptr inbounds i64, i64* %cloptr157747, i64 1                ; &eptr157749[1]
  %eptr157750 = getelementptr inbounds i64, i64* %cloptr157747, i64 2                ; &eptr157750[2]
  %eptr157751 = getelementptr inbounds i64, i64* %cloptr157747, i64 3                ; &eptr157751[3]
  %eptr157752 = getelementptr inbounds i64, i64* %cloptr157747, i64 4                ; &eptr157752[4]
  store i64 %cont156067, i64* %eptr157749                                            ; *eptr157749 = %cont156067
  store i64 %Zr3$n, i64* %eptr157750                                                 ; *eptr157750 = %Zr3$n
  store i64 %ROI$lst, i64* %eptr157751                                               ; *eptr157751 = %ROI$lst
  store i64 %lrz$_37take, i64* %eptr157752                                           ; *eptr157752 = %lrz$_37take
  %eptr157748 = getelementptr inbounds i64, i64* %cloptr157747, i64 0                ; &cloptr157747[0]
  %f157753 = ptrtoint void(i64,i64,i64)* @lam157567 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157753, i64* %eptr157748                                               ; store fptr
  %arg156279 = ptrtoint i64* %cloptr157747 to i64                                    ; closure cast; i64* -> i64
  %cloptr157754 = inttoptr i64 %O82$_37length to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr157755 = getelementptr inbounds i64, i64* %cloptr157754, i64 0               ; &cloptr157754[0]
  %f157757 = load i64, i64* %i0ptr157755, align 8                                    ; load; *i0ptr157755
  %fptr157756 = inttoptr i64 %f157757 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157756(i64 %O82$_37length, i64 %arg156279, i64 %ROI$lst); tail call
  ret void
}


define void @lam157567(i64 %env157568, i64 %_95156068, i64 %a155961) {
  %envptr157758 = inttoptr i64 %env157568 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157759 = getelementptr inbounds i64, i64* %envptr157758, i64 4              ; &envptr157758[4]
  %lrz$_37take = load i64, i64* %envptr157759, align 8                               ; load; *envptr157759
  %envptr157760 = inttoptr i64 %env157568 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157761 = getelementptr inbounds i64, i64* %envptr157760, i64 3              ; &envptr157760[3]
  %ROI$lst = load i64, i64* %envptr157761, align 8                                   ; load; *envptr157761
  %envptr157762 = inttoptr i64 %env157568 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157763 = getelementptr inbounds i64, i64* %envptr157762, i64 2              ; &envptr157762[2]
  %Zr3$n = load i64, i64* %envptr157763, align 8                                     ; load; *envptr157763
  %envptr157764 = inttoptr i64 %env157568 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157765 = getelementptr inbounds i64, i64* %envptr157764, i64 1              ; &envptr157764[1]
  %cont156067 = load i64, i64* %envptr157765, align 8                                ; load; *envptr157765
  %a155962 = call i64 @prim__45(i64 %a155961, i64 %Zr3$n)                            ; call prim__45
  %cloptr157766 = inttoptr i64 %lrz$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr157767 = getelementptr inbounds i64, i64* %cloptr157766, i64 0               ; &cloptr157766[0]
  %f157769 = load i64, i64* %i0ptr157767, align 8                                    ; load; *i0ptr157767
  %fptr157768 = inttoptr i64 %f157769 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157768(i64 %lrz$_37take, i64 %cont156067, i64 %ROI$lst, i64 %a155962); tail call
  ret void
}


define void @lam157565(i64 %env157566, i64 %_95156069, i64 %Way$_37foldr) {
  %envptr157770 = inttoptr i64 %env157566 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157771 = getelementptr inbounds i64, i64* %envptr157770, i64 6              ; &envptr157770[6]
  %O82$_37length = load i64, i64* %envptr157771, align 8                             ; load; *envptr157771
  %envptr157772 = inttoptr i64 %env157566 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157773 = getelementptr inbounds i64, i64* %envptr157772, i64 5              ; &envptr157772[5]
  %EcI$_37foldl1 = load i64, i64* %envptr157773, align 8                             ; load; *envptr157773
  %envptr157774 = inttoptr i64 %env157566 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157775 = getelementptr inbounds i64, i64* %envptr157774, i64 4              ; &envptr157774[4]
  %iLn$Ycmb = load i64, i64* %envptr157775, align 8                                  ; load; *envptr157775
  %envptr157776 = inttoptr i64 %env157566 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157777 = getelementptr inbounds i64, i64* %envptr157776, i64 3              ; &envptr157776[3]
  %JOh$_37drop_45right = load i64, i64* %envptr157777, align 8                       ; load; *envptr157777
  %envptr157778 = inttoptr i64 %env157566 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157779 = getelementptr inbounds i64, i64* %envptr157778, i64 2              ; &envptr157778[2]
  %Kv8$_37last = load i64, i64* %envptr157779, align 8                               ; load; *envptr157779
  %envptr157780 = inttoptr i64 %env157566 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157781 = getelementptr inbounds i64, i64* %envptr157780, i64 1              ; &envptr157780[1]
  %Jzl$_37foldr1 = load i64, i64* %envptr157781, align 8                             ; load; *envptr157781
  %cloptr157782 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr157784 = getelementptr inbounds i64, i64* %cloptr157782, i64 1                ; &eptr157784[1]
  store i64 %Jzl$_37foldr1, i64* %eptr157784                                         ; *eptr157784 = %Jzl$_37foldr1
  %eptr157783 = getelementptr inbounds i64, i64* %cloptr157782, i64 0                ; &cloptr157782[0]
  %f157785 = ptrtoint void(i64,i64,i64,i64)* @lam157563 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f157785, i64* %eptr157783                                               ; store fptr
  %WD5$_37map1 = ptrtoint i64* %cloptr157782 to i64                                  ; closure cast; i64* -> i64
  %cloptr157786 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157788 = getelementptr inbounds i64, i64* %cloptr157786, i64 1                ; &eptr157788[1]
  %eptr157789 = getelementptr inbounds i64, i64* %cloptr157786, i64 2                ; &eptr157789[2]
  %eptr157790 = getelementptr inbounds i64, i64* %cloptr157786, i64 3                ; &eptr157790[3]
  store i64 %Way$_37foldr, i64* %eptr157788                                          ; *eptr157788 = %Way$_37foldr
  store i64 %Kv8$_37last, i64* %eptr157789                                           ; *eptr157789 = %Kv8$_37last
  store i64 %JOh$_37drop_45right, i64* %eptr157790                                   ; *eptr157790 = %JOh$_37drop_45right
  %eptr157787 = getelementptr inbounds i64, i64* %cloptr157786, i64 0                ; &cloptr157786[0]
  %f157791 = ptrtoint void(i64,i64)* @lam157555 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f157791, i64* %eptr157787                                               ; store fptr
  %kyW$_37map = ptrtoint i64* %cloptr157786 to i64                                   ; closure cast; i64* -> i64
  %cloptr157792 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr157794 = getelementptr inbounds i64, i64* %cloptr157792, i64 1                ; &eptr157794[1]
  %eptr157795 = getelementptr inbounds i64, i64* %cloptr157792, i64 2                ; &eptr157795[2]
  store i64 %EcI$_37foldl1, i64* %eptr157794                                         ; *eptr157794 = %EcI$_37foldl1
  store i64 %O82$_37length, i64* %eptr157795                                         ; *eptr157795 = %O82$_37length
  %eptr157793 = getelementptr inbounds i64, i64* %cloptr157792, i64 0                ; &cloptr157792[0]
  %f157796 = ptrtoint void(i64,i64,i64)* @lam157542 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157796, i64* %eptr157793                                               ; store fptr
  %arg156330 = ptrtoint i64* %cloptr157792 to i64                                    ; closure cast; i64* -> i64
  %cloptr157797 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157799 = getelementptr inbounds i64, i64* %cloptr157797, i64 1                ; &eptr157799[1]
  %eptr157800 = getelementptr inbounds i64, i64* %cloptr157797, i64 2                ; &eptr157800[2]
  %eptr157801 = getelementptr inbounds i64, i64* %cloptr157797, i64 3                ; &eptr157801[3]
  store i64 %Jzl$_37foldr1, i64* %eptr157799                                         ; *eptr157799 = %Jzl$_37foldr1
  store i64 %WD5$_37map1, i64* %eptr157800                                           ; *eptr157800 = %WD5$_37map1
  store i64 %Way$_37foldr, i64* %eptr157801                                          ; *eptr157801 = %Way$_37foldr
  %eptr157798 = getelementptr inbounds i64, i64* %cloptr157797, i64 0                ; &cloptr157797[0]
  %f157802 = ptrtoint void(i64,i64,i64)* @lam157258 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157802, i64* %eptr157798                                               ; store fptr
  %arg156329 = ptrtoint i64* %cloptr157797 to i64                                    ; closure cast; i64* -> i64
  %cloptr157803 = inttoptr i64 %iLn$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr157804 = getelementptr inbounds i64, i64* %cloptr157803, i64 0               ; &cloptr157803[0]
  %f157806 = load i64, i64* %i0ptr157804, align 8                                    ; load; *i0ptr157804
  %fptr157805 = inttoptr i64 %f157806 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157805(i64 %iLn$Ycmb, i64 %arg156330, i64 %arg156329); tail call
  ret void
}


define void @lam157563(i64 %env157564, i64 %cont156070, i64 %Ryr$f, i64 %OwF$lst) {
  %envptr157807 = inttoptr i64 %env157564 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157808 = getelementptr inbounds i64, i64* %envptr157807, i64 1              ; &envptr157807[1]
  %Jzl$_37foldr1 = load i64, i64* %envptr157808, align 8                             ; load; *envptr157808
  %cloptr157809 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr157811 = getelementptr inbounds i64, i64* %cloptr157809, i64 1                ; &eptr157811[1]
  store i64 %Ryr$f, i64* %eptr157811                                                 ; *eptr157811 = %Ryr$f
  %eptr157810 = getelementptr inbounds i64, i64* %cloptr157809, i64 0                ; &cloptr157809[0]
  %f157812 = ptrtoint void(i64,i64,i64,i64)* @lam157561 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f157812, i64* %eptr157810                                               ; store fptr
  %arg156292 = ptrtoint i64* %cloptr157809 to i64                                    ; closure cast; i64* -> i64
  %arg156291 = add i64 0, 0                                                          ; quoted ()
  %cloptr157813 = inttoptr i64 %Jzl$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr157814 = getelementptr inbounds i64, i64* %cloptr157813, i64 0               ; &cloptr157813[0]
  %f157816 = load i64, i64* %i0ptr157814, align 8                                    ; load; *i0ptr157814
  %fptr157815 = inttoptr i64 %f157816 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157815(i64 %Jzl$_37foldr1, i64 %cont156070, i64 %arg156292, i64 %arg156291, i64 %OwF$lst); tail call
  ret void
}


define void @lam157561(i64 %env157562, i64 %cont156071, i64 %Ndf$v, i64 %fT5$r) {
  %envptr157817 = inttoptr i64 %env157562 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157818 = getelementptr inbounds i64, i64* %envptr157817, i64 1              ; &envptr157817[1]
  %Ryr$f = load i64, i64* %envptr157818, align 8                                     ; load; *envptr157818
  %cloptr157819 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr157821 = getelementptr inbounds i64, i64* %cloptr157819, i64 1                ; &eptr157821[1]
  %eptr157822 = getelementptr inbounds i64, i64* %cloptr157819, i64 2                ; &eptr157822[2]
  store i64 %fT5$r, i64* %eptr157821                                                 ; *eptr157821 = %fT5$r
  store i64 %cont156071, i64* %eptr157822                                            ; *eptr157822 = %cont156071
  %eptr157820 = getelementptr inbounds i64, i64* %cloptr157819, i64 0                ; &cloptr157819[0]
  %f157823 = ptrtoint void(i64,i64,i64)* @lam157559 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157823, i64* %eptr157820                                               ; store fptr
  %arg156296 = ptrtoint i64* %cloptr157819 to i64                                    ; closure cast; i64* -> i64
  %cloptr157824 = inttoptr i64 %Ryr$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr157825 = getelementptr inbounds i64, i64* %cloptr157824, i64 0               ; &cloptr157824[0]
  %f157827 = load i64, i64* %i0ptr157825, align 8                                    ; load; *i0ptr157825
  %fptr157826 = inttoptr i64 %f157827 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157826(i64 %Ryr$f, i64 %arg156296, i64 %Ndf$v)      ; tail call
  ret void
}


define void @lam157559(i64 %env157560, i64 %_95156072, i64 %a155971) {
  %envptr157828 = inttoptr i64 %env157560 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157829 = getelementptr inbounds i64, i64* %envptr157828, i64 2              ; &envptr157828[2]
  %cont156071 = load i64, i64* %envptr157829, align 8                                ; load; *envptr157829
  %envptr157830 = inttoptr i64 %env157560 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157831 = getelementptr inbounds i64, i64* %envptr157830, i64 1              ; &envptr157830[1]
  %fT5$r = load i64, i64* %envptr157831, align 8                                     ; load; *envptr157831
  %retprim156073 = call i64 @prim_cons(i64 %a155971, i64 %fT5$r)                     ; call prim_cons
  %arg156301 = add i64 0, 0                                                          ; quoted ()
  %cloptr157832 = inttoptr i64 %cont156071 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157833 = getelementptr inbounds i64, i64* %cloptr157832, i64 0               ; &cloptr157832[0]
  %f157835 = load i64, i64* %i0ptr157833, align 8                                    ; load; *i0ptr157833
  %fptr157834 = inttoptr i64 %f157835 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157834(i64 %cont156071, i64 %arg156301, i64 %retprim156073); tail call
  ret void
}


define void @lam157555(i64 %env157556, i64 %hex$args156075) {
  %envptr157836 = inttoptr i64 %env157556 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157837 = getelementptr inbounds i64, i64* %envptr157836, i64 3              ; &envptr157836[3]
  %JOh$_37drop_45right = load i64, i64* %envptr157837, align 8                       ; load; *envptr157837
  %envptr157838 = inttoptr i64 %env157556 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157839 = getelementptr inbounds i64, i64* %envptr157838, i64 2              ; &envptr157838[2]
  %Kv8$_37last = load i64, i64* %envptr157839, align 8                               ; load; *envptr157839
  %envptr157840 = inttoptr i64 %env157556 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157841 = getelementptr inbounds i64, i64* %envptr157840, i64 1              ; &envptr157840[1]
  %Way$_37foldr = load i64, i64* %envptr157841, align 8                              ; load; *envptr157841
  %cont156074 = call i64 @prim_car(i64 %hex$args156075)                              ; call prim_car
  %hex$args = call i64 @prim_cdr(i64 %hex$args156075)                                ; call prim_cdr
  %AFK$f = call i64 @prim_car(i64 %hex$args)                                         ; call prim_car
  %URG$lsts = call i64 @prim_cdr(i64 %hex$args)                                      ; call prim_cdr
  %arg156308 = add i64 0, 0                                                          ; quoted ()
  %a155975 = call i64 @prim_cons(i64 %arg156308, i64 %URG$lsts)                      ; call prim_cons
  %cloptr157842 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157844 = getelementptr inbounds i64, i64* %cloptr157842, i64 1                ; &eptr157844[1]
  %eptr157845 = getelementptr inbounds i64, i64* %cloptr157842, i64 2                ; &eptr157845[2]
  %eptr157846 = getelementptr inbounds i64, i64* %cloptr157842, i64 3                ; &eptr157846[3]
  store i64 %Kv8$_37last, i64* %eptr157844                                           ; *eptr157844 = %Kv8$_37last
  store i64 %JOh$_37drop_45right, i64* %eptr157845                                   ; *eptr157845 = %JOh$_37drop_45right
  store i64 %AFK$f, i64* %eptr157846                                                 ; *eptr157846 = %AFK$f
  %eptr157843 = getelementptr inbounds i64, i64* %cloptr157842, i64 0                ; &cloptr157842[0]
  %f157847 = ptrtoint void(i64,i64)* @lam157552 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f157847, i64* %eptr157843                                               ; store fptr
  %arg156310 = ptrtoint i64* %cloptr157842 to i64                                    ; closure cast; i64* -> i64
  %a155976 = call i64 @prim_cons(i64 %arg156310, i64 %a155975)                       ; call prim_cons
  %cps_45lst156083 = call i64 @prim_cons(i64 %cont156074, i64 %a155976)              ; call prim_cons
  %cloptr157848 = inttoptr i64 %Way$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr157849 = getelementptr inbounds i64, i64* %cloptr157848, i64 0               ; &cloptr157848[0]
  %f157851 = load i64, i64* %i0ptr157849, align 8                                    ; load; *i0ptr157849
  %fptr157850 = inttoptr i64 %f157851 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157850(i64 %Way$_37foldr, i64 %cps_45lst156083)     ; tail call
  ret void
}


define void @lam157552(i64 %env157553, i64 %wBQ$fargs156077) {
  %envptr157852 = inttoptr i64 %env157553 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157853 = getelementptr inbounds i64, i64* %envptr157852, i64 3              ; &envptr157852[3]
  %AFK$f = load i64, i64* %envptr157853, align 8                                     ; load; *envptr157853
  %envptr157854 = inttoptr i64 %env157553 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157855 = getelementptr inbounds i64, i64* %envptr157854, i64 2              ; &envptr157854[2]
  %JOh$_37drop_45right = load i64, i64* %envptr157855, align 8                       ; load; *envptr157855
  %envptr157856 = inttoptr i64 %env157553 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157857 = getelementptr inbounds i64, i64* %envptr157856, i64 1              ; &envptr157856[1]
  %Kv8$_37last = load i64, i64* %envptr157857, align 8                               ; load; *envptr157857
  %cont156076 = call i64 @prim_car(i64 %wBQ$fargs156077)                             ; call prim_car
  %wBQ$fargs = call i64 @prim_cdr(i64 %wBQ$fargs156077)                              ; call prim_cdr
  %cloptr157858 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr157860 = getelementptr inbounds i64, i64* %cloptr157858, i64 1                ; &eptr157860[1]
  %eptr157861 = getelementptr inbounds i64, i64* %cloptr157858, i64 2                ; &eptr157861[2]
  %eptr157862 = getelementptr inbounds i64, i64* %cloptr157858, i64 3                ; &eptr157862[3]
  %eptr157863 = getelementptr inbounds i64, i64* %cloptr157858, i64 4                ; &eptr157863[4]
  store i64 %cont156076, i64* %eptr157860                                            ; *eptr157860 = %cont156076
  store i64 %wBQ$fargs, i64* %eptr157861                                             ; *eptr157861 = %wBQ$fargs
  store i64 %Kv8$_37last, i64* %eptr157862                                           ; *eptr157862 = %Kv8$_37last
  store i64 %AFK$f, i64* %eptr157863                                                 ; *eptr157863 = %AFK$f
  %eptr157859 = getelementptr inbounds i64, i64* %cloptr157858, i64 0                ; &cloptr157858[0]
  %f157864 = ptrtoint void(i64,i64,i64)* @lam157550 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157864, i64* %eptr157859                                               ; store fptr
  %arg156315 = ptrtoint i64* %cloptr157858 to i64                                    ; closure cast; i64* -> i64
  %arg156313 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr157865 = inttoptr i64 %JOh$_37drop_45right to i64*                          ; closure/env cast; i64 -> i64*
  %i0ptr157866 = getelementptr inbounds i64, i64* %cloptr157865, i64 0               ; &cloptr157865[0]
  %f157868 = load i64, i64* %i0ptr157866, align 8                                    ; load; *i0ptr157866
  %fptr157867 = inttoptr i64 %f157868 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157867(i64 %JOh$_37drop_45right, i64 %arg156315, i64 %wBQ$fargs, i64 %arg156313); tail call
  ret void
}


define void @lam157550(i64 %env157551, i64 %_95156078, i64 %a155972) {
  %envptr157869 = inttoptr i64 %env157551 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157870 = getelementptr inbounds i64, i64* %envptr157869, i64 4              ; &envptr157869[4]
  %AFK$f = load i64, i64* %envptr157870, align 8                                     ; load; *envptr157870
  %envptr157871 = inttoptr i64 %env157551 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157872 = getelementptr inbounds i64, i64* %envptr157871, i64 3              ; &envptr157871[3]
  %Kv8$_37last = load i64, i64* %envptr157872, align 8                               ; load; *envptr157872
  %envptr157873 = inttoptr i64 %env157551 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157874 = getelementptr inbounds i64, i64* %envptr157873, i64 2              ; &envptr157873[2]
  %wBQ$fargs = load i64, i64* %envptr157874, align 8                                 ; load; *envptr157874
  %envptr157875 = inttoptr i64 %env157551 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157876 = getelementptr inbounds i64, i64* %envptr157875, i64 1              ; &envptr157875[1]
  %cont156076 = load i64, i64* %envptr157876, align 8                                ; load; *envptr157876
  %cloptr157877 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157879 = getelementptr inbounds i64, i64* %cloptr157877, i64 1                ; &eptr157879[1]
  %eptr157880 = getelementptr inbounds i64, i64* %cloptr157877, i64 2                ; &eptr157880[2]
  %eptr157881 = getelementptr inbounds i64, i64* %cloptr157877, i64 3                ; &eptr157881[3]
  store i64 %cont156076, i64* %eptr157879                                            ; *eptr157879 = %cont156076
  store i64 %wBQ$fargs, i64* %eptr157880                                             ; *eptr157880 = %wBQ$fargs
  store i64 %Kv8$_37last, i64* %eptr157881                                           ; *eptr157881 = %Kv8$_37last
  %eptr157878 = getelementptr inbounds i64, i64* %cloptr157877, i64 0                ; &cloptr157877[0]
  %f157882 = ptrtoint void(i64,i64,i64)* @lam157548 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157882, i64* %eptr157878                                               ; store fptr
  %arg156318 = ptrtoint i64* %cloptr157877 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst156082 = call i64 @prim_cons(i64 %arg156318, i64 %a155972)               ; call prim_cons
  %cloptr157883 = inttoptr i64 %AFK$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr157884 = getelementptr inbounds i64, i64* %cloptr157883, i64 0               ; &cloptr157883[0]
  %f157886 = load i64, i64* %i0ptr157884, align 8                                    ; load; *i0ptr157884
  %fptr157885 = inttoptr i64 %f157886 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157885(i64 %AFK$f, i64 %cps_45lst156082)            ; tail call
  ret void
}


define void @lam157548(i64 %env157549, i64 %_95156079, i64 %a155973) {
  %envptr157887 = inttoptr i64 %env157549 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157888 = getelementptr inbounds i64, i64* %envptr157887, i64 3              ; &envptr157887[3]
  %Kv8$_37last = load i64, i64* %envptr157888, align 8                               ; load; *envptr157888
  %envptr157889 = inttoptr i64 %env157549 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157890 = getelementptr inbounds i64, i64* %envptr157889, i64 2              ; &envptr157889[2]
  %wBQ$fargs = load i64, i64* %envptr157890, align 8                                 ; load; *envptr157890
  %envptr157891 = inttoptr i64 %env157549 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157892 = getelementptr inbounds i64, i64* %envptr157891, i64 1              ; &envptr157891[1]
  %cont156076 = load i64, i64* %envptr157892, align 8                                ; load; *envptr157892
  %cloptr157893 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr157895 = getelementptr inbounds i64, i64* %cloptr157893, i64 1                ; &eptr157895[1]
  %eptr157896 = getelementptr inbounds i64, i64* %cloptr157893, i64 2                ; &eptr157896[2]
  store i64 %a155973, i64* %eptr157895                                               ; *eptr157895 = %a155973
  store i64 %cont156076, i64* %eptr157896                                            ; *eptr157896 = %cont156076
  %eptr157894 = getelementptr inbounds i64, i64* %cloptr157893, i64 0                ; &cloptr157893[0]
  %f157897 = ptrtoint void(i64,i64,i64)* @lam157546 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157897, i64* %eptr157894                                               ; store fptr
  %arg156320 = ptrtoint i64* %cloptr157893 to i64                                    ; closure cast; i64* -> i64
  %cloptr157898 = inttoptr i64 %Kv8$_37last to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr157899 = getelementptr inbounds i64, i64* %cloptr157898, i64 0               ; &cloptr157898[0]
  %f157901 = load i64, i64* %i0ptr157899, align 8                                    ; load; *i0ptr157899
  %fptr157900 = inttoptr i64 %f157901 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157900(i64 %Kv8$_37last, i64 %arg156320, i64 %wBQ$fargs); tail call
  ret void
}


define void @lam157546(i64 %env157547, i64 %_95156080, i64 %a155974) {
  %envptr157902 = inttoptr i64 %env157547 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157903 = getelementptr inbounds i64, i64* %envptr157902, i64 2              ; &envptr157902[2]
  %cont156076 = load i64, i64* %envptr157903, align 8                                ; load; *envptr157903
  %envptr157904 = inttoptr i64 %env157547 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157905 = getelementptr inbounds i64, i64* %envptr157904, i64 1              ; &envptr157904[1]
  %a155973 = load i64, i64* %envptr157905, align 8                                   ; load; *envptr157905
  %retprim156081 = call i64 @prim_cons(i64 %a155973, i64 %a155974)                   ; call prim_cons
  %arg156325 = add i64 0, 0                                                          ; quoted ()
  %cloptr157906 = inttoptr i64 %cont156076 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157907 = getelementptr inbounds i64, i64* %cloptr157906, i64 0               ; &cloptr157906[0]
  %f157909 = load i64, i64* %i0ptr157907, align 8                                    ; load; *i0ptr157907
  %fptr157908 = inttoptr i64 %f157909 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157908(i64 %cont156076, i64 %arg156325, i64 %retprim156081); tail call
  ret void
}


define void @lam157542(i64 %env157543, i64 %_95156084, i64 %dNp$_37foldl) {
  %envptr157910 = inttoptr i64 %env157543 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157911 = getelementptr inbounds i64, i64* %envptr157910, i64 2              ; &envptr157910[2]
  %O82$_37length = load i64, i64* %envptr157911, align 8                             ; load; *envptr157911
  %envptr157912 = inttoptr i64 %env157543 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157913 = getelementptr inbounds i64, i64* %envptr157912, i64 1              ; &envptr157912[1]
  %EcI$_37foldl1 = load i64, i64* %envptr157913, align 8                             ; load; *envptr157913
  %cloptr157914 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157915 = getelementptr inbounds i64, i64* %cloptr157914, i64 0                ; &cloptr157914[0]
  %f157916 = ptrtoint void(i64,i64,i64,i64)* @lam157540 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f157916, i64* %eptr157915                                               ; store fptr
  %At0$_37_62 = ptrtoint i64* %cloptr157914 to i64                                   ; closure cast; i64* -> i64
  %cloptr157917 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157918 = getelementptr inbounds i64, i64* %cloptr157917, i64 0                ; &cloptr157917[0]
  %f157919 = ptrtoint void(i64,i64,i64,i64)* @lam157537 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f157919, i64* %eptr157918                                               ; store fptr
  %qYq$_37_62_61 = ptrtoint i64* %cloptr157917 to i64                                ; closure cast; i64* -> i64
  %arg156345 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg156344 = add i64 0, 0                                                          ; quoted ()
  %QHk$_37append = call i64 @prim_make_45vector(i64 %arg156345, i64 %arg156344)      ; call prim_make_45vector
  %arg156347 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg156346 = add i64 0, 0                                                          ; quoted ()
  %gbK$_37append2 = call i64 @prim_make_45vector(i64 %arg156347, i64 %arg156346)     ; call prim_make_45vector
  %arg156349 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr157920 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr157922 = getelementptr inbounds i64, i64* %cloptr157920, i64 1                ; &eptr157922[1]
  store i64 %gbK$_37append2, i64* %eptr157922                                        ; *eptr157922 = %gbK$_37append2
  %eptr157921 = getelementptr inbounds i64, i64* %cloptr157920, i64 0                ; &cloptr157920[0]
  %f157923 = ptrtoint void(i64,i64,i64,i64)* @lam157529 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f157923, i64* %eptr157921                                               ; store fptr
  %arg156348 = ptrtoint i64* %cloptr157920 to i64                                    ; closure cast; i64* -> i64
  %wZ9$_950 = call i64 @prim_vector_45set_33(i64 %gbK$_37append2, i64 %arg156349, i64 %arg156348); call prim_vector_45set_33
  %arg156369 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr157924 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr157926 = getelementptr inbounds i64, i64* %cloptr157924, i64 1                ; &eptr157926[1]
  %eptr157927 = getelementptr inbounds i64, i64* %cloptr157924, i64 2                ; &eptr157927[2]
  store i64 %QHk$_37append, i64* %eptr157926                                         ; *eptr157926 = %QHk$_37append
  store i64 %gbK$_37append2, i64* %eptr157927                                        ; *eptr157927 = %gbK$_37append2
  %eptr157925 = getelementptr inbounds i64, i64* %cloptr157924, i64 0                ; &cloptr157924[0]
  %f157928 = ptrtoint void(i64,i64)* @lam157521 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f157928, i64* %eptr157925                                               ; store fptr
  %arg156368 = ptrtoint i64* %cloptr157924 to i64                                    ; closure cast; i64* -> i64
  %RQW$_951 = call i64 @prim_vector_45set_33(i64 %QHk$_37append, i64 %arg156369, i64 %arg156368); call prim_vector_45set_33
  %arg156389 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim156177 = call i64 @prim_vector_45ref(i64 %QHk$_37append, i64 %arg156389)   ; call prim_vector_45ref
  %cloptr157929 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157931 = getelementptr inbounds i64, i64* %cloptr157929, i64 1                ; &eptr157931[1]
  %eptr157932 = getelementptr inbounds i64, i64* %cloptr157929, i64 2                ; &eptr157932[2]
  %eptr157933 = getelementptr inbounds i64, i64* %cloptr157929, i64 3                ; &eptr157933[3]
  store i64 %At0$_37_62, i64* %eptr157931                                            ; *eptr157931 = %At0$_37_62
  store i64 %EcI$_37foldl1, i64* %eptr157932                                         ; *eptr157932 = %EcI$_37foldl1
  store i64 %O82$_37length, i64* %eptr157933                                         ; *eptr157933 = %O82$_37length
  %eptr157930 = getelementptr inbounds i64, i64* %cloptr157929, i64 0                ; &cloptr157929[0]
  %f157934 = ptrtoint void(i64,i64,i64)* @lam157512 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157934, i64* %eptr157930                                               ; store fptr
  %arg156393 = ptrtoint i64* %cloptr157929 to i64                                    ; closure cast; i64* -> i64
  %arg156392 = add i64 0, 0                                                          ; quoted ()
  %cloptr157935 = inttoptr i64 %arg156393 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157936 = getelementptr inbounds i64, i64* %cloptr157935, i64 0               ; &cloptr157935[0]
  %f157938 = load i64, i64* %i0ptr157936, align 8                                    ; load; *i0ptr157936
  %fptr157937 = inttoptr i64 %f157938 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157937(i64 %arg156393, i64 %arg156392, i64 %retprim156177); tail call
  ret void
}


define void @lam157540(i64 %env157541, i64 %cont156085, i64 %XIm$a, i64 %IE5$b) {
  %a155984 = call i64 @prim__60_61(i64 %XIm$a, i64 %IE5$b)                           ; call prim__60_61
  %retprim156086 = call i64 @prim_not(i64 %a155984)                                  ; call prim_not
  %arg156336 = add i64 0, 0                                                          ; quoted ()
  %cloptr157939 = inttoptr i64 %cont156085 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157940 = getelementptr inbounds i64, i64* %cloptr157939, i64 0               ; &cloptr157939[0]
  %f157942 = load i64, i64* %i0ptr157940, align 8                                    ; load; *i0ptr157940
  %fptr157941 = inttoptr i64 %f157942 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157941(i64 %cont156085, i64 %arg156336, i64 %retprim156086); tail call
  ret void
}


define void @lam157537(i64 %env157538, i64 %cont156087, i64 %Grg$a, i64 %jKw$b) {
  %a155985 = call i64 @prim__60(i64 %Grg$a, i64 %jKw$b)                              ; call prim__60
  %retprim156088 = call i64 @prim_not(i64 %a155985)                                  ; call prim_not
  %arg156342 = add i64 0, 0                                                          ; quoted ()
  %cloptr157943 = inttoptr i64 %cont156087 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157944 = getelementptr inbounds i64, i64* %cloptr157943, i64 0               ; &cloptr157943[0]
  %f157946 = load i64, i64* %i0ptr157944, align 8                                    ; load; *i0ptr157944
  %fptr157945 = inttoptr i64 %f157946 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157945(i64 %cont156087, i64 %arg156342, i64 %retprim156088); tail call
  ret void
}


define void @lam157529(i64 %env157530, i64 %cont156170, i64 %IjD$ls0, i64 %C58$ls1) {
  %envptr157947 = inttoptr i64 %env157530 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157948 = getelementptr inbounds i64, i64* %envptr157947, i64 1              ; &envptr157947[1]
  %gbK$_37append2 = load i64, i64* %envptr157948, align 8                            ; load; *envptr157948
  %a155986 = call i64 @prim_null_63(i64 %IjD$ls0)                                    ; call prim_null_63
  %cmp157949 = icmp eq i64 %a155986, 15                                              ; false?
  br i1 %cmp157949, label %else157951, label %then157950                             ; if

then157950:
  %arg156353 = add i64 0, 0                                                          ; quoted ()
  %cloptr157952 = inttoptr i64 %cont156170 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157953 = getelementptr inbounds i64, i64* %cloptr157952, i64 0               ; &cloptr157952[0]
  %f157955 = load i64, i64* %i0ptr157953, align 8                                    ; load; *i0ptr157953
  %fptr157954 = inttoptr i64 %f157955 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157954(i64 %cont156170, i64 %arg156353, i64 %C58$ls1); tail call
  ret void

else157951:
  %a155987 = call i64 @prim_car(i64 %IjD$ls0)                                        ; call prim_car
  %arg156356 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a155988 = call i64 @prim_vector_45ref(i64 %gbK$_37append2, i64 %arg156356)        ; call prim_vector_45ref
  %a155989 = call i64 @prim_cdr(i64 %IjD$ls0)                                        ; call prim_cdr
  %cloptr157956 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr157958 = getelementptr inbounds i64, i64* %cloptr157956, i64 1                ; &eptr157958[1]
  %eptr157959 = getelementptr inbounds i64, i64* %cloptr157956, i64 2                ; &eptr157959[2]
  store i64 %cont156170, i64* %eptr157958                                            ; *eptr157958 = %cont156170
  store i64 %a155987, i64* %eptr157959                                               ; *eptr157959 = %a155987
  %eptr157957 = getelementptr inbounds i64, i64* %cloptr157956, i64 0                ; &cloptr157956[0]
  %f157960 = ptrtoint void(i64,i64,i64)* @lam157526 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157960, i64* %eptr157957                                               ; store fptr
  %arg156361 = ptrtoint i64* %cloptr157956 to i64                                    ; closure cast; i64* -> i64
  %cloptr157961 = inttoptr i64 %a155988 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr157962 = getelementptr inbounds i64, i64* %cloptr157961, i64 0               ; &cloptr157961[0]
  %f157964 = load i64, i64* %i0ptr157962, align 8                                    ; load; *i0ptr157962
  %fptr157963 = inttoptr i64 %f157964 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157963(i64 %a155988, i64 %arg156361, i64 %a155989, i64 %C58$ls1); tail call
  ret void
}


define void @lam157526(i64 %env157527, i64 %_95156171, i64 %a155990) {
  %envptr157965 = inttoptr i64 %env157527 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157966 = getelementptr inbounds i64, i64* %envptr157965, i64 2              ; &envptr157965[2]
  %a155987 = load i64, i64* %envptr157966, align 8                                   ; load; *envptr157966
  %envptr157967 = inttoptr i64 %env157527 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157968 = getelementptr inbounds i64, i64* %envptr157967, i64 1              ; &envptr157967[1]
  %cont156170 = load i64, i64* %envptr157968, align 8                                ; load; *envptr157968
  %retprim156172 = call i64 @prim_cons(i64 %a155987, i64 %a155990)                   ; call prim_cons
  %arg156366 = add i64 0, 0                                                          ; quoted ()
  %cloptr157969 = inttoptr i64 %cont156170 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157970 = getelementptr inbounds i64, i64* %cloptr157969, i64 0               ; &cloptr157969[0]
  %f157972 = load i64, i64* %i0ptr157970, align 8                                    ; load; *i0ptr157970
  %fptr157971 = inttoptr i64 %f157972 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157971(i64 %cont156170, i64 %arg156366, i64 %retprim156172); tail call
  ret void
}


define void @lam157521(i64 %env157522, i64 %IRK$xs156174) {
  %envptr157973 = inttoptr i64 %env157522 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157974 = getelementptr inbounds i64, i64* %envptr157973, i64 2              ; &envptr157973[2]
  %gbK$_37append2 = load i64, i64* %envptr157974, align 8                            ; load; *envptr157974
  %envptr157975 = inttoptr i64 %env157522 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157976 = getelementptr inbounds i64, i64* %envptr157975, i64 1              ; &envptr157975[1]
  %QHk$_37append = load i64, i64* %envptr157976, align 8                             ; load; *envptr157976
  %cont156173 = call i64 @prim_car(i64 %IRK$xs156174)                                ; call prim_car
  %IRK$xs = call i64 @prim_cdr(i64 %IRK$xs156174)                                    ; call prim_cdr
  %a155991 = call i64 @prim_null_63(i64 %IRK$xs)                                     ; call prim_null_63
  %cmp157977 = icmp eq i64 %a155991, 15                                              ; false?
  br i1 %cmp157977, label %else157979, label %then157978                             ; if

then157978:
  %arg156375 = add i64 0, 0                                                          ; quoted ()
  %arg156374 = add i64 0, 0                                                          ; quoted ()
  %cloptr157980 = inttoptr i64 %cont156173 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157981 = getelementptr inbounds i64, i64* %cloptr157980, i64 0               ; &cloptr157980[0]
  %f157983 = load i64, i64* %i0ptr157981, align 8                                    ; load; *i0ptr157981
  %fptr157982 = inttoptr i64 %f157983 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157982(i64 %cont156173, i64 %arg156375, i64 %arg156374); tail call
  ret void

else157979:
  %Jzv$hd = call i64 @prim_car(i64 %IRK$xs)                                          ; call prim_car
  %eta$tl = call i64 @prim_cdr(i64 %IRK$xs)                                          ; call prim_cdr
  %arg156379 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a155992 = call i64 @prim_vector_45ref(i64 %QHk$_37append, i64 %arg156379)         ; call prim_vector_45ref
  %cloptr157984 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157986 = getelementptr inbounds i64, i64* %cloptr157984, i64 1                ; &eptr157986[1]
  %eptr157987 = getelementptr inbounds i64, i64* %cloptr157984, i64 2                ; &eptr157987[2]
  %eptr157988 = getelementptr inbounds i64, i64* %cloptr157984, i64 3                ; &eptr157988[3]
  store i64 %gbK$_37append2, i64* %eptr157986                                        ; *eptr157986 = %gbK$_37append2
  store i64 %Jzv$hd, i64* %eptr157987                                                ; *eptr157987 = %Jzv$hd
  store i64 %cont156173, i64* %eptr157988                                            ; *eptr157988 = %cont156173
  %eptr157985 = getelementptr inbounds i64, i64* %cloptr157984, i64 0                ; &cloptr157984[0]
  %f157989 = ptrtoint void(i64,i64,i64)* @lam157518 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157989, i64* %eptr157985                                               ; store fptr
  %arg156382 = ptrtoint i64* %cloptr157984 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst156176 = call i64 @prim_cons(i64 %arg156382, i64 %eta$tl)                ; call prim_cons
  %cloptr157990 = inttoptr i64 %a155992 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr157991 = getelementptr inbounds i64, i64* %cloptr157990, i64 0               ; &cloptr157990[0]
  %f157993 = load i64, i64* %i0ptr157991, align 8                                    ; load; *i0ptr157991
  %fptr157992 = inttoptr i64 %f157993 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157992(i64 %a155992, i64 %cps_45lst156176)          ; tail call
  ret void
}


define void @lam157518(i64 %env157519, i64 %_95156175, i64 %Jsz$result1) {
  %envptr157994 = inttoptr i64 %env157519 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157995 = getelementptr inbounds i64, i64* %envptr157994, i64 3              ; &envptr157994[3]
  %cont156173 = load i64, i64* %envptr157995, align 8                                ; load; *envptr157995
  %envptr157996 = inttoptr i64 %env157519 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157997 = getelementptr inbounds i64, i64* %envptr157996, i64 2              ; &envptr157996[2]
  %Jzv$hd = load i64, i64* %envptr157997, align 8                                    ; load; *envptr157997
  %envptr157998 = inttoptr i64 %env157519 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157999 = getelementptr inbounds i64, i64* %envptr157998, i64 1              ; &envptr157998[1]
  %gbK$_37append2 = load i64, i64* %envptr157999, align 8                            ; load; *envptr157999
  %arg156383 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a155993 = call i64 @prim_vector_45ref(i64 %gbK$_37append2, i64 %arg156383)        ; call prim_vector_45ref
  %cloptr158000 = inttoptr i64 %a155993 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr158001 = getelementptr inbounds i64, i64* %cloptr158000, i64 0               ; &cloptr158000[0]
  %f158003 = load i64, i64* %i0ptr158001, align 8                                    ; load; *i0ptr158001
  %fptr158002 = inttoptr i64 %f158003 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158002(i64 %a155993, i64 %cont156173, i64 %Jzv$hd, i64 %Jsz$result1); tail call
  ret void
}


define void @lam157512(i64 %env157513, i64 %_95156089, i64 %nF8$_37append) {
  %envptr158004 = inttoptr i64 %env157513 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158005 = getelementptr inbounds i64, i64* %envptr158004, i64 3              ; &envptr158004[3]
  %O82$_37length = load i64, i64* %envptr158005, align 8                             ; load; *envptr158005
  %envptr158006 = inttoptr i64 %env157513 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158007 = getelementptr inbounds i64, i64* %envptr158006, i64 2              ; &envptr158006[2]
  %EcI$_37foldl1 = load i64, i64* %envptr158007, align 8                             ; load; *envptr158007
  %envptr158008 = inttoptr i64 %env157513 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158009 = getelementptr inbounds i64, i64* %envptr158008, i64 1              ; &envptr158008[1]
  %At0$_37_62 = load i64, i64* %envptr158009, align 8                                ; load; *envptr158009
  %cloptr158010 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158011 = getelementptr inbounds i64, i64* %cloptr158010, i64 0                ; &cloptr158010[0]
  %f158012 = ptrtoint void(i64,i64,i64)* @lam157510 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158012, i64* %eptr158011                                               ; store fptr
  %L9P$_37list_63 = ptrtoint i64* %cloptr158010 to i64                               ; closure cast; i64* -> i64
  %cloptr158013 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158014 = getelementptr inbounds i64, i64* %cloptr158013, i64 0                ; &cloptr158013[0]
  %f158015 = ptrtoint void(i64,i64,i64,i64)* @lam157470 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f158015, i64* %eptr158014                                               ; store fptr
  %xBM$_37drop = ptrtoint i64* %cloptr158013 to i64                                  ; closure cast; i64* -> i64
  %cloptr158016 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158017 = getelementptr inbounds i64, i64* %cloptr158016, i64 0                ; &cloptr158016[0]
  %f158018 = ptrtoint void(i64,i64,i64,i64)* @lam157430 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f158018, i64* %eptr158017                                               ; store fptr
  %akS$_37memv = ptrtoint i64* %cloptr158016 to i64                                  ; closure cast; i64* -> i64
  %cloptr158019 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr158021 = getelementptr inbounds i64, i64* %cloptr158019, i64 1                ; &eptr158021[1]
  store i64 %EcI$_37foldl1, i64* %eptr158021                                         ; *eptr158021 = %EcI$_37foldl1
  %eptr158020 = getelementptr inbounds i64, i64* %cloptr158019, i64 0                ; &cloptr158019[0]
  %f158022 = ptrtoint void(i64,i64)* @lam157399 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f158022, i64* %eptr158020                                               ; store fptr
  %QMj$_37_47 = ptrtoint i64* %cloptr158019 to i64                                   ; closure cast; i64* -> i64
  %cloptr158023 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158024 = getelementptr inbounds i64, i64* %cloptr158023, i64 0                ; &cloptr158023[0]
  %f158025 = ptrtoint void(i64,i64,i64)* @lam157391 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158025, i64* %eptr158024                                               ; store fptr
  %oUi$_37first = ptrtoint i64* %cloptr158023 to i64                                 ; closure cast; i64* -> i64
  %cloptr158026 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158027 = getelementptr inbounds i64, i64* %cloptr158026, i64 0                ; &cloptr158026[0]
  %f158028 = ptrtoint void(i64,i64,i64)* @lam157388 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158028, i64* %eptr158027                                               ; store fptr
  %REl$_37second = ptrtoint i64* %cloptr158026 to i64                                ; closure cast; i64* -> i64
  %cloptr158029 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158030 = getelementptr inbounds i64, i64* %cloptr158029, i64 0                ; &cloptr158029[0]
  %f158031 = ptrtoint void(i64,i64,i64)* @lam157385 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158031, i64* %eptr158030                                               ; store fptr
  %nUC$_37third = ptrtoint i64* %cloptr158029 to i64                                 ; closure cast; i64* -> i64
  %cloptr158032 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158033 = getelementptr inbounds i64, i64* %cloptr158032, i64 0                ; &cloptr158032[0]
  %f158034 = ptrtoint void(i64,i64,i64)* @lam157382 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158034, i64* %eptr158033                                               ; store fptr
  %EBO$_37fourth = ptrtoint i64* %cloptr158032 to i64                                ; closure cast; i64* -> i64
  %cloptr158035 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158036 = getelementptr inbounds i64, i64* %cloptr158035, i64 0                ; &cloptr158035[0]
  %f158037 = ptrtoint void(i64,i64,i64)* @lam157379 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158037, i64* %eptr158036                                               ; store fptr
  %Sth$promise_63 = ptrtoint i64* %cloptr158035 to i64                               ; closure cast; i64* -> i64
  %cloptr158038 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158039 = getelementptr inbounds i64, i64* %cloptr158038, i64 0                ; &cloptr158038[0]
  %f158040 = ptrtoint void(i64,i64)* @lam157373 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f158040, i64* %eptr158039                                               ; store fptr
  %arg156655 = ptrtoint i64* %cloptr158038 to i64                                    ; closure cast; i64* -> i64
  %cloptr158041 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158043 = getelementptr inbounds i64, i64* %cloptr158041, i64 1                ; &eptr158043[1]
  %eptr158044 = getelementptr inbounds i64, i64* %cloptr158041, i64 2                ; &eptr158044[2]
  %eptr158045 = getelementptr inbounds i64, i64* %cloptr158041, i64 3                ; &eptr158045[3]
  store i64 %xBM$_37drop, i64* %eptr158043                                           ; *eptr158043 = %xBM$_37drop
  store i64 %At0$_37_62, i64* %eptr158044                                            ; *eptr158044 = %At0$_37_62
  store i64 %O82$_37length, i64* %eptr158045                                         ; *eptr158045 = %O82$_37length
  %eptr158042 = getelementptr inbounds i64, i64* %cloptr158041, i64 0                ; &cloptr158041[0]
  %f158046 = ptrtoint void(i64,i64,i64)* @lam157370 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158046, i64* %eptr158042                                               ; store fptr
  %arg156654 = ptrtoint i64* %cloptr158041 to i64                                    ; closure cast; i64* -> i64
  %rva157121 = add i64 0, 0                                                          ; quoted ()
  %rva157120 = call i64 @prim_cons(i64 %arg156654, i64 %rva157121)                   ; call prim_cons
  %cloptr158047 = inttoptr i64 %arg156655 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158048 = getelementptr inbounds i64, i64* %cloptr158047, i64 0               ; &cloptr158047[0]
  %f158050 = load i64, i64* %i0ptr158048, align 8                                    ; load; *i0ptr158048
  %fptr158049 = inttoptr i64 %f158050 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158049(i64 %arg156655, i64 %rva157120)              ; tail call
  ret void
}


define void @lam157510(i64 %env157511, i64 %cont156090, i64 %Zy6$a) {
  %arg156395 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %PtU$a = call i64 @prim_make_45vector(i64 %arg156395, i64 %Zy6$a)                  ; call prim_make_45vector
  %cloptr158051 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158052 = getelementptr inbounds i64, i64* %cloptr158051, i64 0                ; &cloptr158051[0]
  %f158053 = ptrtoint void(i64,i64,i64)* @lam157507 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158053, i64* %eptr158052                                               ; store fptr
  %arg156398 = ptrtoint i64* %cloptr158051 to i64                                    ; closure cast; i64* -> i64
  %cloptr158054 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr158056 = getelementptr inbounds i64, i64* %cloptr158054, i64 1                ; &eptr158056[1]
  %eptr158057 = getelementptr inbounds i64, i64* %cloptr158054, i64 2                ; &eptr158057[2]
  store i64 %cont156090, i64* %eptr158056                                            ; *eptr158056 = %cont156090
  store i64 %PtU$a, i64* %eptr158057                                                 ; *eptr158057 = %PtU$a
  %eptr158055 = getelementptr inbounds i64, i64* %cloptr158054, i64 0                ; &cloptr158054[0]
  %f158058 = ptrtoint void(i64,i64,i64)* @lam157504 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158058, i64* %eptr158055                                               ; store fptr
  %arg156397 = ptrtoint i64* %cloptr158054 to i64                                    ; closure cast; i64* -> i64
  %cloptr158059 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr158061 = getelementptr inbounds i64, i64* %cloptr158059, i64 1                ; &eptr158061[1]
  %eptr158062 = getelementptr inbounds i64, i64* %cloptr158059, i64 2                ; &eptr158062[2]
  store i64 %cont156090, i64* %eptr158061                                            ; *eptr158061 = %cont156090
  store i64 %PtU$a, i64* %eptr158062                                                 ; *eptr158062 = %PtU$a
  %eptr158060 = getelementptr inbounds i64, i64* %cloptr158059, i64 0                ; &cloptr158059[0]
  %f158063 = ptrtoint void(i64,i64,i64)* @lam157487 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158063, i64* %eptr158060                                               ; store fptr
  %arg156396 = ptrtoint i64* %cloptr158059 to i64                                    ; closure cast; i64* -> i64
  %cloptr158064 = inttoptr i64 %arg156398 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158065 = getelementptr inbounds i64, i64* %cloptr158064, i64 0               ; &cloptr158064[0]
  %f158067 = load i64, i64* %i0ptr158065, align 8                                    ; load; *i0ptr158065
  %fptr158066 = inttoptr i64 %f158067 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158066(i64 %arg156398, i64 %arg156397, i64 %arg156396); tail call
  ret void
}


define void @lam157507(i64 %env157508, i64 %cont156096, i64 %fDq$k) {
  %arg156400 = add i64 0, 0                                                          ; quoted ()
  %cloptr158068 = inttoptr i64 %cont156096 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158069 = getelementptr inbounds i64, i64* %cloptr158068, i64 0               ; &cloptr158068[0]
  %f158071 = load i64, i64* %i0ptr158069, align 8                                    ; load; *i0ptr158069
  %fptr158070 = inttoptr i64 %f158071 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158070(i64 %cont156096, i64 %arg156400, i64 %fDq$k) ; tail call
  ret void
}


define void @lam157504(i64 %env157505, i64 %_95156091, i64 %AOX$cc) {
  %envptr158072 = inttoptr i64 %env157505 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158073 = getelementptr inbounds i64, i64* %envptr158072, i64 2              ; &envptr158072[2]
  %PtU$a = load i64, i64* %envptr158073, align 8                                     ; load; *envptr158073
  %envptr158074 = inttoptr i64 %env157505 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158075 = getelementptr inbounds i64, i64* %envptr158074, i64 1              ; &envptr158074[1]
  %cont156090 = load i64, i64* %envptr158075, align 8                                ; load; *envptr158075
  %arg156402 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a155994 = call i64 @prim_vector_45ref(i64 %PtU$a, i64 %arg156402)                 ; call prim_vector_45ref
  %a155995 = call i64 @prim_null_63(i64 %a155994)                                    ; call prim_null_63
  %cmp158076 = icmp eq i64 %a155995, 15                                              ; false?
  br i1 %cmp158076, label %else158078, label %then158077                             ; if

then158077:
  %arg156406 = add i64 0, 0                                                          ; quoted ()
  %arg156405 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr158079 = inttoptr i64 %cont156090 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158080 = getelementptr inbounds i64, i64* %cloptr158079, i64 0               ; &cloptr158079[0]
  %f158082 = load i64, i64* %i0ptr158080, align 8                                    ; load; *i0ptr158080
  %fptr158081 = inttoptr i64 %f158082 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158081(i64 %cont156090, i64 %arg156406, i64 %arg156405); tail call
  ret void

else158078:
  %arg156408 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a155996 = call i64 @prim_vector_45ref(i64 %PtU$a, i64 %arg156408)                 ; call prim_vector_45ref
  %a155997 = call i64 @prim_cons_63(i64 %a155996)                                    ; call prim_cons_63
  %cmp158083 = icmp eq i64 %a155997, 15                                              ; false?
  br i1 %cmp158083, label %else158085, label %then158084                             ; if

then158084:
  %arg156411 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a155998 = call i64 @prim_vector_45ref(i64 %PtU$a, i64 %arg156411)                 ; call prim_vector_45ref
  %retprim156095 = call i64 @prim_cdr(i64 %a155998)                                  ; call prim_cdr
  %cloptr158086 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158088 = getelementptr inbounds i64, i64* %cloptr158086, i64 1                ; &eptr158088[1]
  %eptr158089 = getelementptr inbounds i64, i64* %cloptr158086, i64 2                ; &eptr158089[2]
  %eptr158090 = getelementptr inbounds i64, i64* %cloptr158086, i64 3                ; &eptr158090[3]
  store i64 %cont156090, i64* %eptr158088                                            ; *eptr158088 = %cont156090
  store i64 %PtU$a, i64* %eptr158089                                                 ; *eptr158089 = %PtU$a
  store i64 %AOX$cc, i64* %eptr158090                                                ; *eptr158090 = %AOX$cc
  %eptr158087 = getelementptr inbounds i64, i64* %cloptr158086, i64 0                ; &cloptr158086[0]
  %f158091 = ptrtoint void(i64,i64,i64)* @lam157497 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158091, i64* %eptr158087                                               ; store fptr
  %arg156416 = ptrtoint i64* %cloptr158086 to i64                                    ; closure cast; i64* -> i64
  %arg156415 = add i64 0, 0                                                          ; quoted ()
  %cloptr158092 = inttoptr i64 %arg156416 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158093 = getelementptr inbounds i64, i64* %cloptr158092, i64 0               ; &cloptr158092[0]
  %f158095 = load i64, i64* %i0ptr158093, align 8                                    ; load; *i0ptr158093
  %fptr158094 = inttoptr i64 %f158095 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158094(i64 %arg156416, i64 %arg156415, i64 %retprim156095); tail call
  ret void

else158085:
  %arg156430 = add i64 0, 0                                                          ; quoted ()
  %arg156429 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr158096 = inttoptr i64 %cont156090 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158097 = getelementptr inbounds i64, i64* %cloptr158096, i64 0               ; &cloptr158096[0]
  %f158099 = load i64, i64* %i0ptr158097, align 8                                    ; load; *i0ptr158097
  %fptr158098 = inttoptr i64 %f158099 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158098(i64 %cont156090, i64 %arg156430, i64 %arg156429); tail call
  ret void
}


define void @lam157497(i64 %env157498, i64 %_95156092, i64 %A7Z$b) {
  %envptr158100 = inttoptr i64 %env157498 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158101 = getelementptr inbounds i64, i64* %envptr158100, i64 3              ; &envptr158100[3]
  %AOX$cc = load i64, i64* %envptr158101, align 8                                    ; load; *envptr158101
  %envptr158102 = inttoptr i64 %env157498 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158103 = getelementptr inbounds i64, i64* %envptr158102, i64 2              ; &envptr158102[2]
  %PtU$a = load i64, i64* %envptr158103, align 8                                     ; load; *envptr158103
  %envptr158104 = inttoptr i64 %env157498 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158105 = getelementptr inbounds i64, i64* %envptr158104, i64 1              ; &envptr158104[1]
  %cont156090 = load i64, i64* %envptr158105, align 8                                ; load; *envptr158105
  %arg156417 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a155999 = call i64 @prim_vector_45ref(i64 %PtU$a, i64 %arg156417)                 ; call prim_vector_45ref
  %a156000 = call i64 @prim_cdr(i64 %a155999)                                        ; call prim_cdr
  %arg156421 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim156094 = call i64 @prim_vector_45set_33(i64 %PtU$a, i64 %arg156421, i64 %a156000); call prim_vector_45set_33
  %cloptr158106 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr158108 = getelementptr inbounds i64, i64* %cloptr158106, i64 1                ; &eptr158108[1]
  %eptr158109 = getelementptr inbounds i64, i64* %cloptr158106, i64 2                ; &eptr158109[2]
  store i64 %cont156090, i64* %eptr158108                                            ; *eptr158108 = %cont156090
  store i64 %AOX$cc, i64* %eptr158109                                                ; *eptr158109 = %AOX$cc
  %eptr158107 = getelementptr inbounds i64, i64* %cloptr158106, i64 0                ; &cloptr158106[0]
  %f158110 = ptrtoint void(i64,i64,i64)* @lam157493 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158110, i64* %eptr158107                                               ; store fptr
  %arg156425 = ptrtoint i64* %cloptr158106 to i64                                    ; closure cast; i64* -> i64
  %arg156424 = add i64 0, 0                                                          ; quoted ()
  %cloptr158111 = inttoptr i64 %arg156425 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158112 = getelementptr inbounds i64, i64* %cloptr158111, i64 0               ; &cloptr158111[0]
  %f158114 = load i64, i64* %i0ptr158112, align 8                                    ; load; *i0ptr158112
  %fptr158113 = inttoptr i64 %f158114 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158113(i64 %arg156425, i64 %arg156424, i64 %retprim156094); tail call
  ret void
}


define void @lam157493(i64 %env157494, i64 %_95156093, i64 %t9F$_950) {
  %envptr158115 = inttoptr i64 %env157494 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158116 = getelementptr inbounds i64, i64* %envptr158115, i64 2              ; &envptr158115[2]
  %AOX$cc = load i64, i64* %envptr158116, align 8                                    ; load; *envptr158116
  %envptr158117 = inttoptr i64 %env157494 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158118 = getelementptr inbounds i64, i64* %envptr158117, i64 1              ; &envptr158117[1]
  %cont156090 = load i64, i64* %envptr158118, align 8                                ; load; *envptr158118
  %cloptr158119 = inttoptr i64 %AOX$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr158120 = getelementptr inbounds i64, i64* %cloptr158119, i64 0               ; &cloptr158119[0]
  %f158122 = load i64, i64* %i0ptr158120, align 8                                    ; load; *i0ptr158120
  %fptr158121 = inttoptr i64 %f158122 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158121(i64 %AOX$cc, i64 %cont156090, i64 %AOX$cc)   ; tail call
  ret void
}


define void @lam157487(i64 %env157488, i64 %_95156091, i64 %AOX$cc) {
  %envptr158123 = inttoptr i64 %env157488 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158124 = getelementptr inbounds i64, i64* %envptr158123, i64 2              ; &envptr158123[2]
  %PtU$a = load i64, i64* %envptr158124, align 8                                     ; load; *envptr158124
  %envptr158125 = inttoptr i64 %env157488 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158126 = getelementptr inbounds i64, i64* %envptr158125, i64 1              ; &envptr158125[1]
  %cont156090 = load i64, i64* %envptr158126, align 8                                ; load; *envptr158126
  %arg156432 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a155994 = call i64 @prim_vector_45ref(i64 %PtU$a, i64 %arg156432)                 ; call prim_vector_45ref
  %a155995 = call i64 @prim_null_63(i64 %a155994)                                    ; call prim_null_63
  %cmp158127 = icmp eq i64 %a155995, 15                                              ; false?
  br i1 %cmp158127, label %else158129, label %then158128                             ; if

then158128:
  %arg156436 = add i64 0, 0                                                          ; quoted ()
  %arg156435 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr158130 = inttoptr i64 %cont156090 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158131 = getelementptr inbounds i64, i64* %cloptr158130, i64 0               ; &cloptr158130[0]
  %f158133 = load i64, i64* %i0ptr158131, align 8                                    ; load; *i0ptr158131
  %fptr158132 = inttoptr i64 %f158133 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158132(i64 %cont156090, i64 %arg156436, i64 %arg156435); tail call
  ret void

else158129:
  %arg156438 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a155996 = call i64 @prim_vector_45ref(i64 %PtU$a, i64 %arg156438)                 ; call prim_vector_45ref
  %a155997 = call i64 @prim_cons_63(i64 %a155996)                                    ; call prim_cons_63
  %cmp158134 = icmp eq i64 %a155997, 15                                              ; false?
  br i1 %cmp158134, label %else158136, label %then158135                             ; if

then158135:
  %arg156441 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a155998 = call i64 @prim_vector_45ref(i64 %PtU$a, i64 %arg156441)                 ; call prim_vector_45ref
  %retprim156095 = call i64 @prim_cdr(i64 %a155998)                                  ; call prim_cdr
  %cloptr158137 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158139 = getelementptr inbounds i64, i64* %cloptr158137, i64 1                ; &eptr158139[1]
  %eptr158140 = getelementptr inbounds i64, i64* %cloptr158137, i64 2                ; &eptr158140[2]
  %eptr158141 = getelementptr inbounds i64, i64* %cloptr158137, i64 3                ; &eptr158141[3]
  store i64 %cont156090, i64* %eptr158139                                            ; *eptr158139 = %cont156090
  store i64 %PtU$a, i64* %eptr158140                                                 ; *eptr158140 = %PtU$a
  store i64 %AOX$cc, i64* %eptr158141                                                ; *eptr158141 = %AOX$cc
  %eptr158138 = getelementptr inbounds i64, i64* %cloptr158137, i64 0                ; &cloptr158137[0]
  %f158142 = ptrtoint void(i64,i64,i64)* @lam157480 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158142, i64* %eptr158138                                               ; store fptr
  %arg156446 = ptrtoint i64* %cloptr158137 to i64                                    ; closure cast; i64* -> i64
  %arg156445 = add i64 0, 0                                                          ; quoted ()
  %cloptr158143 = inttoptr i64 %arg156446 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158144 = getelementptr inbounds i64, i64* %cloptr158143, i64 0               ; &cloptr158143[0]
  %f158146 = load i64, i64* %i0ptr158144, align 8                                    ; load; *i0ptr158144
  %fptr158145 = inttoptr i64 %f158146 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158145(i64 %arg156446, i64 %arg156445, i64 %retprim156095); tail call
  ret void

else158136:
  %arg156460 = add i64 0, 0                                                          ; quoted ()
  %arg156459 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr158147 = inttoptr i64 %cont156090 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158148 = getelementptr inbounds i64, i64* %cloptr158147, i64 0               ; &cloptr158147[0]
  %f158150 = load i64, i64* %i0ptr158148, align 8                                    ; load; *i0ptr158148
  %fptr158149 = inttoptr i64 %f158150 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158149(i64 %cont156090, i64 %arg156460, i64 %arg156459); tail call
  ret void
}


define void @lam157480(i64 %env157481, i64 %_95156092, i64 %A7Z$b) {
  %envptr158151 = inttoptr i64 %env157481 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158152 = getelementptr inbounds i64, i64* %envptr158151, i64 3              ; &envptr158151[3]
  %AOX$cc = load i64, i64* %envptr158152, align 8                                    ; load; *envptr158152
  %envptr158153 = inttoptr i64 %env157481 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158154 = getelementptr inbounds i64, i64* %envptr158153, i64 2              ; &envptr158153[2]
  %PtU$a = load i64, i64* %envptr158154, align 8                                     ; load; *envptr158154
  %envptr158155 = inttoptr i64 %env157481 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158156 = getelementptr inbounds i64, i64* %envptr158155, i64 1              ; &envptr158155[1]
  %cont156090 = load i64, i64* %envptr158156, align 8                                ; load; *envptr158156
  %arg156447 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a155999 = call i64 @prim_vector_45ref(i64 %PtU$a, i64 %arg156447)                 ; call prim_vector_45ref
  %a156000 = call i64 @prim_cdr(i64 %a155999)                                        ; call prim_cdr
  %arg156451 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim156094 = call i64 @prim_vector_45set_33(i64 %PtU$a, i64 %arg156451, i64 %a156000); call prim_vector_45set_33
  %cloptr158157 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr158159 = getelementptr inbounds i64, i64* %cloptr158157, i64 1                ; &eptr158159[1]
  %eptr158160 = getelementptr inbounds i64, i64* %cloptr158157, i64 2                ; &eptr158160[2]
  store i64 %cont156090, i64* %eptr158159                                            ; *eptr158159 = %cont156090
  store i64 %AOX$cc, i64* %eptr158160                                                ; *eptr158160 = %AOX$cc
  %eptr158158 = getelementptr inbounds i64, i64* %cloptr158157, i64 0                ; &cloptr158157[0]
  %f158161 = ptrtoint void(i64,i64,i64)* @lam157476 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158161, i64* %eptr158158                                               ; store fptr
  %arg156455 = ptrtoint i64* %cloptr158157 to i64                                    ; closure cast; i64* -> i64
  %arg156454 = add i64 0, 0                                                          ; quoted ()
  %cloptr158162 = inttoptr i64 %arg156455 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158163 = getelementptr inbounds i64, i64* %cloptr158162, i64 0               ; &cloptr158162[0]
  %f158165 = load i64, i64* %i0ptr158163, align 8                                    ; load; *i0ptr158163
  %fptr158164 = inttoptr i64 %f158165 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158164(i64 %arg156455, i64 %arg156454, i64 %retprim156094); tail call
  ret void
}


define void @lam157476(i64 %env157477, i64 %_95156093, i64 %t9F$_950) {
  %envptr158166 = inttoptr i64 %env157477 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158167 = getelementptr inbounds i64, i64* %envptr158166, i64 2              ; &envptr158166[2]
  %AOX$cc = load i64, i64* %envptr158167, align 8                                    ; load; *envptr158167
  %envptr158168 = inttoptr i64 %env157477 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158169 = getelementptr inbounds i64, i64* %envptr158168, i64 1              ; &envptr158168[1]
  %cont156090 = load i64, i64* %envptr158169, align 8                                ; load; *envptr158169
  %cloptr158170 = inttoptr i64 %AOX$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr158171 = getelementptr inbounds i64, i64* %cloptr158170, i64 0               ; &cloptr158170[0]
  %f158173 = load i64, i64* %i0ptr158171, align 8                                    ; load; *i0ptr158171
  %fptr158172 = inttoptr i64 %f158173 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158172(i64 %AOX$cc, i64 %cont156090, i64 %AOX$cc)   ; tail call
  ret void
}


define void @lam157470(i64 %env157471, i64 %cont156097, i64 %XJQ$lst, i64 %SxA$n) {
  %arg156463 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %WCI$lst = call i64 @prim_make_45vector(i64 %arg156463, i64 %XJQ$lst)              ; call prim_make_45vector
  %arg156465 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %oC4$n = call i64 @prim_make_45vector(i64 %arg156465, i64 %SxA$n)                  ; call prim_make_45vector
  %cloptr158174 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158175 = getelementptr inbounds i64, i64* %cloptr158174, i64 0                ; &cloptr158174[0]
  %f158176 = ptrtoint void(i64,i64,i64)* @lam157466 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158176, i64* %eptr158175                                               ; store fptr
  %arg156468 = ptrtoint i64* %cloptr158174 to i64                                    ; closure cast; i64* -> i64
  %cloptr158177 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158179 = getelementptr inbounds i64, i64* %cloptr158177, i64 1                ; &eptr158179[1]
  %eptr158180 = getelementptr inbounds i64, i64* %cloptr158177, i64 2                ; &eptr158180[2]
  %eptr158181 = getelementptr inbounds i64, i64* %cloptr158177, i64 3                ; &eptr158181[3]
  store i64 %oC4$n, i64* %eptr158179                                                 ; *eptr158179 = %oC4$n
  store i64 %cont156097, i64* %eptr158180                                            ; *eptr158180 = %cont156097
  store i64 %WCI$lst, i64* %eptr158181                                               ; *eptr158181 = %WCI$lst
  %eptr158178 = getelementptr inbounds i64, i64* %cloptr158177, i64 0                ; &cloptr158177[0]
  %f158182 = ptrtoint void(i64,i64,i64)* @lam157464 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158182, i64* %eptr158178                                               ; store fptr
  %arg156467 = ptrtoint i64* %cloptr158177 to i64                                    ; closure cast; i64* -> i64
  %cloptr158183 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158185 = getelementptr inbounds i64, i64* %cloptr158183, i64 1                ; &eptr158185[1]
  %eptr158186 = getelementptr inbounds i64, i64* %cloptr158183, i64 2                ; &eptr158186[2]
  %eptr158187 = getelementptr inbounds i64, i64* %cloptr158183, i64 3                ; &eptr158187[3]
  store i64 %oC4$n, i64* %eptr158185                                                 ; *eptr158185 = %oC4$n
  store i64 %cont156097, i64* %eptr158186                                            ; *eptr158186 = %cont156097
  store i64 %WCI$lst, i64* %eptr158187                                               ; *eptr158187 = %WCI$lst
  %eptr158184 = getelementptr inbounds i64, i64* %cloptr158183, i64 0                ; &cloptr158183[0]
  %f158188 = ptrtoint void(i64,i64,i64)* @lam157447 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158188, i64* %eptr158184                                               ; store fptr
  %arg156466 = ptrtoint i64* %cloptr158183 to i64                                    ; closure cast; i64* -> i64
  %cloptr158189 = inttoptr i64 %arg156468 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158190 = getelementptr inbounds i64, i64* %cloptr158189, i64 0               ; &cloptr158189[0]
  %f158192 = load i64, i64* %i0ptr158190, align 8                                    ; load; *i0ptr158190
  %fptr158191 = inttoptr i64 %f158192 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158191(i64 %arg156468, i64 %arg156467, i64 %arg156466); tail call
  ret void
}


define void @lam157466(i64 %env157467, i64 %cont156104, i64 %uzo$u) {
  %cloptr158193 = inttoptr i64 %uzo$u to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr158194 = getelementptr inbounds i64, i64* %cloptr158193, i64 0               ; &cloptr158193[0]
  %f158196 = load i64, i64* %i0ptr158194, align 8                                    ; load; *i0ptr158194
  %fptr158195 = inttoptr i64 %f158196 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158195(i64 %uzo$u, i64 %cont156104, i64 %uzo$u)     ; tail call
  ret void
}


define void @lam157464(i64 %env157465, i64 %_95156098, i64 %EmY$cc) {
  %envptr158197 = inttoptr i64 %env157465 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158198 = getelementptr inbounds i64, i64* %envptr158197, i64 3              ; &envptr158197[3]
  %WCI$lst = load i64, i64* %envptr158198, align 8                                   ; load; *envptr158198
  %envptr158199 = inttoptr i64 %env157465 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158200 = getelementptr inbounds i64, i64* %envptr158199, i64 2              ; &envptr158199[2]
  %cont156097 = load i64, i64* %envptr158200, align 8                                ; load; *envptr158200
  %envptr158201 = inttoptr i64 %env157465 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158202 = getelementptr inbounds i64, i64* %envptr158201, i64 1              ; &envptr158201[1]
  %oC4$n = load i64, i64* %envptr158202, align 8                                     ; load; *envptr158202
  %arg156472 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156001 = call i64 @prim_vector_45ref(i64 %oC4$n, i64 %arg156472)                 ; call prim_vector_45ref
  %arg156475 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156002 = call i64 @prim__61(i64 %arg156475, i64 %a156001)                        ; call prim__61
  %cmp158203 = icmp eq i64 %a156002, 15                                              ; false?
  br i1 %cmp158203, label %else158205, label %then158204                             ; if

then158204:
  %arg156476 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim156099 = call i64 @prim_vector_45ref(i64 %WCI$lst, i64 %arg156476)         ; call prim_vector_45ref
  %arg156479 = add i64 0, 0                                                          ; quoted ()
  %cloptr158206 = inttoptr i64 %cont156097 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158207 = getelementptr inbounds i64, i64* %cloptr158206, i64 0               ; &cloptr158206[0]
  %f158209 = load i64, i64* %i0ptr158207, align 8                                    ; load; *i0ptr158207
  %fptr158208 = inttoptr i64 %f158209 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158208(i64 %cont156097, i64 %arg156479, i64 %retprim156099); tail call
  ret void

else158205:
  %arg156481 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156003 = call i64 @prim_vector_45ref(i64 %WCI$lst, i64 %arg156481)               ; call prim_vector_45ref
  %a156004 = call i64 @prim_cdr(i64 %a156003)                                        ; call prim_cdr
  %arg156485 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim156103 = call i64 @prim_vector_45set_33(i64 %WCI$lst, i64 %arg156485, i64 %a156004); call prim_vector_45set_33
  %cloptr158210 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158212 = getelementptr inbounds i64, i64* %cloptr158210, i64 1                ; &eptr158212[1]
  %eptr158213 = getelementptr inbounds i64, i64* %cloptr158210, i64 2                ; &eptr158213[2]
  %eptr158214 = getelementptr inbounds i64, i64* %cloptr158210, i64 3                ; &eptr158214[3]
  store i64 %oC4$n, i64* %eptr158212                                                 ; *eptr158212 = %oC4$n
  store i64 %cont156097, i64* %eptr158213                                            ; *eptr158213 = %cont156097
  store i64 %EmY$cc, i64* %eptr158214                                                ; *eptr158214 = %EmY$cc
  %eptr158211 = getelementptr inbounds i64, i64* %cloptr158210, i64 0                ; &cloptr158210[0]
  %f158215 = ptrtoint void(i64,i64,i64)* @lam157458 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158215, i64* %eptr158211                                               ; store fptr
  %arg156489 = ptrtoint i64* %cloptr158210 to i64                                    ; closure cast; i64* -> i64
  %arg156488 = add i64 0, 0                                                          ; quoted ()
  %cloptr158216 = inttoptr i64 %arg156489 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158217 = getelementptr inbounds i64, i64* %cloptr158216, i64 0               ; &cloptr158216[0]
  %f158219 = load i64, i64* %i0ptr158217, align 8                                    ; load; *i0ptr158217
  %fptr158218 = inttoptr i64 %f158219 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158218(i64 %arg156489, i64 %arg156488, i64 %retprim156103); tail call
  ret void
}


define void @lam157458(i64 %env157459, i64 %_95156100, i64 %nRt$_950) {
  %envptr158220 = inttoptr i64 %env157459 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158221 = getelementptr inbounds i64, i64* %envptr158220, i64 3              ; &envptr158220[3]
  %EmY$cc = load i64, i64* %envptr158221, align 8                                    ; load; *envptr158221
  %envptr158222 = inttoptr i64 %env157459 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158223 = getelementptr inbounds i64, i64* %envptr158222, i64 2              ; &envptr158222[2]
  %cont156097 = load i64, i64* %envptr158223, align 8                                ; load; *envptr158223
  %envptr158224 = inttoptr i64 %env157459 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158225 = getelementptr inbounds i64, i64* %envptr158224, i64 1              ; &envptr158224[1]
  %oC4$n = load i64, i64* %envptr158225, align 8                                     ; load; *envptr158225
  %arg156490 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156005 = call i64 @prim_vector_45ref(i64 %oC4$n, i64 %arg156490)                 ; call prim_vector_45ref
  %arg156492 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a156006 = call i64 @prim__45(i64 %a156005, i64 %arg156492)                        ; call prim__45
  %arg156495 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim156102 = call i64 @prim_vector_45set_33(i64 %oC4$n, i64 %arg156495, i64 %a156006); call prim_vector_45set_33
  %cloptr158226 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr158228 = getelementptr inbounds i64, i64* %cloptr158226, i64 1                ; &eptr158228[1]
  %eptr158229 = getelementptr inbounds i64, i64* %cloptr158226, i64 2                ; &eptr158229[2]
  store i64 %cont156097, i64* %eptr158228                                            ; *eptr158228 = %cont156097
  store i64 %EmY$cc, i64* %eptr158229                                                ; *eptr158229 = %EmY$cc
  %eptr158227 = getelementptr inbounds i64, i64* %cloptr158226, i64 0                ; &cloptr158226[0]
  %f158230 = ptrtoint void(i64,i64,i64)* @lam157453 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158230, i64* %eptr158227                                               ; store fptr
  %arg156499 = ptrtoint i64* %cloptr158226 to i64                                    ; closure cast; i64* -> i64
  %arg156498 = add i64 0, 0                                                          ; quoted ()
  %cloptr158231 = inttoptr i64 %arg156499 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158232 = getelementptr inbounds i64, i64* %cloptr158231, i64 0               ; &cloptr158231[0]
  %f158234 = load i64, i64* %i0ptr158232, align 8                                    ; load; *i0ptr158232
  %fptr158233 = inttoptr i64 %f158234 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158233(i64 %arg156499, i64 %arg156498, i64 %retprim156102); tail call
  ret void
}


define void @lam157453(i64 %env157454, i64 %_95156101, i64 %YxD$_951) {
  %envptr158235 = inttoptr i64 %env157454 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158236 = getelementptr inbounds i64, i64* %envptr158235, i64 2              ; &envptr158235[2]
  %EmY$cc = load i64, i64* %envptr158236, align 8                                    ; load; *envptr158236
  %envptr158237 = inttoptr i64 %env157454 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158238 = getelementptr inbounds i64, i64* %envptr158237, i64 1              ; &envptr158237[1]
  %cont156097 = load i64, i64* %envptr158238, align 8                                ; load; *envptr158238
  %cloptr158239 = inttoptr i64 %EmY$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr158240 = getelementptr inbounds i64, i64* %cloptr158239, i64 0               ; &cloptr158239[0]
  %f158242 = load i64, i64* %i0ptr158240, align 8                                    ; load; *i0ptr158240
  %fptr158241 = inttoptr i64 %f158242 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158241(i64 %EmY$cc, i64 %cont156097, i64 %EmY$cc)   ; tail call
  ret void
}


define void @lam157447(i64 %env157448, i64 %_95156098, i64 %EmY$cc) {
  %envptr158243 = inttoptr i64 %env157448 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158244 = getelementptr inbounds i64, i64* %envptr158243, i64 3              ; &envptr158243[3]
  %WCI$lst = load i64, i64* %envptr158244, align 8                                   ; load; *envptr158244
  %envptr158245 = inttoptr i64 %env157448 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158246 = getelementptr inbounds i64, i64* %envptr158245, i64 2              ; &envptr158245[2]
  %cont156097 = load i64, i64* %envptr158246, align 8                                ; load; *envptr158246
  %envptr158247 = inttoptr i64 %env157448 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158248 = getelementptr inbounds i64, i64* %envptr158247, i64 1              ; &envptr158247[1]
  %oC4$n = load i64, i64* %envptr158248, align 8                                     ; load; *envptr158248
  %arg156503 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156001 = call i64 @prim_vector_45ref(i64 %oC4$n, i64 %arg156503)                 ; call prim_vector_45ref
  %arg156506 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156002 = call i64 @prim__61(i64 %arg156506, i64 %a156001)                        ; call prim__61
  %cmp158249 = icmp eq i64 %a156002, 15                                              ; false?
  br i1 %cmp158249, label %else158251, label %then158250                             ; if

then158250:
  %arg156507 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim156099 = call i64 @prim_vector_45ref(i64 %WCI$lst, i64 %arg156507)         ; call prim_vector_45ref
  %arg156510 = add i64 0, 0                                                          ; quoted ()
  %cloptr158252 = inttoptr i64 %cont156097 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158253 = getelementptr inbounds i64, i64* %cloptr158252, i64 0               ; &cloptr158252[0]
  %f158255 = load i64, i64* %i0ptr158253, align 8                                    ; load; *i0ptr158253
  %fptr158254 = inttoptr i64 %f158255 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158254(i64 %cont156097, i64 %arg156510, i64 %retprim156099); tail call
  ret void

else158251:
  %arg156512 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156003 = call i64 @prim_vector_45ref(i64 %WCI$lst, i64 %arg156512)               ; call prim_vector_45ref
  %a156004 = call i64 @prim_cdr(i64 %a156003)                                        ; call prim_cdr
  %arg156516 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim156103 = call i64 @prim_vector_45set_33(i64 %WCI$lst, i64 %arg156516, i64 %a156004); call prim_vector_45set_33
  %cloptr158256 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158258 = getelementptr inbounds i64, i64* %cloptr158256, i64 1                ; &eptr158258[1]
  %eptr158259 = getelementptr inbounds i64, i64* %cloptr158256, i64 2                ; &eptr158259[2]
  %eptr158260 = getelementptr inbounds i64, i64* %cloptr158256, i64 3                ; &eptr158260[3]
  store i64 %oC4$n, i64* %eptr158258                                                 ; *eptr158258 = %oC4$n
  store i64 %cont156097, i64* %eptr158259                                            ; *eptr158259 = %cont156097
  store i64 %EmY$cc, i64* %eptr158260                                                ; *eptr158260 = %EmY$cc
  %eptr158257 = getelementptr inbounds i64, i64* %cloptr158256, i64 0                ; &cloptr158256[0]
  %f158261 = ptrtoint void(i64,i64,i64)* @lam157441 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158261, i64* %eptr158257                                               ; store fptr
  %arg156520 = ptrtoint i64* %cloptr158256 to i64                                    ; closure cast; i64* -> i64
  %arg156519 = add i64 0, 0                                                          ; quoted ()
  %cloptr158262 = inttoptr i64 %arg156520 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158263 = getelementptr inbounds i64, i64* %cloptr158262, i64 0               ; &cloptr158262[0]
  %f158265 = load i64, i64* %i0ptr158263, align 8                                    ; load; *i0ptr158263
  %fptr158264 = inttoptr i64 %f158265 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158264(i64 %arg156520, i64 %arg156519, i64 %retprim156103); tail call
  ret void
}


define void @lam157441(i64 %env157442, i64 %_95156100, i64 %nRt$_950) {
  %envptr158266 = inttoptr i64 %env157442 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158267 = getelementptr inbounds i64, i64* %envptr158266, i64 3              ; &envptr158266[3]
  %EmY$cc = load i64, i64* %envptr158267, align 8                                    ; load; *envptr158267
  %envptr158268 = inttoptr i64 %env157442 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158269 = getelementptr inbounds i64, i64* %envptr158268, i64 2              ; &envptr158268[2]
  %cont156097 = load i64, i64* %envptr158269, align 8                                ; load; *envptr158269
  %envptr158270 = inttoptr i64 %env157442 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158271 = getelementptr inbounds i64, i64* %envptr158270, i64 1              ; &envptr158270[1]
  %oC4$n = load i64, i64* %envptr158271, align 8                                     ; load; *envptr158271
  %arg156521 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156005 = call i64 @prim_vector_45ref(i64 %oC4$n, i64 %arg156521)                 ; call prim_vector_45ref
  %arg156523 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a156006 = call i64 @prim__45(i64 %a156005, i64 %arg156523)                        ; call prim__45
  %arg156526 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim156102 = call i64 @prim_vector_45set_33(i64 %oC4$n, i64 %arg156526, i64 %a156006); call prim_vector_45set_33
  %cloptr158272 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr158274 = getelementptr inbounds i64, i64* %cloptr158272, i64 1                ; &eptr158274[1]
  %eptr158275 = getelementptr inbounds i64, i64* %cloptr158272, i64 2                ; &eptr158275[2]
  store i64 %cont156097, i64* %eptr158274                                            ; *eptr158274 = %cont156097
  store i64 %EmY$cc, i64* %eptr158275                                                ; *eptr158275 = %EmY$cc
  %eptr158273 = getelementptr inbounds i64, i64* %cloptr158272, i64 0                ; &cloptr158272[0]
  %f158276 = ptrtoint void(i64,i64,i64)* @lam157436 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158276, i64* %eptr158273                                               ; store fptr
  %arg156530 = ptrtoint i64* %cloptr158272 to i64                                    ; closure cast; i64* -> i64
  %arg156529 = add i64 0, 0                                                          ; quoted ()
  %cloptr158277 = inttoptr i64 %arg156530 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158278 = getelementptr inbounds i64, i64* %cloptr158277, i64 0               ; &cloptr158277[0]
  %f158280 = load i64, i64* %i0ptr158278, align 8                                    ; load; *i0ptr158278
  %fptr158279 = inttoptr i64 %f158280 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158279(i64 %arg156530, i64 %arg156529, i64 %retprim156102); tail call
  ret void
}


define void @lam157436(i64 %env157437, i64 %_95156101, i64 %YxD$_951) {
  %envptr158281 = inttoptr i64 %env157437 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158282 = getelementptr inbounds i64, i64* %envptr158281, i64 2              ; &envptr158281[2]
  %EmY$cc = load i64, i64* %envptr158282, align 8                                    ; load; *envptr158282
  %envptr158283 = inttoptr i64 %env157437 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158284 = getelementptr inbounds i64, i64* %envptr158283, i64 1              ; &envptr158283[1]
  %cont156097 = load i64, i64* %envptr158284, align 8                                ; load; *envptr158284
  %cloptr158285 = inttoptr i64 %EmY$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr158286 = getelementptr inbounds i64, i64* %cloptr158285, i64 0               ; &cloptr158285[0]
  %f158288 = load i64, i64* %i0ptr158286, align 8                                    ; load; *i0ptr158286
  %fptr158287 = inttoptr i64 %f158288 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158287(i64 %EmY$cc, i64 %cont156097, i64 %EmY$cc)   ; tail call
  ret void
}


define void @lam157430(i64 %env157431, i64 %cont156105, i64 %ixt$v, i64 %CDD$lst) {
  %arg156535 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %R0M$lst = call i64 @prim_make_45vector(i64 %arg156535, i64 %CDD$lst)              ; call prim_make_45vector
  %cloptr158289 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158290 = getelementptr inbounds i64, i64* %cloptr158289, i64 0                ; &cloptr158289[0]
  %f158291 = ptrtoint void(i64,i64,i64)* @lam157427 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158291, i64* %eptr158290                                               ; store fptr
  %arg156538 = ptrtoint i64* %cloptr158289 to i64                                    ; closure cast; i64* -> i64
  %cloptr158292 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158294 = getelementptr inbounds i64, i64* %cloptr158292, i64 1                ; &eptr158294[1]
  %eptr158295 = getelementptr inbounds i64, i64* %cloptr158292, i64 2                ; &eptr158295[2]
  %eptr158296 = getelementptr inbounds i64, i64* %cloptr158292, i64 3                ; &eptr158296[3]
  store i64 %R0M$lst, i64* %eptr158294                                               ; *eptr158294 = %R0M$lst
  store i64 %ixt$v, i64* %eptr158295                                                 ; *eptr158295 = %ixt$v
  store i64 %cont156105, i64* %eptr158296                                            ; *eptr158296 = %cont156105
  %eptr158293 = getelementptr inbounds i64, i64* %cloptr158292, i64 0                ; &cloptr158292[0]
  %f158297 = ptrtoint void(i64,i64,i64)* @lam157425 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158297, i64* %eptr158293                                               ; store fptr
  %arg156537 = ptrtoint i64* %cloptr158292 to i64                                    ; closure cast; i64* -> i64
  %cloptr158298 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158300 = getelementptr inbounds i64, i64* %cloptr158298, i64 1                ; &eptr158300[1]
  %eptr158301 = getelementptr inbounds i64, i64* %cloptr158298, i64 2                ; &eptr158301[2]
  %eptr158302 = getelementptr inbounds i64, i64* %cloptr158298, i64 3                ; &eptr158302[3]
  store i64 %R0M$lst, i64* %eptr158300                                               ; *eptr158300 = %R0M$lst
  store i64 %ixt$v, i64* %eptr158301                                                 ; *eptr158301 = %ixt$v
  store i64 %cont156105, i64* %eptr158302                                            ; *eptr158302 = %cont156105
  %eptr158299 = getelementptr inbounds i64, i64* %cloptr158298, i64 0                ; &cloptr158298[0]
  %f158303 = ptrtoint void(i64,i64,i64)* @lam157412 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158303, i64* %eptr158299                                               ; store fptr
  %arg156536 = ptrtoint i64* %cloptr158298 to i64                                    ; closure cast; i64* -> i64
  %cloptr158304 = inttoptr i64 %arg156538 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158305 = getelementptr inbounds i64, i64* %cloptr158304, i64 0               ; &cloptr158304[0]
  %f158307 = load i64, i64* %i0ptr158305, align 8                                    ; load; *i0ptr158305
  %fptr158306 = inttoptr i64 %f158307 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158306(i64 %arg156538, i64 %arg156537, i64 %arg156536); tail call
  ret void
}


define void @lam157427(i64 %env157428, i64 %cont156110, i64 %a2e$u) {
  %cloptr158308 = inttoptr i64 %a2e$u to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr158309 = getelementptr inbounds i64, i64* %cloptr158308, i64 0               ; &cloptr158308[0]
  %f158311 = load i64, i64* %i0ptr158309, align 8                                    ; load; *i0ptr158309
  %fptr158310 = inttoptr i64 %f158311 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158310(i64 %a2e$u, i64 %cont156110, i64 %a2e$u)     ; tail call
  ret void
}


define void @lam157425(i64 %env157426, i64 %_95156106, i64 %YB0$cc) {
  %envptr158312 = inttoptr i64 %env157426 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158313 = getelementptr inbounds i64, i64* %envptr158312, i64 3              ; &envptr158312[3]
  %cont156105 = load i64, i64* %envptr158313, align 8                                ; load; *envptr158313
  %envptr158314 = inttoptr i64 %env157426 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158315 = getelementptr inbounds i64, i64* %envptr158314, i64 2              ; &envptr158314[2]
  %ixt$v = load i64, i64* %envptr158315, align 8                                     ; load; *envptr158315
  %envptr158316 = inttoptr i64 %env157426 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158317 = getelementptr inbounds i64, i64* %envptr158316, i64 1              ; &envptr158316[1]
  %R0M$lst = load i64, i64* %envptr158317, align 8                                   ; load; *envptr158317
  %arg156542 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156007 = call i64 @prim_vector_45ref(i64 %R0M$lst, i64 %arg156542)               ; call prim_vector_45ref
  %a156008 = call i64 @prim_null_63(i64 %a156007)                                    ; call prim_null_63
  %cmp158318 = icmp eq i64 %a156008, 15                                              ; false?
  br i1 %cmp158318, label %else158320, label %then158319                             ; if

then158319:
  %arg156546 = add i64 0, 0                                                          ; quoted ()
  %arg156545 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr158321 = inttoptr i64 %cont156105 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158322 = getelementptr inbounds i64, i64* %cloptr158321, i64 0               ; &cloptr158321[0]
  %f158324 = load i64, i64* %i0ptr158322, align 8                                    ; load; *i0ptr158322
  %fptr158323 = inttoptr i64 %f158324 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158323(i64 %cont156105, i64 %arg156546, i64 %arg156545); tail call
  ret void

else158320:
  %arg156548 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156009 = call i64 @prim_vector_45ref(i64 %R0M$lst, i64 %arg156548)               ; call prim_vector_45ref
  %a156010 = call i64 @prim_car(i64 %a156009)                                        ; call prim_car
  %a156011 = call i64 @prim_eqv_63(i64 %a156010, i64 %ixt$v)                         ; call prim_eqv_63
  %cmp158325 = icmp eq i64 %a156011, 15                                              ; false?
  br i1 %cmp158325, label %else158327, label %then158326                             ; if

then158326:
  %arg156553 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim156107 = call i64 @prim_vector_45ref(i64 %R0M$lst, i64 %arg156553)         ; call prim_vector_45ref
  %arg156556 = add i64 0, 0                                                          ; quoted ()
  %cloptr158328 = inttoptr i64 %cont156105 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158329 = getelementptr inbounds i64, i64* %cloptr158328, i64 0               ; &cloptr158328[0]
  %f158331 = load i64, i64* %i0ptr158329, align 8                                    ; load; *i0ptr158329
  %fptr158330 = inttoptr i64 %f158331 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158330(i64 %cont156105, i64 %arg156556, i64 %retprim156107); tail call
  ret void

else158327:
  %arg156558 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156012 = call i64 @prim_vector_45ref(i64 %R0M$lst, i64 %arg156558)               ; call prim_vector_45ref
  %a156013 = call i64 @prim_cdr(i64 %a156012)                                        ; call prim_cdr
  %arg156562 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim156109 = call i64 @prim_vector_45set_33(i64 %R0M$lst, i64 %arg156562, i64 %a156013); call prim_vector_45set_33
  %cloptr158332 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr158334 = getelementptr inbounds i64, i64* %cloptr158332, i64 1                ; &eptr158334[1]
  %eptr158335 = getelementptr inbounds i64, i64* %cloptr158332, i64 2                ; &eptr158335[2]
  store i64 %YB0$cc, i64* %eptr158334                                                ; *eptr158334 = %YB0$cc
  store i64 %cont156105, i64* %eptr158335                                            ; *eptr158335 = %cont156105
  %eptr158333 = getelementptr inbounds i64, i64* %cloptr158332, i64 0                ; &cloptr158332[0]
  %f158336 = ptrtoint void(i64,i64,i64)* @lam157419 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158336, i64* %eptr158333                                               ; store fptr
  %arg156566 = ptrtoint i64* %cloptr158332 to i64                                    ; closure cast; i64* -> i64
  %arg156565 = add i64 0, 0                                                          ; quoted ()
  %cloptr158337 = inttoptr i64 %arg156566 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158338 = getelementptr inbounds i64, i64* %cloptr158337, i64 0               ; &cloptr158337[0]
  %f158340 = load i64, i64* %i0ptr158338, align 8                                    ; load; *i0ptr158338
  %fptr158339 = inttoptr i64 %f158340 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158339(i64 %arg156566, i64 %arg156565, i64 %retprim156109); tail call
  ret void
}


define void @lam157419(i64 %env157420, i64 %_95156108, i64 %ylv$_950) {
  %envptr158341 = inttoptr i64 %env157420 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158342 = getelementptr inbounds i64, i64* %envptr158341, i64 2              ; &envptr158341[2]
  %cont156105 = load i64, i64* %envptr158342, align 8                                ; load; *envptr158342
  %envptr158343 = inttoptr i64 %env157420 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158344 = getelementptr inbounds i64, i64* %envptr158343, i64 1              ; &envptr158343[1]
  %YB0$cc = load i64, i64* %envptr158344, align 8                                    ; load; *envptr158344
  %cloptr158345 = inttoptr i64 %YB0$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr158346 = getelementptr inbounds i64, i64* %cloptr158345, i64 0               ; &cloptr158345[0]
  %f158348 = load i64, i64* %i0ptr158346, align 8                                    ; load; *i0ptr158346
  %fptr158347 = inttoptr i64 %f158348 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158347(i64 %YB0$cc, i64 %cont156105, i64 %YB0$cc)   ; tail call
  ret void
}


define void @lam157412(i64 %env157413, i64 %_95156106, i64 %YB0$cc) {
  %envptr158349 = inttoptr i64 %env157413 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158350 = getelementptr inbounds i64, i64* %envptr158349, i64 3              ; &envptr158349[3]
  %cont156105 = load i64, i64* %envptr158350, align 8                                ; load; *envptr158350
  %envptr158351 = inttoptr i64 %env157413 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158352 = getelementptr inbounds i64, i64* %envptr158351, i64 2              ; &envptr158351[2]
  %ixt$v = load i64, i64* %envptr158352, align 8                                     ; load; *envptr158352
  %envptr158353 = inttoptr i64 %env157413 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158354 = getelementptr inbounds i64, i64* %envptr158353, i64 1              ; &envptr158353[1]
  %R0M$lst = load i64, i64* %envptr158354, align 8                                   ; load; *envptr158354
  %arg156570 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156007 = call i64 @prim_vector_45ref(i64 %R0M$lst, i64 %arg156570)               ; call prim_vector_45ref
  %a156008 = call i64 @prim_null_63(i64 %a156007)                                    ; call prim_null_63
  %cmp158355 = icmp eq i64 %a156008, 15                                              ; false?
  br i1 %cmp158355, label %else158357, label %then158356                             ; if

then158356:
  %arg156574 = add i64 0, 0                                                          ; quoted ()
  %arg156573 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr158358 = inttoptr i64 %cont156105 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158359 = getelementptr inbounds i64, i64* %cloptr158358, i64 0               ; &cloptr158358[0]
  %f158361 = load i64, i64* %i0ptr158359, align 8                                    ; load; *i0ptr158359
  %fptr158360 = inttoptr i64 %f158361 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158360(i64 %cont156105, i64 %arg156574, i64 %arg156573); tail call
  ret void

else158357:
  %arg156576 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156009 = call i64 @prim_vector_45ref(i64 %R0M$lst, i64 %arg156576)               ; call prim_vector_45ref
  %a156010 = call i64 @prim_car(i64 %a156009)                                        ; call prim_car
  %a156011 = call i64 @prim_eqv_63(i64 %a156010, i64 %ixt$v)                         ; call prim_eqv_63
  %cmp158362 = icmp eq i64 %a156011, 15                                              ; false?
  br i1 %cmp158362, label %else158364, label %then158363                             ; if

then158363:
  %arg156581 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim156107 = call i64 @prim_vector_45ref(i64 %R0M$lst, i64 %arg156581)         ; call prim_vector_45ref
  %arg156584 = add i64 0, 0                                                          ; quoted ()
  %cloptr158365 = inttoptr i64 %cont156105 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158366 = getelementptr inbounds i64, i64* %cloptr158365, i64 0               ; &cloptr158365[0]
  %f158368 = load i64, i64* %i0ptr158366, align 8                                    ; load; *i0ptr158366
  %fptr158367 = inttoptr i64 %f158368 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158367(i64 %cont156105, i64 %arg156584, i64 %retprim156107); tail call
  ret void

else158364:
  %arg156586 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156012 = call i64 @prim_vector_45ref(i64 %R0M$lst, i64 %arg156586)               ; call prim_vector_45ref
  %a156013 = call i64 @prim_cdr(i64 %a156012)                                        ; call prim_cdr
  %arg156590 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim156109 = call i64 @prim_vector_45set_33(i64 %R0M$lst, i64 %arg156590, i64 %a156013); call prim_vector_45set_33
  %cloptr158369 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr158371 = getelementptr inbounds i64, i64* %cloptr158369, i64 1                ; &eptr158371[1]
  %eptr158372 = getelementptr inbounds i64, i64* %cloptr158369, i64 2                ; &eptr158372[2]
  store i64 %YB0$cc, i64* %eptr158371                                                ; *eptr158371 = %YB0$cc
  store i64 %cont156105, i64* %eptr158372                                            ; *eptr158372 = %cont156105
  %eptr158370 = getelementptr inbounds i64, i64* %cloptr158369, i64 0                ; &cloptr158369[0]
  %f158373 = ptrtoint void(i64,i64,i64)* @lam157406 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158373, i64* %eptr158370                                               ; store fptr
  %arg156594 = ptrtoint i64* %cloptr158369 to i64                                    ; closure cast; i64* -> i64
  %arg156593 = add i64 0, 0                                                          ; quoted ()
  %cloptr158374 = inttoptr i64 %arg156594 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158375 = getelementptr inbounds i64, i64* %cloptr158374, i64 0               ; &cloptr158374[0]
  %f158377 = load i64, i64* %i0ptr158375, align 8                                    ; load; *i0ptr158375
  %fptr158376 = inttoptr i64 %f158377 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158376(i64 %arg156594, i64 %arg156593, i64 %retprim156109); tail call
  ret void
}


define void @lam157406(i64 %env157407, i64 %_95156108, i64 %ylv$_950) {
  %envptr158378 = inttoptr i64 %env157407 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158379 = getelementptr inbounds i64, i64* %envptr158378, i64 2              ; &envptr158378[2]
  %cont156105 = load i64, i64* %envptr158379, align 8                                ; load; *envptr158379
  %envptr158380 = inttoptr i64 %env157407 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158381 = getelementptr inbounds i64, i64* %envptr158380, i64 1              ; &envptr158380[1]
  %YB0$cc = load i64, i64* %envptr158381, align 8                                    ; load; *envptr158381
  %cloptr158382 = inttoptr i64 %YB0$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr158383 = getelementptr inbounds i64, i64* %cloptr158382, i64 0               ; &cloptr158382[0]
  %f158385 = load i64, i64* %i0ptr158383, align 8                                    ; load; *i0ptr158383
  %fptr158384 = inttoptr i64 %f158385 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158384(i64 %YB0$cc, i64 %cont156105, i64 %YB0$cc)   ; tail call
  ret void
}


define void @lam157399(i64 %env157400, i64 %cKD$args156112) {
  %envptr158386 = inttoptr i64 %env157400 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158387 = getelementptr inbounds i64, i64* %envptr158386, i64 1              ; &envptr158386[1]
  %EcI$_37foldl1 = load i64, i64* %envptr158387, align 8                             ; load; *envptr158387
  %cont156111 = call i64 @prim_car(i64 %cKD$args156112)                              ; call prim_car
  %cKD$args = call i64 @prim_cdr(i64 %cKD$args156112)                                ; call prim_cdr
  %a156014 = call i64 @prim_null_63(i64 %cKD$args)                                   ; call prim_null_63
  %cmp158388 = icmp eq i64 %a156014, 15                                              ; false?
  br i1 %cmp158388, label %else158390, label %then158389                             ; if

then158389:
  %arg156602 = add i64 0, 0                                                          ; quoted ()
  %arg156601 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr158391 = inttoptr i64 %cont156111 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158392 = getelementptr inbounds i64, i64* %cloptr158391, i64 0               ; &cloptr158391[0]
  %f158394 = load i64, i64* %i0ptr158392, align 8                                    ; load; *i0ptr158392
  %fptr158393 = inttoptr i64 %f158394 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158393(i64 %cont156111, i64 %arg156602, i64 %arg156601); tail call
  ret void

else158390:
  %a156015 = call i64 @prim_cdr(i64 %cKD$args)                                       ; call prim_cdr
  %a156016 = call i64 @prim_null_63(i64 %a156015)                                    ; call prim_null_63
  %cmp158395 = icmp eq i64 %a156016, 15                                              ; false?
  br i1 %cmp158395, label %else158397, label %then158396                             ; if

then158396:
  %retprim156113 = call i64 @prim_car(i64 %cKD$args)                                 ; call prim_car
  %arg156608 = add i64 0, 0                                                          ; quoted ()
  %cloptr158398 = inttoptr i64 %cont156111 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158399 = getelementptr inbounds i64, i64* %cloptr158398, i64 0               ; &cloptr158398[0]
  %f158401 = load i64, i64* %i0ptr158399, align 8                                    ; load; *i0ptr158399
  %fptr158400 = inttoptr i64 %f158401 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158400(i64 %cont156111, i64 %arg156608, i64 %retprim156113); tail call
  ret void

else158397:
  %a156017 = call i64 @prim_car(i64 %cKD$args)                                       ; call prim_car
  %a156018 = call i64 @prim_cdr(i64 %cKD$args)                                       ; call prim_cdr
  %cloptr158402 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158403 = getelementptr inbounds i64, i64* %cloptr158402, i64 0                ; &cloptr158402[0]
  %f158404 = ptrtoint void(i64,i64,i64,i64)* @lam157397 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f158404, i64* %eptr158403                                               ; store fptr
  %arg156614 = ptrtoint i64* %cloptr158402 to i64                                    ; closure cast; i64* -> i64
  %cloptr158405 = inttoptr i64 %EcI$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr158406 = getelementptr inbounds i64, i64* %cloptr158405, i64 0               ; &cloptr158405[0]
  %f158408 = load i64, i64* %i0ptr158406, align 8                                    ; load; *i0ptr158406
  %fptr158407 = inttoptr i64 %f158408 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158407(i64 %EcI$_37foldl1, i64 %cont156111, i64 %arg156614, i64 %a156017, i64 %a156018); tail call
  ret void
}


define void @lam157397(i64 %env157398, i64 %cont156114, i64 %Axd$n, i64 %KTl$v) {
  %retprim156115 = call i64 @prim__47(i64 %KTl$v, i64 %Axd$n)                        ; call prim__47
  %arg156620 = add i64 0, 0                                                          ; quoted ()
  %cloptr158409 = inttoptr i64 %cont156114 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158410 = getelementptr inbounds i64, i64* %cloptr158409, i64 0               ; &cloptr158409[0]
  %f158412 = load i64, i64* %i0ptr158410, align 8                                    ; load; *i0ptr158410
  %fptr158411 = inttoptr i64 %f158412 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158411(i64 %cont156114, i64 %arg156620, i64 %retprim156115); tail call
  ret void
}


define void @lam157391(i64 %env157392, i64 %cont156116, i64 %lK8$x) {
  %retprim156117 = call i64 @prim_car(i64 %lK8$x)                                    ; call prim_car
  %arg156624 = add i64 0, 0                                                          ; quoted ()
  %cloptr158413 = inttoptr i64 %cont156116 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158414 = getelementptr inbounds i64, i64* %cloptr158413, i64 0               ; &cloptr158413[0]
  %f158416 = load i64, i64* %i0ptr158414, align 8                                    ; load; *i0ptr158414
  %fptr158415 = inttoptr i64 %f158416 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158415(i64 %cont156116, i64 %arg156624, i64 %retprim156117); tail call
  ret void
}


define void @lam157388(i64 %env157389, i64 %cont156118, i64 %Vtl$x) {
  %a156019 = call i64 @prim_cdr(i64 %Vtl$x)                                          ; call prim_cdr
  %retprim156119 = call i64 @prim_car(i64 %a156019)                                  ; call prim_car
  %arg156629 = add i64 0, 0                                                          ; quoted ()
  %cloptr158417 = inttoptr i64 %cont156118 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158418 = getelementptr inbounds i64, i64* %cloptr158417, i64 0               ; &cloptr158417[0]
  %f158420 = load i64, i64* %i0ptr158418, align 8                                    ; load; *i0ptr158418
  %fptr158419 = inttoptr i64 %f158420 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158419(i64 %cont156118, i64 %arg156629, i64 %retprim156119); tail call
  ret void
}


define void @lam157385(i64 %env157386, i64 %cont156120, i64 %VRs$x) {
  %a156020 = call i64 @prim_cdr(i64 %VRs$x)                                          ; call prim_cdr
  %a156021 = call i64 @prim_cdr(i64 %a156020)                                        ; call prim_cdr
  %retprim156121 = call i64 @prim_car(i64 %a156021)                                  ; call prim_car
  %arg156635 = add i64 0, 0                                                          ; quoted ()
  %cloptr158421 = inttoptr i64 %cont156120 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158422 = getelementptr inbounds i64, i64* %cloptr158421, i64 0               ; &cloptr158421[0]
  %f158424 = load i64, i64* %i0ptr158422, align 8                                    ; load; *i0ptr158422
  %fptr158423 = inttoptr i64 %f158424 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158423(i64 %cont156120, i64 %arg156635, i64 %retprim156121); tail call
  ret void
}


define void @lam157382(i64 %env157383, i64 %cont156122, i64 %Vmr$x) {
  %a156022 = call i64 @prim_cdr(i64 %Vmr$x)                                          ; call prim_cdr
  %a156023 = call i64 @prim_cdr(i64 %a156022)                                        ; call prim_cdr
  %a156024 = call i64 @prim_cdr(i64 %a156023)                                        ; call prim_cdr
  %retprim156123 = call i64 @prim_car(i64 %a156024)                                  ; call prim_car
  %arg156642 = add i64 0, 0                                                          ; quoted ()
  %cloptr158425 = inttoptr i64 %cont156122 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158426 = getelementptr inbounds i64, i64* %cloptr158425, i64 0               ; &cloptr158425[0]
  %f158428 = load i64, i64* %i0ptr158426, align 8                                    ; load; *i0ptr158426
  %fptr158427 = inttoptr i64 %f158428 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158427(i64 %cont156122, i64 %arg156642, i64 %retprim156123); tail call
  ret void
}


define void @lam157379(i64 %env157380, i64 %cont156124, i64 %K6X$p) {
  %a156025 = call i64 @prim_cons_63(i64 %K6X$p)                                      ; call prim_cons_63
  %cmp158429 = icmp eq i64 %a156025, 15                                              ; false?
  br i1 %cmp158429, label %else158431, label %then158430                             ; if

then158430:
  %a156026 = call i64 @prim_car(i64 %K6X$p)                                          ; call prim_car
  %arg156646 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym158432, i32 0, i32 0)); quoted string
  %retprim156125 = call i64 @prim_eq_63(i64 %a156026, i64 %arg156646)                ; call prim_eq_63
  %arg156649 = add i64 0, 0                                                          ; quoted ()
  %cloptr158433 = inttoptr i64 %cont156124 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158434 = getelementptr inbounds i64, i64* %cloptr158433, i64 0               ; &cloptr158433[0]
  %f158436 = load i64, i64* %i0ptr158434, align 8                                    ; load; *i0ptr158434
  %fptr158435 = inttoptr i64 %f158436 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158435(i64 %cont156124, i64 %arg156649, i64 %retprim156125); tail call
  ret void

else158431:
  %arg156652 = add i64 0, 0                                                          ; quoted ()
  %arg156651 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr158437 = inttoptr i64 %cont156124 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158438 = getelementptr inbounds i64, i64* %cloptr158437, i64 0               ; &cloptr158437[0]
  %f158440 = load i64, i64* %i0ptr158438, align 8                                    ; load; *i0ptr158438
  %fptr158439 = inttoptr i64 %f158440 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158439(i64 %cont156124, i64 %arg156652, i64 %arg156651); tail call
  ret void
}


define void @lam157373(i64 %env157374, i64 %XLg$lst156169) {
  %cont156168 = call i64 @prim_car(i64 %XLg$lst156169)                               ; call prim_car
  %XLg$lst = call i64 @prim_cdr(i64 %XLg$lst156169)                                  ; call prim_cdr
  %arg156659 = add i64 0, 0                                                          ; quoted ()
  %cloptr158441 = inttoptr i64 %cont156168 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158442 = getelementptr inbounds i64, i64* %cloptr158441, i64 0               ; &cloptr158441[0]
  %f158444 = load i64, i64* %i0ptr158442, align 8                                    ; load; *i0ptr158442
  %fptr158443 = inttoptr i64 %f158444 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158443(i64 %cont156168, i64 %arg156659, i64 %XLg$lst); tail call
  ret void
}


define void @lam157370(i64 %env157371, i64 %_95156126, i64 %tZm$_37raise_45handler) {
  %envptr158445 = inttoptr i64 %env157371 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158446 = getelementptr inbounds i64, i64* %envptr158445, i64 3              ; &envptr158445[3]
  %O82$_37length = load i64, i64* %envptr158446, align 8                             ; load; *envptr158446
  %envptr158447 = inttoptr i64 %env157371 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158448 = getelementptr inbounds i64, i64* %envptr158447, i64 2              ; &envptr158447[2]
  %At0$_37_62 = load i64, i64* %envptr158448, align 8                                ; load; *envptr158448
  %envptr158449 = inttoptr i64 %env157371 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158450 = getelementptr inbounds i64, i64* %envptr158449, i64 1              ; &envptr158449[1]
  %xBM$_37drop = load i64, i64* %envptr158450, align 8                               ; load; *envptr158450
  %cloptr158451 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158452 = getelementptr inbounds i64, i64* %cloptr158451, i64 0                ; &cloptr158451[0]
  %f158453 = ptrtoint void(i64,i64)* @lam157368 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f158453, i64* %eptr158452                                               ; store fptr
  %arg156662 = ptrtoint i64* %cloptr158451 to i64                                    ; closure cast; i64* -> i64
  %cloptr158454 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158456 = getelementptr inbounds i64, i64* %cloptr158454, i64 1                ; &eptr158456[1]
  %eptr158457 = getelementptr inbounds i64, i64* %cloptr158454, i64 2                ; &eptr158457[2]
  %eptr158458 = getelementptr inbounds i64, i64* %cloptr158454, i64 3                ; &eptr158458[3]
  store i64 %xBM$_37drop, i64* %eptr158456                                           ; *eptr158456 = %xBM$_37drop
  store i64 %At0$_37_62, i64* %eptr158457                                            ; *eptr158457 = %At0$_37_62
  store i64 %O82$_37length, i64* %eptr158458                                         ; *eptr158458 = %O82$_37length
  %eptr158455 = getelementptr inbounds i64, i64* %cloptr158454, i64 0                ; &cloptr158454[0]
  %f158459 = ptrtoint void(i64,i64,i64)* @lam157365 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158459, i64* %eptr158455                                               ; store fptr
  %arg156661 = ptrtoint i64* %cloptr158454 to i64                                    ; closure cast; i64* -> i64
  %rva157119 = add i64 0, 0                                                          ; quoted ()
  %rva157118 = call i64 @prim_cons(i64 %arg156661, i64 %rva157119)                   ; call prim_cons
  %cloptr158460 = inttoptr i64 %arg156662 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158461 = getelementptr inbounds i64, i64* %cloptr158460, i64 0               ; &cloptr158460[0]
  %f158463 = load i64, i64* %i0ptr158461, align 8                                    ; load; *i0ptr158461
  %fptr158462 = inttoptr i64 %f158463 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158462(i64 %arg156662, i64 %rva157118)              ; tail call
  ret void
}


define void @lam157368(i64 %env157369, i64 %AK0$lst156167) {
  %cont156166 = call i64 @prim_car(i64 %AK0$lst156167)                               ; call prim_car
  %AK0$lst = call i64 @prim_cdr(i64 %AK0$lst156167)                                  ; call prim_cdr
  %arg156666 = add i64 0, 0                                                          ; quoted ()
  %cloptr158464 = inttoptr i64 %cont156166 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158465 = getelementptr inbounds i64, i64* %cloptr158464, i64 0               ; &cloptr158464[0]
  %f158467 = load i64, i64* %i0ptr158465, align 8                                    ; load; *i0ptr158465
  %fptr158466 = inttoptr i64 %f158467 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158466(i64 %cont156166, i64 %arg156666, i64 %AK0$lst); tail call
  ret void
}


define void @lam157365(i64 %env157366, i64 %_95156164, i64 %a156027) {
  %envptr158468 = inttoptr i64 %env157366 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158469 = getelementptr inbounds i64, i64* %envptr158468, i64 3              ; &envptr158468[3]
  %O82$_37length = load i64, i64* %envptr158469, align 8                             ; load; *envptr158469
  %envptr158470 = inttoptr i64 %env157366 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158471 = getelementptr inbounds i64, i64* %envptr158470, i64 2              ; &envptr158470[2]
  %At0$_37_62 = load i64, i64* %envptr158471, align 8                                ; load; *envptr158471
  %envptr158472 = inttoptr i64 %env157366 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158473 = getelementptr inbounds i64, i64* %envptr158472, i64 1              ; &envptr158472[1]
  %xBM$_37drop = load i64, i64* %envptr158473, align 8                               ; load; *envptr158473
  %arg156669 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim156165 = call i64 @prim_make_45vector(i64 %arg156669, i64 %a156027)        ; call prim_make_45vector
  %cloptr158474 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158476 = getelementptr inbounds i64, i64* %cloptr158474, i64 1                ; &eptr158476[1]
  %eptr158477 = getelementptr inbounds i64, i64* %cloptr158474, i64 2                ; &eptr158477[2]
  %eptr158478 = getelementptr inbounds i64, i64* %cloptr158474, i64 3                ; &eptr158478[3]
  store i64 %xBM$_37drop, i64* %eptr158476                                           ; *eptr158476 = %xBM$_37drop
  store i64 %At0$_37_62, i64* %eptr158477                                            ; *eptr158477 = %At0$_37_62
  store i64 %O82$_37length, i64* %eptr158478                                         ; *eptr158478 = %O82$_37length
  %eptr158475 = getelementptr inbounds i64, i64* %cloptr158474, i64 0                ; &cloptr158474[0]
  %f158479 = ptrtoint void(i64,i64,i64)* @lam157362 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158479, i64* %eptr158475                                               ; store fptr
  %arg156672 = ptrtoint i64* %cloptr158474 to i64                                    ; closure cast; i64* -> i64
  %arg156671 = add i64 0, 0                                                          ; quoted ()
  %cloptr158480 = inttoptr i64 %arg156672 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158481 = getelementptr inbounds i64, i64* %cloptr158480, i64 0               ; &cloptr158480[0]
  %f158483 = load i64, i64* %i0ptr158481, align 8                                    ; load; *i0ptr158481
  %fptr158482 = inttoptr i64 %f158483 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158482(i64 %arg156672, i64 %arg156671, i64 %retprim156165); tail call
  ret void
}


define void @lam157362(i64 %env157363, i64 %_95156127, i64 %Wyx$_37wind_45stack) {
  %envptr158484 = inttoptr i64 %env157363 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158485 = getelementptr inbounds i64, i64* %envptr158484, i64 3              ; &envptr158484[3]
  %O82$_37length = load i64, i64* %envptr158485, align 8                             ; load; *envptr158485
  %envptr158486 = inttoptr i64 %env157363 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158487 = getelementptr inbounds i64, i64* %envptr158486, i64 2              ; &envptr158486[2]
  %At0$_37_62 = load i64, i64* %envptr158487, align 8                                ; load; *envptr158487
  %envptr158488 = inttoptr i64 %env157363 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158489 = getelementptr inbounds i64, i64* %envptr158488, i64 1              ; &envptr158488[1]
  %xBM$_37drop = load i64, i64* %envptr158489, align 8                               ; load; *envptr158489
  %cloptr158490 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158492 = getelementptr inbounds i64, i64* %cloptr158490, i64 1                ; &eptr158492[1]
  %eptr158493 = getelementptr inbounds i64, i64* %cloptr158490, i64 2                ; &eptr158493[2]
  %eptr158494 = getelementptr inbounds i64, i64* %cloptr158490, i64 3                ; &eptr158494[3]
  store i64 %xBM$_37drop, i64* %eptr158492                                           ; *eptr158492 = %xBM$_37drop
  store i64 %At0$_37_62, i64* %eptr158493                                            ; *eptr158493 = %At0$_37_62
  store i64 %O82$_37length, i64* %eptr158494                                         ; *eptr158494 = %O82$_37length
  %eptr158491 = getelementptr inbounds i64, i64* %cloptr158490, i64 0                ; &cloptr158490[0]
  %f158495 = ptrtoint void(i64,i64,i64,i64)* @lam157360 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f158495, i64* %eptr158491                                               ; store fptr
  %PUK$_37common_45tail = ptrtoint i64* %cloptr158490 to i64                         ; closure cast; i64* -> i64
  %cloptr158496 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr158498 = getelementptr inbounds i64, i64* %cloptr158496, i64 1                ; &eptr158498[1]
  %eptr158499 = getelementptr inbounds i64, i64* %cloptr158496, i64 2                ; &eptr158499[2]
  store i64 %Wyx$_37wind_45stack, i64* %eptr158498                                   ; *eptr158498 = %Wyx$_37wind_45stack
  store i64 %PUK$_37common_45tail, i64* %eptr158499                                  ; *eptr158499 = %PUK$_37common_45tail
  %eptr158497 = getelementptr inbounds i64, i64* %cloptr158496, i64 0                ; &cloptr158496[0]
  %f158500 = ptrtoint void(i64,i64,i64)* @lam157318 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158500, i64* %eptr158497                                               ; store fptr
  %cw4$_37do_45wind = ptrtoint i64* %cloptr158496 to i64                             ; closure cast; i64* -> i64
  %arg156861 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr158501 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158502 = getelementptr inbounds i64, i64* %cloptr158501, i64 0                ; &cloptr158501[0]
  %f158503 = ptrtoint void(i64,i64,i64)* @lam157267 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158503, i64* %eptr158502                                               ; store fptr
  %arg156860 = ptrtoint i64* %cloptr158501 to i64                                    ; closure cast; i64* -> i64
  %arg156859 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg156858 = call i64 @const_init_int(i64 2)                                       ; quoted int
  %arg156857 = call i64 @const_init_int(i64 3)                                       ; quoted int
  %cloptr158504 = inttoptr i64 %arg156861 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158505 = getelementptr inbounds i64, i64* %cloptr158504, i64 0               ; &cloptr158504[0]
  %f158507 = load i64, i64* %i0ptr158505, align 8                                    ; load; *i0ptr158505
  %fptr158506 = inttoptr i64 %f158507 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158506(i64 %arg156861, i64 %arg156860, i64 %arg156859, i64 %arg156858, i64 %arg156857); tail call
  ret void
}


define void @lam157360(i64 %env157361, i64 %cont156128, i64 %VGg$x, i64 %nSR$y) {
  %envptr158508 = inttoptr i64 %env157361 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158509 = getelementptr inbounds i64, i64* %envptr158508, i64 3              ; &envptr158508[3]
  %O82$_37length = load i64, i64* %envptr158509, align 8                             ; load; *envptr158509
  %envptr158510 = inttoptr i64 %env157361 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158511 = getelementptr inbounds i64, i64* %envptr158510, i64 2              ; &envptr158510[2]
  %At0$_37_62 = load i64, i64* %envptr158511, align 8                                ; load; *envptr158511
  %envptr158512 = inttoptr i64 %env157361 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158513 = getelementptr inbounds i64, i64* %envptr158512, i64 1              ; &envptr158512[1]
  %xBM$_37drop = load i64, i64* %envptr158513, align 8                               ; load; *envptr158513
  %cloptr158514 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr158516 = getelementptr inbounds i64, i64* %cloptr158514, i64 1                ; &eptr158516[1]
  %eptr158517 = getelementptr inbounds i64, i64* %cloptr158514, i64 2                ; &eptr158517[2]
  %eptr158518 = getelementptr inbounds i64, i64* %cloptr158514, i64 3                ; &eptr158518[3]
  %eptr158519 = getelementptr inbounds i64, i64* %cloptr158514, i64 4                ; &eptr158519[4]
  %eptr158520 = getelementptr inbounds i64, i64* %cloptr158514, i64 5                ; &eptr158520[5]
  %eptr158521 = getelementptr inbounds i64, i64* %cloptr158514, i64 6                ; &eptr158521[6]
  store i64 %xBM$_37drop, i64* %eptr158516                                           ; *eptr158516 = %xBM$_37drop
  store i64 %cont156128, i64* %eptr158517                                            ; *eptr158517 = %cont156128
  store i64 %At0$_37_62, i64* %eptr158518                                            ; *eptr158518 = %At0$_37_62
  store i64 %O82$_37length, i64* %eptr158519                                         ; *eptr158519 = %O82$_37length
  store i64 %VGg$x, i64* %eptr158520                                                 ; *eptr158520 = %VGg$x
  store i64 %nSR$y, i64* %eptr158521                                                 ; *eptr158521 = %nSR$y
  %eptr158515 = getelementptr inbounds i64, i64* %cloptr158514, i64 0                ; &cloptr158514[0]
  %f158522 = ptrtoint void(i64,i64,i64)* @lam157358 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158522, i64* %eptr158515                                               ; store fptr
  %arg156674 = ptrtoint i64* %cloptr158514 to i64                                    ; closure cast; i64* -> i64
  %cloptr158523 = inttoptr i64 %O82$_37length to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr158524 = getelementptr inbounds i64, i64* %cloptr158523, i64 0               ; &cloptr158523[0]
  %f158526 = load i64, i64* %i0ptr158524, align 8                                    ; load; *i0ptr158524
  %fptr158525 = inttoptr i64 %f158526 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158525(i64 %O82$_37length, i64 %arg156674, i64 %VGg$x); tail call
  ret void
}


define void @lam157358(i64 %env157359, i64 %_95156129, i64 %fl5$lx) {
  %envptr158527 = inttoptr i64 %env157359 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158528 = getelementptr inbounds i64, i64* %envptr158527, i64 6              ; &envptr158527[6]
  %nSR$y = load i64, i64* %envptr158528, align 8                                     ; load; *envptr158528
  %envptr158529 = inttoptr i64 %env157359 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158530 = getelementptr inbounds i64, i64* %envptr158529, i64 5              ; &envptr158529[5]
  %VGg$x = load i64, i64* %envptr158530, align 8                                     ; load; *envptr158530
  %envptr158531 = inttoptr i64 %env157359 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158532 = getelementptr inbounds i64, i64* %envptr158531, i64 4              ; &envptr158531[4]
  %O82$_37length = load i64, i64* %envptr158532, align 8                             ; load; *envptr158532
  %envptr158533 = inttoptr i64 %env157359 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158534 = getelementptr inbounds i64, i64* %envptr158533, i64 3              ; &envptr158533[3]
  %At0$_37_62 = load i64, i64* %envptr158534, align 8                                ; load; *envptr158534
  %envptr158535 = inttoptr i64 %env157359 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158536 = getelementptr inbounds i64, i64* %envptr158535, i64 2              ; &envptr158535[2]
  %cont156128 = load i64, i64* %envptr158536, align 8                                ; load; *envptr158536
  %envptr158537 = inttoptr i64 %env157359 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158538 = getelementptr inbounds i64, i64* %envptr158537, i64 1              ; &envptr158537[1]
  %xBM$_37drop = load i64, i64* %envptr158538, align 8                               ; load; *envptr158538
  %cloptr158539 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr158541 = getelementptr inbounds i64, i64* %cloptr158539, i64 1                ; &eptr158541[1]
  %eptr158542 = getelementptr inbounds i64, i64* %cloptr158539, i64 2                ; &eptr158542[2]
  %eptr158543 = getelementptr inbounds i64, i64* %cloptr158539, i64 3                ; &eptr158543[3]
  %eptr158544 = getelementptr inbounds i64, i64* %cloptr158539, i64 4                ; &eptr158544[4]
  %eptr158545 = getelementptr inbounds i64, i64* %cloptr158539, i64 5                ; &eptr158545[5]
  %eptr158546 = getelementptr inbounds i64, i64* %cloptr158539, i64 6                ; &eptr158546[6]
  store i64 %fl5$lx, i64* %eptr158541                                                ; *eptr158541 = %fl5$lx
  store i64 %xBM$_37drop, i64* %eptr158542                                           ; *eptr158542 = %xBM$_37drop
  store i64 %cont156128, i64* %eptr158543                                            ; *eptr158543 = %cont156128
  store i64 %At0$_37_62, i64* %eptr158544                                            ; *eptr158544 = %At0$_37_62
  store i64 %VGg$x, i64* %eptr158545                                                 ; *eptr158545 = %VGg$x
  store i64 %nSR$y, i64* %eptr158546                                                 ; *eptr158546 = %nSR$y
  %eptr158540 = getelementptr inbounds i64, i64* %cloptr158539, i64 0                ; &cloptr158539[0]
  %f158547 = ptrtoint void(i64,i64,i64)* @lam157356 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158547, i64* %eptr158540                                               ; store fptr
  %arg156677 = ptrtoint i64* %cloptr158539 to i64                                    ; closure cast; i64* -> i64
  %cloptr158548 = inttoptr i64 %O82$_37length to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr158549 = getelementptr inbounds i64, i64* %cloptr158548, i64 0               ; &cloptr158548[0]
  %f158551 = load i64, i64* %i0ptr158549, align 8                                    ; load; *i0ptr158549
  %fptr158550 = inttoptr i64 %f158551 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158550(i64 %O82$_37length, i64 %arg156677, i64 %nSR$y); tail call
  ret void
}


define void @lam157356(i64 %env157357, i64 %_95156130, i64 %kWm$ly) {
  %envptr158552 = inttoptr i64 %env157357 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158553 = getelementptr inbounds i64, i64* %envptr158552, i64 6              ; &envptr158552[6]
  %nSR$y = load i64, i64* %envptr158553, align 8                                     ; load; *envptr158553
  %envptr158554 = inttoptr i64 %env157357 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158555 = getelementptr inbounds i64, i64* %envptr158554, i64 5              ; &envptr158554[5]
  %VGg$x = load i64, i64* %envptr158555, align 8                                     ; load; *envptr158555
  %envptr158556 = inttoptr i64 %env157357 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158557 = getelementptr inbounds i64, i64* %envptr158556, i64 4              ; &envptr158556[4]
  %At0$_37_62 = load i64, i64* %envptr158557, align 8                                ; load; *envptr158557
  %envptr158558 = inttoptr i64 %env157357 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158559 = getelementptr inbounds i64, i64* %envptr158558, i64 3              ; &envptr158558[3]
  %cont156128 = load i64, i64* %envptr158559, align 8                                ; load; *envptr158559
  %envptr158560 = inttoptr i64 %env157357 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158561 = getelementptr inbounds i64, i64* %envptr158560, i64 2              ; &envptr158560[2]
  %xBM$_37drop = load i64, i64* %envptr158561, align 8                               ; load; *envptr158561
  %envptr158562 = inttoptr i64 %env157357 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158563 = getelementptr inbounds i64, i64* %envptr158562, i64 1              ; &envptr158562[1]
  %fl5$lx = load i64, i64* %envptr158563, align 8                                    ; load; *envptr158563
  %cloptr158564 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158565 = getelementptr inbounds i64, i64* %cloptr158564, i64 0                ; &cloptr158564[0]
  %f158566 = ptrtoint void(i64,i64)* @lam157354 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f158566, i64* %eptr158565                                               ; store fptr
  %arg156680 = ptrtoint i64* %cloptr158564 to i64                                    ; closure cast; i64* -> i64
  %cloptr158567 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr158569 = getelementptr inbounds i64, i64* %cloptr158567, i64 1                ; &eptr158569[1]
  %eptr158570 = getelementptr inbounds i64, i64* %cloptr158567, i64 2                ; &eptr158570[2]
  %eptr158571 = getelementptr inbounds i64, i64* %cloptr158567, i64 3                ; &eptr158571[3]
  %eptr158572 = getelementptr inbounds i64, i64* %cloptr158567, i64 4                ; &eptr158572[4]
  %eptr158573 = getelementptr inbounds i64, i64* %cloptr158567, i64 5                ; &eptr158573[5]
  %eptr158574 = getelementptr inbounds i64, i64* %cloptr158567, i64 6                ; &eptr158574[6]
  %eptr158575 = getelementptr inbounds i64, i64* %cloptr158567, i64 7                ; &eptr158575[7]
  store i64 %fl5$lx, i64* %eptr158569                                                ; *eptr158569 = %fl5$lx
  store i64 %xBM$_37drop, i64* %eptr158570                                           ; *eptr158570 = %xBM$_37drop
  store i64 %kWm$ly, i64* %eptr158571                                                ; *eptr158571 = %kWm$ly
  store i64 %cont156128, i64* %eptr158572                                            ; *eptr158572 = %cont156128
  store i64 %At0$_37_62, i64* %eptr158573                                            ; *eptr158573 = %At0$_37_62
  store i64 %VGg$x, i64* %eptr158574                                                 ; *eptr158574 = %VGg$x
  store i64 %nSR$y, i64* %eptr158575                                                 ; *eptr158575 = %nSR$y
  %eptr158568 = getelementptr inbounds i64, i64* %cloptr158567, i64 0                ; &cloptr158567[0]
  %f158576 = ptrtoint void(i64,i64,i64)* @lam157351 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158576, i64* %eptr158568                                               ; store fptr
  %arg156679 = ptrtoint i64* %cloptr158567 to i64                                    ; closure cast; i64* -> i64
  %cloptr158577 = inttoptr i64 %arg156680 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158578 = getelementptr inbounds i64, i64* %cloptr158577, i64 0               ; &cloptr158577[0]
  %f158580 = load i64, i64* %i0ptr158578, align 8                                    ; load; *i0ptr158578
  %fptr158579 = inttoptr i64 %f158580 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158579(i64 %arg156680, i64 %arg156679)              ; tail call
  ret void
}


define void @lam157354(i64 %env157355, i64 %wvm$lst156140) {
  %cont156139 = call i64 @prim_car(i64 %wvm$lst156140)                               ; call prim_car
  %wvm$lst = call i64 @prim_cdr(i64 %wvm$lst156140)                                  ; call prim_cdr
  %arg156684 = add i64 0, 0                                                          ; quoted ()
  %cloptr158581 = inttoptr i64 %cont156139 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158582 = getelementptr inbounds i64, i64* %cloptr158581, i64 0               ; &cloptr158581[0]
  %f158584 = load i64, i64* %i0ptr158582, align 8                                    ; load; *i0ptr158582
  %fptr158583 = inttoptr i64 %f158584 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158583(i64 %cont156139, i64 %arg156684, i64 %wvm$lst); tail call
  ret void
}


define void @lam157351(i64 %env157352, i64 %_95156137, i64 %a156028) {
  %envptr158585 = inttoptr i64 %env157352 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158586 = getelementptr inbounds i64, i64* %envptr158585, i64 7              ; &envptr158585[7]
  %nSR$y = load i64, i64* %envptr158586, align 8                                     ; load; *envptr158586
  %envptr158587 = inttoptr i64 %env157352 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158588 = getelementptr inbounds i64, i64* %envptr158587, i64 6              ; &envptr158587[6]
  %VGg$x = load i64, i64* %envptr158588, align 8                                     ; load; *envptr158588
  %envptr158589 = inttoptr i64 %env157352 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158590 = getelementptr inbounds i64, i64* %envptr158589, i64 5              ; &envptr158589[5]
  %At0$_37_62 = load i64, i64* %envptr158590, align 8                                ; load; *envptr158590
  %envptr158591 = inttoptr i64 %env157352 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158592 = getelementptr inbounds i64, i64* %envptr158591, i64 4              ; &envptr158591[4]
  %cont156128 = load i64, i64* %envptr158592, align 8                                ; load; *envptr158592
  %envptr158593 = inttoptr i64 %env157352 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158594 = getelementptr inbounds i64, i64* %envptr158593, i64 3              ; &envptr158593[3]
  %kWm$ly = load i64, i64* %envptr158594, align 8                                    ; load; *envptr158594
  %envptr158595 = inttoptr i64 %env157352 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158596 = getelementptr inbounds i64, i64* %envptr158595, i64 2              ; &envptr158595[2]
  %xBM$_37drop = load i64, i64* %envptr158596, align 8                               ; load; *envptr158596
  %envptr158597 = inttoptr i64 %env157352 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158598 = getelementptr inbounds i64, i64* %envptr158597, i64 1              ; &envptr158597[1]
  %fl5$lx = load i64, i64* %envptr158598, align 8                                    ; load; *envptr158598
  %arg156687 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim156138 = call i64 @prim_make_45vector(i64 %arg156687, i64 %a156028)        ; call prim_make_45vector
  %cloptr158599 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr158601 = getelementptr inbounds i64, i64* %cloptr158599, i64 1                ; &eptr158601[1]
  %eptr158602 = getelementptr inbounds i64, i64* %cloptr158599, i64 2                ; &eptr158602[2]
  %eptr158603 = getelementptr inbounds i64, i64* %cloptr158599, i64 3                ; &eptr158603[3]
  %eptr158604 = getelementptr inbounds i64, i64* %cloptr158599, i64 4                ; &eptr158604[4]
  %eptr158605 = getelementptr inbounds i64, i64* %cloptr158599, i64 5                ; &eptr158605[5]
  %eptr158606 = getelementptr inbounds i64, i64* %cloptr158599, i64 6                ; &eptr158606[6]
  %eptr158607 = getelementptr inbounds i64, i64* %cloptr158599, i64 7                ; &eptr158607[7]
  store i64 %fl5$lx, i64* %eptr158601                                                ; *eptr158601 = %fl5$lx
  store i64 %xBM$_37drop, i64* %eptr158602                                           ; *eptr158602 = %xBM$_37drop
  store i64 %kWm$ly, i64* %eptr158603                                                ; *eptr158603 = %kWm$ly
  store i64 %cont156128, i64* %eptr158604                                            ; *eptr158604 = %cont156128
  store i64 %At0$_37_62, i64* %eptr158605                                            ; *eptr158605 = %At0$_37_62
  store i64 %VGg$x, i64* %eptr158606                                                 ; *eptr158606 = %VGg$x
  store i64 %nSR$y, i64* %eptr158607                                                 ; *eptr158607 = %nSR$y
  %eptr158600 = getelementptr inbounds i64, i64* %cloptr158599, i64 0                ; &cloptr158599[0]
  %f158608 = ptrtoint void(i64,i64,i64)* @lam157348 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158608, i64* %eptr158600                                               ; store fptr
  %arg156690 = ptrtoint i64* %cloptr158599 to i64                                    ; closure cast; i64* -> i64
  %arg156689 = add i64 0, 0                                                          ; quoted ()
  %cloptr158609 = inttoptr i64 %arg156690 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158610 = getelementptr inbounds i64, i64* %cloptr158609, i64 0               ; &cloptr158609[0]
  %f158612 = load i64, i64* %i0ptr158610, align 8                                    ; load; *i0ptr158610
  %fptr158611 = inttoptr i64 %f158612 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158611(i64 %arg156690, i64 %arg156689, i64 %retprim156138); tail call
  ret void
}


define void @lam157348(i64 %env157349, i64 %_95156131, i64 %NtJ$loop) {
  %envptr158613 = inttoptr i64 %env157349 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158614 = getelementptr inbounds i64, i64* %envptr158613, i64 7              ; &envptr158613[7]
  %nSR$y = load i64, i64* %envptr158614, align 8                                     ; load; *envptr158614
  %envptr158615 = inttoptr i64 %env157349 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158616 = getelementptr inbounds i64, i64* %envptr158615, i64 6              ; &envptr158615[6]
  %VGg$x = load i64, i64* %envptr158616, align 8                                     ; load; *envptr158616
  %envptr158617 = inttoptr i64 %env157349 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158618 = getelementptr inbounds i64, i64* %envptr158617, i64 5              ; &envptr158617[5]
  %At0$_37_62 = load i64, i64* %envptr158618, align 8                                ; load; *envptr158618
  %envptr158619 = inttoptr i64 %env157349 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158620 = getelementptr inbounds i64, i64* %envptr158619, i64 4              ; &envptr158619[4]
  %cont156128 = load i64, i64* %envptr158620, align 8                                ; load; *envptr158620
  %envptr158621 = inttoptr i64 %env157349 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158622 = getelementptr inbounds i64, i64* %envptr158621, i64 3              ; &envptr158621[3]
  %kWm$ly = load i64, i64* %envptr158622, align 8                                    ; load; *envptr158622
  %envptr158623 = inttoptr i64 %env157349 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158624 = getelementptr inbounds i64, i64* %envptr158623, i64 2              ; &envptr158623[2]
  %xBM$_37drop = load i64, i64* %envptr158624, align 8                               ; load; *envptr158624
  %envptr158625 = inttoptr i64 %env157349 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158626 = getelementptr inbounds i64, i64* %envptr158625, i64 1              ; &envptr158625[1]
  %fl5$lx = load i64, i64* %envptr158626, align 8                                    ; load; *envptr158626
  %arg156692 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr158627 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr158629 = getelementptr inbounds i64, i64* %cloptr158627, i64 1                ; &eptr158629[1]
  store i64 %NtJ$loop, i64* %eptr158629                                              ; *eptr158629 = %NtJ$loop
  %eptr158628 = getelementptr inbounds i64, i64* %cloptr158627, i64 0                ; &cloptr158627[0]
  %f158630 = ptrtoint void(i64,i64,i64,i64)* @lam157345 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f158630, i64* %eptr158628                                               ; store fptr
  %arg156691 = ptrtoint i64* %cloptr158627 to i64                                    ; closure cast; i64* -> i64
  %gbV$_95155929 = call i64 @prim_vector_45set_33(i64 %NtJ$loop, i64 %arg156692, i64 %arg156691); call prim_vector_45set_33
  %arg156707 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156033 = call i64 @prim_vector_45ref(i64 %NtJ$loop, i64 %arg156707)              ; call prim_vector_45ref
  %cloptr158631 = call i64* @alloc(i64 72)                                           ; malloc
  %eptr158633 = getelementptr inbounds i64, i64* %cloptr158631, i64 1                ; &eptr158633[1]
  %eptr158634 = getelementptr inbounds i64, i64* %cloptr158631, i64 2                ; &eptr158634[2]
  %eptr158635 = getelementptr inbounds i64, i64* %cloptr158631, i64 3                ; &eptr158635[3]
  %eptr158636 = getelementptr inbounds i64, i64* %cloptr158631, i64 4                ; &eptr158636[4]
  %eptr158637 = getelementptr inbounds i64, i64* %cloptr158631, i64 5                ; &eptr158637[5]
  %eptr158638 = getelementptr inbounds i64, i64* %cloptr158631, i64 6                ; &eptr158638[6]
  %eptr158639 = getelementptr inbounds i64, i64* %cloptr158631, i64 7                ; &eptr158639[7]
  %eptr158640 = getelementptr inbounds i64, i64* %cloptr158631, i64 8                ; &eptr158640[8]
  store i64 %fl5$lx, i64* %eptr158633                                                ; *eptr158633 = %fl5$lx
  store i64 %xBM$_37drop, i64* %eptr158634                                           ; *eptr158634 = %xBM$_37drop
  store i64 %kWm$ly, i64* %eptr158635                                                ; *eptr158635 = %kWm$ly
  store i64 %a156033, i64* %eptr158636                                               ; *eptr158636 = %a156033
  store i64 %cont156128, i64* %eptr158637                                            ; *eptr158637 = %cont156128
  store i64 %At0$_37_62, i64* %eptr158638                                            ; *eptr158638 = %At0$_37_62
  store i64 %VGg$x, i64* %eptr158639                                                 ; *eptr158639 = %VGg$x
  store i64 %nSR$y, i64* %eptr158640                                                 ; *eptr158640 = %nSR$y
  %eptr158632 = getelementptr inbounds i64, i64* %cloptr158631, i64 0                ; &cloptr158631[0]
  %f158641 = ptrtoint void(i64,i64,i64)* @lam157340 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158641, i64* %eptr158632                                               ; store fptr
  %arg156711 = ptrtoint i64* %cloptr158631 to i64                                    ; closure cast; i64* -> i64
  %cloptr158642 = inttoptr i64 %At0$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158643 = getelementptr inbounds i64, i64* %cloptr158642, i64 0               ; &cloptr158642[0]
  %f158645 = load i64, i64* %i0ptr158643, align 8                                    ; load; *i0ptr158643
  %fptr158644 = inttoptr i64 %f158645 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158644(i64 %At0$_37_62, i64 %arg156711, i64 %fl5$lx, i64 %kWm$ly); tail call
  ret void
}


define void @lam157345(i64 %env157346, i64 %cont156132, i64 %rAx$x, i64 %WNH$y) {
  %envptr158646 = inttoptr i64 %env157346 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158647 = getelementptr inbounds i64, i64* %envptr158646, i64 1              ; &envptr158646[1]
  %NtJ$loop = load i64, i64* %envptr158647, align 8                                  ; load; *envptr158647
  %a156029 = call i64 @prim_eq_63(i64 %rAx$x, i64 %WNH$y)                            ; call prim_eq_63
  %cmp158648 = icmp eq i64 %a156029, 15                                              ; false?
  br i1 %cmp158648, label %else158650, label %then158649                             ; if

then158649:
  %arg156697 = add i64 0, 0                                                          ; quoted ()
  %cloptr158651 = inttoptr i64 %cont156132 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158652 = getelementptr inbounds i64, i64* %cloptr158651, i64 0               ; &cloptr158651[0]
  %f158654 = load i64, i64* %i0ptr158652, align 8                                    ; load; *i0ptr158652
  %fptr158653 = inttoptr i64 %f158654 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158653(i64 %cont156132, i64 %arg156697, i64 %rAx$x) ; tail call
  ret void

else158650:
  %arg156699 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156030 = call i64 @prim_vector_45ref(i64 %NtJ$loop, i64 %arg156699)              ; call prim_vector_45ref
  %a156031 = call i64 @prim_cdr(i64 %rAx$x)                                          ; call prim_cdr
  %a156032 = call i64 @prim_cdr(i64 %WNH$y)                                          ; call prim_cdr
  %cloptr158655 = inttoptr i64 %a156030 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr158656 = getelementptr inbounds i64, i64* %cloptr158655, i64 0               ; &cloptr158655[0]
  %f158658 = load i64, i64* %i0ptr158656, align 8                                    ; load; *i0ptr158656
  %fptr158657 = inttoptr i64 %f158658 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158657(i64 %a156030, i64 %cont156132, i64 %a156031, i64 %a156032); tail call
  ret void
}


define void @lam157340(i64 %env157341, i64 %_95156133, i64 %a156034) {
  %envptr158659 = inttoptr i64 %env157341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158660 = getelementptr inbounds i64, i64* %envptr158659, i64 8              ; &envptr158659[8]
  %nSR$y = load i64, i64* %envptr158660, align 8                                     ; load; *envptr158660
  %envptr158661 = inttoptr i64 %env157341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158662 = getelementptr inbounds i64, i64* %envptr158661, i64 7              ; &envptr158661[7]
  %VGg$x = load i64, i64* %envptr158662, align 8                                     ; load; *envptr158662
  %envptr158663 = inttoptr i64 %env157341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158664 = getelementptr inbounds i64, i64* %envptr158663, i64 6              ; &envptr158663[6]
  %At0$_37_62 = load i64, i64* %envptr158664, align 8                                ; load; *envptr158664
  %envptr158665 = inttoptr i64 %env157341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158666 = getelementptr inbounds i64, i64* %envptr158665, i64 5              ; &envptr158665[5]
  %cont156128 = load i64, i64* %envptr158666, align 8                                ; load; *envptr158666
  %envptr158667 = inttoptr i64 %env157341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158668 = getelementptr inbounds i64, i64* %envptr158667, i64 4              ; &envptr158667[4]
  %a156033 = load i64, i64* %envptr158668, align 8                                   ; load; *envptr158668
  %envptr158669 = inttoptr i64 %env157341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158670 = getelementptr inbounds i64, i64* %envptr158669, i64 3              ; &envptr158669[3]
  %kWm$ly = load i64, i64* %envptr158670, align 8                                    ; load; *envptr158670
  %envptr158671 = inttoptr i64 %env157341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158672 = getelementptr inbounds i64, i64* %envptr158671, i64 2              ; &envptr158671[2]
  %xBM$_37drop = load i64, i64* %envptr158672, align 8                               ; load; *envptr158672
  %envptr158673 = inttoptr i64 %env157341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158674 = getelementptr inbounds i64, i64* %envptr158673, i64 1              ; &envptr158673[1]
  %fl5$lx = load i64, i64* %envptr158674, align 8                                    ; load; *envptr158674
  %cmp158675 = icmp eq i64 %a156034, 15                                              ; false?
  br i1 %cmp158675, label %else158677, label %then158676                             ; if

then158676:
  %a156035 = call i64 @prim__45(i64 %fl5$lx, i64 %kWm$ly)                            ; call prim__45
  %cloptr158678 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr158680 = getelementptr inbounds i64, i64* %cloptr158678, i64 1                ; &eptr158680[1]
  %eptr158681 = getelementptr inbounds i64, i64* %cloptr158678, i64 2                ; &eptr158681[2]
  %eptr158682 = getelementptr inbounds i64, i64* %cloptr158678, i64 3                ; &eptr158682[3]
  %eptr158683 = getelementptr inbounds i64, i64* %cloptr158678, i64 4                ; &eptr158683[4]
  %eptr158684 = getelementptr inbounds i64, i64* %cloptr158678, i64 5                ; &eptr158684[5]
  %eptr158685 = getelementptr inbounds i64, i64* %cloptr158678, i64 6                ; &eptr158685[6]
  %eptr158686 = getelementptr inbounds i64, i64* %cloptr158678, i64 7                ; &eptr158686[7]
  store i64 %fl5$lx, i64* %eptr158680                                                ; *eptr158680 = %fl5$lx
  store i64 %xBM$_37drop, i64* %eptr158681                                           ; *eptr158681 = %xBM$_37drop
  store i64 %kWm$ly, i64* %eptr158682                                                ; *eptr158682 = %kWm$ly
  store i64 %a156033, i64* %eptr158683                                               ; *eptr158683 = %a156033
  store i64 %cont156128, i64* %eptr158684                                            ; *eptr158684 = %cont156128
  store i64 %At0$_37_62, i64* %eptr158685                                            ; *eptr158685 = %At0$_37_62
  store i64 %nSR$y, i64* %eptr158686                                                 ; *eptr158686 = %nSR$y
  %eptr158679 = getelementptr inbounds i64, i64* %cloptr158678, i64 0                ; &cloptr158678[0]
  %f158687 = ptrtoint void(i64,i64,i64)* @lam157328 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158687, i64* %eptr158679                                               ; store fptr
  %arg156717 = ptrtoint i64* %cloptr158678 to i64                                    ; closure cast; i64* -> i64
  %cloptr158688 = inttoptr i64 %xBM$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr158689 = getelementptr inbounds i64, i64* %cloptr158688, i64 0               ; &cloptr158688[0]
  %f158691 = load i64, i64* %i0ptr158689, align 8                                    ; load; *i0ptr158689
  %fptr158690 = inttoptr i64 %f158691 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158690(i64 %xBM$_37drop, i64 %arg156717, i64 %VGg$x, i64 %a156035); tail call
  ret void

else158677:
  %cloptr158692 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr158694 = getelementptr inbounds i64, i64* %cloptr158692, i64 1                ; &eptr158694[1]
  %eptr158695 = getelementptr inbounds i64, i64* %cloptr158692, i64 2                ; &eptr158695[2]
  %eptr158696 = getelementptr inbounds i64, i64* %cloptr158692, i64 3                ; &eptr158696[3]
  %eptr158697 = getelementptr inbounds i64, i64* %cloptr158692, i64 4                ; &eptr158697[4]
  %eptr158698 = getelementptr inbounds i64, i64* %cloptr158692, i64 5                ; &eptr158698[5]
  %eptr158699 = getelementptr inbounds i64, i64* %cloptr158692, i64 6                ; &eptr158699[6]
  %eptr158700 = getelementptr inbounds i64, i64* %cloptr158692, i64 7                ; &eptr158700[7]
  store i64 %fl5$lx, i64* %eptr158694                                                ; *eptr158694 = %fl5$lx
  store i64 %xBM$_37drop, i64* %eptr158695                                           ; *eptr158695 = %xBM$_37drop
  store i64 %kWm$ly, i64* %eptr158696                                                ; *eptr158696 = %kWm$ly
  store i64 %a156033, i64* %eptr158697                                               ; *eptr158697 = %a156033
  store i64 %cont156128, i64* %eptr158698                                            ; *eptr158698 = %cont156128
  store i64 %At0$_37_62, i64* %eptr158699                                            ; *eptr158699 = %At0$_37_62
  store i64 %nSR$y, i64* %eptr158700                                                 ; *eptr158700 = %nSR$y
  %eptr158693 = getelementptr inbounds i64, i64* %cloptr158692, i64 0                ; &cloptr158692[0]
  %f158701 = ptrtoint void(i64,i64,i64)* @lam157338 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158701, i64* %eptr158693                                               ; store fptr
  %arg156742 = ptrtoint i64* %cloptr158692 to i64                                    ; closure cast; i64* -> i64
  %arg156741 = add i64 0, 0                                                          ; quoted ()
  %cloptr158702 = inttoptr i64 %arg156742 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158703 = getelementptr inbounds i64, i64* %cloptr158702, i64 0               ; &cloptr158702[0]
  %f158705 = load i64, i64* %i0ptr158703, align 8                                    ; load; *i0ptr158703
  %fptr158704 = inttoptr i64 %f158705 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158704(i64 %arg156742, i64 %arg156741, i64 %VGg$x)  ; tail call
  ret void
}


define void @lam157338(i64 %env157339, i64 %_95156134, i64 %a156036) {
  %envptr158706 = inttoptr i64 %env157339 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158707 = getelementptr inbounds i64, i64* %envptr158706, i64 7              ; &envptr158706[7]
  %nSR$y = load i64, i64* %envptr158707, align 8                                     ; load; *envptr158707
  %envptr158708 = inttoptr i64 %env157339 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158709 = getelementptr inbounds i64, i64* %envptr158708, i64 6              ; &envptr158708[6]
  %At0$_37_62 = load i64, i64* %envptr158709, align 8                                ; load; *envptr158709
  %envptr158710 = inttoptr i64 %env157339 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158711 = getelementptr inbounds i64, i64* %envptr158710, i64 5              ; &envptr158710[5]
  %cont156128 = load i64, i64* %envptr158711, align 8                                ; load; *envptr158711
  %envptr158712 = inttoptr i64 %env157339 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158713 = getelementptr inbounds i64, i64* %envptr158712, i64 4              ; &envptr158712[4]
  %a156033 = load i64, i64* %envptr158713, align 8                                   ; load; *envptr158713
  %envptr158714 = inttoptr i64 %env157339 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158715 = getelementptr inbounds i64, i64* %envptr158714, i64 3              ; &envptr158714[3]
  %kWm$ly = load i64, i64* %envptr158715, align 8                                    ; load; *envptr158715
  %envptr158716 = inttoptr i64 %env157339 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158717 = getelementptr inbounds i64, i64* %envptr158716, i64 2              ; &envptr158716[2]
  %xBM$_37drop = load i64, i64* %envptr158717, align 8                               ; load; *envptr158717
  %envptr158718 = inttoptr i64 %env157339 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158719 = getelementptr inbounds i64, i64* %envptr158718, i64 1              ; &envptr158718[1]
  %fl5$lx = load i64, i64* %envptr158719, align 8                                    ; load; *envptr158719
  %cloptr158720 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr158722 = getelementptr inbounds i64, i64* %cloptr158720, i64 1                ; &eptr158722[1]
  %eptr158723 = getelementptr inbounds i64, i64* %cloptr158720, i64 2                ; &eptr158723[2]
  %eptr158724 = getelementptr inbounds i64, i64* %cloptr158720, i64 3                ; &eptr158724[3]
  %eptr158725 = getelementptr inbounds i64, i64* %cloptr158720, i64 4                ; &eptr158725[4]
  %eptr158726 = getelementptr inbounds i64, i64* %cloptr158720, i64 5                ; &eptr158726[5]
  %eptr158727 = getelementptr inbounds i64, i64* %cloptr158720, i64 6                ; &eptr158727[6]
  %eptr158728 = getelementptr inbounds i64, i64* %cloptr158720, i64 7                ; &eptr158728[7]
  store i64 %fl5$lx, i64* %eptr158722                                                ; *eptr158722 = %fl5$lx
  store i64 %xBM$_37drop, i64* %eptr158723                                           ; *eptr158723 = %xBM$_37drop
  store i64 %kWm$ly, i64* %eptr158724                                                ; *eptr158724 = %kWm$ly
  store i64 %a156033, i64* %eptr158725                                               ; *eptr158725 = %a156033
  store i64 %a156036, i64* %eptr158726                                               ; *eptr158726 = %a156036
  store i64 %cont156128, i64* %eptr158727                                            ; *eptr158727 = %cont156128
  store i64 %nSR$y, i64* %eptr158728                                                 ; *eptr158728 = %nSR$y
  %eptr158721 = getelementptr inbounds i64, i64* %cloptr158720, i64 0                ; &cloptr158720[0]
  %f158729 = ptrtoint void(i64,i64,i64)* @lam157336 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158729, i64* %eptr158721                                               ; store fptr
  %arg156745 = ptrtoint i64* %cloptr158720 to i64                                    ; closure cast; i64* -> i64
  %cloptr158730 = inttoptr i64 %At0$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158731 = getelementptr inbounds i64, i64* %cloptr158730, i64 0               ; &cloptr158730[0]
  %f158733 = load i64, i64* %i0ptr158731, align 8                                    ; load; *i0ptr158731
  %fptr158732 = inttoptr i64 %f158733 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158732(i64 %At0$_37_62, i64 %arg156745, i64 %kWm$ly, i64 %fl5$lx); tail call
  ret void
}


define void @lam157336(i64 %env157337, i64 %_95156135, i64 %a156037) {
  %envptr158734 = inttoptr i64 %env157337 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158735 = getelementptr inbounds i64, i64* %envptr158734, i64 7              ; &envptr158734[7]
  %nSR$y = load i64, i64* %envptr158735, align 8                                     ; load; *envptr158735
  %envptr158736 = inttoptr i64 %env157337 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158737 = getelementptr inbounds i64, i64* %envptr158736, i64 6              ; &envptr158736[6]
  %cont156128 = load i64, i64* %envptr158737, align 8                                ; load; *envptr158737
  %envptr158738 = inttoptr i64 %env157337 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158739 = getelementptr inbounds i64, i64* %envptr158738, i64 5              ; &envptr158738[5]
  %a156036 = load i64, i64* %envptr158739, align 8                                   ; load; *envptr158739
  %envptr158740 = inttoptr i64 %env157337 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158741 = getelementptr inbounds i64, i64* %envptr158740, i64 4              ; &envptr158740[4]
  %a156033 = load i64, i64* %envptr158741, align 8                                   ; load; *envptr158741
  %envptr158742 = inttoptr i64 %env157337 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158743 = getelementptr inbounds i64, i64* %envptr158742, i64 3              ; &envptr158742[3]
  %kWm$ly = load i64, i64* %envptr158743, align 8                                    ; load; *envptr158743
  %envptr158744 = inttoptr i64 %env157337 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158745 = getelementptr inbounds i64, i64* %envptr158744, i64 2              ; &envptr158744[2]
  %xBM$_37drop = load i64, i64* %envptr158745, align 8                               ; load; *envptr158745
  %envptr158746 = inttoptr i64 %env157337 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158747 = getelementptr inbounds i64, i64* %envptr158746, i64 1              ; &envptr158746[1]
  %fl5$lx = load i64, i64* %envptr158747, align 8                                    ; load; *envptr158747
  %cmp158748 = icmp eq i64 %a156037, 15                                              ; false?
  br i1 %cmp158748, label %else158750, label %then158749                             ; if

then158749:
  %a156038 = call i64 @prim__45(i64 %kWm$ly, i64 %fl5$lx)                            ; call prim__45
  %cloptr158751 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158753 = getelementptr inbounds i64, i64* %cloptr158751, i64 1                ; &eptr158753[1]
  %eptr158754 = getelementptr inbounds i64, i64* %cloptr158751, i64 2                ; &eptr158754[2]
  %eptr158755 = getelementptr inbounds i64, i64* %cloptr158751, i64 3                ; &eptr158755[3]
  store i64 %a156033, i64* %eptr158753                                               ; *eptr158753 = %a156033
  store i64 %a156036, i64* %eptr158754                                               ; *eptr158754 = %a156036
  store i64 %cont156128, i64* %eptr158755                                            ; *eptr158755 = %cont156128
  %eptr158752 = getelementptr inbounds i64, i64* %cloptr158751, i64 0                ; &cloptr158751[0]
  %f158756 = ptrtoint void(i64,i64,i64)* @lam157331 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158756, i64* %eptr158752                                               ; store fptr
  %arg156751 = ptrtoint i64* %cloptr158751 to i64                                    ; closure cast; i64* -> i64
  %cloptr158757 = inttoptr i64 %xBM$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr158758 = getelementptr inbounds i64, i64* %cloptr158757, i64 0               ; &cloptr158757[0]
  %f158760 = load i64, i64* %i0ptr158758, align 8                                    ; load; *i0ptr158758
  %fptr158759 = inttoptr i64 %f158760 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158759(i64 %xBM$_37drop, i64 %arg156751, i64 %nSR$y, i64 %a156038); tail call
  ret void

else158750:
  %cloptr158761 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158763 = getelementptr inbounds i64, i64* %cloptr158761, i64 1                ; &eptr158763[1]
  %eptr158764 = getelementptr inbounds i64, i64* %cloptr158761, i64 2                ; &eptr158764[2]
  %eptr158765 = getelementptr inbounds i64, i64* %cloptr158761, i64 3                ; &eptr158765[3]
  store i64 %a156033, i64* %eptr158763                                               ; *eptr158763 = %a156033
  store i64 %a156036, i64* %eptr158764                                               ; *eptr158764 = %a156036
  store i64 %cont156128, i64* %eptr158765                                            ; *eptr158765 = %cont156128
  %eptr158762 = getelementptr inbounds i64, i64* %cloptr158761, i64 0                ; &cloptr158761[0]
  %f158766 = ptrtoint void(i64,i64,i64)* @lam157334 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158766, i64* %eptr158762                                               ; store fptr
  %arg156759 = ptrtoint i64* %cloptr158761 to i64                                    ; closure cast; i64* -> i64
  %arg156758 = add i64 0, 0                                                          ; quoted ()
  %cloptr158767 = inttoptr i64 %arg156759 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158768 = getelementptr inbounds i64, i64* %cloptr158767, i64 0               ; &cloptr158767[0]
  %f158770 = load i64, i64* %i0ptr158768, align 8                                    ; load; *i0ptr158768
  %fptr158769 = inttoptr i64 %f158770 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158769(i64 %arg156759, i64 %arg156758, i64 %nSR$y)  ; tail call
  ret void
}


define void @lam157334(i64 %env157335, i64 %_95156136, i64 %a156039) {
  %envptr158771 = inttoptr i64 %env157335 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158772 = getelementptr inbounds i64, i64* %envptr158771, i64 3              ; &envptr158771[3]
  %cont156128 = load i64, i64* %envptr158772, align 8                                ; load; *envptr158772
  %envptr158773 = inttoptr i64 %env157335 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158774 = getelementptr inbounds i64, i64* %envptr158773, i64 2              ; &envptr158773[2]
  %a156036 = load i64, i64* %envptr158774, align 8                                   ; load; *envptr158774
  %envptr158775 = inttoptr i64 %env157335 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158776 = getelementptr inbounds i64, i64* %envptr158775, i64 1              ; &envptr158775[1]
  %a156033 = load i64, i64* %envptr158776, align 8                                   ; load; *envptr158776
  %cloptr158777 = inttoptr i64 %a156033 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr158778 = getelementptr inbounds i64, i64* %cloptr158777, i64 0               ; &cloptr158777[0]
  %f158780 = load i64, i64* %i0ptr158778, align 8                                    ; load; *i0ptr158778
  %fptr158779 = inttoptr i64 %f158780 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158779(i64 %a156033, i64 %cont156128, i64 %a156036, i64 %a156039); tail call
  ret void
}


define void @lam157331(i64 %env157332, i64 %_95156136, i64 %a156039) {
  %envptr158781 = inttoptr i64 %env157332 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158782 = getelementptr inbounds i64, i64* %envptr158781, i64 3              ; &envptr158781[3]
  %cont156128 = load i64, i64* %envptr158782, align 8                                ; load; *envptr158782
  %envptr158783 = inttoptr i64 %env157332 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158784 = getelementptr inbounds i64, i64* %envptr158783, i64 2              ; &envptr158783[2]
  %a156036 = load i64, i64* %envptr158784, align 8                                   ; load; *envptr158784
  %envptr158785 = inttoptr i64 %env157332 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158786 = getelementptr inbounds i64, i64* %envptr158785, i64 1              ; &envptr158785[1]
  %a156033 = load i64, i64* %envptr158786, align 8                                   ; load; *envptr158786
  %cloptr158787 = inttoptr i64 %a156033 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr158788 = getelementptr inbounds i64, i64* %cloptr158787, i64 0               ; &cloptr158787[0]
  %f158790 = load i64, i64* %i0ptr158788, align 8                                    ; load; *i0ptr158788
  %fptr158789 = inttoptr i64 %f158790 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158789(i64 %a156033, i64 %cont156128, i64 %a156036, i64 %a156039); tail call
  ret void
}


define void @lam157328(i64 %env157329, i64 %_95156134, i64 %a156036) {
  %envptr158791 = inttoptr i64 %env157329 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158792 = getelementptr inbounds i64, i64* %envptr158791, i64 7              ; &envptr158791[7]
  %nSR$y = load i64, i64* %envptr158792, align 8                                     ; load; *envptr158792
  %envptr158793 = inttoptr i64 %env157329 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158794 = getelementptr inbounds i64, i64* %envptr158793, i64 6              ; &envptr158793[6]
  %At0$_37_62 = load i64, i64* %envptr158794, align 8                                ; load; *envptr158794
  %envptr158795 = inttoptr i64 %env157329 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158796 = getelementptr inbounds i64, i64* %envptr158795, i64 5              ; &envptr158795[5]
  %cont156128 = load i64, i64* %envptr158796, align 8                                ; load; *envptr158796
  %envptr158797 = inttoptr i64 %env157329 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158798 = getelementptr inbounds i64, i64* %envptr158797, i64 4              ; &envptr158797[4]
  %a156033 = load i64, i64* %envptr158798, align 8                                   ; load; *envptr158798
  %envptr158799 = inttoptr i64 %env157329 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158800 = getelementptr inbounds i64, i64* %envptr158799, i64 3              ; &envptr158799[3]
  %kWm$ly = load i64, i64* %envptr158800, align 8                                    ; load; *envptr158800
  %envptr158801 = inttoptr i64 %env157329 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158802 = getelementptr inbounds i64, i64* %envptr158801, i64 2              ; &envptr158801[2]
  %xBM$_37drop = load i64, i64* %envptr158802, align 8                               ; load; *envptr158802
  %envptr158803 = inttoptr i64 %env157329 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158804 = getelementptr inbounds i64, i64* %envptr158803, i64 1              ; &envptr158803[1]
  %fl5$lx = load i64, i64* %envptr158804, align 8                                    ; load; *envptr158804
  %cloptr158805 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr158807 = getelementptr inbounds i64, i64* %cloptr158805, i64 1                ; &eptr158807[1]
  %eptr158808 = getelementptr inbounds i64, i64* %cloptr158805, i64 2                ; &eptr158808[2]
  %eptr158809 = getelementptr inbounds i64, i64* %cloptr158805, i64 3                ; &eptr158809[3]
  %eptr158810 = getelementptr inbounds i64, i64* %cloptr158805, i64 4                ; &eptr158810[4]
  %eptr158811 = getelementptr inbounds i64, i64* %cloptr158805, i64 5                ; &eptr158811[5]
  %eptr158812 = getelementptr inbounds i64, i64* %cloptr158805, i64 6                ; &eptr158812[6]
  %eptr158813 = getelementptr inbounds i64, i64* %cloptr158805, i64 7                ; &eptr158813[7]
  store i64 %fl5$lx, i64* %eptr158807                                                ; *eptr158807 = %fl5$lx
  store i64 %xBM$_37drop, i64* %eptr158808                                           ; *eptr158808 = %xBM$_37drop
  store i64 %kWm$ly, i64* %eptr158809                                                ; *eptr158809 = %kWm$ly
  store i64 %a156033, i64* %eptr158810                                               ; *eptr158810 = %a156033
  store i64 %a156036, i64* %eptr158811                                               ; *eptr158811 = %a156036
  store i64 %cont156128, i64* %eptr158812                                            ; *eptr158812 = %cont156128
  store i64 %nSR$y, i64* %eptr158813                                                 ; *eptr158813 = %nSR$y
  %eptr158806 = getelementptr inbounds i64, i64* %cloptr158805, i64 0                ; &cloptr158805[0]
  %f158814 = ptrtoint void(i64,i64,i64)* @lam157326 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158814, i64* %eptr158806                                               ; store fptr
  %arg156721 = ptrtoint i64* %cloptr158805 to i64                                    ; closure cast; i64* -> i64
  %cloptr158815 = inttoptr i64 %At0$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158816 = getelementptr inbounds i64, i64* %cloptr158815, i64 0               ; &cloptr158815[0]
  %f158818 = load i64, i64* %i0ptr158816, align 8                                    ; load; *i0ptr158816
  %fptr158817 = inttoptr i64 %f158818 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158817(i64 %At0$_37_62, i64 %arg156721, i64 %kWm$ly, i64 %fl5$lx); tail call
  ret void
}


define void @lam157326(i64 %env157327, i64 %_95156135, i64 %a156037) {
  %envptr158819 = inttoptr i64 %env157327 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158820 = getelementptr inbounds i64, i64* %envptr158819, i64 7              ; &envptr158819[7]
  %nSR$y = load i64, i64* %envptr158820, align 8                                     ; load; *envptr158820
  %envptr158821 = inttoptr i64 %env157327 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158822 = getelementptr inbounds i64, i64* %envptr158821, i64 6              ; &envptr158821[6]
  %cont156128 = load i64, i64* %envptr158822, align 8                                ; load; *envptr158822
  %envptr158823 = inttoptr i64 %env157327 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158824 = getelementptr inbounds i64, i64* %envptr158823, i64 5              ; &envptr158823[5]
  %a156036 = load i64, i64* %envptr158824, align 8                                   ; load; *envptr158824
  %envptr158825 = inttoptr i64 %env157327 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158826 = getelementptr inbounds i64, i64* %envptr158825, i64 4              ; &envptr158825[4]
  %a156033 = load i64, i64* %envptr158826, align 8                                   ; load; *envptr158826
  %envptr158827 = inttoptr i64 %env157327 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158828 = getelementptr inbounds i64, i64* %envptr158827, i64 3              ; &envptr158827[3]
  %kWm$ly = load i64, i64* %envptr158828, align 8                                    ; load; *envptr158828
  %envptr158829 = inttoptr i64 %env157327 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158830 = getelementptr inbounds i64, i64* %envptr158829, i64 2              ; &envptr158829[2]
  %xBM$_37drop = load i64, i64* %envptr158830, align 8                               ; load; *envptr158830
  %envptr158831 = inttoptr i64 %env157327 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158832 = getelementptr inbounds i64, i64* %envptr158831, i64 1              ; &envptr158831[1]
  %fl5$lx = load i64, i64* %envptr158832, align 8                                    ; load; *envptr158832
  %cmp158833 = icmp eq i64 %a156037, 15                                              ; false?
  br i1 %cmp158833, label %else158835, label %then158834                             ; if

then158834:
  %a156038 = call i64 @prim__45(i64 %kWm$ly, i64 %fl5$lx)                            ; call prim__45
  %cloptr158836 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158838 = getelementptr inbounds i64, i64* %cloptr158836, i64 1                ; &eptr158838[1]
  %eptr158839 = getelementptr inbounds i64, i64* %cloptr158836, i64 2                ; &eptr158839[2]
  %eptr158840 = getelementptr inbounds i64, i64* %cloptr158836, i64 3                ; &eptr158840[3]
  store i64 %a156033, i64* %eptr158838                                               ; *eptr158838 = %a156033
  store i64 %a156036, i64* %eptr158839                                               ; *eptr158839 = %a156036
  store i64 %cont156128, i64* %eptr158840                                            ; *eptr158840 = %cont156128
  %eptr158837 = getelementptr inbounds i64, i64* %cloptr158836, i64 0                ; &cloptr158836[0]
  %f158841 = ptrtoint void(i64,i64,i64)* @lam157321 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158841, i64* %eptr158837                                               ; store fptr
  %arg156727 = ptrtoint i64* %cloptr158836 to i64                                    ; closure cast; i64* -> i64
  %cloptr158842 = inttoptr i64 %xBM$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr158843 = getelementptr inbounds i64, i64* %cloptr158842, i64 0               ; &cloptr158842[0]
  %f158845 = load i64, i64* %i0ptr158843, align 8                                    ; load; *i0ptr158843
  %fptr158844 = inttoptr i64 %f158845 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158844(i64 %xBM$_37drop, i64 %arg156727, i64 %nSR$y, i64 %a156038); tail call
  ret void

else158835:
  %cloptr158846 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158848 = getelementptr inbounds i64, i64* %cloptr158846, i64 1                ; &eptr158848[1]
  %eptr158849 = getelementptr inbounds i64, i64* %cloptr158846, i64 2                ; &eptr158849[2]
  %eptr158850 = getelementptr inbounds i64, i64* %cloptr158846, i64 3                ; &eptr158850[3]
  store i64 %a156033, i64* %eptr158848                                               ; *eptr158848 = %a156033
  store i64 %a156036, i64* %eptr158849                                               ; *eptr158849 = %a156036
  store i64 %cont156128, i64* %eptr158850                                            ; *eptr158850 = %cont156128
  %eptr158847 = getelementptr inbounds i64, i64* %cloptr158846, i64 0                ; &cloptr158846[0]
  %f158851 = ptrtoint void(i64,i64,i64)* @lam157324 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158851, i64* %eptr158847                                               ; store fptr
  %arg156735 = ptrtoint i64* %cloptr158846 to i64                                    ; closure cast; i64* -> i64
  %arg156734 = add i64 0, 0                                                          ; quoted ()
  %cloptr158852 = inttoptr i64 %arg156735 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158853 = getelementptr inbounds i64, i64* %cloptr158852, i64 0               ; &cloptr158852[0]
  %f158855 = load i64, i64* %i0ptr158853, align 8                                    ; load; *i0ptr158853
  %fptr158854 = inttoptr i64 %f158855 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158854(i64 %arg156735, i64 %arg156734, i64 %nSR$y)  ; tail call
  ret void
}


define void @lam157324(i64 %env157325, i64 %_95156136, i64 %a156039) {
  %envptr158856 = inttoptr i64 %env157325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158857 = getelementptr inbounds i64, i64* %envptr158856, i64 3              ; &envptr158856[3]
  %cont156128 = load i64, i64* %envptr158857, align 8                                ; load; *envptr158857
  %envptr158858 = inttoptr i64 %env157325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158859 = getelementptr inbounds i64, i64* %envptr158858, i64 2              ; &envptr158858[2]
  %a156036 = load i64, i64* %envptr158859, align 8                                   ; load; *envptr158859
  %envptr158860 = inttoptr i64 %env157325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158861 = getelementptr inbounds i64, i64* %envptr158860, i64 1              ; &envptr158860[1]
  %a156033 = load i64, i64* %envptr158861, align 8                                   ; load; *envptr158861
  %cloptr158862 = inttoptr i64 %a156033 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr158863 = getelementptr inbounds i64, i64* %cloptr158862, i64 0               ; &cloptr158862[0]
  %f158865 = load i64, i64* %i0ptr158863, align 8                                    ; load; *i0ptr158863
  %fptr158864 = inttoptr i64 %f158865 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158864(i64 %a156033, i64 %cont156128, i64 %a156036, i64 %a156039); tail call
  ret void
}


define void @lam157321(i64 %env157322, i64 %_95156136, i64 %a156039) {
  %envptr158866 = inttoptr i64 %env157322 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158867 = getelementptr inbounds i64, i64* %envptr158866, i64 3              ; &envptr158866[3]
  %cont156128 = load i64, i64* %envptr158867, align 8                                ; load; *envptr158867
  %envptr158868 = inttoptr i64 %env157322 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158869 = getelementptr inbounds i64, i64* %envptr158868, i64 2              ; &envptr158868[2]
  %a156036 = load i64, i64* %envptr158869, align 8                                   ; load; *envptr158869
  %envptr158870 = inttoptr i64 %env157322 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158871 = getelementptr inbounds i64, i64* %envptr158870, i64 1              ; &envptr158870[1]
  %a156033 = load i64, i64* %envptr158871, align 8                                   ; load; *envptr158871
  %cloptr158872 = inttoptr i64 %a156033 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr158873 = getelementptr inbounds i64, i64* %cloptr158872, i64 0               ; &cloptr158872[0]
  %f158875 = load i64, i64* %i0ptr158873, align 8                                    ; load; *i0ptr158873
  %fptr158874 = inttoptr i64 %f158875 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158874(i64 %a156033, i64 %cont156128, i64 %a156036, i64 %a156039); tail call
  ret void
}


define void @lam157318(i64 %env157319, i64 %cont156141, i64 %bhD$new) {
  %envptr158876 = inttoptr i64 %env157319 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158877 = getelementptr inbounds i64, i64* %envptr158876, i64 2              ; &envptr158876[2]
  %PUK$_37common_45tail = load i64, i64* %envptr158877, align 8                      ; load; *envptr158877
  %envptr158878 = inttoptr i64 %env157319 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158879 = getelementptr inbounds i64, i64* %envptr158878, i64 1              ; &envptr158878[1]
  %Wyx$_37wind_45stack = load i64, i64* %envptr158879, align 8                       ; load; *envptr158879
  %arg156764 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156040 = call i64 @prim_vector_45ref(i64 %Wyx$_37wind_45stack, i64 %arg156764)   ; call prim_vector_45ref
  %cloptr158880 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158882 = getelementptr inbounds i64, i64* %cloptr158880, i64 1                ; &eptr158882[1]
  %eptr158883 = getelementptr inbounds i64, i64* %cloptr158880, i64 2                ; &eptr158883[2]
  %eptr158884 = getelementptr inbounds i64, i64* %cloptr158880, i64 3                ; &eptr158884[3]
  store i64 %cont156141, i64* %eptr158882                                            ; *eptr158882 = %cont156141
  store i64 %Wyx$_37wind_45stack, i64* %eptr158883                                   ; *eptr158883 = %Wyx$_37wind_45stack
  store i64 %bhD$new, i64* %eptr158884                                               ; *eptr158884 = %bhD$new
  %eptr158881 = getelementptr inbounds i64, i64* %cloptr158880, i64 0                ; &cloptr158880[0]
  %f158885 = ptrtoint void(i64,i64,i64)* @lam157315 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158885, i64* %eptr158881                                               ; store fptr
  %arg156768 = ptrtoint i64* %cloptr158880 to i64                                    ; closure cast; i64* -> i64
  %cloptr158886 = inttoptr i64 %PUK$_37common_45tail to i64*                         ; closure/env cast; i64 -> i64*
  %i0ptr158887 = getelementptr inbounds i64, i64* %cloptr158886, i64 0               ; &cloptr158886[0]
  %f158889 = load i64, i64* %i0ptr158887, align 8                                    ; load; *i0ptr158887
  %fptr158888 = inttoptr i64 %f158889 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158888(i64 %PUK$_37common_45tail, i64 %arg156768, i64 %bhD$new, i64 %a156040); tail call
  ret void
}


define void @lam157315(i64 %env157316, i64 %_95156142, i64 %IiX$tail) {
  %envptr158890 = inttoptr i64 %env157316 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158891 = getelementptr inbounds i64, i64* %envptr158890, i64 3              ; &envptr158890[3]
  %bhD$new = load i64, i64* %envptr158891, align 8                                   ; load; *envptr158891
  %envptr158892 = inttoptr i64 %env157316 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158893 = getelementptr inbounds i64, i64* %envptr158892, i64 2              ; &envptr158892[2]
  %Wyx$_37wind_45stack = load i64, i64* %envptr158893, align 8                       ; load; *envptr158893
  %envptr158894 = inttoptr i64 %env157316 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158895 = getelementptr inbounds i64, i64* %envptr158894, i64 1              ; &envptr158894[1]
  %cont156141 = load i64, i64* %envptr158895, align 8                                ; load; *envptr158895
  %cloptr158896 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158897 = getelementptr inbounds i64, i64* %cloptr158896, i64 0                ; &cloptr158896[0]
  %f158898 = ptrtoint void(i64,i64)* @lam157313 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f158898, i64* %eptr158897                                               ; store fptr
  %arg156771 = ptrtoint i64* %cloptr158896 to i64                                    ; closure cast; i64* -> i64
  %cloptr158899 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr158901 = getelementptr inbounds i64, i64* %cloptr158899, i64 1                ; &eptr158901[1]
  %eptr158902 = getelementptr inbounds i64, i64* %cloptr158899, i64 2                ; &eptr158902[2]
  %eptr158903 = getelementptr inbounds i64, i64* %cloptr158899, i64 3                ; &eptr158903[3]
  %eptr158904 = getelementptr inbounds i64, i64* %cloptr158899, i64 4                ; &eptr158904[4]
  store i64 %cont156141, i64* %eptr158901                                            ; *eptr158901 = %cont156141
  store i64 %Wyx$_37wind_45stack, i64* %eptr158902                                   ; *eptr158902 = %Wyx$_37wind_45stack
  store i64 %bhD$new, i64* %eptr158903                                               ; *eptr158903 = %bhD$new
  store i64 %IiX$tail, i64* %eptr158904                                              ; *eptr158904 = %IiX$tail
  %eptr158900 = getelementptr inbounds i64, i64* %cloptr158899, i64 0                ; &cloptr158899[0]
  %f158905 = ptrtoint void(i64,i64,i64)* @lam157310 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158905, i64* %eptr158900                                               ; store fptr
  %arg156770 = ptrtoint i64* %cloptr158899 to i64                                    ; closure cast; i64* -> i64
  %cloptr158906 = inttoptr i64 %arg156771 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158907 = getelementptr inbounds i64, i64* %cloptr158906, i64 0               ; &cloptr158906[0]
  %f158909 = load i64, i64* %i0ptr158907, align 8                                    ; load; *i0ptr158907
  %fptr158908 = inttoptr i64 %f158909 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158908(i64 %arg156771, i64 %arg156770)              ; tail call
  ret void
}


define void @lam157313(i64 %env157314, i64 %P5z$lst156163) {
  %cont156162 = call i64 @prim_car(i64 %P5z$lst156163)                               ; call prim_car
  %P5z$lst = call i64 @prim_cdr(i64 %P5z$lst156163)                                  ; call prim_cdr
  %arg156775 = add i64 0, 0                                                          ; quoted ()
  %cloptr158910 = inttoptr i64 %cont156162 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158911 = getelementptr inbounds i64, i64* %cloptr158910, i64 0               ; &cloptr158910[0]
  %f158913 = load i64, i64* %i0ptr158911, align 8                                    ; load; *i0ptr158911
  %fptr158912 = inttoptr i64 %f158913 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158912(i64 %cont156162, i64 %arg156775, i64 %P5z$lst); tail call
  ret void
}


define void @lam157310(i64 %env157311, i64 %_95156160, i64 %a156041) {
  %envptr158914 = inttoptr i64 %env157311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158915 = getelementptr inbounds i64, i64* %envptr158914, i64 4              ; &envptr158914[4]
  %IiX$tail = load i64, i64* %envptr158915, align 8                                  ; load; *envptr158915
  %envptr158916 = inttoptr i64 %env157311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158917 = getelementptr inbounds i64, i64* %envptr158916, i64 3              ; &envptr158916[3]
  %bhD$new = load i64, i64* %envptr158917, align 8                                   ; load; *envptr158917
  %envptr158918 = inttoptr i64 %env157311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158919 = getelementptr inbounds i64, i64* %envptr158918, i64 2              ; &envptr158918[2]
  %Wyx$_37wind_45stack = load i64, i64* %envptr158919, align 8                       ; load; *envptr158919
  %envptr158920 = inttoptr i64 %env157311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158921 = getelementptr inbounds i64, i64* %envptr158920, i64 1              ; &envptr158920[1]
  %cont156141 = load i64, i64* %envptr158921, align 8                                ; load; *envptr158921
  %arg156778 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim156161 = call i64 @prim_make_45vector(i64 %arg156778, i64 %a156041)        ; call prim_make_45vector
  %cloptr158922 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr158924 = getelementptr inbounds i64, i64* %cloptr158922, i64 1                ; &eptr158924[1]
  %eptr158925 = getelementptr inbounds i64, i64* %cloptr158922, i64 2                ; &eptr158925[2]
  %eptr158926 = getelementptr inbounds i64, i64* %cloptr158922, i64 3                ; &eptr158926[3]
  %eptr158927 = getelementptr inbounds i64, i64* %cloptr158922, i64 4                ; &eptr158927[4]
  store i64 %cont156141, i64* %eptr158924                                            ; *eptr158924 = %cont156141
  store i64 %Wyx$_37wind_45stack, i64* %eptr158925                                   ; *eptr158925 = %Wyx$_37wind_45stack
  store i64 %bhD$new, i64* %eptr158926                                               ; *eptr158926 = %bhD$new
  store i64 %IiX$tail, i64* %eptr158927                                              ; *eptr158927 = %IiX$tail
  %eptr158923 = getelementptr inbounds i64, i64* %cloptr158922, i64 0                ; &cloptr158922[0]
  %f158928 = ptrtoint void(i64,i64,i64)* @lam157307 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158928, i64* %eptr158923                                               ; store fptr
  %arg156781 = ptrtoint i64* %cloptr158922 to i64                                    ; closure cast; i64* -> i64
  %arg156780 = add i64 0, 0                                                          ; quoted ()
  %cloptr158929 = inttoptr i64 %arg156781 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158930 = getelementptr inbounds i64, i64* %cloptr158929, i64 0               ; &cloptr158929[0]
  %f158932 = load i64, i64* %i0ptr158930, align 8                                    ; load; *i0ptr158930
  %fptr158931 = inttoptr i64 %f158932 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158931(i64 %arg156781, i64 %arg156780, i64 %retprim156161); tail call
  ret void
}


define void @lam157307(i64 %env157308, i64 %_95156154, i64 %ExK$f) {
  %envptr158933 = inttoptr i64 %env157308 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158934 = getelementptr inbounds i64, i64* %envptr158933, i64 4              ; &envptr158933[4]
  %IiX$tail = load i64, i64* %envptr158934, align 8                                  ; load; *envptr158934
  %envptr158935 = inttoptr i64 %env157308 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158936 = getelementptr inbounds i64, i64* %envptr158935, i64 3              ; &envptr158935[3]
  %bhD$new = load i64, i64* %envptr158936, align 8                                   ; load; *envptr158936
  %envptr158937 = inttoptr i64 %env157308 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158938 = getelementptr inbounds i64, i64* %envptr158937, i64 2              ; &envptr158937[2]
  %Wyx$_37wind_45stack = load i64, i64* %envptr158938, align 8                       ; load; *envptr158938
  %envptr158939 = inttoptr i64 %env157308 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158940 = getelementptr inbounds i64, i64* %envptr158939, i64 1              ; &envptr158939[1]
  %cont156141 = load i64, i64* %envptr158940, align 8                                ; load; *envptr158940
  %arg156783 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr158941 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158943 = getelementptr inbounds i64, i64* %cloptr158941, i64 1                ; &eptr158943[1]
  %eptr158944 = getelementptr inbounds i64, i64* %cloptr158941, i64 2                ; &eptr158944[2]
  %eptr158945 = getelementptr inbounds i64, i64* %cloptr158941, i64 3                ; &eptr158945[3]
  store i64 %Wyx$_37wind_45stack, i64* %eptr158943                                   ; *eptr158943 = %Wyx$_37wind_45stack
  store i64 %ExK$f, i64* %eptr158944                                                 ; *eptr158944 = %ExK$f
  store i64 %IiX$tail, i64* %eptr158945                                              ; *eptr158945 = %IiX$tail
  %eptr158942 = getelementptr inbounds i64, i64* %cloptr158941, i64 0                ; &cloptr158941[0]
  %f158946 = ptrtoint void(i64,i64,i64)* @lam157304 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158946, i64* %eptr158942                                               ; store fptr
  %arg156782 = ptrtoint i64* %cloptr158941 to i64                                    ; closure cast; i64* -> i64
  %xNs$_95155931 = call i64 @prim_vector_45set_33(i64 %ExK$f, i64 %arg156783, i64 %arg156782); call prim_vector_45set_33
  %arg156808 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156049 = call i64 @prim_vector_45ref(i64 %ExK$f, i64 %arg156808)                 ; call prim_vector_45ref
  %arg156810 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156050 = call i64 @prim_vector_45ref(i64 %Wyx$_37wind_45stack, i64 %arg156810)   ; call prim_vector_45ref
  %cloptr158947 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr158949 = getelementptr inbounds i64, i64* %cloptr158947, i64 1                ; &eptr158949[1]
  %eptr158950 = getelementptr inbounds i64, i64* %cloptr158947, i64 2                ; &eptr158950[2]
  %eptr158951 = getelementptr inbounds i64, i64* %cloptr158947, i64 3                ; &eptr158951[3]
  %eptr158952 = getelementptr inbounds i64, i64* %cloptr158947, i64 4                ; &eptr158952[4]
  store i64 %cont156141, i64* %eptr158949                                            ; *eptr158949 = %cont156141
  store i64 %Wyx$_37wind_45stack, i64* %eptr158950                                   ; *eptr158950 = %Wyx$_37wind_45stack
  store i64 %bhD$new, i64* %eptr158951                                               ; *eptr158951 = %bhD$new
  store i64 %IiX$tail, i64* %eptr158952                                              ; *eptr158952 = %IiX$tail
  %eptr158948 = getelementptr inbounds i64, i64* %cloptr158947, i64 0                ; &cloptr158947[0]
  %f158953 = ptrtoint void(i64,i64,i64)* @lam157292 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158953, i64* %eptr158948                                               ; store fptr
  %arg156813 = ptrtoint i64* %cloptr158947 to i64                                    ; closure cast; i64* -> i64
  %cloptr158954 = inttoptr i64 %a156049 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr158955 = getelementptr inbounds i64, i64* %cloptr158954, i64 0               ; &cloptr158954[0]
  %f158957 = load i64, i64* %i0ptr158955, align 8                                    ; load; *i0ptr158955
  %fptr158956 = inttoptr i64 %f158957 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158956(i64 %a156049, i64 %arg156813, i64 %a156050)  ; tail call
  ret void
}


define void @lam157304(i64 %env157305, i64 %cont156155, i64 %ziY$l) {
  %envptr158958 = inttoptr i64 %env157305 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158959 = getelementptr inbounds i64, i64* %envptr158958, i64 3              ; &envptr158958[3]
  %IiX$tail = load i64, i64* %envptr158959, align 8                                  ; load; *envptr158959
  %envptr158960 = inttoptr i64 %env157305 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158961 = getelementptr inbounds i64, i64* %envptr158960, i64 2              ; &envptr158960[2]
  %ExK$f = load i64, i64* %envptr158961, align 8                                     ; load; *envptr158961
  %envptr158962 = inttoptr i64 %env157305 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158963 = getelementptr inbounds i64, i64* %envptr158962, i64 1              ; &envptr158962[1]
  %Wyx$_37wind_45stack = load i64, i64* %envptr158963, align 8                       ; load; *envptr158963
  %a156042 = call i64 @prim_eq_63(i64 %ziY$l, i64 %IiX$tail)                         ; call prim_eq_63
  %a156043 = call i64 @prim_not(i64 %a156042)                                        ; call prim_not
  %cmp158964 = icmp eq i64 %a156043, 15                                              ; false?
  br i1 %cmp158964, label %else158966, label %then158965                             ; if

then158965:
  %a156044 = call i64 @prim_cdr(i64 %ziY$l)                                          ; call prim_cdr
  %arg156790 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim156158 = call i64 @prim_vector_45set_33(i64 %Wyx$_37wind_45stack, i64 %arg156790, i64 %a156044); call prim_vector_45set_33
  %cloptr158967 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158969 = getelementptr inbounds i64, i64* %cloptr158967, i64 1                ; &eptr158969[1]
  %eptr158970 = getelementptr inbounds i64, i64* %cloptr158967, i64 2                ; &eptr158970[2]
  %eptr158971 = getelementptr inbounds i64, i64* %cloptr158967, i64 3                ; &eptr158971[3]
  store i64 %ExK$f, i64* %eptr158969                                                 ; *eptr158969 = %ExK$f
  store i64 %ziY$l, i64* %eptr158970                                                 ; *eptr158970 = %ziY$l
  store i64 %cont156155, i64* %eptr158971                                            ; *eptr158971 = %cont156155
  %eptr158968 = getelementptr inbounds i64, i64* %cloptr158967, i64 0                ; &cloptr158967[0]
  %f158972 = ptrtoint void(i64,i64,i64)* @lam157300 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158972, i64* %eptr158968                                               ; store fptr
  %arg156794 = ptrtoint i64* %cloptr158967 to i64                                    ; closure cast; i64* -> i64
  %arg156793 = add i64 0, 0                                                          ; quoted ()
  %cloptr158973 = inttoptr i64 %arg156794 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158974 = getelementptr inbounds i64, i64* %cloptr158973, i64 0               ; &cloptr158973[0]
  %f158976 = load i64, i64* %i0ptr158974, align 8                                    ; load; *i0ptr158974
  %fptr158975 = inttoptr i64 %f158976 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158975(i64 %arg156794, i64 %arg156793, i64 %retprim156158); tail call
  ret void

else158966:
  %retprim156159 = call i64 @prim_void()                                             ; call prim_void
  %arg156806 = add i64 0, 0                                                          ; quoted ()
  %cloptr158977 = inttoptr i64 %cont156155 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158978 = getelementptr inbounds i64, i64* %cloptr158977, i64 0               ; &cloptr158977[0]
  %f158980 = load i64, i64* %i0ptr158978, align 8                                    ; load; *i0ptr158978
  %fptr158979 = inttoptr i64 %f158980 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158979(i64 %cont156155, i64 %arg156806, i64 %retprim156159); tail call
  ret void
}


define void @lam157300(i64 %env157301, i64 %_95156156, i64 %zfZ$_95155932) {
  %envptr158981 = inttoptr i64 %env157301 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158982 = getelementptr inbounds i64, i64* %envptr158981, i64 3              ; &envptr158981[3]
  %cont156155 = load i64, i64* %envptr158982, align 8                                ; load; *envptr158982
  %envptr158983 = inttoptr i64 %env157301 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158984 = getelementptr inbounds i64, i64* %envptr158983, i64 2              ; &envptr158983[2]
  %ziY$l = load i64, i64* %envptr158984, align 8                                     ; load; *envptr158984
  %envptr158985 = inttoptr i64 %env157301 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158986 = getelementptr inbounds i64, i64* %envptr158985, i64 1              ; &envptr158985[1]
  %ExK$f = load i64, i64* %envptr158986, align 8                                     ; load; *envptr158986
  %a156045 = call i64 @prim_car(i64 %ziY$l)                                          ; call prim_car
  %a156046 = call i64 @prim_cdr(i64 %a156045)                                        ; call prim_cdr
  %cloptr158987 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158989 = getelementptr inbounds i64, i64* %cloptr158987, i64 1                ; &eptr158989[1]
  %eptr158990 = getelementptr inbounds i64, i64* %cloptr158987, i64 2                ; &eptr158990[2]
  %eptr158991 = getelementptr inbounds i64, i64* %cloptr158987, i64 3                ; &eptr158991[3]
  store i64 %ExK$f, i64* %eptr158989                                                 ; *eptr158989 = %ExK$f
  store i64 %ziY$l, i64* %eptr158990                                                 ; *eptr158990 = %ziY$l
  store i64 %cont156155, i64* %eptr158991                                            ; *eptr158991 = %cont156155
  %eptr158988 = getelementptr inbounds i64, i64* %cloptr158987, i64 0                ; &cloptr158987[0]
  %f158992 = ptrtoint void(i64,i64,i64)* @lam157298 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158992, i64* %eptr158988                                               ; store fptr
  %arg156797 = ptrtoint i64* %cloptr158987 to i64                                    ; closure cast; i64* -> i64
  %cloptr158993 = inttoptr i64 %a156046 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr158994 = getelementptr inbounds i64, i64* %cloptr158993, i64 0               ; &cloptr158993[0]
  %f158996 = load i64, i64* %i0ptr158994, align 8                                    ; load; *i0ptr158994
  %fptr158995 = inttoptr i64 %f158996 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158995(i64 %a156046, i64 %arg156797)                ; tail call
  ret void
}


define void @lam157298(i64 %env157299, i64 %_95156157, i64 %N05$_95155933) {
  %envptr158997 = inttoptr i64 %env157299 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158998 = getelementptr inbounds i64, i64* %envptr158997, i64 3              ; &envptr158997[3]
  %cont156155 = load i64, i64* %envptr158998, align 8                                ; load; *envptr158998
  %envptr158999 = inttoptr i64 %env157299 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159000 = getelementptr inbounds i64, i64* %envptr158999, i64 2              ; &envptr158999[2]
  %ziY$l = load i64, i64* %envptr159000, align 8                                     ; load; *envptr159000
  %envptr159001 = inttoptr i64 %env157299 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159002 = getelementptr inbounds i64, i64* %envptr159001, i64 1              ; &envptr159001[1]
  %ExK$f = load i64, i64* %envptr159002, align 8                                     ; load; *envptr159002
  %arg156799 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156047 = call i64 @prim_vector_45ref(i64 %ExK$f, i64 %arg156799)                 ; call prim_vector_45ref
  %a156048 = call i64 @prim_cdr(i64 %ziY$l)                                          ; call prim_cdr
  %cloptr159003 = inttoptr i64 %a156047 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr159004 = getelementptr inbounds i64, i64* %cloptr159003, i64 0               ; &cloptr159003[0]
  %f159006 = load i64, i64* %i0ptr159004, align 8                                    ; load; *i0ptr159004
  %fptr159005 = inttoptr i64 %f159006 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159005(i64 %a156047, i64 %cont156155, i64 %a156048) ; tail call
  ret void
}


define void @lam157292(i64 %env157293, i64 %_95156143, i64 %Lq1$_95155930) {
  %envptr159007 = inttoptr i64 %env157293 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159008 = getelementptr inbounds i64, i64* %envptr159007, i64 4              ; &envptr159007[4]
  %IiX$tail = load i64, i64* %envptr159008, align 8                                  ; load; *envptr159008
  %envptr159009 = inttoptr i64 %env157293 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159010 = getelementptr inbounds i64, i64* %envptr159009, i64 3              ; &envptr159009[3]
  %bhD$new = load i64, i64* %envptr159010, align 8                                   ; load; *envptr159010
  %envptr159011 = inttoptr i64 %env157293 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159012 = getelementptr inbounds i64, i64* %envptr159011, i64 2              ; &envptr159011[2]
  %Wyx$_37wind_45stack = load i64, i64* %envptr159012, align 8                       ; load; *envptr159012
  %envptr159013 = inttoptr i64 %env157293 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159014 = getelementptr inbounds i64, i64* %envptr159013, i64 1              ; &envptr159013[1]
  %cont156141 = load i64, i64* %envptr159014, align 8                                ; load; *envptr159014
  %cloptr159015 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr159016 = getelementptr inbounds i64, i64* %cloptr159015, i64 0                ; &cloptr159015[0]
  %f159017 = ptrtoint void(i64,i64)* @lam157290 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f159017, i64* %eptr159016                                               ; store fptr
  %arg156816 = ptrtoint i64* %cloptr159015 to i64                                    ; closure cast; i64* -> i64
  %cloptr159018 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr159020 = getelementptr inbounds i64, i64* %cloptr159018, i64 1                ; &eptr159020[1]
  %eptr159021 = getelementptr inbounds i64, i64* %cloptr159018, i64 2                ; &eptr159021[2]
  %eptr159022 = getelementptr inbounds i64, i64* %cloptr159018, i64 3                ; &eptr159022[3]
  %eptr159023 = getelementptr inbounds i64, i64* %cloptr159018, i64 4                ; &eptr159023[4]
  store i64 %cont156141, i64* %eptr159020                                            ; *eptr159020 = %cont156141
  store i64 %Wyx$_37wind_45stack, i64* %eptr159021                                   ; *eptr159021 = %Wyx$_37wind_45stack
  store i64 %bhD$new, i64* %eptr159022                                               ; *eptr159022 = %bhD$new
  store i64 %IiX$tail, i64* %eptr159023                                              ; *eptr159023 = %IiX$tail
  %eptr159019 = getelementptr inbounds i64, i64* %cloptr159018, i64 0                ; &cloptr159018[0]
  %f159024 = ptrtoint void(i64,i64,i64)* @lam157287 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159024, i64* %eptr159019                                               ; store fptr
  %arg156815 = ptrtoint i64* %cloptr159018 to i64                                    ; closure cast; i64* -> i64
  %cloptr159025 = inttoptr i64 %arg156816 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr159026 = getelementptr inbounds i64, i64* %cloptr159025, i64 0               ; &cloptr159025[0]
  %f159028 = load i64, i64* %i0ptr159026, align 8                                    ; load; *i0ptr159026
  %fptr159027 = inttoptr i64 %f159028 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159027(i64 %arg156816, i64 %arg156815)              ; tail call
  ret void
}


define void @lam157290(i64 %env157291, i64 %Xuk$lst156153) {
  %cont156152 = call i64 @prim_car(i64 %Xuk$lst156153)                               ; call prim_car
  %Xuk$lst = call i64 @prim_cdr(i64 %Xuk$lst156153)                                  ; call prim_cdr
  %arg156820 = add i64 0, 0                                                          ; quoted ()
  %cloptr159029 = inttoptr i64 %cont156152 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159030 = getelementptr inbounds i64, i64* %cloptr159029, i64 0               ; &cloptr159029[0]
  %f159032 = load i64, i64* %i0ptr159030, align 8                                    ; load; *i0ptr159030
  %fptr159031 = inttoptr i64 %f159032 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159031(i64 %cont156152, i64 %arg156820, i64 %Xuk$lst); tail call
  ret void
}


define void @lam157287(i64 %env157288, i64 %_95156150, i64 %a156051) {
  %envptr159033 = inttoptr i64 %env157288 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159034 = getelementptr inbounds i64, i64* %envptr159033, i64 4              ; &envptr159033[4]
  %IiX$tail = load i64, i64* %envptr159034, align 8                                  ; load; *envptr159034
  %envptr159035 = inttoptr i64 %env157288 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159036 = getelementptr inbounds i64, i64* %envptr159035, i64 3              ; &envptr159035[3]
  %bhD$new = load i64, i64* %envptr159036, align 8                                   ; load; *envptr159036
  %envptr159037 = inttoptr i64 %env157288 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159038 = getelementptr inbounds i64, i64* %envptr159037, i64 2              ; &envptr159037[2]
  %Wyx$_37wind_45stack = load i64, i64* %envptr159038, align 8                       ; load; *envptr159038
  %envptr159039 = inttoptr i64 %env157288 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159040 = getelementptr inbounds i64, i64* %envptr159039, i64 1              ; &envptr159039[1]
  %cont156141 = load i64, i64* %envptr159040, align 8                                ; load; *envptr159040
  %arg156823 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim156151 = call i64 @prim_make_45vector(i64 %arg156823, i64 %a156051)        ; call prim_make_45vector
  %cloptr159041 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr159043 = getelementptr inbounds i64, i64* %cloptr159041, i64 1                ; &eptr159043[1]
  %eptr159044 = getelementptr inbounds i64, i64* %cloptr159041, i64 2                ; &eptr159044[2]
  %eptr159045 = getelementptr inbounds i64, i64* %cloptr159041, i64 3                ; &eptr159045[3]
  %eptr159046 = getelementptr inbounds i64, i64* %cloptr159041, i64 4                ; &eptr159046[4]
  store i64 %cont156141, i64* %eptr159043                                            ; *eptr159043 = %cont156141
  store i64 %Wyx$_37wind_45stack, i64* %eptr159044                                   ; *eptr159044 = %Wyx$_37wind_45stack
  store i64 %bhD$new, i64* %eptr159045                                               ; *eptr159045 = %bhD$new
  store i64 %IiX$tail, i64* %eptr159046                                              ; *eptr159046 = %IiX$tail
  %eptr159042 = getelementptr inbounds i64, i64* %cloptr159041, i64 0                ; &cloptr159041[0]
  %f159047 = ptrtoint void(i64,i64,i64)* @lam157284 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159047, i64* %eptr159042                                               ; store fptr
  %arg156826 = ptrtoint i64* %cloptr159041 to i64                                    ; closure cast; i64* -> i64
  %arg156825 = add i64 0, 0                                                          ; quoted ()
  %cloptr159048 = inttoptr i64 %arg156826 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr159049 = getelementptr inbounds i64, i64* %cloptr159048, i64 0               ; &cloptr159048[0]
  %f159051 = load i64, i64* %i0ptr159049, align 8                                    ; load; *i0ptr159049
  %fptr159050 = inttoptr i64 %f159051 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159050(i64 %arg156826, i64 %arg156825, i64 %retprim156151); tail call
  ret void
}


define void @lam157284(i64 %env157285, i64 %_95156144, i64 %ADB$f) {
  %envptr159052 = inttoptr i64 %env157285 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159053 = getelementptr inbounds i64, i64* %envptr159052, i64 4              ; &envptr159052[4]
  %IiX$tail = load i64, i64* %envptr159053, align 8                                  ; load; *envptr159053
  %envptr159054 = inttoptr i64 %env157285 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159055 = getelementptr inbounds i64, i64* %envptr159054, i64 3              ; &envptr159054[3]
  %bhD$new = load i64, i64* %envptr159055, align 8                                   ; load; *envptr159055
  %envptr159056 = inttoptr i64 %env157285 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159057 = getelementptr inbounds i64, i64* %envptr159056, i64 2              ; &envptr159056[2]
  %Wyx$_37wind_45stack = load i64, i64* %envptr159057, align 8                       ; load; *envptr159057
  %envptr159058 = inttoptr i64 %env157285 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159059 = getelementptr inbounds i64, i64* %envptr159058, i64 1              ; &envptr159058[1]
  %cont156141 = load i64, i64* %envptr159059, align 8                                ; load; *envptr159059
  %arg156828 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr159060 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr159062 = getelementptr inbounds i64, i64* %cloptr159060, i64 1                ; &eptr159062[1]
  %eptr159063 = getelementptr inbounds i64, i64* %cloptr159060, i64 2                ; &eptr159063[2]
  %eptr159064 = getelementptr inbounds i64, i64* %cloptr159060, i64 3                ; &eptr159064[3]
  store i64 %Wyx$_37wind_45stack, i64* %eptr159062                                   ; *eptr159062 = %Wyx$_37wind_45stack
  store i64 %ADB$f, i64* %eptr159063                                                 ; *eptr159063 = %ADB$f
  store i64 %IiX$tail, i64* %eptr159064                                              ; *eptr159064 = %IiX$tail
  %eptr159061 = getelementptr inbounds i64, i64* %cloptr159060, i64 0                ; &cloptr159060[0]
  %f159065 = ptrtoint void(i64,i64,i64)* @lam157281 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159065, i64* %eptr159061                                               ; store fptr
  %arg156827 = ptrtoint i64* %cloptr159060 to i64                                    ; closure cast; i64* -> i64
  %G2m$_95155934 = call i64 @prim_vector_45set_33(i64 %ADB$f, i64 %arg156828, i64 %arg156827); call prim_vector_45set_33
  %arg156852 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156058 = call i64 @prim_vector_45ref(i64 %ADB$f, i64 %arg156852)                 ; call prim_vector_45ref
  %cloptr159066 = inttoptr i64 %a156058 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr159067 = getelementptr inbounds i64, i64* %cloptr159066, i64 0               ; &cloptr159066[0]
  %f159069 = load i64, i64* %i0ptr159067, align 8                                    ; load; *i0ptr159067
  %fptr159068 = inttoptr i64 %f159069 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159068(i64 %a156058, i64 %cont156141, i64 %bhD$new) ; tail call
  ret void
}


define void @lam157281(i64 %env157282, i64 %cont156145, i64 %uVn$l) {
  %envptr159070 = inttoptr i64 %env157282 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159071 = getelementptr inbounds i64, i64* %envptr159070, i64 3              ; &envptr159070[3]
  %IiX$tail = load i64, i64* %envptr159071, align 8                                  ; load; *envptr159071
  %envptr159072 = inttoptr i64 %env157282 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159073 = getelementptr inbounds i64, i64* %envptr159072, i64 2              ; &envptr159072[2]
  %ADB$f = load i64, i64* %envptr159073, align 8                                     ; load; *envptr159073
  %envptr159074 = inttoptr i64 %env157282 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159075 = getelementptr inbounds i64, i64* %envptr159074, i64 1              ; &envptr159074[1]
  %Wyx$_37wind_45stack = load i64, i64* %envptr159075, align 8                       ; load; *envptr159075
  %a156052 = call i64 @prim_eq_63(i64 %uVn$l, i64 %IiX$tail)                         ; call prim_eq_63
  %a156053 = call i64 @prim_not(i64 %a156052)                                        ; call prim_not
  %cmp159076 = icmp eq i64 %a156053, 15                                              ; false?
  br i1 %cmp159076, label %else159078, label %then159077                             ; if

then159077:
  %arg156833 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a156054 = call i64 @prim_vector_45ref(i64 %ADB$f, i64 %arg156833)                 ; call prim_vector_45ref
  %a156055 = call i64 @prim_cdr(i64 %uVn$l)                                          ; call prim_cdr
  %cloptr159079 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr159081 = getelementptr inbounds i64, i64* %cloptr159079, i64 1                ; &eptr159081[1]
  %eptr159082 = getelementptr inbounds i64, i64* %cloptr159079, i64 2                ; &eptr159082[2]
  %eptr159083 = getelementptr inbounds i64, i64* %cloptr159079, i64 3                ; &eptr159083[3]
  store i64 %Wyx$_37wind_45stack, i64* %eptr159081                                   ; *eptr159081 = %Wyx$_37wind_45stack
  store i64 %cont156145, i64* %eptr159082                                            ; *eptr159082 = %cont156145
  store i64 %uVn$l, i64* %eptr159083                                                 ; *eptr159083 = %uVn$l
  %eptr159080 = getelementptr inbounds i64, i64* %cloptr159079, i64 0                ; &cloptr159079[0]
  %f159084 = ptrtoint void(i64,i64,i64)* @lam157277 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159084, i64* %eptr159080                                               ; store fptr
  %arg156837 = ptrtoint i64* %cloptr159079 to i64                                    ; closure cast; i64* -> i64
  %cloptr159085 = inttoptr i64 %a156054 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr159086 = getelementptr inbounds i64, i64* %cloptr159085, i64 0               ; &cloptr159085[0]
  %f159088 = load i64, i64* %i0ptr159086, align 8                                    ; load; *i0ptr159086
  %fptr159087 = inttoptr i64 %f159088 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159087(i64 %a156054, i64 %arg156837, i64 %a156055)  ; tail call
  ret void

else159078:
  %retprim156149 = call i64 @prim_void()                                             ; call prim_void
  %arg156850 = add i64 0, 0                                                          ; quoted ()
  %cloptr159089 = inttoptr i64 %cont156145 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159090 = getelementptr inbounds i64, i64* %cloptr159089, i64 0               ; &cloptr159089[0]
  %f159092 = load i64, i64* %i0ptr159090, align 8                                    ; load; *i0ptr159090
  %fptr159091 = inttoptr i64 %f159092 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159091(i64 %cont156145, i64 %arg156850, i64 %retprim156149); tail call
  ret void
}


define void @lam157277(i64 %env157278, i64 %_95156146, i64 %FF2$_95155935) {
  %envptr159093 = inttoptr i64 %env157278 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159094 = getelementptr inbounds i64, i64* %envptr159093, i64 3              ; &envptr159093[3]
  %uVn$l = load i64, i64* %envptr159094, align 8                                     ; load; *envptr159094
  %envptr159095 = inttoptr i64 %env157278 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159096 = getelementptr inbounds i64, i64* %envptr159095, i64 2              ; &envptr159095[2]
  %cont156145 = load i64, i64* %envptr159096, align 8                                ; load; *envptr159096
  %envptr159097 = inttoptr i64 %env157278 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159098 = getelementptr inbounds i64, i64* %envptr159097, i64 1              ; &envptr159097[1]
  %Wyx$_37wind_45stack = load i64, i64* %envptr159098, align 8                       ; load; *envptr159098
  %a156056 = call i64 @prim_car(i64 %uVn$l)                                          ; call prim_car
  %a156057 = call i64 @prim_car(i64 %a156056)                                        ; call prim_car
  %cloptr159099 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr159101 = getelementptr inbounds i64, i64* %cloptr159099, i64 1                ; &eptr159101[1]
  %eptr159102 = getelementptr inbounds i64, i64* %cloptr159099, i64 2                ; &eptr159102[2]
  %eptr159103 = getelementptr inbounds i64, i64* %cloptr159099, i64 3                ; &eptr159103[3]
  store i64 %Wyx$_37wind_45stack, i64* %eptr159101                                   ; *eptr159101 = %Wyx$_37wind_45stack
  store i64 %cont156145, i64* %eptr159102                                            ; *eptr159102 = %cont156145
  store i64 %uVn$l, i64* %eptr159103                                                 ; *eptr159103 = %uVn$l
  %eptr159100 = getelementptr inbounds i64, i64* %cloptr159099, i64 0                ; &cloptr159099[0]
  %f159104 = ptrtoint void(i64,i64,i64)* @lam157275 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159104, i64* %eptr159100                                               ; store fptr
  %arg156841 = ptrtoint i64* %cloptr159099 to i64                                    ; closure cast; i64* -> i64
  %cloptr159105 = inttoptr i64 %a156057 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr159106 = getelementptr inbounds i64, i64* %cloptr159105, i64 0               ; &cloptr159105[0]
  %f159108 = load i64, i64* %i0ptr159106, align 8                                    ; load; *i0ptr159106
  %fptr159107 = inttoptr i64 %f159108 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159107(i64 %a156057, i64 %arg156841)                ; tail call
  ret void
}


define void @lam157275(i64 %env157276, i64 %_95156147, i64 %Day$_95155936) {
  %envptr159109 = inttoptr i64 %env157276 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159110 = getelementptr inbounds i64, i64* %envptr159109, i64 3              ; &envptr159109[3]
  %uVn$l = load i64, i64* %envptr159110, align 8                                     ; load; *envptr159110
  %envptr159111 = inttoptr i64 %env157276 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159112 = getelementptr inbounds i64, i64* %envptr159111, i64 2              ; &envptr159111[2]
  %cont156145 = load i64, i64* %envptr159112, align 8                                ; load; *envptr159112
  %envptr159113 = inttoptr i64 %env157276 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159114 = getelementptr inbounds i64, i64* %envptr159113, i64 1              ; &envptr159113[1]
  %Wyx$_37wind_45stack = load i64, i64* %envptr159114, align 8                       ; load; *envptr159114
  %arg156844 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim156148 = call i64 @prim_vector_45set_33(i64 %Wyx$_37wind_45stack, i64 %arg156844, i64 %uVn$l); call prim_vector_45set_33
  %arg156847 = add i64 0, 0                                                          ; quoted ()
  %cloptr159115 = inttoptr i64 %cont156145 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159116 = getelementptr inbounds i64, i64* %cloptr159115, i64 0               ; &cloptr159115[0]
  %f159118 = load i64, i64* %i0ptr159116, align 8                                    ; load; *i0ptr159116
  %fptr159117 = inttoptr i64 %f159118 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159117(i64 %cont156145, i64 %arg156847, i64 %retprim156148); tail call
  ret void
}


define void @lam157267(i64 %env157268, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %cloptr159119 = inttoptr i64 %_951 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr159120 = getelementptr inbounds i64, i64* %cloptr159119, i64 0               ; &cloptr159119[0]
  %f159122 = load i64, i64* %i0ptr159120, align 8                                    ; load; *i0ptr159120
  %fptr159121 = inttoptr i64 %f159122 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159121(i64 %_951, i64 %_951)                        ; tail call
  ret void
}


define void @lam157258(i64 %env157259, i64 %cont156178, i64 %knc$_37foldl) {
  %envptr159123 = inttoptr i64 %env157259 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159124 = getelementptr inbounds i64, i64* %envptr159123, i64 3              ; &envptr159123[3]
  %Way$_37foldr = load i64, i64* %envptr159124, align 8                              ; load; *envptr159124
  %envptr159125 = inttoptr i64 %env157259 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159126 = getelementptr inbounds i64, i64* %envptr159125, i64 2              ; &envptr159125[2]
  %WD5$_37map1 = load i64, i64* %envptr159126, align 8                               ; load; *envptr159126
  %envptr159127 = inttoptr i64 %env157259 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159128 = getelementptr inbounds i64, i64* %envptr159127, i64 1              ; &envptr159127[1]
  %Jzl$_37foldr1 = load i64, i64* %envptr159128, align 8                             ; load; *envptr159128
  %arg156866 = add i64 0, 0                                                          ; quoted ()
  %cloptr159129 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr159131 = getelementptr inbounds i64, i64* %cloptr159129, i64 1                ; &eptr159131[1]
  %eptr159132 = getelementptr inbounds i64, i64* %cloptr159129, i64 2                ; &eptr159132[2]
  %eptr159133 = getelementptr inbounds i64, i64* %cloptr159129, i64 3                ; &eptr159133[3]
  %eptr159134 = getelementptr inbounds i64, i64* %cloptr159129, i64 4                ; &eptr159134[4]
  store i64 %Jzl$_37foldr1, i64* %eptr159131                                         ; *eptr159131 = %Jzl$_37foldr1
  store i64 %WD5$_37map1, i64* %eptr159132                                           ; *eptr159132 = %WD5$_37map1
  store i64 %knc$_37foldl, i64* %eptr159133                                          ; *eptr159133 = %knc$_37foldl
  store i64 %Way$_37foldr, i64* %eptr159134                                          ; *eptr159134 = %Way$_37foldr
  %eptr159130 = getelementptr inbounds i64, i64* %cloptr159129, i64 0                ; &cloptr159129[0]
  %f159135 = ptrtoint void(i64,i64)* @lam157255 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f159135, i64* %eptr159130                                               ; store fptr
  %arg156865 = ptrtoint i64* %cloptr159129 to i64                                    ; closure cast; i64* -> i64
  %cloptr159136 = inttoptr i64 %cont156178 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159137 = getelementptr inbounds i64, i64* %cloptr159136, i64 0               ; &cloptr159136[0]
  %f159139 = load i64, i64* %i0ptr159137, align 8                                    ; load; *i0ptr159137
  %fptr159138 = inttoptr i64 %f159139 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159138(i64 %cont156178, i64 %arg156866, i64 %arg156865); tail call
  ret void
}


define void @lam157255(i64 %env157256, i64 %Tsu$args156180) {
  %envptr159140 = inttoptr i64 %env157256 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159141 = getelementptr inbounds i64, i64* %envptr159140, i64 4              ; &envptr159140[4]
  %Way$_37foldr = load i64, i64* %envptr159141, align 8                              ; load; *envptr159141
  %envptr159142 = inttoptr i64 %env157256 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159143 = getelementptr inbounds i64, i64* %envptr159142, i64 3              ; &envptr159142[3]
  %knc$_37foldl = load i64, i64* %envptr159143, align 8                              ; load; *envptr159143
  %envptr159144 = inttoptr i64 %env157256 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159145 = getelementptr inbounds i64, i64* %envptr159144, i64 2              ; &envptr159144[2]
  %WD5$_37map1 = load i64, i64* %envptr159145, align 8                               ; load; *envptr159145
  %envptr159146 = inttoptr i64 %env157256 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159147 = getelementptr inbounds i64, i64* %envptr159146, i64 1              ; &envptr159146[1]
  %Jzl$_37foldr1 = load i64, i64* %envptr159147, align 8                             ; load; *envptr159147
  %cont156179 = call i64 @prim_car(i64 %Tsu$args156180)                              ; call prim_car
  %Tsu$args = call i64 @prim_cdr(i64 %Tsu$args156180)                                ; call prim_cdr
  %l5T$f = call i64 @prim_car(i64 %Tsu$args)                                         ; call prim_car
  %a155977 = call i64 @prim_cdr(i64 %Tsu$args)                                       ; call prim_cdr
  %retprim156199 = call i64 @prim_car(i64 %a155977)                                  ; call prim_car
  %cloptr159148 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr159150 = getelementptr inbounds i64, i64* %cloptr159148, i64 1                ; &eptr159150[1]
  %eptr159151 = getelementptr inbounds i64, i64* %cloptr159148, i64 2                ; &eptr159151[2]
  %eptr159152 = getelementptr inbounds i64, i64* %cloptr159148, i64 3                ; &eptr159152[3]
  %eptr159153 = getelementptr inbounds i64, i64* %cloptr159148, i64 4                ; &eptr159153[4]
  %eptr159154 = getelementptr inbounds i64, i64* %cloptr159148, i64 5                ; &eptr159154[5]
  %eptr159155 = getelementptr inbounds i64, i64* %cloptr159148, i64 6                ; &eptr159155[6]
  %eptr159156 = getelementptr inbounds i64, i64* %cloptr159148, i64 7                ; &eptr159156[7]
  store i64 %l5T$f, i64* %eptr159150                                                 ; *eptr159150 = %l5T$f
  store i64 %Jzl$_37foldr1, i64* %eptr159151                                         ; *eptr159151 = %Jzl$_37foldr1
  store i64 %cont156179, i64* %eptr159152                                            ; *eptr159152 = %cont156179
  store i64 %WD5$_37map1, i64* %eptr159153                                           ; *eptr159153 = %WD5$_37map1
  store i64 %knc$_37foldl, i64* %eptr159154                                          ; *eptr159154 = %knc$_37foldl
  store i64 %Way$_37foldr, i64* %eptr159155                                          ; *eptr159155 = %Way$_37foldr
  store i64 %Tsu$args, i64* %eptr159156                                              ; *eptr159156 = %Tsu$args
  %eptr159149 = getelementptr inbounds i64, i64* %cloptr159148, i64 0                ; &cloptr159148[0]
  %f159157 = ptrtoint void(i64,i64,i64)* @lam157253 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159157, i64* %eptr159149                                               ; store fptr
  %arg156875 = ptrtoint i64* %cloptr159148 to i64                                    ; closure cast; i64* -> i64
  %arg156874 = add i64 0, 0                                                          ; quoted ()
  %cloptr159158 = inttoptr i64 %arg156875 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr159159 = getelementptr inbounds i64, i64* %cloptr159158, i64 0               ; &cloptr159158[0]
  %f159161 = load i64, i64* %i0ptr159159, align 8                                    ; load; *i0ptr159159
  %fptr159160 = inttoptr i64 %f159161 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159160(i64 %arg156875, i64 %arg156874, i64 %retprim156199); tail call
  ret void
}


define void @lam157253(i64 %env157254, i64 %_95156181, i64 %Np2$acc) {
  %envptr159162 = inttoptr i64 %env157254 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159163 = getelementptr inbounds i64, i64* %envptr159162, i64 7              ; &envptr159162[7]
  %Tsu$args = load i64, i64* %envptr159163, align 8                                  ; load; *envptr159163
  %envptr159164 = inttoptr i64 %env157254 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159165 = getelementptr inbounds i64, i64* %envptr159164, i64 6              ; &envptr159164[6]
  %Way$_37foldr = load i64, i64* %envptr159165, align 8                              ; load; *envptr159165
  %envptr159166 = inttoptr i64 %env157254 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159167 = getelementptr inbounds i64, i64* %envptr159166, i64 5              ; &envptr159166[5]
  %knc$_37foldl = load i64, i64* %envptr159167, align 8                              ; load; *envptr159167
  %envptr159168 = inttoptr i64 %env157254 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159169 = getelementptr inbounds i64, i64* %envptr159168, i64 4              ; &envptr159168[4]
  %WD5$_37map1 = load i64, i64* %envptr159169, align 8                               ; load; *envptr159169
  %envptr159170 = inttoptr i64 %env157254 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159171 = getelementptr inbounds i64, i64* %envptr159170, i64 3              ; &envptr159170[3]
  %cont156179 = load i64, i64* %envptr159171, align 8                                ; load; *envptr159171
  %envptr159172 = inttoptr i64 %env157254 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159173 = getelementptr inbounds i64, i64* %envptr159172, i64 2              ; &envptr159172[2]
  %Jzl$_37foldr1 = load i64, i64* %envptr159173, align 8                             ; load; *envptr159173
  %envptr159174 = inttoptr i64 %env157254 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159175 = getelementptr inbounds i64, i64* %envptr159174, i64 1              ; &envptr159174[1]
  %l5T$f = load i64, i64* %envptr159175, align 8                                     ; load; *envptr159175
  %a155978 = call i64 @prim_cdr(i64 %Tsu$args)                                       ; call prim_cdr
  %retprim156198 = call i64 @prim_cdr(i64 %a155978)                                  ; call prim_cdr
  %cloptr159176 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr159178 = getelementptr inbounds i64, i64* %cloptr159176, i64 1                ; &eptr159178[1]
  %eptr159179 = getelementptr inbounds i64, i64* %cloptr159176, i64 2                ; &eptr159179[2]
  %eptr159180 = getelementptr inbounds i64, i64* %cloptr159176, i64 3                ; &eptr159180[3]
  %eptr159181 = getelementptr inbounds i64, i64* %cloptr159176, i64 4                ; &eptr159181[4]
  %eptr159182 = getelementptr inbounds i64, i64* %cloptr159176, i64 5                ; &eptr159182[5]
  %eptr159183 = getelementptr inbounds i64, i64* %cloptr159176, i64 6                ; &eptr159183[6]
  %eptr159184 = getelementptr inbounds i64, i64* %cloptr159176, i64 7                ; &eptr159184[7]
  store i64 %l5T$f, i64* %eptr159178                                                 ; *eptr159178 = %l5T$f
  store i64 %Jzl$_37foldr1, i64* %eptr159179                                         ; *eptr159179 = %Jzl$_37foldr1
  store i64 %cont156179, i64* %eptr159180                                            ; *eptr159180 = %cont156179
  store i64 %Np2$acc, i64* %eptr159181                                               ; *eptr159181 = %Np2$acc
  store i64 %WD5$_37map1, i64* %eptr159182                                           ; *eptr159182 = %WD5$_37map1
  store i64 %knc$_37foldl, i64* %eptr159183                                          ; *eptr159183 = %knc$_37foldl
  store i64 %Way$_37foldr, i64* %eptr159184                                          ; *eptr159184 = %Way$_37foldr
  %eptr159177 = getelementptr inbounds i64, i64* %cloptr159176, i64 0                ; &cloptr159176[0]
  %f159185 = ptrtoint void(i64,i64,i64)* @lam157251 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159185, i64* %eptr159177                                               ; store fptr
  %arg156880 = ptrtoint i64* %cloptr159176 to i64                                    ; closure cast; i64* -> i64
  %arg156879 = add i64 0, 0                                                          ; quoted ()
  %cloptr159186 = inttoptr i64 %arg156880 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr159187 = getelementptr inbounds i64, i64* %cloptr159186, i64 0               ; &cloptr159186[0]
  %f159189 = load i64, i64* %i0ptr159187, align 8                                    ; load; *i0ptr159187
  %fptr159188 = inttoptr i64 %f159189 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159188(i64 %arg156880, i64 %arg156879, i64 %retprim156198); tail call
  ret void
}


define void @lam157251(i64 %env157252, i64 %_95156182, i64 %UO3$lsts) {
  %envptr159190 = inttoptr i64 %env157252 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159191 = getelementptr inbounds i64, i64* %envptr159190, i64 7              ; &envptr159190[7]
  %Way$_37foldr = load i64, i64* %envptr159191, align 8                              ; load; *envptr159191
  %envptr159192 = inttoptr i64 %env157252 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159193 = getelementptr inbounds i64, i64* %envptr159192, i64 6              ; &envptr159192[6]
  %knc$_37foldl = load i64, i64* %envptr159193, align 8                              ; load; *envptr159193
  %envptr159194 = inttoptr i64 %env157252 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159195 = getelementptr inbounds i64, i64* %envptr159194, i64 5              ; &envptr159194[5]
  %WD5$_37map1 = load i64, i64* %envptr159195, align 8                               ; load; *envptr159195
  %envptr159196 = inttoptr i64 %env157252 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159197 = getelementptr inbounds i64, i64* %envptr159196, i64 4              ; &envptr159196[4]
  %Np2$acc = load i64, i64* %envptr159197, align 8                                   ; load; *envptr159197
  %envptr159198 = inttoptr i64 %env157252 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159199 = getelementptr inbounds i64, i64* %envptr159198, i64 3              ; &envptr159198[3]
  %cont156179 = load i64, i64* %envptr159199, align 8                                ; load; *envptr159199
  %envptr159200 = inttoptr i64 %env157252 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159201 = getelementptr inbounds i64, i64* %envptr159200, i64 2              ; &envptr159200[2]
  %Jzl$_37foldr1 = load i64, i64* %envptr159201, align 8                             ; load; *envptr159201
  %envptr159202 = inttoptr i64 %env157252 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159203 = getelementptr inbounds i64, i64* %envptr159202, i64 1              ; &envptr159202[1]
  %l5T$f = load i64, i64* %envptr159203, align 8                                     ; load; *envptr159203
  %cloptr159204 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr159206 = getelementptr inbounds i64, i64* %cloptr159204, i64 1                ; &eptr159206[1]
  %eptr159207 = getelementptr inbounds i64, i64* %cloptr159204, i64 2                ; &eptr159207[2]
  %eptr159208 = getelementptr inbounds i64, i64* %cloptr159204, i64 3                ; &eptr159208[3]
  %eptr159209 = getelementptr inbounds i64, i64* %cloptr159204, i64 4                ; &eptr159209[4]
  %eptr159210 = getelementptr inbounds i64, i64* %cloptr159204, i64 5                ; &eptr159210[5]
  %eptr159211 = getelementptr inbounds i64, i64* %cloptr159204, i64 6                ; &eptr159211[6]
  %eptr159212 = getelementptr inbounds i64, i64* %cloptr159204, i64 7                ; &eptr159212[7]
  store i64 %l5T$f, i64* %eptr159206                                                 ; *eptr159206 = %l5T$f
  store i64 %cont156179, i64* %eptr159207                                            ; *eptr159207 = %cont156179
  store i64 %Np2$acc, i64* %eptr159208                                               ; *eptr159208 = %Np2$acc
  store i64 %WD5$_37map1, i64* %eptr159209                                           ; *eptr159209 = %WD5$_37map1
  store i64 %knc$_37foldl, i64* %eptr159210                                          ; *eptr159210 = %knc$_37foldl
  store i64 %Way$_37foldr, i64* %eptr159211                                          ; *eptr159211 = %Way$_37foldr
  store i64 %UO3$lsts, i64* %eptr159212                                              ; *eptr159212 = %UO3$lsts
  %eptr159205 = getelementptr inbounds i64, i64* %cloptr159204, i64 0                ; &cloptr159204[0]
  %f159213 = ptrtoint void(i64,i64,i64)* @lam157249 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159213, i64* %eptr159205                                               ; store fptr
  %arg156884 = ptrtoint i64* %cloptr159204 to i64                                    ; closure cast; i64* -> i64
  %cloptr159214 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr159215 = getelementptr inbounds i64, i64* %cloptr159214, i64 0                ; &cloptr159214[0]
  %f159216 = ptrtoint void(i64,i64,i64,i64)* @lam157228 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f159216, i64* %eptr159215                                               ; store fptr
  %arg156883 = ptrtoint i64* %cloptr159214 to i64                                    ; closure cast; i64* -> i64
  %arg156882 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr159217 = inttoptr i64 %Jzl$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr159218 = getelementptr inbounds i64, i64* %cloptr159217, i64 0               ; &cloptr159217[0]
  %f159220 = load i64, i64* %i0ptr159218, align 8                                    ; load; *i0ptr159218
  %fptr159219 = inttoptr i64 %f159220 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159219(i64 %Jzl$_37foldr1, i64 %arg156884, i64 %arg156883, i64 %arg156882, i64 %UO3$lsts); tail call
  ret void
}


define void @lam157249(i64 %env157250, i64 %_95156183, i64 %a155979) {
  %envptr159221 = inttoptr i64 %env157250 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159222 = getelementptr inbounds i64, i64* %envptr159221, i64 7              ; &envptr159221[7]
  %UO3$lsts = load i64, i64* %envptr159222, align 8                                  ; load; *envptr159222
  %envptr159223 = inttoptr i64 %env157250 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159224 = getelementptr inbounds i64, i64* %envptr159223, i64 6              ; &envptr159223[6]
  %Way$_37foldr = load i64, i64* %envptr159224, align 8                              ; load; *envptr159224
  %envptr159225 = inttoptr i64 %env157250 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159226 = getelementptr inbounds i64, i64* %envptr159225, i64 5              ; &envptr159225[5]
  %knc$_37foldl = load i64, i64* %envptr159226, align 8                              ; load; *envptr159226
  %envptr159227 = inttoptr i64 %env157250 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159228 = getelementptr inbounds i64, i64* %envptr159227, i64 4              ; &envptr159227[4]
  %WD5$_37map1 = load i64, i64* %envptr159228, align 8                               ; load; *envptr159228
  %envptr159229 = inttoptr i64 %env157250 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159230 = getelementptr inbounds i64, i64* %envptr159229, i64 3              ; &envptr159229[3]
  %Np2$acc = load i64, i64* %envptr159230, align 8                                   ; load; *envptr159230
  %envptr159231 = inttoptr i64 %env157250 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159232 = getelementptr inbounds i64, i64* %envptr159231, i64 2              ; &envptr159231[2]
  %cont156179 = load i64, i64* %envptr159232, align 8                                ; load; *envptr159232
  %envptr159233 = inttoptr i64 %env157250 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159234 = getelementptr inbounds i64, i64* %envptr159233, i64 1              ; &envptr159233[1]
  %l5T$f = load i64, i64* %envptr159234, align 8                                     ; load; *envptr159234
  %cmp159235 = icmp eq i64 %a155979, 15                                              ; false?
  br i1 %cmp159235, label %else159237, label %then159236                             ; if

then159236:
  %arg156887 = add i64 0, 0                                                          ; quoted ()
  %cloptr159238 = inttoptr i64 %cont156179 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159239 = getelementptr inbounds i64, i64* %cloptr159238, i64 0               ; &cloptr159238[0]
  %f159241 = load i64, i64* %i0ptr159239, align 8                                    ; load; *i0ptr159239
  %fptr159240 = inttoptr i64 %f159241 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159240(i64 %cont156179, i64 %arg156887, i64 %Np2$acc); tail call
  ret void

else159237:
  %cloptr159242 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr159244 = getelementptr inbounds i64, i64* %cloptr159242, i64 1                ; &eptr159244[1]
  %eptr159245 = getelementptr inbounds i64, i64* %cloptr159242, i64 2                ; &eptr159245[2]
  %eptr159246 = getelementptr inbounds i64, i64* %cloptr159242, i64 3                ; &eptr159246[3]
  %eptr159247 = getelementptr inbounds i64, i64* %cloptr159242, i64 4                ; &eptr159247[4]
  %eptr159248 = getelementptr inbounds i64, i64* %cloptr159242, i64 5                ; &eptr159248[5]
  %eptr159249 = getelementptr inbounds i64, i64* %cloptr159242, i64 6                ; &eptr159249[6]
  %eptr159250 = getelementptr inbounds i64, i64* %cloptr159242, i64 7                ; &eptr159250[7]
  store i64 %l5T$f, i64* %eptr159244                                                 ; *eptr159244 = %l5T$f
  store i64 %cont156179, i64* %eptr159245                                            ; *eptr159245 = %cont156179
  store i64 %Np2$acc, i64* %eptr159246                                               ; *eptr159246 = %Np2$acc
  store i64 %WD5$_37map1, i64* %eptr159247                                           ; *eptr159247 = %WD5$_37map1
  store i64 %knc$_37foldl, i64* %eptr159248                                          ; *eptr159248 = %knc$_37foldl
  store i64 %Way$_37foldr, i64* %eptr159249                                          ; *eptr159249 = %Way$_37foldr
  store i64 %UO3$lsts, i64* %eptr159250                                              ; *eptr159250 = %UO3$lsts
  %eptr159243 = getelementptr inbounds i64, i64* %cloptr159242, i64 0                ; &cloptr159242[0]
  %f159251 = ptrtoint void(i64,i64,i64)* @lam157247 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159251, i64* %eptr159243                                               ; store fptr
  %arg156891 = ptrtoint i64* %cloptr159242 to i64                                    ; closure cast; i64* -> i64
  %cloptr159252 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr159253 = getelementptr inbounds i64, i64* %cloptr159252, i64 0                ; &cloptr159252[0]
  %f159254 = ptrtoint void(i64,i64,i64)* @lam157232 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159254, i64* %eptr159253                                               ; store fptr
  %arg156890 = ptrtoint i64* %cloptr159252 to i64                                    ; closure cast; i64* -> i64
  %cloptr159255 = inttoptr i64 %WD5$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr159256 = getelementptr inbounds i64, i64* %cloptr159255, i64 0               ; &cloptr159255[0]
  %f159258 = load i64, i64* %i0ptr159256, align 8                                    ; load; *i0ptr159256
  %fptr159257 = inttoptr i64 %f159258 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159257(i64 %WD5$_37map1, i64 %arg156891, i64 %arg156890, i64 %UO3$lsts); tail call
  ret void
}


define void @lam157247(i64 %env157248, i64 %_95156184, i64 %TIk$lsts_43) {
  %envptr159259 = inttoptr i64 %env157248 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159260 = getelementptr inbounds i64, i64* %envptr159259, i64 7              ; &envptr159259[7]
  %UO3$lsts = load i64, i64* %envptr159260, align 8                                  ; load; *envptr159260
  %envptr159261 = inttoptr i64 %env157248 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159262 = getelementptr inbounds i64, i64* %envptr159261, i64 6              ; &envptr159261[6]
  %Way$_37foldr = load i64, i64* %envptr159262, align 8                              ; load; *envptr159262
  %envptr159263 = inttoptr i64 %env157248 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159264 = getelementptr inbounds i64, i64* %envptr159263, i64 5              ; &envptr159263[5]
  %knc$_37foldl = load i64, i64* %envptr159264, align 8                              ; load; *envptr159264
  %envptr159265 = inttoptr i64 %env157248 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159266 = getelementptr inbounds i64, i64* %envptr159265, i64 4              ; &envptr159265[4]
  %WD5$_37map1 = load i64, i64* %envptr159266, align 8                               ; load; *envptr159266
  %envptr159267 = inttoptr i64 %env157248 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159268 = getelementptr inbounds i64, i64* %envptr159267, i64 3              ; &envptr159267[3]
  %Np2$acc = load i64, i64* %envptr159268, align 8                                   ; load; *envptr159268
  %envptr159269 = inttoptr i64 %env157248 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159270 = getelementptr inbounds i64, i64* %envptr159269, i64 2              ; &envptr159269[2]
  %cont156179 = load i64, i64* %envptr159270, align 8                                ; load; *envptr159270
  %envptr159271 = inttoptr i64 %env157248 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159272 = getelementptr inbounds i64, i64* %envptr159271, i64 1              ; &envptr159271[1]
  %l5T$f = load i64, i64* %envptr159272, align 8                                     ; load; *envptr159272
  %cloptr159273 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr159275 = getelementptr inbounds i64, i64* %cloptr159273, i64 1                ; &eptr159275[1]
  %eptr159276 = getelementptr inbounds i64, i64* %cloptr159273, i64 2                ; &eptr159276[2]
  %eptr159277 = getelementptr inbounds i64, i64* %cloptr159273, i64 3                ; &eptr159277[3]
  %eptr159278 = getelementptr inbounds i64, i64* %cloptr159273, i64 4                ; &eptr159278[4]
  %eptr159279 = getelementptr inbounds i64, i64* %cloptr159273, i64 5                ; &eptr159279[5]
  %eptr159280 = getelementptr inbounds i64, i64* %cloptr159273, i64 6                ; &eptr159280[6]
  store i64 %l5T$f, i64* %eptr159275                                                 ; *eptr159275 = %l5T$f
  store i64 %cont156179, i64* %eptr159276                                            ; *eptr159276 = %cont156179
  store i64 %Np2$acc, i64* %eptr159277                                               ; *eptr159277 = %Np2$acc
  store i64 %knc$_37foldl, i64* %eptr159278                                          ; *eptr159278 = %knc$_37foldl
  store i64 %Way$_37foldr, i64* %eptr159279                                          ; *eptr159279 = %Way$_37foldr
  store i64 %TIk$lsts_43, i64* %eptr159280                                           ; *eptr159280 = %TIk$lsts_43
  %eptr159274 = getelementptr inbounds i64, i64* %cloptr159273, i64 0                ; &cloptr159273[0]
  %f159281 = ptrtoint void(i64,i64,i64)* @lam157245 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159281, i64* %eptr159274                                               ; store fptr
  %arg156895 = ptrtoint i64* %cloptr159273 to i64                                    ; closure cast; i64* -> i64
  %cloptr159282 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr159283 = getelementptr inbounds i64, i64* %cloptr159282, i64 0                ; &cloptr159282[0]
  %f159284 = ptrtoint void(i64,i64,i64)* @lam157235 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159284, i64* %eptr159283                                               ; store fptr
  %arg156894 = ptrtoint i64* %cloptr159282 to i64                                    ; closure cast; i64* -> i64
  %cloptr159285 = inttoptr i64 %WD5$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr159286 = getelementptr inbounds i64, i64* %cloptr159285, i64 0               ; &cloptr159285[0]
  %f159288 = load i64, i64* %i0ptr159286, align 8                                    ; load; *i0ptr159286
  %fptr159287 = inttoptr i64 %f159288 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159287(i64 %WD5$_37map1, i64 %arg156895, i64 %arg156894, i64 %UO3$lsts); tail call
  ret void
}


define void @lam157245(i64 %env157246, i64 %_95156185, i64 %HGv$vs) {
  %envptr159289 = inttoptr i64 %env157246 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159290 = getelementptr inbounds i64, i64* %envptr159289, i64 6              ; &envptr159289[6]
  %TIk$lsts_43 = load i64, i64* %envptr159290, align 8                               ; load; *envptr159290
  %envptr159291 = inttoptr i64 %env157246 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159292 = getelementptr inbounds i64, i64* %envptr159291, i64 5              ; &envptr159291[5]
  %Way$_37foldr = load i64, i64* %envptr159292, align 8                              ; load; *envptr159292
  %envptr159293 = inttoptr i64 %env157246 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159294 = getelementptr inbounds i64, i64* %envptr159293, i64 4              ; &envptr159293[4]
  %knc$_37foldl = load i64, i64* %envptr159294, align 8                              ; load; *envptr159294
  %envptr159295 = inttoptr i64 %env157246 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159296 = getelementptr inbounds i64, i64* %envptr159295, i64 3              ; &envptr159295[3]
  %Np2$acc = load i64, i64* %envptr159296, align 8                                   ; load; *envptr159296
  %envptr159297 = inttoptr i64 %env157246 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159298 = getelementptr inbounds i64, i64* %envptr159297, i64 2              ; &envptr159297[2]
  %cont156179 = load i64, i64* %envptr159298, align 8                                ; load; *envptr159298
  %envptr159299 = inttoptr i64 %env157246 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159300 = getelementptr inbounds i64, i64* %envptr159299, i64 1              ; &envptr159299[1]
  %l5T$f = load i64, i64* %envptr159300, align 8                                     ; load; *envptr159300
  %arg156897 = add i64 0, 0                                                          ; quoted ()
  %a155980 = call i64 @prim_cons(i64 %Np2$acc, i64 %arg156897)                       ; call prim_cons
  %cloptr159301 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr159303 = getelementptr inbounds i64, i64* %cloptr159301, i64 1                ; &eptr159303[1]
  %eptr159304 = getelementptr inbounds i64, i64* %cloptr159301, i64 2                ; &eptr159304[2]
  %eptr159305 = getelementptr inbounds i64, i64* %cloptr159301, i64 3                ; &eptr159305[3]
  %eptr159306 = getelementptr inbounds i64, i64* %cloptr159301, i64 4                ; &eptr159306[4]
  store i64 %l5T$f, i64* %eptr159303                                                 ; *eptr159303 = %l5T$f
  store i64 %cont156179, i64* %eptr159304                                            ; *eptr159304 = %cont156179
  store i64 %knc$_37foldl, i64* %eptr159305                                          ; *eptr159305 = %knc$_37foldl
  store i64 %TIk$lsts_43, i64* %eptr159306                                           ; *eptr159306 = %TIk$lsts_43
  %eptr159302 = getelementptr inbounds i64, i64* %cloptr159301, i64 0                ; &cloptr159301[0]
  %f159307 = ptrtoint void(i64,i64,i64)* @lam157242 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159307, i64* %eptr159302                                               ; store fptr
  %arg156902 = ptrtoint i64* %cloptr159301 to i64                                    ; closure cast; i64* -> i64
  %cloptr159308 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr159309 = getelementptr inbounds i64, i64* %cloptr159308, i64 0                ; &cloptr159308[0]
  %f159310 = ptrtoint void(i64,i64,i64,i64)* @lam157238 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f159310, i64* %eptr159309                                               ; store fptr
  %arg156901 = ptrtoint i64* %cloptr159308 to i64                                    ; closure cast; i64* -> i64
  %cloptr159311 = inttoptr i64 %Way$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr159312 = getelementptr inbounds i64, i64* %cloptr159311, i64 0               ; &cloptr159311[0]
  %f159314 = load i64, i64* %i0ptr159312, align 8                                    ; load; *i0ptr159312
  %fptr159313 = inttoptr i64 %f159314 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159313(i64 %Way$_37foldr, i64 %arg156902, i64 %arg156901, i64 %a155980, i64 %HGv$vs); tail call
  ret void
}


define void @lam157242(i64 %env157243, i64 %_95156188, i64 %a155981) {
  %envptr159315 = inttoptr i64 %env157243 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159316 = getelementptr inbounds i64, i64* %envptr159315, i64 4              ; &envptr159315[4]
  %TIk$lsts_43 = load i64, i64* %envptr159316, align 8                               ; load; *envptr159316
  %envptr159317 = inttoptr i64 %env157243 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159318 = getelementptr inbounds i64, i64* %envptr159317, i64 3              ; &envptr159317[3]
  %knc$_37foldl = load i64, i64* %envptr159318, align 8                              ; load; *envptr159318
  %envptr159319 = inttoptr i64 %env157243 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159320 = getelementptr inbounds i64, i64* %envptr159319, i64 2              ; &envptr159319[2]
  %cont156179 = load i64, i64* %envptr159320, align 8                                ; load; *envptr159320
  %envptr159321 = inttoptr i64 %env157243 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159322 = getelementptr inbounds i64, i64* %envptr159321, i64 1              ; &envptr159321[1]
  %l5T$f = load i64, i64* %envptr159322, align 8                                     ; load; *envptr159322
  %cloptr159323 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr159325 = getelementptr inbounds i64, i64* %cloptr159323, i64 1                ; &eptr159325[1]
  %eptr159326 = getelementptr inbounds i64, i64* %cloptr159323, i64 2                ; &eptr159326[2]
  %eptr159327 = getelementptr inbounds i64, i64* %cloptr159323, i64 3                ; &eptr159327[3]
  %eptr159328 = getelementptr inbounds i64, i64* %cloptr159323, i64 4                ; &eptr159328[4]
  store i64 %l5T$f, i64* %eptr159325                                                 ; *eptr159325 = %l5T$f
  store i64 %cont156179, i64* %eptr159326                                            ; *eptr159326 = %cont156179
  store i64 %knc$_37foldl, i64* %eptr159327                                          ; *eptr159327 = %knc$_37foldl
  store i64 %TIk$lsts_43, i64* %eptr159328                                           ; *eptr159328 = %TIk$lsts_43
  %eptr159324 = getelementptr inbounds i64, i64* %cloptr159323, i64 0                ; &cloptr159323[0]
  %f159329 = ptrtoint void(i64,i64,i64)* @lam157240 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159329, i64* %eptr159324                                               ; store fptr
  %arg156905 = ptrtoint i64* %cloptr159323 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst156189 = call i64 @prim_cons(i64 %arg156905, i64 %a155981)               ; call prim_cons
  %cloptr159330 = inttoptr i64 %l5T$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr159331 = getelementptr inbounds i64, i64* %cloptr159330, i64 0               ; &cloptr159330[0]
  %f159333 = load i64, i64* %i0ptr159331, align 8                                    ; load; *i0ptr159331
  %fptr159332 = inttoptr i64 %f159333 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159332(i64 %l5T$f, i64 %cps_45lst156189)            ; tail call
  ret void
}


define void @lam157240(i64 %env157241, i64 %_95156186, i64 %JHJ$acc_43) {
  %envptr159334 = inttoptr i64 %env157241 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159335 = getelementptr inbounds i64, i64* %envptr159334, i64 4              ; &envptr159334[4]
  %TIk$lsts_43 = load i64, i64* %envptr159335, align 8                               ; load; *envptr159335
  %envptr159336 = inttoptr i64 %env157241 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159337 = getelementptr inbounds i64, i64* %envptr159336, i64 3              ; &envptr159336[3]
  %knc$_37foldl = load i64, i64* %envptr159337, align 8                              ; load; *envptr159337
  %envptr159338 = inttoptr i64 %env157241 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159339 = getelementptr inbounds i64, i64* %envptr159338, i64 2              ; &envptr159338[2]
  %cont156179 = load i64, i64* %envptr159339, align 8                                ; load; *envptr159339
  %envptr159340 = inttoptr i64 %env157241 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159341 = getelementptr inbounds i64, i64* %envptr159340, i64 1              ; &envptr159340[1]
  %l5T$f = load i64, i64* %envptr159341, align 8                                     ; load; *envptr159341
  %a155982 = call i64 @prim_cons(i64 %JHJ$acc_43, i64 %TIk$lsts_43)                  ; call prim_cons
  %a155983 = call i64 @prim_cons(i64 %l5T$f, i64 %a155982)                           ; call prim_cons
  %cps_45lst156187 = call i64 @prim_cons(i64 %cont156179, i64 %a155983)              ; call prim_cons
  %cloptr159342 = inttoptr i64 %knc$_37foldl to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr159343 = getelementptr inbounds i64, i64* %cloptr159342, i64 0               ; &cloptr159342[0]
  %f159345 = load i64, i64* %i0ptr159343, align 8                                    ; load; *i0ptr159343
  %fptr159344 = inttoptr i64 %f159345 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159344(i64 %knc$_37foldl, i64 %cps_45lst156187)     ; tail call
  ret void
}


define void @lam157238(i64 %env157239, i64 %cont156190, i64 %wq7$a, i64 %P7J$b) {
  %retprim156191 = call i64 @prim_cons(i64 %wq7$a, i64 %P7J$b)                       ; call prim_cons
  %arg156915 = add i64 0, 0                                                          ; quoted ()
  %cloptr159346 = inttoptr i64 %cont156190 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159347 = getelementptr inbounds i64, i64* %cloptr159346, i64 0               ; &cloptr159346[0]
  %f159349 = load i64, i64* %i0ptr159347, align 8                                    ; load; *i0ptr159347
  %fptr159348 = inttoptr i64 %f159349 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159348(i64 %cont156190, i64 %arg156915, i64 %retprim156191); tail call
  ret void
}


define void @lam157235(i64 %env157236, i64 %cont156192, i64 %Yki$x) {
  %retprim156193 = call i64 @prim_car(i64 %Yki$x)                                    ; call prim_car
  %arg156919 = add i64 0, 0                                                          ; quoted ()
  %cloptr159350 = inttoptr i64 %cont156192 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159351 = getelementptr inbounds i64, i64* %cloptr159350, i64 0               ; &cloptr159350[0]
  %f159353 = load i64, i64* %i0ptr159351, align 8                                    ; load; *i0ptr159351
  %fptr159352 = inttoptr i64 %f159353 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159352(i64 %cont156192, i64 %arg156919, i64 %retprim156193); tail call
  ret void
}


define void @lam157232(i64 %env157233, i64 %cont156194, i64 %UhB$x) {
  %retprim156195 = call i64 @prim_cdr(i64 %UhB$x)                                    ; call prim_cdr
  %arg156923 = add i64 0, 0                                                          ; quoted ()
  %cloptr159354 = inttoptr i64 %cont156194 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159355 = getelementptr inbounds i64, i64* %cloptr159354, i64 0               ; &cloptr159354[0]
  %f159357 = load i64, i64* %i0ptr159355, align 8                                    ; load; *i0ptr159355
  %fptr159356 = inttoptr i64 %f159357 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159356(i64 %cont156194, i64 %arg156923, i64 %retprim156195); tail call
  ret void
}


define void @lam157228(i64 %env157229, i64 %cont156196, i64 %BGE$lst, i64 %gvk$b) {
  %cmp159358 = icmp eq i64 %gvk$b, 15                                                ; false?
  br i1 %cmp159358, label %else159360, label %then159359                             ; if

then159359:
  %arg156926 = add i64 0, 0                                                          ; quoted ()
  %cloptr159361 = inttoptr i64 %cont156196 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159362 = getelementptr inbounds i64, i64* %cloptr159361, i64 0               ; &cloptr159361[0]
  %f159364 = load i64, i64* %i0ptr159362, align 8                                    ; load; *i0ptr159362
  %fptr159363 = inttoptr i64 %f159364 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159363(i64 %cont156196, i64 %arg156926, i64 %gvk$b) ; tail call
  ret void

else159360:
  %retprim156197 = call i64 @prim_null_63(i64 %BGE$lst)                              ; call prim_null_63
  %arg156930 = add i64 0, 0                                                          ; quoted ()
  %cloptr159365 = inttoptr i64 %cont156196 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159366 = getelementptr inbounds i64, i64* %cloptr159365, i64 0               ; &cloptr159365[0]
  %f159368 = load i64, i64* %i0ptr159366, align 8                                    ; load; *i0ptr159366
  %fptr159367 = inttoptr i64 %f159368 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159367(i64 %cont156196, i64 %arg156930, i64 %retprim156197); tail call
  ret void
}


define void @lam157221(i64 %env157222, i64 %cont156200, i64 %qof$_37foldr) {
  %envptr159369 = inttoptr i64 %env157222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159370 = getelementptr inbounds i64, i64* %envptr159369, i64 2              ; &envptr159369[2]
  %mkH$_37map1 = load i64, i64* %envptr159370, align 8                               ; load; *envptr159370
  %envptr159371 = inttoptr i64 %env157222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159372 = getelementptr inbounds i64, i64* %envptr159371, i64 1              ; &envptr159371[1]
  %Jzl$_37foldr1 = load i64, i64* %envptr159372, align 8                             ; load; *envptr159372
  %arg156933 = add i64 0, 0                                                          ; quoted ()
  %cloptr159373 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr159375 = getelementptr inbounds i64, i64* %cloptr159373, i64 1                ; &eptr159375[1]
  %eptr159376 = getelementptr inbounds i64, i64* %cloptr159373, i64 2                ; &eptr159376[2]
  %eptr159377 = getelementptr inbounds i64, i64* %cloptr159373, i64 3                ; &eptr159377[3]
  store i64 %Jzl$_37foldr1, i64* %eptr159375                                         ; *eptr159375 = %Jzl$_37foldr1
  store i64 %mkH$_37map1, i64* %eptr159376                                           ; *eptr159376 = %mkH$_37map1
  store i64 %qof$_37foldr, i64* %eptr159377                                          ; *eptr159377 = %qof$_37foldr
  %eptr159374 = getelementptr inbounds i64, i64* %cloptr159373, i64 0                ; &cloptr159373[0]
  %f159378 = ptrtoint void(i64,i64)* @lam157218 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f159378, i64* %eptr159374                                               ; store fptr
  %arg156932 = ptrtoint i64* %cloptr159373 to i64                                    ; closure cast; i64* -> i64
  %cloptr159379 = inttoptr i64 %cont156200 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159380 = getelementptr inbounds i64, i64* %cloptr159379, i64 0               ; &cloptr159379[0]
  %f159382 = load i64, i64* %i0ptr159380, align 8                                    ; load; *i0ptr159380
  %fptr159381 = inttoptr i64 %f159382 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159381(i64 %cont156200, i64 %arg156933, i64 %arg156932); tail call
  ret void
}


define void @lam157218(i64 %env157219, i64 %Qdh$args156202) {
  %envptr159383 = inttoptr i64 %env157219 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159384 = getelementptr inbounds i64, i64* %envptr159383, i64 3              ; &envptr159383[3]
  %qof$_37foldr = load i64, i64* %envptr159384, align 8                              ; load; *envptr159384
  %envptr159385 = inttoptr i64 %env157219 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159386 = getelementptr inbounds i64, i64* %envptr159385, i64 2              ; &envptr159385[2]
  %mkH$_37map1 = load i64, i64* %envptr159386, align 8                               ; load; *envptr159386
  %envptr159387 = inttoptr i64 %env157219 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159388 = getelementptr inbounds i64, i64* %envptr159387, i64 1              ; &envptr159387[1]
  %Jzl$_37foldr1 = load i64, i64* %envptr159388, align 8                             ; load; *envptr159388
  %cont156201 = call i64 @prim_car(i64 %Qdh$args156202)                              ; call prim_car
  %Qdh$args = call i64 @prim_cdr(i64 %Qdh$args156202)                                ; call prim_cdr
  %A3o$f = call i64 @prim_car(i64 %Qdh$args)                                         ; call prim_car
  %a155963 = call i64 @prim_cdr(i64 %Qdh$args)                                       ; call prim_cdr
  %retprim156221 = call i64 @prim_car(i64 %a155963)                                  ; call prim_car
  %cloptr159389 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr159391 = getelementptr inbounds i64, i64* %cloptr159389, i64 1                ; &eptr159391[1]
  %eptr159392 = getelementptr inbounds i64, i64* %cloptr159389, i64 2                ; &eptr159392[2]
  %eptr159393 = getelementptr inbounds i64, i64* %cloptr159389, i64 3                ; &eptr159393[3]
  %eptr159394 = getelementptr inbounds i64, i64* %cloptr159389, i64 4                ; &eptr159394[4]
  %eptr159395 = getelementptr inbounds i64, i64* %cloptr159389, i64 5                ; &eptr159395[5]
  %eptr159396 = getelementptr inbounds i64, i64* %cloptr159389, i64 6                ; &eptr159396[6]
  store i64 %Jzl$_37foldr1, i64* %eptr159391                                         ; *eptr159391 = %Jzl$_37foldr1
  store i64 %mkH$_37map1, i64* %eptr159392                                           ; *eptr159392 = %mkH$_37map1
  store i64 %Qdh$args, i64* %eptr159393                                              ; *eptr159393 = %Qdh$args
  store i64 %cont156201, i64* %eptr159394                                            ; *eptr159394 = %cont156201
  store i64 %qof$_37foldr, i64* %eptr159395                                          ; *eptr159395 = %qof$_37foldr
  store i64 %A3o$f, i64* %eptr159396                                                 ; *eptr159396 = %A3o$f
  %eptr159390 = getelementptr inbounds i64, i64* %cloptr159389, i64 0                ; &cloptr159389[0]
  %f159397 = ptrtoint void(i64,i64,i64)* @lam157216 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159397, i64* %eptr159390                                               ; store fptr
  %arg156942 = ptrtoint i64* %cloptr159389 to i64                                    ; closure cast; i64* -> i64
  %arg156941 = add i64 0, 0                                                          ; quoted ()
  %cloptr159398 = inttoptr i64 %arg156942 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr159399 = getelementptr inbounds i64, i64* %cloptr159398, i64 0               ; &cloptr159398[0]
  %f159401 = load i64, i64* %i0ptr159399, align 8                                    ; load; *i0ptr159399
  %fptr159400 = inttoptr i64 %f159401 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159400(i64 %arg156942, i64 %arg156941, i64 %retprim156221); tail call
  ret void
}


define void @lam157216(i64 %env157217, i64 %_95156203, i64 %K2C$acc) {
  %envptr159402 = inttoptr i64 %env157217 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159403 = getelementptr inbounds i64, i64* %envptr159402, i64 6              ; &envptr159402[6]
  %A3o$f = load i64, i64* %envptr159403, align 8                                     ; load; *envptr159403
  %envptr159404 = inttoptr i64 %env157217 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159405 = getelementptr inbounds i64, i64* %envptr159404, i64 5              ; &envptr159404[5]
  %qof$_37foldr = load i64, i64* %envptr159405, align 8                              ; load; *envptr159405
  %envptr159406 = inttoptr i64 %env157217 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159407 = getelementptr inbounds i64, i64* %envptr159406, i64 4              ; &envptr159406[4]
  %cont156201 = load i64, i64* %envptr159407, align 8                                ; load; *envptr159407
  %envptr159408 = inttoptr i64 %env157217 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159409 = getelementptr inbounds i64, i64* %envptr159408, i64 3              ; &envptr159408[3]
  %Qdh$args = load i64, i64* %envptr159409, align 8                                  ; load; *envptr159409
  %envptr159410 = inttoptr i64 %env157217 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159411 = getelementptr inbounds i64, i64* %envptr159410, i64 2              ; &envptr159410[2]
  %mkH$_37map1 = load i64, i64* %envptr159411, align 8                               ; load; *envptr159411
  %envptr159412 = inttoptr i64 %env157217 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159413 = getelementptr inbounds i64, i64* %envptr159412, i64 1              ; &envptr159412[1]
  %Jzl$_37foldr1 = load i64, i64* %envptr159413, align 8                             ; load; *envptr159413
  %a155964 = call i64 @prim_cdr(i64 %Qdh$args)                                       ; call prim_cdr
  %retprim156220 = call i64 @prim_cdr(i64 %a155964)                                  ; call prim_cdr
  %cloptr159414 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr159416 = getelementptr inbounds i64, i64* %cloptr159414, i64 1                ; &eptr159416[1]
  %eptr159417 = getelementptr inbounds i64, i64* %cloptr159414, i64 2                ; &eptr159417[2]
  %eptr159418 = getelementptr inbounds i64, i64* %cloptr159414, i64 3                ; &eptr159418[3]
  %eptr159419 = getelementptr inbounds i64, i64* %cloptr159414, i64 4                ; &eptr159419[4]
  %eptr159420 = getelementptr inbounds i64, i64* %cloptr159414, i64 5                ; &eptr159420[5]
  %eptr159421 = getelementptr inbounds i64, i64* %cloptr159414, i64 6                ; &eptr159421[6]
  store i64 %Jzl$_37foldr1, i64* %eptr159416                                         ; *eptr159416 = %Jzl$_37foldr1
  store i64 %mkH$_37map1, i64* %eptr159417                                           ; *eptr159417 = %mkH$_37map1
  store i64 %K2C$acc, i64* %eptr159418                                               ; *eptr159418 = %K2C$acc
  store i64 %cont156201, i64* %eptr159419                                            ; *eptr159419 = %cont156201
  store i64 %qof$_37foldr, i64* %eptr159420                                          ; *eptr159420 = %qof$_37foldr
  store i64 %A3o$f, i64* %eptr159421                                                 ; *eptr159421 = %A3o$f
  %eptr159415 = getelementptr inbounds i64, i64* %cloptr159414, i64 0                ; &cloptr159414[0]
  %f159422 = ptrtoint void(i64,i64,i64)* @lam157214 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159422, i64* %eptr159415                                               ; store fptr
  %arg156947 = ptrtoint i64* %cloptr159414 to i64                                    ; closure cast; i64* -> i64
  %arg156946 = add i64 0, 0                                                          ; quoted ()
  %cloptr159423 = inttoptr i64 %arg156947 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr159424 = getelementptr inbounds i64, i64* %cloptr159423, i64 0               ; &cloptr159423[0]
  %f159426 = load i64, i64* %i0ptr159424, align 8                                    ; load; *i0ptr159424
  %fptr159425 = inttoptr i64 %f159426 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159425(i64 %arg156947, i64 %arg156946, i64 %retprim156220); tail call
  ret void
}


define void @lam157214(i64 %env157215, i64 %_95156204, i64 %T30$lsts) {
  %envptr159427 = inttoptr i64 %env157215 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159428 = getelementptr inbounds i64, i64* %envptr159427, i64 6              ; &envptr159427[6]
  %A3o$f = load i64, i64* %envptr159428, align 8                                     ; load; *envptr159428
  %envptr159429 = inttoptr i64 %env157215 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159430 = getelementptr inbounds i64, i64* %envptr159429, i64 5              ; &envptr159429[5]
  %qof$_37foldr = load i64, i64* %envptr159430, align 8                              ; load; *envptr159430
  %envptr159431 = inttoptr i64 %env157215 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159432 = getelementptr inbounds i64, i64* %envptr159431, i64 4              ; &envptr159431[4]
  %cont156201 = load i64, i64* %envptr159432, align 8                                ; load; *envptr159432
  %envptr159433 = inttoptr i64 %env157215 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159434 = getelementptr inbounds i64, i64* %envptr159433, i64 3              ; &envptr159433[3]
  %K2C$acc = load i64, i64* %envptr159434, align 8                                   ; load; *envptr159434
  %envptr159435 = inttoptr i64 %env157215 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159436 = getelementptr inbounds i64, i64* %envptr159435, i64 2              ; &envptr159435[2]
  %mkH$_37map1 = load i64, i64* %envptr159436, align 8                               ; load; *envptr159436
  %envptr159437 = inttoptr i64 %env157215 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159438 = getelementptr inbounds i64, i64* %envptr159437, i64 1              ; &envptr159437[1]
  %Jzl$_37foldr1 = load i64, i64* %envptr159438, align 8                             ; load; *envptr159438
  %cloptr159439 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr159441 = getelementptr inbounds i64, i64* %cloptr159439, i64 1                ; &eptr159441[1]
  %eptr159442 = getelementptr inbounds i64, i64* %cloptr159439, i64 2                ; &eptr159442[2]
  %eptr159443 = getelementptr inbounds i64, i64* %cloptr159439, i64 3                ; &eptr159443[3]
  %eptr159444 = getelementptr inbounds i64, i64* %cloptr159439, i64 4                ; &eptr159444[4]
  %eptr159445 = getelementptr inbounds i64, i64* %cloptr159439, i64 5                ; &eptr159445[5]
  %eptr159446 = getelementptr inbounds i64, i64* %cloptr159439, i64 6                ; &eptr159446[6]
  %eptr159447 = getelementptr inbounds i64, i64* %cloptr159439, i64 7                ; &eptr159447[7]
  store i64 %Jzl$_37foldr1, i64* %eptr159441                                         ; *eptr159441 = %Jzl$_37foldr1
  store i64 %mkH$_37map1, i64* %eptr159442                                           ; *eptr159442 = %mkH$_37map1
  store i64 %K2C$acc, i64* %eptr159443                                               ; *eptr159443 = %K2C$acc
  store i64 %cont156201, i64* %eptr159444                                            ; *eptr159444 = %cont156201
  store i64 %qof$_37foldr, i64* %eptr159445                                          ; *eptr159445 = %qof$_37foldr
  store i64 %A3o$f, i64* %eptr159446                                                 ; *eptr159446 = %A3o$f
  store i64 %T30$lsts, i64* %eptr159447                                              ; *eptr159447 = %T30$lsts
  %eptr159440 = getelementptr inbounds i64, i64* %cloptr159439, i64 0                ; &cloptr159439[0]
  %f159448 = ptrtoint void(i64,i64,i64)* @lam157212 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159448, i64* %eptr159440                                               ; store fptr
  %arg156951 = ptrtoint i64* %cloptr159439 to i64                                    ; closure cast; i64* -> i64
  %cloptr159449 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr159450 = getelementptr inbounds i64, i64* %cloptr159449, i64 0                ; &cloptr159449[0]
  %f159451 = ptrtoint void(i64,i64,i64,i64)* @lam157191 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f159451, i64* %eptr159450                                               ; store fptr
  %arg156950 = ptrtoint i64* %cloptr159449 to i64                                    ; closure cast; i64* -> i64
  %arg156949 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr159452 = inttoptr i64 %Jzl$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr159453 = getelementptr inbounds i64, i64* %cloptr159452, i64 0               ; &cloptr159452[0]
  %f159455 = load i64, i64* %i0ptr159453, align 8                                    ; load; *i0ptr159453
  %fptr159454 = inttoptr i64 %f159455 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159454(i64 %Jzl$_37foldr1, i64 %arg156951, i64 %arg156950, i64 %arg156949, i64 %T30$lsts); tail call
  ret void
}


define void @lam157212(i64 %env157213, i64 %_95156205, i64 %a155965) {
  %envptr159456 = inttoptr i64 %env157213 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159457 = getelementptr inbounds i64, i64* %envptr159456, i64 7              ; &envptr159456[7]
  %T30$lsts = load i64, i64* %envptr159457, align 8                                  ; load; *envptr159457
  %envptr159458 = inttoptr i64 %env157213 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159459 = getelementptr inbounds i64, i64* %envptr159458, i64 6              ; &envptr159458[6]
  %A3o$f = load i64, i64* %envptr159459, align 8                                     ; load; *envptr159459
  %envptr159460 = inttoptr i64 %env157213 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159461 = getelementptr inbounds i64, i64* %envptr159460, i64 5              ; &envptr159460[5]
  %qof$_37foldr = load i64, i64* %envptr159461, align 8                              ; load; *envptr159461
  %envptr159462 = inttoptr i64 %env157213 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159463 = getelementptr inbounds i64, i64* %envptr159462, i64 4              ; &envptr159462[4]
  %cont156201 = load i64, i64* %envptr159463, align 8                                ; load; *envptr159463
  %envptr159464 = inttoptr i64 %env157213 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159465 = getelementptr inbounds i64, i64* %envptr159464, i64 3              ; &envptr159464[3]
  %K2C$acc = load i64, i64* %envptr159465, align 8                                   ; load; *envptr159465
  %envptr159466 = inttoptr i64 %env157213 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159467 = getelementptr inbounds i64, i64* %envptr159466, i64 2              ; &envptr159466[2]
  %mkH$_37map1 = load i64, i64* %envptr159467, align 8                               ; load; *envptr159467
  %envptr159468 = inttoptr i64 %env157213 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159469 = getelementptr inbounds i64, i64* %envptr159468, i64 1              ; &envptr159468[1]
  %Jzl$_37foldr1 = load i64, i64* %envptr159469, align 8                             ; load; *envptr159469
  %cmp159470 = icmp eq i64 %a155965, 15                                              ; false?
  br i1 %cmp159470, label %else159472, label %then159471                             ; if

then159471:
  %arg156954 = add i64 0, 0                                                          ; quoted ()
  %cloptr159473 = inttoptr i64 %cont156201 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159474 = getelementptr inbounds i64, i64* %cloptr159473, i64 0               ; &cloptr159473[0]
  %f159476 = load i64, i64* %i0ptr159474, align 8                                    ; load; *i0ptr159474
  %fptr159475 = inttoptr i64 %f159476 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159475(i64 %cont156201, i64 %arg156954, i64 %K2C$acc); tail call
  ret void

else159472:
  %cloptr159477 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr159479 = getelementptr inbounds i64, i64* %cloptr159477, i64 1                ; &eptr159479[1]
  %eptr159480 = getelementptr inbounds i64, i64* %cloptr159477, i64 2                ; &eptr159480[2]
  %eptr159481 = getelementptr inbounds i64, i64* %cloptr159477, i64 3                ; &eptr159481[3]
  %eptr159482 = getelementptr inbounds i64, i64* %cloptr159477, i64 4                ; &eptr159482[4]
  %eptr159483 = getelementptr inbounds i64, i64* %cloptr159477, i64 5                ; &eptr159483[5]
  %eptr159484 = getelementptr inbounds i64, i64* %cloptr159477, i64 6                ; &eptr159484[6]
  %eptr159485 = getelementptr inbounds i64, i64* %cloptr159477, i64 7                ; &eptr159485[7]
  store i64 %Jzl$_37foldr1, i64* %eptr159479                                         ; *eptr159479 = %Jzl$_37foldr1
  store i64 %mkH$_37map1, i64* %eptr159480                                           ; *eptr159480 = %mkH$_37map1
  store i64 %K2C$acc, i64* %eptr159481                                               ; *eptr159481 = %K2C$acc
  store i64 %cont156201, i64* %eptr159482                                            ; *eptr159482 = %cont156201
  store i64 %qof$_37foldr, i64* %eptr159483                                          ; *eptr159483 = %qof$_37foldr
  store i64 %A3o$f, i64* %eptr159484                                                 ; *eptr159484 = %A3o$f
  store i64 %T30$lsts, i64* %eptr159485                                              ; *eptr159485 = %T30$lsts
  %eptr159478 = getelementptr inbounds i64, i64* %cloptr159477, i64 0                ; &cloptr159477[0]
  %f159486 = ptrtoint void(i64,i64,i64)* @lam157210 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159486, i64* %eptr159478                                               ; store fptr
  %arg156958 = ptrtoint i64* %cloptr159477 to i64                                    ; closure cast; i64* -> i64
  %cloptr159487 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr159488 = getelementptr inbounds i64, i64* %cloptr159487, i64 0                ; &cloptr159487[0]
  %f159489 = ptrtoint void(i64,i64,i64)* @lam157195 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159489, i64* %eptr159488                                               ; store fptr
  %arg156957 = ptrtoint i64* %cloptr159487 to i64                                    ; closure cast; i64* -> i64
  %cloptr159490 = inttoptr i64 %mkH$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr159491 = getelementptr inbounds i64, i64* %cloptr159490, i64 0               ; &cloptr159490[0]
  %f159493 = load i64, i64* %i0ptr159491, align 8                                    ; load; *i0ptr159491
  %fptr159492 = inttoptr i64 %f159493 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159492(i64 %mkH$_37map1, i64 %arg156958, i64 %arg156957, i64 %T30$lsts); tail call
  ret void
}


define void @lam157210(i64 %env157211, i64 %_95156206, i64 %w6u$lsts_43) {
  %envptr159494 = inttoptr i64 %env157211 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159495 = getelementptr inbounds i64, i64* %envptr159494, i64 7              ; &envptr159494[7]
  %T30$lsts = load i64, i64* %envptr159495, align 8                                  ; load; *envptr159495
  %envptr159496 = inttoptr i64 %env157211 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159497 = getelementptr inbounds i64, i64* %envptr159496, i64 6              ; &envptr159496[6]
  %A3o$f = load i64, i64* %envptr159497, align 8                                     ; load; *envptr159497
  %envptr159498 = inttoptr i64 %env157211 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159499 = getelementptr inbounds i64, i64* %envptr159498, i64 5              ; &envptr159498[5]
  %qof$_37foldr = load i64, i64* %envptr159499, align 8                              ; load; *envptr159499
  %envptr159500 = inttoptr i64 %env157211 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159501 = getelementptr inbounds i64, i64* %envptr159500, i64 4              ; &envptr159500[4]
  %cont156201 = load i64, i64* %envptr159501, align 8                                ; load; *envptr159501
  %envptr159502 = inttoptr i64 %env157211 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159503 = getelementptr inbounds i64, i64* %envptr159502, i64 3              ; &envptr159502[3]
  %K2C$acc = load i64, i64* %envptr159503, align 8                                   ; load; *envptr159503
  %envptr159504 = inttoptr i64 %env157211 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159505 = getelementptr inbounds i64, i64* %envptr159504, i64 2              ; &envptr159504[2]
  %mkH$_37map1 = load i64, i64* %envptr159505, align 8                               ; load; *envptr159505
  %envptr159506 = inttoptr i64 %env157211 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159507 = getelementptr inbounds i64, i64* %envptr159506, i64 1              ; &envptr159506[1]
  %Jzl$_37foldr1 = load i64, i64* %envptr159507, align 8                             ; load; *envptr159507
  %cloptr159508 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr159510 = getelementptr inbounds i64, i64* %cloptr159508, i64 1                ; &eptr159510[1]
  %eptr159511 = getelementptr inbounds i64, i64* %cloptr159508, i64 2                ; &eptr159511[2]
  %eptr159512 = getelementptr inbounds i64, i64* %cloptr159508, i64 3                ; &eptr159512[3]
  %eptr159513 = getelementptr inbounds i64, i64* %cloptr159508, i64 4                ; &eptr159513[4]
  %eptr159514 = getelementptr inbounds i64, i64* %cloptr159508, i64 5                ; &eptr159514[5]
  %eptr159515 = getelementptr inbounds i64, i64* %cloptr159508, i64 6                ; &eptr159515[6]
  store i64 %Jzl$_37foldr1, i64* %eptr159510                                         ; *eptr159510 = %Jzl$_37foldr1
  store i64 %K2C$acc, i64* %eptr159511                                               ; *eptr159511 = %K2C$acc
  store i64 %cont156201, i64* %eptr159512                                            ; *eptr159512 = %cont156201
  store i64 %qof$_37foldr, i64* %eptr159513                                          ; *eptr159513 = %qof$_37foldr
  store i64 %A3o$f, i64* %eptr159514                                                 ; *eptr159514 = %A3o$f
  store i64 %w6u$lsts_43, i64* %eptr159515                                           ; *eptr159515 = %w6u$lsts_43
  %eptr159509 = getelementptr inbounds i64, i64* %cloptr159508, i64 0                ; &cloptr159508[0]
  %f159516 = ptrtoint void(i64,i64,i64)* @lam157208 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159516, i64* %eptr159509                                               ; store fptr
  %arg156962 = ptrtoint i64* %cloptr159508 to i64                                    ; closure cast; i64* -> i64
  %cloptr159517 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr159518 = getelementptr inbounds i64, i64* %cloptr159517, i64 0                ; &cloptr159517[0]
  %f159519 = ptrtoint void(i64,i64,i64)* @lam157198 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159519, i64* %eptr159518                                               ; store fptr
  %arg156961 = ptrtoint i64* %cloptr159517 to i64                                    ; closure cast; i64* -> i64
  %cloptr159520 = inttoptr i64 %mkH$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr159521 = getelementptr inbounds i64, i64* %cloptr159520, i64 0               ; &cloptr159520[0]
  %f159523 = load i64, i64* %i0ptr159521, align 8                                    ; load; *i0ptr159521
  %fptr159522 = inttoptr i64 %f159523 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159522(i64 %mkH$_37map1, i64 %arg156962, i64 %arg156961, i64 %T30$lsts); tail call
  ret void
}


define void @lam157208(i64 %env157209, i64 %_95156207, i64 %Kns$vs) {
  %envptr159524 = inttoptr i64 %env157209 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159525 = getelementptr inbounds i64, i64* %envptr159524, i64 6              ; &envptr159524[6]
  %w6u$lsts_43 = load i64, i64* %envptr159525, align 8                               ; load; *envptr159525
  %envptr159526 = inttoptr i64 %env157209 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159527 = getelementptr inbounds i64, i64* %envptr159526, i64 5              ; &envptr159526[5]
  %A3o$f = load i64, i64* %envptr159527, align 8                                     ; load; *envptr159527
  %envptr159528 = inttoptr i64 %env157209 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159529 = getelementptr inbounds i64, i64* %envptr159528, i64 4              ; &envptr159528[4]
  %qof$_37foldr = load i64, i64* %envptr159529, align 8                              ; load; *envptr159529
  %envptr159530 = inttoptr i64 %env157209 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159531 = getelementptr inbounds i64, i64* %envptr159530, i64 3              ; &envptr159530[3]
  %cont156201 = load i64, i64* %envptr159531, align 8                                ; load; *envptr159531
  %envptr159532 = inttoptr i64 %env157209 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159533 = getelementptr inbounds i64, i64* %envptr159532, i64 2              ; &envptr159532[2]
  %K2C$acc = load i64, i64* %envptr159533, align 8                                   ; load; *envptr159533
  %envptr159534 = inttoptr i64 %env157209 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159535 = getelementptr inbounds i64, i64* %envptr159534, i64 1              ; &envptr159534[1]
  %Jzl$_37foldr1 = load i64, i64* %envptr159535, align 8                             ; load; *envptr159535
  %a155966 = call i64 @prim_cons(i64 %K2C$acc, i64 %w6u$lsts_43)                     ; call prim_cons
  %a155967 = call i64 @prim_cons(i64 %A3o$f, i64 %a155966)                           ; call prim_cons
  %cloptr159536 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr159538 = getelementptr inbounds i64, i64* %cloptr159536, i64 1                ; &eptr159538[1]
  %eptr159539 = getelementptr inbounds i64, i64* %cloptr159536, i64 2                ; &eptr159539[2]
  %eptr159540 = getelementptr inbounds i64, i64* %cloptr159536, i64 3                ; &eptr159540[3]
  %eptr159541 = getelementptr inbounds i64, i64* %cloptr159536, i64 4                ; &eptr159541[4]
  store i64 %Jzl$_37foldr1, i64* %eptr159538                                         ; *eptr159538 = %Jzl$_37foldr1
  store i64 %Kns$vs, i64* %eptr159539                                                ; *eptr159539 = %Kns$vs
  store i64 %cont156201, i64* %eptr159540                                            ; *eptr159540 = %cont156201
  store i64 %A3o$f, i64* %eptr159541                                                 ; *eptr159541 = %A3o$f
  %eptr159537 = getelementptr inbounds i64, i64* %cloptr159536, i64 0                ; &cloptr159536[0]
  %f159542 = ptrtoint void(i64,i64,i64)* @lam157206 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159542, i64* %eptr159537                                               ; store fptr
  %arg156969 = ptrtoint i64* %cloptr159536 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst156213 = call i64 @prim_cons(i64 %arg156969, i64 %a155967)               ; call prim_cons
  %cloptr159543 = inttoptr i64 %qof$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr159544 = getelementptr inbounds i64, i64* %cloptr159543, i64 0               ; &cloptr159543[0]
  %f159546 = load i64, i64* %i0ptr159544, align 8                                    ; load; *i0ptr159544
  %fptr159545 = inttoptr i64 %f159546 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159545(i64 %qof$_37foldr, i64 %cps_45lst156213)     ; tail call
  ret void
}


define void @lam157206(i64 %env157207, i64 %_95156208, i64 %a155968) {
  %envptr159547 = inttoptr i64 %env157207 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159548 = getelementptr inbounds i64, i64* %envptr159547, i64 4              ; &envptr159547[4]
  %A3o$f = load i64, i64* %envptr159548, align 8                                     ; load; *envptr159548
  %envptr159549 = inttoptr i64 %env157207 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159550 = getelementptr inbounds i64, i64* %envptr159549, i64 3              ; &envptr159549[3]
  %cont156201 = load i64, i64* %envptr159550, align 8                                ; load; *envptr159550
  %envptr159551 = inttoptr i64 %env157207 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159552 = getelementptr inbounds i64, i64* %envptr159551, i64 2              ; &envptr159551[2]
  %Kns$vs = load i64, i64* %envptr159552, align 8                                    ; load; *envptr159552
  %envptr159553 = inttoptr i64 %env157207 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159554 = getelementptr inbounds i64, i64* %envptr159553, i64 1              ; &envptr159553[1]
  %Jzl$_37foldr1 = load i64, i64* %envptr159554, align 8                             ; load; *envptr159554
  %arg156970 = add i64 0, 0                                                          ; quoted ()
  %a155969 = call i64 @prim_cons(i64 %a155968, i64 %arg156970)                       ; call prim_cons
  %cloptr159555 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr159557 = getelementptr inbounds i64, i64* %cloptr159555, i64 1                ; &eptr159557[1]
  %eptr159558 = getelementptr inbounds i64, i64* %cloptr159555, i64 2                ; &eptr159558[2]
  store i64 %cont156201, i64* %eptr159557                                            ; *eptr159557 = %cont156201
  store i64 %A3o$f, i64* %eptr159558                                                 ; *eptr159558 = %A3o$f
  %eptr159556 = getelementptr inbounds i64, i64* %cloptr159555, i64 0                ; &cloptr159555[0]
  %f159559 = ptrtoint void(i64,i64,i64)* @lam157203 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159559, i64* %eptr159556                                               ; store fptr
  %arg156975 = ptrtoint i64* %cloptr159555 to i64                                    ; closure cast; i64* -> i64
  %cloptr159560 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr159561 = getelementptr inbounds i64, i64* %cloptr159560, i64 0                ; &cloptr159560[0]
  %f159562 = ptrtoint void(i64,i64,i64,i64)* @lam157201 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f159562, i64* %eptr159561                                               ; store fptr
  %arg156974 = ptrtoint i64* %cloptr159560 to i64                                    ; closure cast; i64* -> i64
  %cloptr159563 = inttoptr i64 %Jzl$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr159564 = getelementptr inbounds i64, i64* %cloptr159563, i64 0               ; &cloptr159563[0]
  %f159566 = load i64, i64* %i0ptr159564, align 8                                    ; load; *i0ptr159564
  %fptr159565 = inttoptr i64 %f159566 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159565(i64 %Jzl$_37foldr1, i64 %arg156975, i64 %arg156974, i64 %a155969, i64 %Kns$vs); tail call
  ret void
}


define void @lam157203(i64 %env157204, i64 %_95156209, i64 %a155970) {
  %envptr159567 = inttoptr i64 %env157204 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159568 = getelementptr inbounds i64, i64* %envptr159567, i64 2              ; &envptr159567[2]
  %A3o$f = load i64, i64* %envptr159568, align 8                                     ; load; *envptr159568
  %envptr159569 = inttoptr i64 %env157204 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159570 = getelementptr inbounds i64, i64* %envptr159569, i64 1              ; &envptr159569[1]
  %cont156201 = load i64, i64* %envptr159570, align 8                                ; load; *envptr159570
  %cps_45lst156210 = call i64 @prim_cons(i64 %cont156201, i64 %a155970)              ; call prim_cons
  %cloptr159571 = inttoptr i64 %A3o$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr159572 = getelementptr inbounds i64, i64* %cloptr159571, i64 0               ; &cloptr159571[0]
  %f159574 = load i64, i64* %i0ptr159572, align 8                                    ; load; *i0ptr159572
  %fptr159573 = inttoptr i64 %f159574 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159573(i64 %A3o$f, i64 %cps_45lst156210)            ; tail call
  ret void
}


define void @lam157201(i64 %env157202, i64 %cont156211, i64 %QMn$a, i64 %HkD$b) {
  %retprim156212 = call i64 @prim_cons(i64 %QMn$a, i64 %HkD$b)                       ; call prim_cons
  %arg156982 = add i64 0, 0                                                          ; quoted ()
  %cloptr159575 = inttoptr i64 %cont156211 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159576 = getelementptr inbounds i64, i64* %cloptr159575, i64 0               ; &cloptr159575[0]
  %f159578 = load i64, i64* %i0ptr159576, align 8                                    ; load; *i0ptr159576
  %fptr159577 = inttoptr i64 %f159578 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159577(i64 %cont156211, i64 %arg156982, i64 %retprim156212); tail call
  ret void
}


define void @lam157198(i64 %env157199, i64 %cont156214, i64 %JyN$x) {
  %retprim156215 = call i64 @prim_car(i64 %JyN$x)                                    ; call prim_car
  %arg156986 = add i64 0, 0                                                          ; quoted ()
  %cloptr159579 = inttoptr i64 %cont156214 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159580 = getelementptr inbounds i64, i64* %cloptr159579, i64 0               ; &cloptr159579[0]
  %f159582 = load i64, i64* %i0ptr159580, align 8                                    ; load; *i0ptr159580
  %fptr159581 = inttoptr i64 %f159582 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159581(i64 %cont156214, i64 %arg156986, i64 %retprim156215); tail call
  ret void
}


define void @lam157195(i64 %env157196, i64 %cont156216, i64 %UnG$x) {
  %retprim156217 = call i64 @prim_cdr(i64 %UnG$x)                                    ; call prim_cdr
  %arg156990 = add i64 0, 0                                                          ; quoted ()
  %cloptr159583 = inttoptr i64 %cont156216 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159584 = getelementptr inbounds i64, i64* %cloptr159583, i64 0               ; &cloptr159583[0]
  %f159586 = load i64, i64* %i0ptr159584, align 8                                    ; load; *i0ptr159584
  %fptr159585 = inttoptr i64 %f159586 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159585(i64 %cont156216, i64 %arg156990, i64 %retprim156217); tail call
  ret void
}


define void @lam157191(i64 %env157192, i64 %cont156218, i64 %zno$lst, i64 %vCb$b) {
  %cmp159587 = icmp eq i64 %vCb$b, 15                                                ; false?
  br i1 %cmp159587, label %else159589, label %then159588                             ; if

then159588:
  %arg156993 = add i64 0, 0                                                          ; quoted ()
  %cloptr159590 = inttoptr i64 %cont156218 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159591 = getelementptr inbounds i64, i64* %cloptr159590, i64 0               ; &cloptr159590[0]
  %f159593 = load i64, i64* %i0ptr159591, align 8                                    ; load; *i0ptr159591
  %fptr159592 = inttoptr i64 %f159593 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159592(i64 %cont156218, i64 %arg156993, i64 %vCb$b) ; tail call
  ret void

else159589:
  %retprim156219 = call i64 @prim_null_63(i64 %zno$lst)                              ; call prim_null_63
  %arg156997 = add i64 0, 0                                                          ; quoted ()
  %cloptr159594 = inttoptr i64 %cont156218 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159595 = getelementptr inbounds i64, i64* %cloptr159594, i64 0               ; &cloptr159594[0]
  %f159597 = load i64, i64* %i0ptr159595, align 8                                    ; load; *i0ptr159595
  %fptr159596 = inttoptr i64 %f159597 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159596(i64 %cont156218, i64 %arg156997, i64 %retprim156219); tail call
  ret void
}


define void @lam157184(i64 %env157185, i64 %cont156222, i64 %hA4$_37foldl1) {
  %arg157000 = add i64 0, 0                                                          ; quoted ()
  %cloptr159598 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr159600 = getelementptr inbounds i64, i64* %cloptr159598, i64 1                ; &eptr159600[1]
  store i64 %hA4$_37foldl1, i64* %eptr159600                                         ; *eptr159600 = %hA4$_37foldl1
  %eptr159599 = getelementptr inbounds i64, i64* %cloptr159598, i64 0                ; &cloptr159598[0]
  %f159601 = ptrtoint void(i64,i64,i64,i64,i64)* @lam157181 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f159601, i64* %eptr159599                                               ; store fptr
  %arg156999 = ptrtoint i64* %cloptr159598 to i64                                    ; closure cast; i64* -> i64
  %cloptr159602 = inttoptr i64 %cont156222 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159603 = getelementptr inbounds i64, i64* %cloptr159602, i64 0               ; &cloptr159602[0]
  %f159605 = load i64, i64* %i0ptr159603, align 8                                    ; load; *i0ptr159603
  %fptr159604 = inttoptr i64 %f159605 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159604(i64 %cont156222, i64 %arg157000, i64 %arg156999); tail call
  ret void
}


define void @lam157181(i64 %env157182, i64 %cont156223, i64 %fkj$f, i64 %HzP$acc, i64 %rkp$lst) {
  %envptr159606 = inttoptr i64 %env157182 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159607 = getelementptr inbounds i64, i64* %envptr159606, i64 1              ; &envptr159606[1]
  %hA4$_37foldl1 = load i64, i64* %envptr159607, align 8                             ; load; *envptr159607
  %a155957 = call i64 @prim_null_63(i64 %rkp$lst)                                    ; call prim_null_63
  %cmp159608 = icmp eq i64 %a155957, 15                                              ; false?
  br i1 %cmp159608, label %else159610, label %then159609                             ; if

then159609:
  %arg157004 = add i64 0, 0                                                          ; quoted ()
  %cloptr159611 = inttoptr i64 %cont156223 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159612 = getelementptr inbounds i64, i64* %cloptr159611, i64 0               ; &cloptr159611[0]
  %f159614 = load i64, i64* %i0ptr159612, align 8                                    ; load; *i0ptr159612
  %fptr159613 = inttoptr i64 %f159614 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159613(i64 %cont156223, i64 %arg157004, i64 %HzP$acc); tail call
  ret void

else159610:
  %a155958 = call i64 @prim_car(i64 %rkp$lst)                                        ; call prim_car
  %cloptr159615 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr159617 = getelementptr inbounds i64, i64* %cloptr159615, i64 1                ; &eptr159617[1]
  %eptr159618 = getelementptr inbounds i64, i64* %cloptr159615, i64 2                ; &eptr159618[2]
  %eptr159619 = getelementptr inbounds i64, i64* %cloptr159615, i64 3                ; &eptr159619[3]
  %eptr159620 = getelementptr inbounds i64, i64* %cloptr159615, i64 4                ; &eptr159620[4]
  store i64 %rkp$lst, i64* %eptr159617                                               ; *eptr159617 = %rkp$lst
  store i64 %fkj$f, i64* %eptr159618                                                 ; *eptr159618 = %fkj$f
  store i64 %cont156223, i64* %eptr159619                                            ; *eptr159619 = %cont156223
  store i64 %hA4$_37foldl1, i64* %eptr159620                                         ; *eptr159620 = %hA4$_37foldl1
  %eptr159616 = getelementptr inbounds i64, i64* %cloptr159615, i64 0                ; &cloptr159615[0]
  %f159621 = ptrtoint void(i64,i64,i64)* @lam157179 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159621, i64* %eptr159616                                               ; store fptr
  %arg157009 = ptrtoint i64* %cloptr159615 to i64                                    ; closure cast; i64* -> i64
  %cloptr159622 = inttoptr i64 %fkj$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr159623 = getelementptr inbounds i64, i64* %cloptr159622, i64 0               ; &cloptr159622[0]
  %f159625 = load i64, i64* %i0ptr159623, align 8                                    ; load; *i0ptr159623
  %fptr159624 = inttoptr i64 %f159625 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159624(i64 %fkj$f, i64 %arg157009, i64 %a155958, i64 %HzP$acc); tail call
  ret void
}


define void @lam157179(i64 %env157180, i64 %_95156224, i64 %a155959) {
  %envptr159626 = inttoptr i64 %env157180 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159627 = getelementptr inbounds i64, i64* %envptr159626, i64 4              ; &envptr159626[4]
  %hA4$_37foldl1 = load i64, i64* %envptr159627, align 8                             ; load; *envptr159627
  %envptr159628 = inttoptr i64 %env157180 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159629 = getelementptr inbounds i64, i64* %envptr159628, i64 3              ; &envptr159628[3]
  %cont156223 = load i64, i64* %envptr159629, align 8                                ; load; *envptr159629
  %envptr159630 = inttoptr i64 %env157180 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159631 = getelementptr inbounds i64, i64* %envptr159630, i64 2              ; &envptr159630[2]
  %fkj$f = load i64, i64* %envptr159631, align 8                                     ; load; *envptr159631
  %envptr159632 = inttoptr i64 %env157180 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159633 = getelementptr inbounds i64, i64* %envptr159632, i64 1              ; &envptr159632[1]
  %rkp$lst = load i64, i64* %envptr159633, align 8                                   ; load; *envptr159633
  %a155960 = call i64 @prim_cdr(i64 %rkp$lst)                                        ; call prim_cdr
  %cloptr159634 = inttoptr i64 %hA4$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr159635 = getelementptr inbounds i64, i64* %cloptr159634, i64 0               ; &cloptr159634[0]
  %f159637 = load i64, i64* %i0ptr159635, align 8                                    ; load; *i0ptr159635
  %fptr159636 = inttoptr i64 %f159637 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159636(i64 %hA4$_37foldl1, i64 %cont156223, i64 %fkj$f, i64 %a155959, i64 %a155960); tail call
  ret void
}


define void @lam157176(i64 %env157177, i64 %cont156225, i64 %UYP$_37length) {
  %arg157018 = add i64 0, 0                                                          ; quoted ()
  %cloptr159638 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr159640 = getelementptr inbounds i64, i64* %cloptr159638, i64 1                ; &eptr159640[1]
  store i64 %UYP$_37length, i64* %eptr159640                                         ; *eptr159640 = %UYP$_37length
  %eptr159639 = getelementptr inbounds i64, i64* %cloptr159638, i64 0                ; &cloptr159638[0]
  %f159641 = ptrtoint void(i64,i64,i64)* @lam157173 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159641, i64* %eptr159639                                               ; store fptr
  %arg157017 = ptrtoint i64* %cloptr159638 to i64                                    ; closure cast; i64* -> i64
  %cloptr159642 = inttoptr i64 %cont156225 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159643 = getelementptr inbounds i64, i64* %cloptr159642, i64 0               ; &cloptr159642[0]
  %f159645 = load i64, i64* %i0ptr159643, align 8                                    ; load; *i0ptr159643
  %fptr159644 = inttoptr i64 %f159645 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159644(i64 %cont156225, i64 %arg157018, i64 %arg157017); tail call
  ret void
}


define void @lam157173(i64 %env157174, i64 %cont156226, i64 %aDu$lst) {
  %envptr159646 = inttoptr i64 %env157174 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159647 = getelementptr inbounds i64, i64* %envptr159646, i64 1              ; &envptr159646[1]
  %UYP$_37length = load i64, i64* %envptr159647, align 8                             ; load; *envptr159647
  %a155954 = call i64 @prim_null_63(i64 %aDu$lst)                                    ; call prim_null_63
  %cmp159648 = icmp eq i64 %a155954, 15                                              ; false?
  br i1 %cmp159648, label %else159650, label %then159649                             ; if

then159649:
  %arg157022 = add i64 0, 0                                                          ; quoted ()
  %arg157021 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr159651 = inttoptr i64 %cont156226 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159652 = getelementptr inbounds i64, i64* %cloptr159651, i64 0               ; &cloptr159651[0]
  %f159654 = load i64, i64* %i0ptr159652, align 8                                    ; load; *i0ptr159652
  %fptr159653 = inttoptr i64 %f159654 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159653(i64 %cont156226, i64 %arg157022, i64 %arg157021); tail call
  ret void

else159650:
  %a155955 = call i64 @prim_cdr(i64 %aDu$lst)                                        ; call prim_cdr
  %cloptr159655 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr159657 = getelementptr inbounds i64, i64* %cloptr159655, i64 1                ; &eptr159657[1]
  store i64 %cont156226, i64* %eptr159657                                            ; *eptr159657 = %cont156226
  %eptr159656 = getelementptr inbounds i64, i64* %cloptr159655, i64 0                ; &cloptr159655[0]
  %f159658 = ptrtoint void(i64,i64,i64)* @lam157171 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159658, i64* %eptr159656                                               ; store fptr
  %arg157026 = ptrtoint i64* %cloptr159655 to i64                                    ; closure cast; i64* -> i64
  %cloptr159659 = inttoptr i64 %UYP$_37length to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr159660 = getelementptr inbounds i64, i64* %cloptr159659, i64 0               ; &cloptr159659[0]
  %f159662 = load i64, i64* %i0ptr159660, align 8                                    ; load; *i0ptr159660
  %fptr159661 = inttoptr i64 %f159662 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159661(i64 %UYP$_37length, i64 %arg157026, i64 %a155955); tail call
  ret void
}


define void @lam157171(i64 %env157172, i64 %_95156227, i64 %a155956) {
  %envptr159663 = inttoptr i64 %env157172 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159664 = getelementptr inbounds i64, i64* %envptr159663, i64 1              ; &envptr159663[1]
  %cont156226 = load i64, i64* %envptr159664, align 8                                ; load; *envptr159664
  %arg157029 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim156228 = call i64 @prim__43(i64 %arg157029, i64 %a155956)                  ; call prim__43
  %arg157031 = add i64 0, 0                                                          ; quoted ()
  %cloptr159665 = inttoptr i64 %cont156226 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159666 = getelementptr inbounds i64, i64* %cloptr159665, i64 0               ; &cloptr159665[0]
  %f159668 = load i64, i64* %i0ptr159666, align 8                                    ; load; *i0ptr159666
  %fptr159667 = inttoptr i64 %f159668 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159667(i64 %cont156226, i64 %arg157031, i64 %retprim156228); tail call
  ret void
}


define void @lam157165(i64 %env157166, i64 %cont156229, i64 %NaA$_37take) {
  %arg157034 = add i64 0, 0                                                          ; quoted ()
  %cloptr159669 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr159671 = getelementptr inbounds i64, i64* %cloptr159669, i64 1                ; &eptr159671[1]
  store i64 %NaA$_37take, i64* %eptr159671                                           ; *eptr159671 = %NaA$_37take
  %eptr159670 = getelementptr inbounds i64, i64* %cloptr159669, i64 0                ; &cloptr159669[0]
  %f159672 = ptrtoint void(i64,i64,i64,i64)* @lam157162 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f159672, i64* %eptr159670                                               ; store fptr
  %arg157033 = ptrtoint i64* %cloptr159669 to i64                                    ; closure cast; i64* -> i64
  %cloptr159673 = inttoptr i64 %cont156229 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159674 = getelementptr inbounds i64, i64* %cloptr159673, i64 0               ; &cloptr159673[0]
  %f159676 = load i64, i64* %i0ptr159674, align 8                                    ; load; *i0ptr159674
  %fptr159675 = inttoptr i64 %f159676 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159675(i64 %cont156229, i64 %arg157034, i64 %arg157033); tail call
  ret void
}


define void @lam157162(i64 %env157163, i64 %cont156230, i64 %Hpe$lst, i64 %wWm$n) {
  %envptr159677 = inttoptr i64 %env157163 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159678 = getelementptr inbounds i64, i64* %envptr159677, i64 1              ; &envptr159677[1]
  %NaA$_37take = load i64, i64* %envptr159678, align 8                               ; load; *envptr159678
  %arg157036 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a155948 = call i64 @prim__61(i64 %wWm$n, i64 %arg157036)                          ; call prim__61
  %cmp159679 = icmp eq i64 %a155948, 15                                              ; false?
  br i1 %cmp159679, label %else159681, label %then159680                             ; if

then159680:
  %arg157039 = add i64 0, 0                                                          ; quoted ()
  %arg157038 = add i64 0, 0                                                          ; quoted ()
  %cloptr159682 = inttoptr i64 %cont156230 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159683 = getelementptr inbounds i64, i64* %cloptr159682, i64 0               ; &cloptr159682[0]
  %f159685 = load i64, i64* %i0ptr159683, align 8                                    ; load; *i0ptr159683
  %fptr159684 = inttoptr i64 %f159685 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159684(i64 %cont156230, i64 %arg157039, i64 %arg157038); tail call
  ret void

else159681:
  %a155949 = call i64 @prim_null_63(i64 %Hpe$lst)                                    ; call prim_null_63
  %cmp159686 = icmp eq i64 %a155949, 15                                              ; false?
  br i1 %cmp159686, label %else159688, label %then159687                             ; if

then159687:
  %arg157043 = add i64 0, 0                                                          ; quoted ()
  %arg157042 = add i64 0, 0                                                          ; quoted ()
  %cloptr159689 = inttoptr i64 %cont156230 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159690 = getelementptr inbounds i64, i64* %cloptr159689, i64 0               ; &cloptr159689[0]
  %f159692 = load i64, i64* %i0ptr159690, align 8                                    ; load; *i0ptr159690
  %fptr159691 = inttoptr i64 %f159692 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159691(i64 %cont156230, i64 %arg157043, i64 %arg157042); tail call
  ret void

else159688:
  %a155950 = call i64 @prim_car(i64 %Hpe$lst)                                        ; call prim_car
  %a155951 = call i64 @prim_cdr(i64 %Hpe$lst)                                        ; call prim_cdr
  %arg157047 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a155952 = call i64 @prim__45(i64 %wWm$n, i64 %arg157047)                          ; call prim__45
  %cloptr159693 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr159695 = getelementptr inbounds i64, i64* %cloptr159693, i64 1                ; &eptr159695[1]
  %eptr159696 = getelementptr inbounds i64, i64* %cloptr159693, i64 2                ; &eptr159696[2]
  store i64 %cont156230, i64* %eptr159695                                            ; *eptr159695 = %cont156230
  store i64 %a155950, i64* %eptr159696                                               ; *eptr159696 = %a155950
  %eptr159694 = getelementptr inbounds i64, i64* %cloptr159693, i64 0                ; &cloptr159693[0]
  %f159697 = ptrtoint void(i64,i64,i64)* @lam157158 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159697, i64* %eptr159694                                               ; store fptr
  %arg157051 = ptrtoint i64* %cloptr159693 to i64                                    ; closure cast; i64* -> i64
  %cloptr159698 = inttoptr i64 %NaA$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr159699 = getelementptr inbounds i64, i64* %cloptr159698, i64 0               ; &cloptr159698[0]
  %f159701 = load i64, i64* %i0ptr159699, align 8                                    ; load; *i0ptr159699
  %fptr159700 = inttoptr i64 %f159701 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159700(i64 %NaA$_37take, i64 %arg157051, i64 %a155951, i64 %a155952); tail call
  ret void
}


define void @lam157158(i64 %env157159, i64 %_95156231, i64 %a155953) {
  %envptr159702 = inttoptr i64 %env157159 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159703 = getelementptr inbounds i64, i64* %envptr159702, i64 2              ; &envptr159702[2]
  %a155950 = load i64, i64* %envptr159703, align 8                                   ; load; *envptr159703
  %envptr159704 = inttoptr i64 %env157159 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159705 = getelementptr inbounds i64, i64* %envptr159704, i64 1              ; &envptr159704[1]
  %cont156230 = load i64, i64* %envptr159705, align 8                                ; load; *envptr159705
  %retprim156232 = call i64 @prim_cons(i64 %a155950, i64 %a155953)                   ; call prim_cons
  %arg157056 = add i64 0, 0                                                          ; quoted ()
  %cloptr159706 = inttoptr i64 %cont156230 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159707 = getelementptr inbounds i64, i64* %cloptr159706, i64 0               ; &cloptr159706[0]
  %f159709 = load i64, i64* %i0ptr159707, align 8                                    ; load; *i0ptr159707
  %fptr159708 = inttoptr i64 %f159709 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159708(i64 %cont156230, i64 %arg157056, i64 %retprim156232); tail call
  ret void
}


define void @lam157151(i64 %env157152, i64 %cont156233, i64 %Oxd$_37map) {
  %arg157059 = add i64 0, 0                                                          ; quoted ()
  %cloptr159710 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr159712 = getelementptr inbounds i64, i64* %cloptr159710, i64 1                ; &eptr159712[1]
  store i64 %Oxd$_37map, i64* %eptr159712                                            ; *eptr159712 = %Oxd$_37map
  %eptr159711 = getelementptr inbounds i64, i64* %cloptr159710, i64 0                ; &cloptr159710[0]
  %f159713 = ptrtoint void(i64,i64,i64,i64)* @lam157148 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f159713, i64* %eptr159711                                               ; store fptr
  %arg157058 = ptrtoint i64* %cloptr159710 to i64                                    ; closure cast; i64* -> i64
  %cloptr159714 = inttoptr i64 %cont156233 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159715 = getelementptr inbounds i64, i64* %cloptr159714, i64 0               ; &cloptr159714[0]
  %f159717 = load i64, i64* %i0ptr159715, align 8                                    ; load; *i0ptr159715
  %fptr159716 = inttoptr i64 %f159717 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159716(i64 %cont156233, i64 %arg157059, i64 %arg157058); tail call
  ret void
}


define void @lam157148(i64 %env157149, i64 %cont156234, i64 %pvs$f, i64 %Rbj$lst) {
  %envptr159718 = inttoptr i64 %env157149 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159719 = getelementptr inbounds i64, i64* %envptr159718, i64 1              ; &envptr159718[1]
  %Oxd$_37map = load i64, i64* %envptr159719, align 8                                ; load; *envptr159719
  %a155943 = call i64 @prim_null_63(i64 %Rbj$lst)                                    ; call prim_null_63
  %cmp159720 = icmp eq i64 %a155943, 15                                              ; false?
  br i1 %cmp159720, label %else159722, label %then159721                             ; if

then159721:
  %arg157063 = add i64 0, 0                                                          ; quoted ()
  %arg157062 = add i64 0, 0                                                          ; quoted ()
  %cloptr159723 = inttoptr i64 %cont156234 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159724 = getelementptr inbounds i64, i64* %cloptr159723, i64 0               ; &cloptr159723[0]
  %f159726 = load i64, i64* %i0ptr159724, align 8                                    ; load; *i0ptr159724
  %fptr159725 = inttoptr i64 %f159726 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159725(i64 %cont156234, i64 %arg157063, i64 %arg157062); tail call
  ret void

else159722:
  %a155944 = call i64 @prim_car(i64 %Rbj$lst)                                        ; call prim_car
  %cloptr159727 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr159729 = getelementptr inbounds i64, i64* %cloptr159727, i64 1                ; &eptr159729[1]
  %eptr159730 = getelementptr inbounds i64, i64* %cloptr159727, i64 2                ; &eptr159730[2]
  %eptr159731 = getelementptr inbounds i64, i64* %cloptr159727, i64 3                ; &eptr159731[3]
  %eptr159732 = getelementptr inbounds i64, i64* %cloptr159727, i64 4                ; &eptr159732[4]
  store i64 %cont156234, i64* %eptr159729                                            ; *eptr159729 = %cont156234
  store i64 %Oxd$_37map, i64* %eptr159730                                            ; *eptr159730 = %Oxd$_37map
  store i64 %Rbj$lst, i64* %eptr159731                                               ; *eptr159731 = %Rbj$lst
  store i64 %pvs$f, i64* %eptr159732                                                 ; *eptr159732 = %pvs$f
  %eptr159728 = getelementptr inbounds i64, i64* %cloptr159727, i64 0                ; &cloptr159727[0]
  %f159733 = ptrtoint void(i64,i64,i64)* @lam157146 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159733, i64* %eptr159728                                               ; store fptr
  %arg157067 = ptrtoint i64* %cloptr159727 to i64                                    ; closure cast; i64* -> i64
  %cloptr159734 = inttoptr i64 %pvs$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr159735 = getelementptr inbounds i64, i64* %cloptr159734, i64 0               ; &cloptr159734[0]
  %f159737 = load i64, i64* %i0ptr159735, align 8                                    ; load; *i0ptr159735
  %fptr159736 = inttoptr i64 %f159737 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159736(i64 %pvs$f, i64 %arg157067, i64 %a155944)    ; tail call
  ret void
}


define void @lam157146(i64 %env157147, i64 %_95156235, i64 %a155945) {
  %envptr159738 = inttoptr i64 %env157147 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159739 = getelementptr inbounds i64, i64* %envptr159738, i64 4              ; &envptr159738[4]
  %pvs$f = load i64, i64* %envptr159739, align 8                                     ; load; *envptr159739
  %envptr159740 = inttoptr i64 %env157147 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159741 = getelementptr inbounds i64, i64* %envptr159740, i64 3              ; &envptr159740[3]
  %Rbj$lst = load i64, i64* %envptr159741, align 8                                   ; load; *envptr159741
  %envptr159742 = inttoptr i64 %env157147 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159743 = getelementptr inbounds i64, i64* %envptr159742, i64 2              ; &envptr159742[2]
  %Oxd$_37map = load i64, i64* %envptr159743, align 8                                ; load; *envptr159743
  %envptr159744 = inttoptr i64 %env157147 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159745 = getelementptr inbounds i64, i64* %envptr159744, i64 1              ; &envptr159744[1]
  %cont156234 = load i64, i64* %envptr159745, align 8                                ; load; *envptr159745
  %a155946 = call i64 @prim_cdr(i64 %Rbj$lst)                                        ; call prim_cdr
  %cloptr159746 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr159748 = getelementptr inbounds i64, i64* %cloptr159746, i64 1                ; &eptr159748[1]
  %eptr159749 = getelementptr inbounds i64, i64* %cloptr159746, i64 2                ; &eptr159749[2]
  store i64 %cont156234, i64* %eptr159748                                            ; *eptr159748 = %cont156234
  store i64 %a155945, i64* %eptr159749                                               ; *eptr159749 = %a155945
  %eptr159747 = getelementptr inbounds i64, i64* %cloptr159746, i64 0                ; &cloptr159746[0]
  %f159750 = ptrtoint void(i64,i64,i64)* @lam157144 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159750, i64* %eptr159747                                               ; store fptr
  %arg157072 = ptrtoint i64* %cloptr159746 to i64                                    ; closure cast; i64* -> i64
  %cloptr159751 = inttoptr i64 %Oxd$_37map to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159752 = getelementptr inbounds i64, i64* %cloptr159751, i64 0               ; &cloptr159751[0]
  %f159754 = load i64, i64* %i0ptr159752, align 8                                    ; load; *i0ptr159752
  %fptr159753 = inttoptr i64 %f159754 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159753(i64 %Oxd$_37map, i64 %arg157072, i64 %pvs$f, i64 %a155946); tail call
  ret void
}


define void @lam157144(i64 %env157145, i64 %_95156236, i64 %a155947) {
  %envptr159755 = inttoptr i64 %env157145 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159756 = getelementptr inbounds i64, i64* %envptr159755, i64 2              ; &envptr159755[2]
  %a155945 = load i64, i64* %envptr159756, align 8                                   ; load; *envptr159756
  %envptr159757 = inttoptr i64 %env157145 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159758 = getelementptr inbounds i64, i64* %envptr159757, i64 1              ; &envptr159757[1]
  %cont156234 = load i64, i64* %envptr159758, align 8                                ; load; *envptr159758
  %retprim156237 = call i64 @prim_cons(i64 %a155945, i64 %a155947)                   ; call prim_cons
  %arg157077 = add i64 0, 0                                                          ; quoted ()
  %cloptr159759 = inttoptr i64 %cont156234 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159760 = getelementptr inbounds i64, i64* %cloptr159759, i64 0               ; &cloptr159759[0]
  %f159762 = load i64, i64* %i0ptr159760, align 8                                    ; load; *i0ptr159760
  %fptr159761 = inttoptr i64 %f159762 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159761(i64 %cont156234, i64 %arg157077, i64 %retprim156237); tail call
  ret void
}


define void @lam157139(i64 %env157140, i64 %cont156238, i64 %pRZ$_37foldr1) {
  %arg157080 = add i64 0, 0                                                          ; quoted ()
  %cloptr159763 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr159765 = getelementptr inbounds i64, i64* %cloptr159763, i64 1                ; &eptr159765[1]
  store i64 %pRZ$_37foldr1, i64* %eptr159765                                         ; *eptr159765 = %pRZ$_37foldr1
  %eptr159764 = getelementptr inbounds i64, i64* %cloptr159763, i64 0                ; &cloptr159763[0]
  %f159766 = ptrtoint void(i64,i64,i64,i64,i64)* @lam157136 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f159766, i64* %eptr159764                                               ; store fptr
  %arg157079 = ptrtoint i64* %cloptr159763 to i64                                    ; closure cast; i64* -> i64
  %cloptr159767 = inttoptr i64 %cont156238 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159768 = getelementptr inbounds i64, i64* %cloptr159767, i64 0               ; &cloptr159767[0]
  %f159770 = load i64, i64* %i0ptr159768, align 8                                    ; load; *i0ptr159768
  %fptr159769 = inttoptr i64 %f159770 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159769(i64 %cont156238, i64 %arg157080, i64 %arg157079); tail call
  ret void
}


define void @lam157136(i64 %env157137, i64 %cont156239, i64 %DxI$f, i64 %OPF$acc, i64 %eZX$lst) {
  %envptr159771 = inttoptr i64 %env157137 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159772 = getelementptr inbounds i64, i64* %envptr159771, i64 1              ; &envptr159771[1]
  %pRZ$_37foldr1 = load i64, i64* %envptr159772, align 8                             ; load; *envptr159772
  %a155939 = call i64 @prim_null_63(i64 %eZX$lst)                                    ; call prim_null_63
  %cmp159773 = icmp eq i64 %a155939, 15                                              ; false?
  br i1 %cmp159773, label %else159775, label %then159774                             ; if

then159774:
  %arg157084 = add i64 0, 0                                                          ; quoted ()
  %cloptr159776 = inttoptr i64 %cont156239 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159777 = getelementptr inbounds i64, i64* %cloptr159776, i64 0               ; &cloptr159776[0]
  %f159779 = load i64, i64* %i0ptr159777, align 8                                    ; load; *i0ptr159777
  %fptr159778 = inttoptr i64 %f159779 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159778(i64 %cont156239, i64 %arg157084, i64 %OPF$acc); tail call
  ret void

else159775:
  %a155940 = call i64 @prim_car(i64 %eZX$lst)                                        ; call prim_car
  %a155941 = call i64 @prim_cdr(i64 %eZX$lst)                                        ; call prim_cdr
  %cloptr159780 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr159782 = getelementptr inbounds i64, i64* %cloptr159780, i64 1                ; &eptr159782[1]
  %eptr159783 = getelementptr inbounds i64, i64* %cloptr159780, i64 2                ; &eptr159783[2]
  %eptr159784 = getelementptr inbounds i64, i64* %cloptr159780, i64 3                ; &eptr159784[3]
  store i64 %cont156239, i64* %eptr159782                                            ; *eptr159782 = %cont156239
  store i64 %a155940, i64* %eptr159783                                               ; *eptr159783 = %a155940
  store i64 %DxI$f, i64* %eptr159784                                                 ; *eptr159784 = %DxI$f
  %eptr159781 = getelementptr inbounds i64, i64* %cloptr159780, i64 0                ; &cloptr159780[0]
  %f159785 = ptrtoint void(i64,i64,i64)* @lam157134 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159785, i64* %eptr159781                                               ; store fptr
  %arg157091 = ptrtoint i64* %cloptr159780 to i64                                    ; closure cast; i64* -> i64
  %cloptr159786 = inttoptr i64 %pRZ$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr159787 = getelementptr inbounds i64, i64* %cloptr159786, i64 0               ; &cloptr159786[0]
  %f159789 = load i64, i64* %i0ptr159787, align 8                                    ; load; *i0ptr159787
  %fptr159788 = inttoptr i64 %f159789 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159788(i64 %pRZ$_37foldr1, i64 %arg157091, i64 %DxI$f, i64 %OPF$acc, i64 %a155941); tail call
  ret void
}


define void @lam157134(i64 %env157135, i64 %_95156240, i64 %a155942) {
  %envptr159790 = inttoptr i64 %env157135 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159791 = getelementptr inbounds i64, i64* %envptr159790, i64 3              ; &envptr159790[3]
  %DxI$f = load i64, i64* %envptr159791, align 8                                     ; load; *envptr159791
  %envptr159792 = inttoptr i64 %env157135 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159793 = getelementptr inbounds i64, i64* %envptr159792, i64 2              ; &envptr159792[2]
  %a155940 = load i64, i64* %envptr159793, align 8                                   ; load; *envptr159793
  %envptr159794 = inttoptr i64 %env157135 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159795 = getelementptr inbounds i64, i64* %envptr159794, i64 1              ; &envptr159794[1]
  %cont156239 = load i64, i64* %envptr159795, align 8                                ; load; *envptr159795
  %cloptr159796 = inttoptr i64 %DxI$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr159797 = getelementptr inbounds i64, i64* %cloptr159796, i64 0               ; &cloptr159796[0]
  %f159799 = load i64, i64* %i0ptr159797, align 8                                    ; load; *i0ptr159797
  %fptr159798 = inttoptr i64 %f159799 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159798(i64 %DxI$f, i64 %cont156239, i64 %a155940, i64 %a155942); tail call
  ret void
}


define void @lam157131(i64 %env157132, i64 %cont156242, i64 %p9a$y) {
  %arg157098 = add i64 0, 0                                                          ; quoted ()
  %cloptr159800 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr159802 = getelementptr inbounds i64, i64* %cloptr159800, i64 1                ; &eptr159802[1]
  store i64 %p9a$y, i64* %eptr159802                                                 ; *eptr159802 = %p9a$y
  %eptr159801 = getelementptr inbounds i64, i64* %cloptr159800, i64 0                ; &cloptr159800[0]
  %f159803 = ptrtoint void(i64,i64,i64)* @lam157128 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159803, i64* %eptr159801                                               ; store fptr
  %arg157097 = ptrtoint i64* %cloptr159800 to i64                                    ; closure cast; i64* -> i64
  %cloptr159804 = inttoptr i64 %cont156242 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr159805 = getelementptr inbounds i64, i64* %cloptr159804, i64 0               ; &cloptr159804[0]
  %f159807 = load i64, i64* %i0ptr159805, align 8                                    ; load; *i0ptr159805
  %fptr159806 = inttoptr i64 %f159807 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159806(i64 %cont156242, i64 %arg157098, i64 %arg157097); tail call
  ret void
}


define void @lam157128(i64 %env157129, i64 %cont156243, i64 %HN4$f) {
  %envptr159808 = inttoptr i64 %env157129 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159809 = getelementptr inbounds i64, i64* %envptr159808, i64 1              ; &envptr159808[1]
  %p9a$y = load i64, i64* %envptr159809, align 8                                     ; load; *envptr159809
  %cloptr159810 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr159812 = getelementptr inbounds i64, i64* %cloptr159810, i64 1                ; &eptr159812[1]
  %eptr159813 = getelementptr inbounds i64, i64* %cloptr159810, i64 2                ; &eptr159813[2]
  store i64 %HN4$f, i64* %eptr159812                                                 ; *eptr159812 = %HN4$f
  store i64 %p9a$y, i64* %eptr159813                                                 ; *eptr159813 = %p9a$y
  %eptr159811 = getelementptr inbounds i64, i64* %cloptr159810, i64 0                ; &cloptr159810[0]
  %f159814 = ptrtoint void(i64,i64)* @lam157126 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f159814, i64* %eptr159811                                               ; store fptr
  %arg157100 = ptrtoint i64* %cloptr159810 to i64                                    ; closure cast; i64* -> i64
  %cloptr159815 = inttoptr i64 %HN4$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr159816 = getelementptr inbounds i64, i64* %cloptr159815, i64 0               ; &cloptr159815[0]
  %f159818 = load i64, i64* %i0ptr159816, align 8                                    ; load; *i0ptr159816
  %fptr159817 = inttoptr i64 %f159818 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159817(i64 %HN4$f, i64 %cont156243, i64 %arg157100) ; tail call
  ret void
}


define void @lam157126(i64 %env157127, i64 %vZ7$args156245) {
  %envptr159819 = inttoptr i64 %env157127 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159820 = getelementptr inbounds i64, i64* %envptr159819, i64 2              ; &envptr159819[2]
  %p9a$y = load i64, i64* %envptr159820, align 8                                     ; load; *envptr159820
  %envptr159821 = inttoptr i64 %env157127 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159822 = getelementptr inbounds i64, i64* %envptr159821, i64 1              ; &envptr159821[1]
  %HN4$f = load i64, i64* %envptr159822, align 8                                     ; load; *envptr159822
  %cont156244 = call i64 @prim_car(i64 %vZ7$args156245)                              ; call prim_car
  %vZ7$args = call i64 @prim_cdr(i64 %vZ7$args156245)                                ; call prim_cdr
  %cloptr159823 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr159825 = getelementptr inbounds i64, i64* %cloptr159823, i64 1                ; &eptr159825[1]
  %eptr159826 = getelementptr inbounds i64, i64* %cloptr159823, i64 2                ; &eptr159826[2]
  %eptr159827 = getelementptr inbounds i64, i64* %cloptr159823, i64 3                ; &eptr159827[3]
  store i64 %cont156244, i64* %eptr159825                                            ; *eptr159825 = %cont156244
  store i64 %vZ7$args, i64* %eptr159826                                              ; *eptr159826 = %vZ7$args
  store i64 %HN4$f, i64* %eptr159827                                                 ; *eptr159827 = %HN4$f
  %eptr159824 = getelementptr inbounds i64, i64* %cloptr159823, i64 0                ; &cloptr159823[0]
  %f159828 = ptrtoint void(i64,i64,i64)* @lam157124 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159828, i64* %eptr159824                                               ; store fptr
  %arg157106 = ptrtoint i64* %cloptr159823 to i64                                    ; closure cast; i64* -> i64
  %cloptr159829 = inttoptr i64 %p9a$y to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr159830 = getelementptr inbounds i64, i64* %cloptr159829, i64 0               ; &cloptr159829[0]
  %f159832 = load i64, i64* %i0ptr159830, align 8                                    ; load; *i0ptr159830
  %fptr159831 = inttoptr i64 %f159832 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159831(i64 %p9a$y, i64 %arg157106, i64 %p9a$y)      ; tail call
  ret void
}


define void @lam157124(i64 %env157125, i64 %_95156246, i64 %a155937) {
  %envptr159833 = inttoptr i64 %env157125 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159834 = getelementptr inbounds i64, i64* %envptr159833, i64 3              ; &envptr159833[3]
  %HN4$f = load i64, i64* %envptr159834, align 8                                     ; load; *envptr159834
  %envptr159835 = inttoptr i64 %env157125 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159836 = getelementptr inbounds i64, i64* %envptr159835, i64 2              ; &envptr159835[2]
  %vZ7$args = load i64, i64* %envptr159836, align 8                                  ; load; *envptr159836
  %envptr159837 = inttoptr i64 %env157125 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159838 = getelementptr inbounds i64, i64* %envptr159837, i64 1              ; &envptr159837[1]
  %cont156244 = load i64, i64* %envptr159838, align 8                                ; load; *envptr159838
  %cloptr159839 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr159841 = getelementptr inbounds i64, i64* %cloptr159839, i64 1                ; &eptr159841[1]
  %eptr159842 = getelementptr inbounds i64, i64* %cloptr159839, i64 2                ; &eptr159842[2]
  store i64 %cont156244, i64* %eptr159841                                            ; *eptr159841 = %cont156244
  store i64 %vZ7$args, i64* %eptr159842                                              ; *eptr159842 = %vZ7$args
  %eptr159840 = getelementptr inbounds i64, i64* %cloptr159839, i64 0                ; &cloptr159839[0]
  %f159843 = ptrtoint void(i64,i64,i64)* @lam157122 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f159843, i64* %eptr159840                                               ; store fptr
  %arg157109 = ptrtoint i64* %cloptr159839 to i64                                    ; closure cast; i64* -> i64
  %cloptr159844 = inttoptr i64 %a155937 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr159845 = getelementptr inbounds i64, i64* %cloptr159844, i64 0               ; &cloptr159844[0]
  %f159847 = load i64, i64* %i0ptr159845, align 8                                    ; load; *i0ptr159845
  %fptr159846 = inttoptr i64 %f159847 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159846(i64 %a155937, i64 %arg157109, i64 %HN4$f)    ; tail call
  ret void
}


define void @lam157122(i64 %env157123, i64 %_95156247, i64 %a155938) {
  %envptr159848 = inttoptr i64 %env157123 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159849 = getelementptr inbounds i64, i64* %envptr159848, i64 2              ; &envptr159848[2]
  %vZ7$args = load i64, i64* %envptr159849, align 8                                  ; load; *envptr159849
  %envptr159850 = inttoptr i64 %env157123 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr159851 = getelementptr inbounds i64, i64* %envptr159850, i64 1              ; &envptr159850[1]
  %cont156244 = load i64, i64* %envptr159851, align 8                                ; load; *envptr159851
  %cps_45lst156248 = call i64 @prim_cons(i64 %cont156244, i64 %vZ7$args)             ; call prim_cons
  %cloptr159852 = inttoptr i64 %a155938 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr159853 = getelementptr inbounds i64, i64* %cloptr159852, i64 0               ; &cloptr159852[0]
  %f159855 = load i64, i64* %i0ptr159853, align 8                                    ; load; *i0ptr159853
  %fptr159854 = inttoptr i64 %f159855 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr159854(i64 %a155938, i64 %cps_45lst156248)          ; tail call
  ret void
}





@sym158432 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
