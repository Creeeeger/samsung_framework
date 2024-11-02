.class public final Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final accelerationRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;

.field public final alpha:F

.field public final bitmap:Landroid/graphics/Bitmap;

.field public final cellCount:I

.field public final color:I

.field public final height:F

.field public final intervalTime:I

.field public final lifeTime:I

.field public final speedRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;

.field public final valueRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;

.field public final width:F


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "bitmapByteArray"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    array-length v2, v0

    .line 14
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    :cond_0
    const-string/jumbo v0, "width"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->width:F

    .line 28
    .line 29
    const-string v0, "height"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->height:F

    .line 36
    .line 37
    const-string/jumbo v0, "shapeType"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    const-string v0, "cellCount"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->cellCount:I

    .line 50
    .line 51
    const-string v0, "intervalTime"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->intervalTime:I

    .line 58
    .line 59
    const-string v0, "lifeTime"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->lifeTime:I

    .line 66
    .line 67
    const-string v0, "color"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->color:I

    .line 74
    .line 75
    const-string v0, "alpha"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->alpha:F

    .line 82
    .line 83
    new-instance v0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;

    .line 84
    .line 85
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;-><init>(Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;Landroid/os/Bundle;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->valueRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;

    .line 89
    .line 90
    new-instance v0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;

    .line 91
    .line 92
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;-><init>(Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;Landroid/os/Bundle;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->speedRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;

    .line 96
    .line 97
    new-instance v0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;

    .line 98
    .line 99
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;-><init>(Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;Landroid/os/Bundle;)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->accelerationRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;

    .line 103
    .line 104
    return-void
.end method
