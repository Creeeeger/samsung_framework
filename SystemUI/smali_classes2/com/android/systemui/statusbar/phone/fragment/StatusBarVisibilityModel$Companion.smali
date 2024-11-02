.class public final Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel$Companion;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel$Companion;-><init>()V

    return-void
.end method

.method public static createModelFromFlags(II)Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;
    .locals 7

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    .line 2
    .line 3
    const/high16 v1, 0x800000

    .line 4
    .line 5
    and-int/2addr v1, p0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    move v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v3

    .line 13
    :goto_0
    const/high16 v4, 0x20000

    .line 14
    .line 15
    and-int/2addr v4, p0

    .line 16
    if-nez v4, :cond_1

    .line 17
    .line 18
    move v4, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v4, v3

    .line 21
    :goto_1
    const/high16 v5, 0x4000000

    .line 22
    .line 23
    and-int/2addr v5, p0

    .line 24
    if-nez v5, :cond_2

    .line 25
    .line 26
    move v5, v2

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move v5, v3

    .line 29
    :goto_2
    const/high16 v6, 0x100000

    .line 30
    .line 31
    and-int/2addr p0, v6

    .line 32
    if-nez p0, :cond_3

    .line 33
    .line 34
    and-int/lit8 p0, p1, 0x2

    .line 35
    .line 36
    if-nez p0, :cond_3

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move v2, v3

    .line 40
    :goto_3
    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;-><init>(ZZZZ)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method
