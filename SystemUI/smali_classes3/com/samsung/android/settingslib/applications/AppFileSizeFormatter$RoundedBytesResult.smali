.class public final Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final fractionDigits:I

.field public final units:Landroid/icu/util/MeasureUnit;

.field public final value:F


# direct methods
.method private constructor <init>(FLandroid/icu/util/MeasureUnit;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->value:F

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    .line 7
    .line 8
    iput p3, p0, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->fractionDigits:I

    .line 9
    .line 10
    return-void
.end method

.method public static roundBytes(J)Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;
    .locals 12

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    neg-long p0, p0

    .line 14
    :cond_1
    long-to-float p0, p0

    .line 15
    sget-object p1, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    .line 16
    .line 17
    const/high16 v2, 0x44610000    # 900.0f

    .line 18
    .line 19
    cmpl-float v3, p0, v2

    .line 20
    .line 21
    const-wide/16 v4, 0x1

    .line 22
    .line 23
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 24
    .line 25
    const-wide/16 v7, 0x3e8

    .line 26
    .line 27
    if-lez v3, :cond_2

    .line 28
    .line 29
    sget-object p1, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    .line 30
    .line 31
    div-float/2addr p0, v6

    .line 32
    move-wide v9, v7

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move-wide v9, v4

    .line 35
    :goto_1
    cmpl-float v3, p0, v2

    .line 36
    .line 37
    if-lez v3, :cond_3

    .line 38
    .line 39
    sget-object p1, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    .line 40
    .line 41
    mul-long/2addr v9, v7

    .line 42
    div-float/2addr p0, v6

    .line 43
    :cond_3
    cmpl-float v3, p0, v2

    .line 44
    .line 45
    if-lez v3, :cond_4

    .line 46
    .line 47
    sget-object p1, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    .line 48
    .line 49
    mul-long/2addr v9, v7

    .line 50
    div-float/2addr p0, v6

    .line 51
    :cond_4
    cmpl-float v3, p0, v2

    .line 52
    .line 53
    if-lez v3, :cond_5

    .line 54
    .line 55
    sget-object p1, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    .line 56
    .line 57
    mul-long/2addr v9, v7

    .line 58
    div-float/2addr p0, v6

    .line 59
    :cond_5
    cmpl-float v2, p0, v2

    .line 60
    .line 61
    if-lez v2, :cond_6

    .line 62
    .line 63
    sget-object p1, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    .line 64
    .line 65
    mul-long/2addr v9, v7

    .line 66
    div-float/2addr p0, v6

    .line 67
    :cond_6
    move-object v8, p1

    .line 68
    cmp-long p1, v9, v4

    .line 69
    .line 70
    if-eqz p1, :cond_8

    .line 71
    .line 72
    const/high16 p1, 0x42c80000    # 100.0f

    .line 73
    .line 74
    cmpl-float p1, p0, p1

    .line 75
    .line 76
    if-ltz p1, :cond_7

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_7
    const/high16 p1, 0x3f800000    # 1.0f

    .line 80
    .line 81
    cmpg-float p1, p0, p1

    .line 82
    .line 83
    const/4 v1, 0x2

    .line 84
    :cond_8
    :goto_2
    move v9, v1

    .line 85
    if-eqz v0, :cond_9

    .line 86
    .line 87
    neg-float p0, p0

    .line 88
    :cond_9
    move v7, p0

    .line 89
    const-wide/16 v10, 0x0

    .line 90
    .line 91
    new-instance p0, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;

    .line 92
    .line 93
    move-object v6, p0

    .line 94
    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;-><init>(FLandroid/icu/util/MeasureUnit;IJ)V

    .line 95
    .line 96
    .line 97
    return-object p0
.end method
