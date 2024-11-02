.class public final Lcom/samsung/android/nexus/egl/world/WorldPerspective;
.super Lcom/samsung/android/nexus/egl/world/BaseWorld;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(II)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/nexus/egl/world/BaseWorld;-><init>()V

    .line 8
    .line 9
    .line 10
    if-le v2, v1, :cond_0

    .line 11
    .line 12
    move v3, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v1

    .line 15
    :goto_0
    int-to-float v3, v3

    .line 16
    const/high16 v4, 0x3f000000    # 0.5f

    .line 17
    .line 18
    mul-float/2addr v3, v4

    .line 19
    float-to-int v3, v3

    .line 20
    mul-int/lit8 v5, v3, 0x2

    .line 21
    .line 22
    int-to-float v10, v5

    .line 23
    iget-object v6, v0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mViewMatrix:[F

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v11, 0x0

    .line 29
    const/4 v12, 0x0

    .line 30
    const/4 v13, 0x0

    .line 31
    const/4 v14, 0x0

    .line 32
    const/high16 v15, 0x3f800000    # 1.0f

    .line 33
    .line 34
    const/16 v16, 0x0

    .line 35
    .line 36
    invoke-static/range {v6 .. v16}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 37
    .line 38
    .line 39
    int-to-float v1, v1

    .line 40
    const/high16 v5, -0x41000000    # -0.5f

    .line 41
    .line 42
    mul-float v6, v1, v5

    .line 43
    .line 44
    mul-float/2addr v1, v4

    .line 45
    int-to-float v2, v2

    .line 46
    mul-float/2addr v5, v2

    .line 47
    mul-float/2addr v2, v4

    .line 48
    int-to-float v13, v3

    .line 49
    mul-int/lit8 v3, v3, 0x3

    .line 50
    .line 51
    int-to-float v14, v3

    .line 52
    iget-object v7, v0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mProjectionMatrix:[F

    .line 53
    .line 54
    const/4 v8, 0x0

    .line 55
    mul-float v9, v6, v4

    .line 56
    .line 57
    mul-float v10, v1, v4

    .line 58
    .line 59
    mul-float v11, v5, v4

    .line 60
    .line 61
    mul-float v12, v2, v4

    .line 62
    .line 63
    invoke-static/range {v7 .. v14}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
