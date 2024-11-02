.class public final Landroidx/core/animation/BounceInterpolator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/core/animation/Interpolator;


# direct methods
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
.method public final getInterpolation(F)F
    .locals 1

    .line 1
    const p0, 0x3f8fb15b    # 1.1226f

    .line 2
    .line 3
    .line 4
    mul-float/2addr p1, p0

    .line 5
    const p0, 0x3eb4fdf4    # 0.3535f

    .line 6
    .line 7
    .line 8
    cmpg-float p0, p1, p0

    .line 9
    .line 10
    const/high16 v0, 0x41000000    # 8.0f

    .line 11
    .line 12
    if-gez p0, :cond_0

    .line 13
    .line 14
    mul-float/2addr p1, p1

    .line 15
    mul-float/2addr p1, v0

    .line 16
    return p1

    .line 17
    :cond_0
    const p0, 0x3f3da512    # 0.7408f

    .line 18
    .line 19
    .line 20
    cmpg-float p0, p1, p0

    .line 21
    .line 22
    if-gez p0, :cond_1

    .line 23
    .line 24
    const p0, 0x3f0c14a5

    .line 25
    .line 26
    .line 27
    sub-float/2addr p1, p0

    .line 28
    mul-float/2addr p1, p1

    .line 29
    mul-float/2addr p1, v0

    .line 30
    const p0, 0x3f333333    # 0.7f

    .line 31
    .line 32
    .line 33
    :goto_0
    add-float/2addr p1, p0

    .line 34
    return p1

    .line 35
    :cond_1
    const p0, 0x3f76e2eb    # 0.9644f

    .line 36
    .line 37
    .line 38
    cmpg-float p0, p1, p0

    .line 39
    .line 40
    if-gez p0, :cond_2

    .line 41
    .line 42
    const p0, 0x3f5a43fe    # 0.8526f

    .line 43
    .line 44
    .line 45
    sub-float/2addr p1, p0

    .line 46
    mul-float/2addr p1, p1

    .line 47
    mul-float/2addr p1, v0

    .line 48
    const p0, 0x3f666666    # 0.9f

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const p0, 0x3f859168    # 1.0435f

    .line 53
    .line 54
    .line 55
    sub-float/2addr p1, p0

    .line 56
    mul-float/2addr p1, p1

    .line 57
    mul-float/2addr p1, v0

    .line 58
    const p0, 0x3f733333    # 0.95f

    .line 59
    .line 60
    .line 61
    goto :goto_0
.end method
