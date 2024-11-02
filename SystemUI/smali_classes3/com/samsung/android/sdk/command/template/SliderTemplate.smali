.class public final Lcom/samsung/android/sdk/command/template/SliderTemplate;
.super Lcom/samsung/android/sdk/command/template/CommandTemplate;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCurrentValue:F

.field public final mFormatString:Ljava/lang/CharSequence;

.field public final mMaxValue:F

.field public final mMinValue:F

.field public final mStepValue:F


# direct methods
.method public constructor <init>(FFFFLjava/lang/CharSequence;)V
    .locals 1

    const-string v0, "range"

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    .line 3
    iput p2, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    .line 4
    iput p3, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    .line 5
    iput p4, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mStepValue:F

    if-eqz p5, :cond_0

    .line 6
    iput-object p5, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mFormatString:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string p1, "%.1f"

    .line 7
    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mFormatString:Ljava/lang/CharSequence;

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/template/SliderTemplate;->validate()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_min_value"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    const-string v0, "key_max_value"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    const-string v0, "key_current_value"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    const-string v0, "key_step_value"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mStepValue:F

    const-string v0, "key_format_string"

    const-string v1, "%.1f"

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mFormatString:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/template/SliderTemplate;->validate()V

    return-void
.end method


# virtual methods
.method public final getDataBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getDataBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "key_min_value"

    .line 6
    .line 7
    iget v2, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 10
    .line 11
    .line 12
    const-string v1, "key_max_value"

    .line 13
    .line 14
    iget v2, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 17
    .line 18
    .line 19
    const-string v1, "key_current_value"

    .line 20
    .line 21
    iget v2, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 24
    .line 25
    .line 26
    const-string v1, "key_step_value"

    .line 27
    .line 28
    iget v2, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mStepValue:F

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 31
    .line 32
    .line 33
    const-string v1, "key_format_string"

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mFormatString:Ljava/lang/CharSequence;

    .line 36
    .line 37
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public final getTemplateType()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    return p0
.end method

.method public final validate()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-gtz v2, :cond_3

    .line 10
    .line 11
    iget v2, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    .line 12
    .line 13
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-gtz v3, :cond_2

    .line 18
    .line 19
    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-gtz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iget p0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mStepValue:F

    .line 27
    .line 28
    cmpg-float v0, p0, v0

    .line 29
    .line 30
    if-lez v0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v1, "stepValue=%f <= 0"

    .line 44
    .line 45
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "currentValue=%f > maxValue=%f"

    .line 68
    .line 69
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v1, "minValue=%f > currentValue=%f"

    .line 92
    .line 93
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v1, "minValue=%f > maxValue=%f"

    .line 116
    .line 117
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method
