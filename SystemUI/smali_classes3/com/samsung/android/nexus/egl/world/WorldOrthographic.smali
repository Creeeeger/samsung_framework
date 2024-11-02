.class public final Lcom/samsung/android/nexus/egl/world/WorldOrthographic;
.super Lcom/samsung/android/nexus/egl/world/BaseWorld;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(II)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/world/BaseWorld;-><init>()V

    .line 2
    .line 3
    .line 4
    if-le p2, p1, :cond_0

    .line 5
    .line 6
    move v0, p2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, p1

    .line 9
    :goto_0
    int-to-float p1, p1

    .line 10
    const/high16 v1, -0x41000000    # -0.5f

    .line 11
    .line 12
    mul-float v3, p1, v1

    .line 13
    .line 14
    const/high16 v2, 0x3f000000    # 0.5f

    .line 15
    .line 16
    mul-float v4, p1, v2

    .line 17
    .line 18
    int-to-float p1, p2

    .line 19
    mul-float v5, p1, v1

    .line 20
    .line 21
    mul-float v6, p1, v2

    .line 22
    .line 23
    new-instance p1, Landroid/renderscript/Matrix4f;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 26
    .line 27
    .line 28
    int-to-float v7, v0

    .line 29
    neg-int p2, v0

    .line 30
    int-to-float v8, p2

    .line 31
    move-object v2, p1

    .line 32
    invoke-virtual/range {v2 .. v8}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/renderscript/Matrix4f;->getArray()[F

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mProjectionMatrix:[F

    .line 40
    .line 41
    return-void
.end method
