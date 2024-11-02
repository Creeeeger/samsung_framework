.class public final Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$baseHeight:I

.field public final synthetic val$completeTable:[Z

.field public final synthetic val$filter:Ljava/util/function/Consumer;

.field public final synthetic val$tag:Ljava/lang/String;

.field public final synthetic val$threadCnt:I

.field public final synthetic val$threadCreationTime:J

.field public final synthetic val$tid:I

.field public final synthetic val$totalSize:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;IIIILjava/lang/String;Ljava/util/function/Consumer;[ZJ)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$baseHeight:I

    .line 2
    .line 3
    iput p3, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$tid:I

    .line 4
    .line 5
    iput p4, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$threadCnt:I

    .line 6
    .line 7
    iput p5, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$totalSize:I

    .line 8
    .line 9
    iput-object p6, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$tag:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$filter:Ljava/util/function/Consumer;

    .line 12
    .line 13
    iput-object p8, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$completeTable:[Z

    .line 14
    .line 15
    iput-wide p9, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$threadCreationTime:J

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    const-string v0, "applyFilterOnMultiThread["

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$baseHeight:I

    .line 4
    .line 5
    iget v2, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$tid:I

    .line 6
    .line 7
    mul-int v3, v1, v2

    .line 8
    .line 9
    iget v4, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$threadCnt:I

    .line 10
    .line 11
    add-int/lit8 v5, v4, -0x1

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    if-ge v2, v5, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget v2, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$totalSize:I

    .line 18
    .line 19
    sub-int/2addr v4, v6

    .line 20
    mul-int/2addr v4, v1

    .line 21
    sub-int v1, v2, v4

    .line 22
    .line 23
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    new-instance v2, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    .line 28
    .line 29
    iget v7, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$totalSize:I

    .line 30
    .line 31
    invoke-direct {v2, v7}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput v3, v2, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->start:I

    .line 35
    .line 36
    iput v1, v2, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->length:I

    .line 37
    .line 38
    sget v1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->$r8$clinit:I

    .line 39
    .line 40
    const-string v1, "WallpaperFilter"

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v7, "applyFilterOnMultiThread before ["

    .line 45
    .line 46
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v7, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$tag:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v7, "] : tid "

    .line 55
    .line 56
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v7, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$tid:I

    .line 60
    .line 61
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$filter:Ljava/util/function/Consumer;

    .line 75
    .line 76
    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$completeTable:[Z

    .line 80
    .line 81
    monitor-enter v1

    .line 82
    :try_start_0
    const-string v2, "WallpaperFilter"

    .line 83
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$tag:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, "] : tid "

    .line 95
    .line 96
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget v0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$tid:I

    .line 100
    .line 101
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, " finished. startDelay="

    .line 105
    .line 106
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-wide v7, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$threadCreationTime:J

    .line 110
    .line 111
    sub-long v7, v4, v7

    .line 112
    .line 113
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, ", pureJniDur="

    .line 117
    .line 118
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 122
    .line 123
    .line 124
    move-result-wide v7

    .line 125
    sub-long/2addr v7, v4

    .line 126
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$completeTable:[Z

    .line 137
    .line 138
    iget v2, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$tid:I

    .line 139
    .line 140
    aput-boolean v6, v0, v2

    .line 141
    .line 142
    const/4 v0, 0x0

    .line 143
    move v2, v0

    .line 144
    :goto_1
    iget v3, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$threadCnt:I

    .line 145
    .line 146
    if-ge v2, v3, :cond_2

    .line 147
    .line 148
    iget-object v3, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$completeTable:[Z

    .line 149
    .line 150
    aget-boolean v3, v3, v2

    .line 151
    .line 152
    if-nez v3, :cond_1

    .line 153
    .line 154
    move v6, v0

    .line 155
    goto :goto_2

    .line 156
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 160
    .line 161
    iget-object p0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$completeTable:[Z

    .line 162
    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 164
    .line 165
    .line 166
    :cond_3
    monitor-exit v1

    .line 167
    return-void

    .line 168
    :catchall_0
    move-exception p0

    .line 169
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    throw p0
.end method
