.class public final Lcom/android/systemui/wallpaper/theme/particle/Snow;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final FIXEDALPHAS:[I

.field public static final FIXEDRADIUS:[I


# instance fields
.field public alpha:I

.field public cx:F

.field public cy:F

.field public final mRandom:Ljava/util/Random;

.field public final mXSpeed:I

.field public final mYSpeed:I

.field public final radius:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/android/systemui/wallpaper/theme/particle/Snow;->FIXEDRADIUS:[I

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->FIXEDALPHAS:[I

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x5
        0x6
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    :array_1
    .array-data 4
        0x66
        0x66
        0x66
        0x80
        0x80
        0x80
        0x80
        0x80
        0x80
        0xff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

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
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mRandom:Ljava/util/Random;

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
    add-int/lit8 v0, v0, 0x10

    .line 20
    .line 21
    int-to-float v0, v0

    .line 22
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cx:F

    .line 23
    .line 24
    sget v0, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cy:F

    .line 32
    .line 33
    sget-object v0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->FIXEDRADIUS:[I

    .line 34
    .line 35
    const/16 v1, 0xa

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    aget v0, v0, v2

    .line 42
    .line 43
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->radius:I

    .line 44
    .line 45
    sget-object v0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->FIXEDALPHAS:[I

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    aget v0, v0, v1

    .line 52
    .line 53
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->alpha:I

    .line 54
    .line 55
    const/4 v0, 0x2

    .line 56
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/lit8 v1, v1, -0x1

    .line 61
    .line 62
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mXSpeed:I

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    add-int/2addr p1, v0

    .line 69
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mYSpeed:I

    .line 70
    .line 71
    return-void
.end method
