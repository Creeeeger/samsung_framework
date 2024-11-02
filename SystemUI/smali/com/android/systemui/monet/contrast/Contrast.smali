.class public final Lcom/android/systemui/monet/contrast/Contrast;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static ratioOfTones(DD)D
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/android/systemui/monet/utils/ColorUtils;->yFromLstar(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p2, p3}, Lcom/android/systemui/monet/utils/ColorUtils;->yFromLstar(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide p2

    .line 9
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    cmpl-double v2, v0, p2

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-wide p0, p2

    .line 19
    :goto_0
    const-wide/high16 p2, 0x4014000000000000L    # 5.0

    .line 20
    .line 21
    add-double/2addr v0, p2

    .line 22
    add-double/2addr p0, p2

    .line 23
    div-double/2addr v0, p0

    .line 24
    return-wide v0
.end method
