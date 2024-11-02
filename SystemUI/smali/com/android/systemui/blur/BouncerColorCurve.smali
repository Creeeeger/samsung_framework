.class public final Lcom/android/systemui/blur/BouncerColorCurve;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final RADIUS:F


# instance fields
.field public mCurve:F

.field public mFraction:F

.field public mMaxX:F

.field public mMaxY:F

.field public mMinX:F

.field public mMinY:F

.field public mRadius:F

.field public mSaturation:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_CAPTURED_BLUR:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/high16 v0, 0x42540000    # 53.0f

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/high16 v0, 0x43160000    # 150.0f

    .line 9
    .line 10
    :goto_0
    sput v0, Lcom/android/systemui/blur/BouncerColorCurve;->RADIUS:F

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mRadius:F

    .line 6
    .line 7
    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mSaturation:F

    .line 8
    .line 9
    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mCurve:F

    .line 10
    .line 11
    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mMinX:F

    .line 12
    .line 13
    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mMaxX:F

    .line 14
    .line 15
    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mMinY:F

    .line 16
    .line 17
    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mMaxY:F

    .line 18
    .line 19
    const/high16 v0, -0x40800000    # -1.0f

    .line 20
    .line 21
    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mFraction:F

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final setFraction(FZ)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mFraction:F

    .line 2
    .line 3
    sget v0, Lcom/android/systemui/blur/BouncerColorCurve;->RADIUS:F

    .line 4
    .line 5
    mul-float/2addr v0, p1

    .line 6
    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mRadius:F

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    mul-float/2addr v0, p1

    .line 10
    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mSaturation:F

    .line 11
    .line 12
    const/high16 v1, 0x41000000    # 8.0f

    .line 13
    .line 14
    mul-float/2addr v1, p1

    .line 15
    iput v1, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mCurve:F

    .line 16
    .line 17
    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mMinX:F

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 25
    .line 26
    :goto_0
    mul-float/2addr v1, p1

    .line 27
    iput v1, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mMinY:F

    .line 28
    .line 29
    const/high16 v1, 0x437f0000    # 255.0f

    .line 30
    .line 31
    sub-float v0, v1, v0

    .line 32
    .line 33
    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mMaxX:F

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    move p2, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const p2, 0x43323333    # 178.2f

    .line 40
    .line 41
    .line 42
    :goto_1
    sub-float p2, v1, p2

    .line 43
    .line 44
    mul-float/2addr p2, p1

    .line 45
    sub-float/2addr v1, p2

    .line 46
    iput v1, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mMaxY:F

    .line 47
    .line 48
    return-void
.end method
