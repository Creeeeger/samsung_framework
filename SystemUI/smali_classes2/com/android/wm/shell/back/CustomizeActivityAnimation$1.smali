.class public final Lcom/android/wm/shell/back/CustomizeActivityAnimation$1;
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
    check-cast p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    .line 2
    .line 3
    iget p0, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mLatestProgress:F

    .line 4
    .line 5
    const/high16 p1, 0x447a0000    # 1000.0f

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
    .locals 0

    .line 1
    check-cast p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    .line 2
    .line 3
    const/high16 p0, 0x447a0000    # 1000.0f

    .line 4
    .line 5
    div-float/2addr p2, p0

    .line 6
    iput p2, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mLatestProgress:F

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->applyTransformTransaction(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
