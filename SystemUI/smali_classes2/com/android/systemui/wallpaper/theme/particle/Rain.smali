.class public final Lcom/android/systemui/wallpaper/theme/particle/Rain;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final speed:[D


# instance fields
.field public final mRandom:Ljava/util/Random;

.field public final mXSpeed:D

.field public final mYSpeed:I

.field public x:F

.field public y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [D

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->speed:[D

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/Random;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mRandom:Ljava/util/Random;

    .line 10
    .line 11
    sget v0, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    .line 12
    .line 13
    add-int/lit8 v0, v0, -0x20

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x10

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    int-to-float v0, v0

    .line 23
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->x:F

    .line 24
    .line 25
    sget v0, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    int-to-float v0, v0

    .line 32
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->y:F

    .line 33
    .line 34
    sget-object v0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->speed:[D

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    aget-wide v0, v0, v1

    .line 41
    .line 42
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mXSpeed:D

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    add-int/lit8 p1, p1, 0x6

    .line 50
    .line 51
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mYSpeed:I

    .line 52
    .line 53
    return-void
.end method
