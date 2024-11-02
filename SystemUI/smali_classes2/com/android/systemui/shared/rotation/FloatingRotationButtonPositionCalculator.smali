.class public final Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final defaultMargin:I

.field public final floatingRotationButtonPositionLeft:Z

.field public final taskbarMarginBottom:I

.field public final taskbarMarginLeft:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->defaultMargin:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->taskbarMarginLeft:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->taskbarMarginBottom:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->floatingRotationButtonPositionLeft:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final calculatePosition(IZZ)Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v0

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    move v2, v1

    .line 11
    :goto_1
    if-eqz v2, :cond_2

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    if-nez p3, :cond_2

    .line 16
    .line 17
    move v0, v1

    .line 18
    :cond_2
    sget-boolean p2, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    .line 19
    .line 20
    if-eqz p2, :cond_3

    .line 21
    .line 22
    sget-object p1, Lcom/android/systemui/shared/rotation/RotationUtil;->Companion:Lcom/android/systemui/shared/rotation/RotationUtil$Companion;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget p1, Lcom/android/systemui/shared/rotation/RotationUtil;->floatingButtonPosition:I

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_3
    iget-boolean p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->floatingRotationButtonPositionLeft:Z

    .line 31
    .line 32
    const-string p3, "Invalid rotation "

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    const/4 v3, 0x2

    .line 36
    if-eqz p2, :cond_5

    .line 37
    .line 38
    if-eqz p1, :cond_6

    .line 39
    .line 40
    if-eq p1, v1, :cond_a

    .line 41
    .line 42
    if-eq p1, v3, :cond_9

    .line 43
    .line 44
    if-ne p1, v2, :cond_4

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    invoke-static {p3, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_5
    if-eqz p1, :cond_a

    .line 58
    .line 59
    if-eq p1, v1, :cond_9

    .line 60
    .line 61
    if-eq p1, v3, :cond_8

    .line 62
    .line 63
    if-ne p1, v2, :cond_7

    .line 64
    .line 65
    :cond_6
    const/16 p1, 0x53

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    invoke-static {p3, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_8
    :goto_2
    const/16 p1, 0x33

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_9
    const/16 p1, 0x35

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_a
    const/16 p1, 0x55

    .line 85
    .line 86
    :goto_3
    iget p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->defaultMargin:I

    .line 87
    .line 88
    if-eqz v0, :cond_b

    .line 89
    .line 90
    iget p3, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->taskbarMarginLeft:I

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_b
    move p3, p2

    .line 94
    :goto_4
    if-eqz v0, :cond_c

    .line 95
    .line 96
    iget p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->taskbarMarginBottom:I

    .line 97
    .line 98
    :cond_c
    and-int/lit8 p0, p1, 0x5

    .line 99
    .line 100
    const/4 v0, 0x5

    .line 101
    if-ne p0, v0, :cond_d

    .line 102
    .line 103
    neg-int p3, p3

    .line 104
    :cond_d
    and-int/lit8 p0, p1, 0x50

    .line 105
    .line 106
    const/16 v0, 0x50

    .line 107
    .line 108
    if-ne p0, v0, :cond_e

    .line 109
    .line 110
    neg-int p2, p2

    .line 111
    :cond_e
    new-instance p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;

    .line 112
    .line 113
    invoke-direct {p0, p1, p3, p2}, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;-><init>(III)V

    .line 114
    .line 115
    .line 116
    return-object p0
.end method
