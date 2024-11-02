.class public final Landroidx/cardview/widget/CardViewApi21Impl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final updatePadding(Landroidx/cardview/widget/CardView$1;)V
    .locals 8

    .line 1
    iget-object p0, p1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    invoke-virtual {p1, p0, p0, p0, p0}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    check-cast v0, Landroidx/cardview/widget/RoundRectDrawable;

    .line 15
    .line 16
    iget v1, v0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    .line 17
    .line 18
    iget v0, v0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    .line 19
    .line 20
    iget-boolean p0, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    float-to-double v2, v1

    .line 25
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 26
    .line 27
    sget-wide v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    .line 28
    .line 29
    sub-double/2addr v4, v6

    .line 30
    float-to-double v6, v0

    .line 31
    mul-double/2addr v4, v6

    .line 32
    add-double/2addr v4, v2

    .line 33
    double-to-float p0, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->$r8$clinit:I

    .line 36
    .line 37
    move p0, v1

    .line 38
    :goto_0
    float-to-double v2, p0

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    double-to-int p0, v2

    .line 44
    iget-object v2, p1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    .line 45
    .line 46
    iget-boolean v2, v2, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    .line 47
    .line 48
    invoke-static {v1, v0, v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    float-to-double v0, v0

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    double-to-int v0, v0

    .line 58
    invoke-virtual {p1, p0, v0, p0, v0}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
