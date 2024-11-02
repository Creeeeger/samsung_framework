.class public final Lcom/android/systemui/wallpaper/theme/particle/Flower;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public cx:F

.field public cy:F

.field public final flowerKind:I

.field public final flowerSize:I

.field public final mRandom:Ljava/util/Random;

.field public final mXSpeed:I

.field public final mYSpeed:I

.field public rotate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->flowerKind:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->flowerSize:I

    .line 8
    .line 9
    new-instance v0, Ljava/util/Random;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mRandom:Ljava/util/Random;

    .line 15
    .line 16
    sget v1, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x20

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/lit8 v1, v1, 0x10

    .line 25
    .line 26
    int-to-float v1, v1

    .line 27
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cx:F

    .line 28
    .line 29
    sget v1, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    int-to-float v1, v1

    .line 36
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cy:F

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    add-int/lit8 v2, v2, -0x1

    .line 44
    .line 45
    iput v2, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mXSpeed:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    add-int/2addr v2, v1

    .line 52
    iput v2, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mYSpeed:I

    .line 53
    .line 54
    const/4 v1, 0x3

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->flowerKind:I

    .line 60
    .line 61
    const/4 v1, 0x6

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->flowerSize:I

    .line 67
    .line 68
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->rotate:I

    .line 69
    .line 70
    return-void
.end method
