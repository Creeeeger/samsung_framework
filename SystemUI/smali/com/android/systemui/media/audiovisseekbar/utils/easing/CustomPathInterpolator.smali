.class public final Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;
.super Landroid/graphics/Path;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public pathLegth:F

.field public pathMeasure:Landroid/graphics/PathMeasure;

.field public final point:[F

.field public final pointCount:I

.field public final samplingPoints:[Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [F

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->point:[F

    .line 16
    .line 17
    const/16 v0, 0x1e

    .line 18
    .line 19
    iput v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pointCount:I

    .line 20
    .line 21
    new-array v2, v0, [Landroid/graphics/PointF;

    .line 22
    .line 23
    :goto_0
    if-ge v1, v0, :cond_0

    .line 24
    .line 25
    new-instance v3, Landroid/graphics/PointF;

    .line 26
    .line 27
    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 28
    .line 29
    .line 30
    aput-object v3, v2, v1

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object v2, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->samplingPoints:[Landroid/graphics/PointF;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final updatePath()V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iput v2, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pathLegth:F

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 14
    .line 15
    iget v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pointCount:I

    .line 16
    .line 17
    move v2, v1

    .line 18
    :goto_0
    if-ge v2, v0, :cond_0

    .line 19
    .line 20
    int-to-float v3, v2

    .line 21
    iget v4, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pointCount:I

    .line 22
    .line 23
    int-to-float v4, v4

    .line 24
    div-float/2addr v3, v4

    .line 25
    iget-object v4, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 26
    .line 27
    iget v5, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pathLegth:F

    .line 28
    .line 29
    mul-float/2addr v5, v3

    .line 30
    iget-object v3, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->point:[F

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-virtual {v4, v5, v3, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->samplingPoints:[Landroid/graphics/PointF;

    .line 37
    .line 38
    new-instance v4, Landroid/graphics/PointF;

    .line 39
    .line 40
    iget-object v5, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->point:[F

    .line 41
    .line 42
    aget v6, v5, v1

    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    aget v5, v5, v7

    .line 46
    .line 47
    invoke-direct {v4, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 48
    .line 49
    .line 50
    aput-object v4, v3, v2

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method
