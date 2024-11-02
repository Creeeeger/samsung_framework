.class public final Lcom/facebook/rebound/OrigamiValueConverter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static frictionFromOrigamiValue(D)D
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpl-double v2, p0, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    .line 9
    .line 10
    sub-double/2addr p0, v0

    .line 11
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 12
    .line 13
    mul-double/2addr p0, v0

    .line 14
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    .line 15
    .line 16
    add-double/2addr v0, p0

    .line 17
    :goto_0
    return-wide v0
.end method

.method public static tensionFromOrigamiValue(D)D
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpl-double v2, p0, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 9
    .line 10
    sub-double/2addr p0, v0

    .line 11
    const-wide v0, 0x400cf5c28f5c28f6L    # 3.62

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    mul-double/2addr p0, v0

    .line 17
    const-wide v0, 0x4068400000000000L    # 194.0

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    add-double/2addr v0, p0

    .line 23
    :goto_0
    return-wide v0
.end method
