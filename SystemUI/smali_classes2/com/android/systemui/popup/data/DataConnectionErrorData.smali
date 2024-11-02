.class public final Lcom/android/systemui/popup/data/DataConnectionErrorData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 5
    .line 6
    return-void
.end method

.method public static getBody(I)I
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, -0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const p0, 0x7f13044e

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :cond_1
    const p0, 0x7f130444

    .line 19
    .line 20
    .line 21
    return p0

    .line 22
    :cond_2
    const p0, 0x7f13044b

    .line 23
    .line 24
    .line 25
    return p0

    .line 26
    :cond_3
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_4

    .line 31
    .line 32
    const p0, 0x7f130448

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    const p0, 0x7f130447

    .line 37
    .line 38
    .line 39
    :goto_0
    return p0
.end method

.method public static getPButton(IZ)I
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, -0x1

    .line 13
    return p0

    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const p0, 0x7f130e41

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const p0, 0x7f131331

    .line 21
    .line 22
    .line 23
    :goto_0
    return p0

    .line 24
    :cond_2
    const p0, 0x7f130cb7

    .line 25
    .line 26
    .line 27
    return p0

    .line 28
    :cond_3
    const p0, 0x7f1310ad

    .line 29
    .line 30
    .line 31
    return p0
.end method
