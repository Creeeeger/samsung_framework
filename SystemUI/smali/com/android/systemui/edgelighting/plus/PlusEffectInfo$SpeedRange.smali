.class public final Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final maxPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

.field public final maxRotation:F

.field public final maxScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

.field public final minPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

.field public final minRotation:F

.field public final minScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "minRotationSpeed"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->minRotation:F

    .line 12
    .line 13
    const-string/jumbo v0, "maxRotationSpeed"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->maxRotation:F

    .line 21
    .line 22
    new-instance v0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    .line 23
    .line 24
    const-string/jumbo v1, "minScaleSpeed"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const-string/jumbo v2, "minScaleXSpeed"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const-string/jumbo v3, "minScaleYSpeed"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;-><init>(Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;FFF)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->minScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    .line 49
    .line 50
    new-instance v0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    .line 51
    .line 52
    const-string/jumbo v1, "maxScaleSpeed"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const-string/jumbo v2, "maxScaleXSpeed"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const-string/jumbo v3, "maxScaleYSpeed"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;-><init>(Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;FFF)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->maxScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    .line 77
    .line 78
    new-instance v0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    .line 79
    .line 80
    const-string/jumbo v1, "minPosSpeed"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const-string/jumbo v2, "minPosXSpeed"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    const-string/jumbo v3, "minPosYSpeed"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;-><init>(Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;FFF)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->minPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    .line 105
    .line 106
    new-instance v0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    .line 107
    .line 108
    const-string/jumbo v1, "maxPosSpeed"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    const-string/jumbo v2, "maxPosXSpeed"

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    const-string/jumbo v3, "maxPosYSpeed"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    invoke-direct {v0, p1, v1, v2, p2}, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;-><init>(Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;FFF)V

    .line 130
    .line 131
    .line 132
    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->maxPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    .line 133
    .line 134
    return-void
.end method
