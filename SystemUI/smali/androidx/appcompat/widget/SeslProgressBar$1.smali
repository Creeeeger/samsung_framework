.class public final Landroidx/appcompat/widget/SeslProgressBar$1;
.super Landroid/util/FloatProperty;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslProgressBar;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar;

    .line 2
    .line 3
    iget p0, p1, Landroidx/appcompat/widget/SeslProgressBar;->mVisualProgress:F

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar;

    .line 2
    .line 3
    sget-object p0, Landroidx/appcompat/widget/SeslProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 4
    .line 5
    const p0, 0x102000d

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, p0}, Landroidx/appcompat/widget/SeslProgressBar;->setVisualProgress(FI)V

    .line 9
    .line 10
    .line 11
    iput p2, p1, Landroidx/appcompat/widget/SeslProgressBar;->mVisualProgress:F

    .line 12
    .line 13
    return-void
.end method
