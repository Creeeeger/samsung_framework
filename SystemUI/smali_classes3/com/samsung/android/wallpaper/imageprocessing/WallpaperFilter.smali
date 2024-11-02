.class public Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WallpaperFilter"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final applyFilter(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "WallpaperFilter"

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p0, "applyFilter: null bitmap. skipped"

    .line 11
    .line 12
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    iget v1, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;->mBlurRadius:F

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    cmpg-float v3, v2, v1

    .line 21
    .line 22
    if-gez v3, :cond_1

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v6, "applyStackBlur : "

    .line 39
    .line 40
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v6, " x "

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-static {p2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    new-instance p2, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    .line 62
    .line 63
    invoke-direct {p2, v4}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;-><init>(I)V

    .line 64
    .line 65
    .line 66
    new-instance v4, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    invoke-direct {v4, p0, p1, v1, v5}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;Landroid/graphics/Bitmap;II)V

    .line 70
    .line 71
    .line 72
    const-string v5, "StackBlur1"

    .line 73
    .line 74
    invoke-virtual {p0, v5, p2, v4}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->applyFilterOnMultiThread(Ljava/lang/String;Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;Ljava/util/function/Consumer;)V

    .line 75
    .line 76
    .line 77
    new-instance p2, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    .line 78
    .line 79
    invoke-direct {p2, v3}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;-><init>(I)V

    .line 80
    .line 81
    .line 82
    new-instance v3, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    const/4 v4, 0x1

    .line 85
    invoke-direct {v3, p0, p1, v1, v4}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;Landroid/graphics/Bitmap;II)V

    .line 86
    .line 87
    .line 88
    const-string v1, "StackBlur2"

    .line 89
    .line 90
    invoke-virtual {p0, v1, p2, v3}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->applyFilterOnMultiThread(Ljava/lang/String;Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;Ljava/util/function/Consumer;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    iget p2, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;->mNoiseValue:F

    .line 94
    .line 95
    cmpg-float v1, v2, p2

    .line 96
    .line 97
    if-gez v1, :cond_2

    .line 98
    .line 99
    float-to-double v3, p2

    .line 100
    const/16 p2, 0x4e20

    .line 101
    .line 102
    invoke-virtual {p0, v3, v4, p2}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->nativeCreateGaussianNoiseSamples(DI)[I

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    new-instance v1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-direct {v1, v3}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;-><init>(I)V

    .line 113
    .line 114
    .line 115
    new-instance v3, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda1;

    .line 116
    .line 117
    invoke-direct {v3, p0, p1, p2}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;Landroid/graphics/Bitmap;[I)V

    .line 118
    .line 119
    .line 120
    const-string p2, "GaussianNoise"

    .line 121
    .line 122
    invoke-virtual {p0, p2, v1, v3}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->applyFilterOnMultiThread(Ljava/lang/String;Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;Ljava/util/function/Consumer;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    iget p2, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;->mHighlightAmount:F

    .line 126
    .line 127
    cmpg-float v0, v2, p2

    .line 128
    .line 129
    if-gez v0, :cond_3

    .line 130
    .line 131
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    new-instance v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    invoke-direct {v0, v1}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;-><init>(I)V

    .line 142
    .line 143
    .line 144
    new-instance v1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;

    .line 145
    .line 146
    const/4 v2, 0x2

    .line 147
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;Landroid/graphics/Bitmap;II)V

    .line 148
    .line 149
    .line 150
    const-string p1, "highlight"

    .line 151
    .line 152
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->applyFilterOnMultiThread(Ljava/lang/String;Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;Ljava/util/function/Consumer;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    :goto_0
    return-void
.end method

.method public final applyFilterOnMultiThread(Ljava/lang/String;Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;Ljava/util/function/Consumer;)V
    .locals 17

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v12, v0, [Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    .line 8
    aput-boolean v1, v12, v2

    .line 9
    .line 10
    add-int/lit8 v2, v2, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    monitor-enter v12

    .line 14
    move-object/from16 v2, p2

    .line 15
    .line 16
    :try_start_0
    iget v13, v2, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->totalSize:I

    .line 17
    .line 18
    add-int/lit8 v2, v13, 0x4

    .line 19
    .line 20
    add-int/lit8 v2, v2, -0x1

    .line 21
    .line 22
    div-int/lit8 v14, v2, 0x4

    .line 23
    .line 24
    move v15, v1

    .line 25
    :goto_1
    if-ge v15, v0, :cond_1

    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v10

    .line 31
    new-instance v9, Ljava/lang/Thread;

    .line 32
    .line 33
    new-instance v8, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;

    .line 34
    .line 35
    const/4 v5, 0x4

    .line 36
    move-object v1, v8

    .line 37
    move-object/from16 v2, p0

    .line 38
    .line 39
    move v3, v14

    .line 40
    move v4, v15

    .line 41
    move v6, v13

    .line 42
    move-object/from16 v7, p1

    .line 43
    .line 44
    move-object v0, v8

    .line 45
    move-object/from16 v8, p3

    .line 46
    .line 47
    move-object/from16 v16, v9

    .line 48
    .line 49
    move-object v9, v12

    .line 50
    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;-><init>(Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;IIIILjava/lang/String;Ljava/util/function/Consumer;[ZJ)V

    .line 51
    .line 52
    .line 53
    move-object/from16 v1, v16

    .line 54
    .line 55
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    const/16 v0, 0xa

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    add-int/lit8 v15, v15, 0x1

    .line 67
    .line 68
    const/4 v0, 0x4

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    :catch_0
    :try_start_2
    monitor-exit v12

    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    throw v0
.end method

.method public native nativeCreateGaussianNoiseSamples(DI)[I
.end method

.method public native nativeSetGaussianNoise(Landroid/graphics/Bitmap;II[I)V
.end method

.method public native nativeSetHighLightFilter(Landroid/graphics/Bitmap;III)V
.end method

.method public native nativeStackBlur(Landroid/graphics/Bitmap;IIII)V
.end method
