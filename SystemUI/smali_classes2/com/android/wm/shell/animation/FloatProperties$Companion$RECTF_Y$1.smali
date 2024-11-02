.class public final Lcom/android/wm/shell/animation/FloatProperties$Companion$RECTF_Y$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "RectFY"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/RectF;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p0, p1, Landroid/graphics/RectF;->top:F

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const p0, -0x800001

    .line 9
    .line 10
    .line 11
    :goto_0
    return p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/RectF;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p0, p1, Landroid/graphics/RectF;->left:F

    .line 6
    .line 7
    invoke-virtual {p1, p0, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
