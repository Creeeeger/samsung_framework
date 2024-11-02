.class public final Lcom/android/systemui/statusbar/phone/BounceInterpolator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 1

    .line 1
    const p0, 0x3f8ccccd    # 1.1f

    .line 2
    .line 3
    .line 4
    mul-float/2addr p1, p0

    .line 5
    const p0, 0x3eba2e8c

    .line 6
    .line 7
    .line 8
    cmpg-float p0, p1, p0

    .line 9
    .line 10
    const/high16 v0, 0x40f20000    # 7.5625f

    .line 11
    .line 12
    if-gez p0, :cond_0

    .line 13
    .line 14
    mul-float/2addr v0, p1

    .line 15
    mul-float/2addr v0, p1

    .line 16
    return v0

    .line 17
    :cond_0
    const p0, 0x3f3a2e8c

    .line 18
    .line 19
    .line 20
    cmpg-float p0, p1, p0

    .line 21
    .line 22
    if-gez p0, :cond_1

    .line 23
    .line 24
    const p0, 0x3f0ba2e9

    .line 25
    .line 26
    .line 27
    sub-float/2addr p1, p0

    .line 28
    mul-float/2addr v0, p1

    .line 29
    mul-float/2addr v0, p1

    .line 30
    const/high16 p0, 0x3f400000    # 0.75f

    .line 31
    .line 32
    add-float/2addr v0, p0

    .line 33
    return v0

    .line 34
    :cond_1
    const p0, 0x3f68ba2f

    .line 35
    .line 36
    .line 37
    cmpg-float p0, p1, p0

    .line 38
    .line 39
    if-gez p0, :cond_2

    .line 40
    .line 41
    const p0, 0x3f51745d

    .line 42
    .line 43
    .line 44
    sub-float/2addr p1, p0

    .line 45
    mul-float/2addr v0, p1

    .line 46
    mul-float/2addr v0, p1

    .line 47
    const/high16 p0, 0x3f700000    # 0.9375f

    .line 48
    .line 49
    add-float/2addr v0, p0

    .line 50
    return v0

    .line 51
    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    .line 52
    .line 53
    return p0
.end method
