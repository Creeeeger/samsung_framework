.class public final Lcom/android/wm/shell/back/CrossActivityAnimation$2;
.super Landroid/util/FloatProperty;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/wm/shell/back/CrossActivityAnimation;

    .line 2
    .line 3
    iget p0, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mLeavingProgress:F

    .line 4
    .line 5
    const/high16 p1, 0x42c80000    # 100.0f

    .line 6
    .line 7
    mul-float/2addr p0, p1

    .line 8
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/android/wm/shell/back/CrossActivityAnimation;

    .line 3
    .line 4
    const/high16 p0, 0x42c80000    # 100.0f

    .line 5
    .line 6
    div-float v1, p2, p0

    .line 7
    .line 8
    iput v1, v0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mLeavingProgress:F

    .line 9
    .line 10
    iget-object p0, v0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 11
    .line 12
    if-eqz p0, :cond_2

    .line 13
    .line 14
    iget-object p0, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 15
    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    cmpg-float p1, v1, p0

    .line 20
    .line 21
    const/high16 p2, 0x3f800000    # 1.0f

    .line 22
    .line 23
    if-gez p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const p1, 0x3e6147ae    # 0.22f

    .line 27
    .line 28
    .line 29
    cmpl-float v2, v1, p1

    .line 30
    .line 31
    if-ltz v2, :cond_1

    .line 32
    .line 33
    move p0, p2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sub-float p0, v1, p0

    .line 36
    .line 37
    div-float/2addr p0, p1

    .line 38
    mul-float p1, p0, p0

    .line 39
    .line 40
    const/high16 v2, 0x40000000    # 2.0f

    .line 41
    .line 42
    mul-float/2addr p0, v2

    .line 43
    const/high16 v2, 0x40400000    # 3.0f

    .line 44
    .line 45
    sub-float/2addr v2, p0

    .line 46
    mul-float p0, v2, p1

    .line 47
    .line 48
    :goto_0
    sub-float/2addr p2, p0

    .line 49
    const p0, 0x3c23d70a    # 0.01f

    .line 50
    .line 51
    .line 52
    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iget-object p0, v0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 57
    .line 58
    iget-object v3, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 59
    .line 60
    iget-object v4, v0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingRect:Landroid/graphics/RectF;

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    iget v6, v0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mWindowXShift:F

    .line 64
    .line 65
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/back/CrossActivityAnimation;->transformWithProgress(FFLandroid/view/SurfaceControl;Landroid/graphics/RectF;FF)V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method
