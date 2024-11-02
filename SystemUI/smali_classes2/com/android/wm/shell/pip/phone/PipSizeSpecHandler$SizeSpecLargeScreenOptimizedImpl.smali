.class public final Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;


# instance fields
.field public final mDefaultSizePercent:F

.field public final mMinimumSizePercent:F

.field public mOptimizedAspectRatio:F

.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "com.android.wm.shell.pip.phone.def_percentage"

    const-string v0, "0.6"

    .line 3
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mDefaultSizePercent:F

    const-string p1, "com.android.wm.shell.pip.phone.min_percentage"

    const-string v0, "0.5"

    .line 5
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mMinimumSizePercent:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;-><init>(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V

    return-void
.end method


# virtual methods
.method public final getDefaultSize(F)Landroid/util/Size;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->getMinSize(F)Landroid/util/Size;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->getMaxSize(F)Landroid/util/Size;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    int-to-float v1, v1

    .line 21
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mDefaultSizePercent:F

    .line 22
    .line 23
    mul-float/2addr v1, p0

    .line 24
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    int-to-float v0, p0

    .line 37
    div-float/2addr v0, p1

    .line 38
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    new-instance v0, Landroid/util/Size;

    .line 43
    .line 44
    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method public final getMaxSize(F)Landroid/util/Size;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->-$$Nest$mgetDisplayBounds(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 22
    .line 23
    sub-int/2addr v2, v3

    .line 24
    add-int/2addr v2, v1

    .line 25
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 30
    .line 31
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->-$$Nest$mgetDisplayBounds(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 44
    .line 45
    sub-int/2addr v3, v4

    .line 46
    add-int/2addr v3, v1

    .line 47
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->-$$Nest$mgetDisplayBounds(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    sub-int/2addr v1, v2

    .line 56
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->-$$Nest$mgetDisplayBounds(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    sub-int/2addr v0, v3

    .line 65
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    int-to-float v0, v0

    .line 70
    const/high16 v1, 0x3f800000    # 1.0f

    .line 71
    .line 72
    mul-float/2addr v0, v1

    .line 73
    float-to-int v0, v0

    .line 74
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mOptimizedAspectRatio:F

    .line 75
    .line 76
    cmpl-float v2, p1, p0

    .line 77
    .line 78
    if-ltz v2, :cond_0

    .line 79
    .line 80
    div-float v2, v1, p0

    .line 81
    .line 82
    cmpg-float v2, p1, v2

    .line 83
    .line 84
    if-gtz v2, :cond_0

    .line 85
    .line 86
    int-to-float v0, v0

    .line 87
    mul-float v2, p0, v0

    .line 88
    .line 89
    sub-float p0, p1, p0

    .line 90
    .line 91
    mul-float/2addr p0, v0

    .line 92
    add-float/2addr v1, p1

    .line 93
    div-float/2addr p0, v1

    .line 94
    add-float/2addr p0, v2

    .line 95
    float-to-int v0, p0

    .line 96
    int-to-float p0, v0

    .line 97
    div-float/2addr p0, p1

    .line 98
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    cmpl-float p0, p1, v1

    .line 104
    .line 105
    if-lez p0, :cond_1

    .line 106
    .line 107
    int-to-float p0, v0

    .line 108
    div-float/2addr p0, p1

    .line 109
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    goto :goto_0

    .line 114
    :cond_1
    int-to-float p0, v0

    .line 115
    mul-float/2addr p0, p1

    .line 116
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    move v5, v0

    .line 121
    move v0, p0

    .line 122
    move p0, v5

    .line 123
    :goto_0
    new-instance p1, Landroid/util/Size;

    .line 124
    .line 125
    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    .line 126
    .line 127
    .line 128
    return-object p1
.end method

.method public final getMinSize(F)Landroid/util/Size;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->adjustOverrideMinSizeToAspectRatio(F)Landroid/util/Size;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->getMaxSize(F)Landroid/util/Size;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    int-to-float v2, v2

    .line 21
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mMinimumSizePercent:F

    .line 22
    .line 23
    mul-float/2addr v2, p0

    .line 24
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    int-to-float v1, v1

    .line 33
    mul-float/2addr v1, p0

    .line 34
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    .line 39
    .line 40
    cmpl-float v1, p1, v1

    .line 41
    .line 42
    if-lez v1, :cond_1

    .line 43
    .line 44
    iget v0, v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mDefaultMinSize:I

    .line 45
    .line 46
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    int-to-float v0, p0

    .line 51
    mul-float/2addr v0, p1

    .line 52
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget p0, v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mDefaultMinSize:I

    .line 58
    .line 59
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    int-to-float v0, p0

    .line 64
    div-float/2addr v0, p1

    .line 65
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    move v3, p1

    .line 70
    move p1, p0

    .line 71
    move p0, v3

    .line 72
    :goto_0
    new-instance v0, Landroid/util/Size;

    .line 73
    .line 74
    invoke-direct {v0, p1, p0}, Landroid/util/Size;-><init>(II)V

    .line 75
    .line 76
    .line 77
    return-object v0
.end method

.method public final getSizeForAspectRatio(Landroid/util/Size;F)Landroid/util/Size;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    div-float/2addr v0, v1

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->getMaxSize(F)Landroid/util/Size;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    int-to-float p1, p1

    .line 21
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    int-to-float v0, v0

    .line 26
    div-float/2addr p1, v0

    .line 27
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->getMaxSize(F)Landroid/util/Size;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    int-to-float v1, v1

    .line 36
    mul-float/2addr v1, p1

    .line 37
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-float v2, v2

    .line 46
    mul-float/2addr v2, p1

    .line 47
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getMinEdgeSize()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/high16 v3, 0x3f800000    # 1.0f

    .line 58
    .line 59
    if-ge v1, v2, :cond_0

    .line 60
    .line 61
    cmpg-float v2, p2, v3

    .line 62
    .line 63
    if-gtz v2, :cond_0

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getMinEdgeSize()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    int-to-float p1, v1

    .line 70
    div-float/2addr p1, p2

    .line 71
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getMinEdgeSize()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-ge p1, v2, :cond_1

    .line 81
    .line 82
    cmpl-float v2, p2, v3

    .line 83
    .line 84
    if-lez v2, :cond_1

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getMinEdgeSize()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    int-to-float v1, p1

    .line 91
    mul-float/2addr v1, p2

    .line 92
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    :cond_1
    :goto_0
    cmpg-float v2, p2, v3

    .line 97
    .line 98
    if-gtz v2, :cond_2

    .line 99
    .line 100
    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mDefaultMinWidth:I

    .line 101
    .line 102
    if-ge v1, v2, :cond_2

    .line 103
    .line 104
    int-to-float p1, v2

    .line 105
    div-float/2addr p1, p2

    .line 106
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    move v1, v2

    .line 111
    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 126
    .line 127
    sub-int/2addr v2, v3

    .line 128
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 141
    .line 142
    sub-int/2addr p2, p0

    .line 143
    sub-int/2addr v2, p2

    .line 144
    if-lez v2, :cond_3

    .line 145
    .line 146
    if-le p1, v2, :cond_3

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    :cond_3
    new-instance p0, Landroid/util/Size;

    .line 157
    .line 158
    invoke-direct {p0, v1, p1}, Landroid/util/Size;-><init>(II)V

    .line 159
    .line 160
    .line 161
    return-object p0
.end method

.method public final reloadResources()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0701d9

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mOptimizedAspectRatio:F

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    cmpl-float v0, v0, v1

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    const/high16 v0, 0x3f100000    # 0.5625f

    .line 25
    .line 26
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mOptimizedAspectRatio:F

    .line 27
    .line 28
    :cond_0
    return-void
.end method
