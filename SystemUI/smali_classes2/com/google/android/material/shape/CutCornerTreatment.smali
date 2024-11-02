.class public final Lcom/google/android/material/shape/CutCornerTreatment;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final size:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    iput v0, p0, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    .line 5
    iput p1, p0, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    return-void
.end method


# virtual methods
.method public final getCornerPath(FFLcom/google/android/material/shape/ShapePath;)V
    .locals 5

    .line 1
    mul-float p0, p2, p1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/high16 v1, 0x43340000    # 180.0f

    .line 5
    .line 6
    const/high16 v2, 0x42b40000    # 90.0f

    .line 7
    .line 8
    invoke-virtual {p3, v0, p0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->reset(FFFF)V

    .line 9
    .line 10
    .line 11
    float-to-double v1, v2

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    float-to-double v3, p2

    .line 21
    mul-double/2addr v1, v3

    .line 22
    float-to-double p0, p1

    .line 23
    mul-double/2addr v1, p0

    .line 24
    double-to-float p2, v1

    .line 25
    float-to-double v0, v0

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    mul-double/2addr v0, v3

    .line 35
    mul-double/2addr v0, p0

    .line 36
    double-to-float p0, v0

    .line 37
    invoke-virtual {p3, p2, p0}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
