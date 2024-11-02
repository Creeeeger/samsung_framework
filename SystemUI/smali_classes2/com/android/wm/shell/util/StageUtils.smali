.class public final Lcom/android/wm/shell/util/StageUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStagePositionToDockSide(I)I
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eq p0, v0, :cond_3

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x20

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x40

    .line 14
    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    const/4 p0, -0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x4

    .line 20
    return p0

    .line 21
    :cond_1
    const/4 p0, 0x3

    .line 22
    return p0

    .line 23
    :cond_2
    const/4 p0, 0x2

    .line 24
    return p0

    .line 25
    :cond_3
    const/4 p0, 0x1

    .line 26
    return p0
.end method

.method public static getMultiSplitLaunchPosition(IZ)I
    .locals 2

    .line 1
    const/16 v0, 0x60

    .line 2
    .line 3
    const/16 v1, 0x30

    .line 4
    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    and-int/lit8 p0, p0, 0x8

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x18

    .line 14
    .line 15
    :cond_0
    return v0

    .line 16
    :cond_1
    and-int/lit8 p0, p0, 0x10

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const/16 v1, 0x48

    .line 22
    .line 23
    :goto_0
    return v1

    .line 24
    :cond_3
    if-eqz p1, :cond_4

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_4
    move v0, v1

    .line 28
    :goto_1
    return v0
.end method
