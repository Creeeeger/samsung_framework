.class public final Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public a:F

.field public adjust:F

.field public b:F

.field public backgroundId:I

.field public delay:J

.field public duration:J

.field public dx:F

.field public dy:F

.field public elementDuration:J

.field public final frameSize:Ljava/util/ArrayList;

.field public from:F

.field public imageView:Landroid/widget/ImageView;

.field public imageViewId:I

.field public final imageViewSetId:Ljava/util/ArrayList;

.field public interpolator:Landroid/animation/TimeInterpolator;

.field public isAnimationStarted:Z

.field public key:F

.field public length:I

.field public minInterval:I

.field public preSequence:I

.field public r:F

.field public ra:F

.field public rb:F

.field public repeatCount:I

.field public repeatMode:I

.field public final scale:Ljava/util/ArrayList;

.field public final startIndex:Ljava/util/ArrayList;

.field public startTime:J

.field public to:F

.field public top:I

.field public final x:Ljava/util/ArrayList;

.field public xOffSet:F

.field public final y:Ljava/util/ArrayList;

.field public yOffSet:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->r:F

    .line 6
    .line 7
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->a:F

    .line 8
    .line 9
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->b:F

    .line 10
    .line 11
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->ra:F

    .line 12
    .line 13
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->rb:F

    .line 14
    .line 15
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    .line 16
    .line 17
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    .line 18
    .line 19
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    .line 20
    .line 21
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewId:I

    .line 25
    .line 26
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    .line 27
    .line 28
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->backgroundId:I

    .line 29
    .line 30
    new-instance v2, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewSetId:Ljava/util/ArrayList;

    .line 36
    .line 37
    new-instance v2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->x:Ljava/util/ArrayList;

    .line 43
    .line 44
    new-instance v2, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->y:Ljava/util/ArrayList;

    .line 50
    .line 51
    new-instance v2, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->scale:Ljava/util/ArrayList;

    .line 57
    .line 58
    new-instance v2, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startIndex:Ljava/util/ArrayList;

    .line 64
    .line 65
    new-instance v2, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->frameSize:Ljava/util/ArrayList;

    .line 71
    .line 72
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->top:I

    .line 73
    .line 74
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->minInterval:I

    .line 75
    .line 76
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 77
    .line 78
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 79
    .line 80
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dx:F

    .line 81
    .line 82
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dy:F

    .line 83
    .line 84
    const-wide/16 v2, 0x0

    .line 85
    .line 86
    iput-wide v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->duration:J

    .line 87
    .line 88
    iput-wide v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->delay:J

    .line 89
    .line 90
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatCount:I

    .line 91
    .line 92
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatMode:I

    .line 93
    .line 94
    iput-wide v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startTime:J

    .line 95
    .line 96
    iput-wide v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->elementDuration:J

    .line 97
    .line 98
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->preSequence:I

    .line 99
    .line 100
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->isAnimationStarted:Z

    .line 101
    .line 102
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 103
    .line 104
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    .line 108
    .line 109
    return-void
.end method
