.class public final Lcom/android/wm/shell/fullscreen/AffordanceAnimController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAnimSpecArray:[[F

.field public final mAnimation:Landroid/view/animation/Animation;

.field public mAnimator:Landroid/animation/ValueAnimator;

.field public final mBounds:Landroid/graphics/Rect;

.field public final mDisplayContext:Landroid/content/Context;

.field public final mRadius:F

.field public final mTmpFloat9:[F

.field public final mTmpTransformation:Landroid/view/animation/Transformation;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 10
    .line 11
    new-instance v0, Landroid/view/animation/Transformation;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 17
    .line 18
    const/16 v0, 0x9

    .line 19
    .line 20
    new-array v0, v0, [F

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTmpFloat9:[F

    .line 23
    .line 24
    new-instance v0, Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    .line 30
    .line 31
    const/4 v0, 0x6

    .line 32
    new-array v1, v0, [F

    .line 33
    .line 34
    fill-array-data v1, :array_0

    .line 35
    .line 36
    .line 37
    new-array v2, v0, [F

    .line 38
    .line 39
    fill-array-data v2, :array_1

    .line 40
    .line 41
    .line 42
    new-array v3, v0, [F

    .line 43
    .line 44
    fill-array-data v3, :array_2

    .line 45
    .line 46
    .line 47
    new-array v0, v0, [F

    .line 48
    .line 49
    fill-array-data v0, :array_3

    .line 50
    .line 51
    .line 52
    filled-new-array {v3, v0, v1, v2}, [[F

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimSpecArray:[[F

    .line 57
    .line 58
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 65
    .line 66
    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iput-object p2, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mDisplayContext:Landroid/content/Context;

    .line 75
    .line 76
    const v0, 0x10a00bd

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimation:Landroid/view/animation/Animation;

    .line 84
    .line 85
    invoke-static {p2}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iput p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mRadius:F

    .line 90
    .line 91
    return-void

    .line 92
    nop

    .line 93
    :array_0
    .array-data 4
        0x0
        0x40900000    # 4.5f
        -0x3fa80000    # -3.375f
        0x40100000    # 2.25f
        -0x40700000    # -1.125f
        0x0
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_1
    .array-data 4
        0x0
        0x4049999a    # 3.15f
        -0x4072e148    # -1.1025f
        0x3f3c28f6    # 0.735f
        -0x4143d70a    # -0.3675f
        0x0
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_2
    .array-data 4
        0x0
        -0x3f700000    # -4.5f
        0x40580000    # 3.375f
        -0x3ff00000    # -2.25f
        0x3f900000    # 1.125f
        0x0
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_3
    .array-data 4
        0x0
        -0x3fb66666    # -3.15f
        0x3f8d1eb8    # 1.1025f
        -0x40c3d70a    # -0.735f
        0x3ebc28f6    # 0.3675f
        0x0
    .end array-data
.end method


# virtual methods
.method public final getKeyFrames(FZZ)[Landroid/animation/Keyframe;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    const/4 p2, 0x2

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move p2, v0

    .line 7
    :goto_0
    const/4 v1, 0x1

    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    move p3, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    move p3, v0

    .line 13
    :goto_1
    add-int/2addr p2, p3

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimSpecArray:[[F

    .line 15
    .line 16
    aget-object p0, p0, p2

    .line 17
    .line 18
    array-length p2, p0

    .line 19
    new-array p2, p2, [Landroid/animation/Keyframe;

    .line 20
    .line 21
    array-length p3, p0

    .line 22
    if-nez p3, :cond_2

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :cond_2
    if-ne p3, v1, :cond_3

    .line 27
    .line 28
    aget p0, p0, v0

    .line 29
    .line 30
    mul-float/2addr p0, p1

    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-static {p1, p0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    aput-object p0, p2, v0

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    :goto_2
    if-ge v0, p3, :cond_4

    .line 40
    .line 41
    int-to-float v1, v0

    .line 42
    add-int/lit8 v2, p3, -0x1

    .line 43
    .line 44
    int-to-float v2, v2

    .line 45
    div-float/2addr v1, v2

    .line 46
    aget v2, p0, v0

    .line 47
    .line 48
    mul-float/2addr v2, p1

    .line 49
    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    aput-object v1, p2, v0

    .line 54
    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    :goto_3
    return-object p2
.end method
