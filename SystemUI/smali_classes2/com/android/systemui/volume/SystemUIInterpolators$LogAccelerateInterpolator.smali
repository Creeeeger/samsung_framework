.class public final Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public final mBase:I

.field public final mDrift:I

.field public final mLogScale:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mBase:I

    .line 4
    iput p2, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mDrift:I

    int-to-double v0, p1

    const/high16 p1, -0x40800000    # -1.0f

    float-to-double v2, p1

    .line 5
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    int-to-float p2, p2

    mul-float/2addr p2, v0

    add-float/2addr p2, p1

    div-float/2addr v0, p2

    .line 6
    iput v0, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mLogScale:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 7

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    sub-float p1, v0, p1

    .line 4
    .line 5
    iget v1, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mBase:I

    .line 6
    .line 7
    iget v2, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mDrift:I

    .line 8
    .line 9
    int-to-double v3, v1

    .line 10
    neg-float v1, p1

    .line 11
    float-to-double v5, v1

    .line 12
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    neg-double v3, v3

    .line 17
    double-to-float v1, v3

    .line 18
    add-float/2addr v1, v0

    .line 19
    int-to-float v2, v2

    .line 20
    mul-float/2addr v2, p1

    .line 21
    add-float/2addr v2, v1

    .line 22
    iget p0, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mLogScale:F

    .line 23
    .line 24
    mul-float/2addr v2, p0

    .line 25
    sub-float/2addr v0, v2

    .line 26
    return v0
.end method
