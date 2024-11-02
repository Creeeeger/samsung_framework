.class public abstract Lcom/android/systemui/decor/RoundedCornerDecorProviderImplKt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public static final access$toLayoutGravity(II)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    if-eq p1, v2, :cond_1

    .line 7
    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    if-eqz p0, :cond_4

    .line 11
    .line 12
    if-eq p0, v2, :cond_3

    .line 13
    .line 14
    if-eq p0, v0, :cond_6

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    if-eqz p0, :cond_5

    .line 18
    .line 19
    if-eq p0, v2, :cond_4

    .line 20
    .line 21
    if-eq p0, v0, :cond_3

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    if-eqz p0, :cond_3

    .line 25
    .line 26
    if-eq p0, v2, :cond_6

    .line 27
    .line 28
    if-eq p0, v0, :cond_5

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    if-eqz p0, :cond_6

    .line 32
    .line 33
    if-eq p0, v2, :cond_5

    .line 34
    .line 35
    if-eq p0, v0, :cond_4

    .line 36
    .line 37
    :cond_3
    const/16 v1, 0x50

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_4
    :goto_0
    const/4 v1, 0x5

    .line 41
    goto :goto_2

    .line 42
    :cond_5
    :goto_1
    const/16 v1, 0x30

    .line 43
    .line 44
    :cond_6
    :goto_2
    return v1
.end method
