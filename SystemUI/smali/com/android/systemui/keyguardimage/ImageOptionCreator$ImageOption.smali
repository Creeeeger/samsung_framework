.class public final Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public clockColor:I

.field public clockType:Ljava/lang/String;

.field public final color:[I

.field public coverClockColor:I

.field public coverClockColorIndex:I

.field public coverClockColorType:I

.field public displayType:I

.field public height:I

.field public isRtl:Z

.field public legibilityColor:I

.field public realHeight:I

.field public realWidth:I

.field public rotation:I

.field public scale:F

.field public type:I

.field public useClockColor:Z

.field public useDefaultColor:Z

.field public useThumbnail:Z

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useThumbnail:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    .line 13
    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    .line 16
    iput v2, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    .line 17
    .line 18
    iput v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    new-array v2, v2, [I

    .line 22
    .line 23
    iput-object v2, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    iput-object v2, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    .line 27
    .line 28
    iput v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorIndex:I

    .line 29
    .line 30
    iput v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColor:I

    .line 31
    .line 32
    iput v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorType:I

    .line 33
    .line 34
    iput v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColor:I

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useClockColor:Z

    .line 37
    .line 38
    iput v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->legibilityColor:I

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 14

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useClockColor:Z

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->legibilityColor:I

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    iget-object v9, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    .line 50
    .line 51
    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorIndex:I

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColor:I

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorType:I

    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColor:I

    .line 70
    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string/jumbo v1, "type=%d, width=%d, height=%d, scale=%f, displayType=%d, useDefaultColor=%s, useClockColor=%s, legibilityColor=%d, clockType=%s, coverClockColorIndex=%d, coverClockColor=%d,  coverClockColorType=%d, clockColor=%d"

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v0}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-boolean v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    .line 87
    .line 88
    if-nez v1, :cond_0

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    .line 92
    .line 93
    aget v1, p0, v1

    .line 94
    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const/4 v2, 0x1

    .line 100
    aget v2, p0, v2

    .line 101
    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const/4 v3, 0x2

    .line 107
    aget v3, p0, v3

    .line 108
    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    const/4 v4, 0x3

    .line 114
    aget p0, p0, v4

    .line 115
    .line 116
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    const-string v1, ", main=0x%x, 2nd=0x%x, bg_main=0x%x, bg_2nd=0x%x"

    .line 125
    .line 126
    invoke-static {v1, p0}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :cond_0
    return-object v0
.end method
