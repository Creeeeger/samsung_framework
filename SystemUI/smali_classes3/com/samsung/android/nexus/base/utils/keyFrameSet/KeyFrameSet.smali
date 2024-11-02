.class public abstract Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public fractionPositions:[F

.field public interpolator:Landroid/view/animation/Interpolator;

.field public interpolators:[Landroid/view/animation/Interpolator;

.field public length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    .line 5
    iget v0, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    .line 6
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    .line 7
    iget-object v2, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object v0, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    .line 9
    iget-object p1, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    if-eqz p1, :cond_0

    .line 10
    array-length p1, p1

    new-array p1, p1, [Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    .line 11
    array-length p0, p1

    invoke-static {p1, v3, p1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    :goto_0
    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->init([FLandroid/view/animation/Interpolator;[Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>([FLandroid/view/animation/Interpolator;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->init([FLandroid/view/animation/Interpolator;[Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>([F[Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->init([FLandroid/view/animation/Interpolator;[Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public final init([FLandroid/view/animation/Interpolator;[Landroid/view/animation/Interpolator;)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    aget v2, p1, v1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    move v4, v3

    .line 7
    :goto_0
    if-ge v4, v0, :cond_1

    .line 8
    .line 9
    aget v5, p1, v4

    .line 10
    .line 11
    cmpl-float v2, v2, v5

    .line 12
    .line 13
    if-gtz v2, :cond_0

    .line 14
    .line 15
    add-int/lit8 v4, v4, 0x1

    .line 16
    .line 17
    move v2, v5

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string p1, "positions are MUST Ascending"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    array-length v0, p1

    .line 28
    iput v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    if-lt v0, v2, :cond_4

    .line 32
    .line 33
    new-array v2, v0, [F

    .line 34
    .line 35
    iput-object v2, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    .line 36
    .line 37
    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    if-eqz p3, :cond_3

    .line 41
    .line 42
    array-length p1, p3

    .line 43
    iget v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    .line 44
    .line 45
    sub-int/2addr v0, v3

    .line 46
    if-ne p1, v0, :cond_2

    .line 47
    .line 48
    array-length p1, p3

    .line 49
    new-array v0, p1, [Landroid/view/animation/Interpolator;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    .line 52
    .line 53
    invoke-static {p3, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string p1, "interpolator length MUST be >= 2"

    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_3
    :goto_1
    iput-object p2, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    .line 66
    .line 67
    return-void

    .line 68
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    const-string p1, "position length MUST be >= 2"

    .line 71
    .line 72
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0
.end method
