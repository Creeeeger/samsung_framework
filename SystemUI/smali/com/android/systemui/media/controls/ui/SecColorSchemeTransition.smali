.class public final Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final bgGradientEnd:Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

.field public final bgGradientStart:Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

.field public final colorTransitions:[Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

.field public final context:Landroid/content/Context;

.field public isGradientEnabled:Z

.field public final mediaViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/SecPlayerViewHolder;)V
    .locals 1

    .line 27
    sget-object v0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$1;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;-><init>(Landroid/content/Context;Lcom/android/systemui/media/SecPlayerViewHolder;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/SecPlayerViewHolder;Lkotlin/jvm/functions/Function3;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/media/SecPlayerViewHolder;",
            "Lkotlin/jvm/functions/Function3;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->isGradientEnabled:Z

    const p2, 0x7f060392

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$surfaceColor$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$surfaceColor$1;

    .line 8
    new-instance v2, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$surfaceColor$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$surfaceColor$2;-><init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;)V

    invoke-interface {p3, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    const v1, 0x1010036

    .line 9
    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 11
    sget-object v3, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentPrimary$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentPrimary$1;

    .line 12
    new-instance v4, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentPrimary$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentPrimary$2;-><init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;)V

    invoke-interface {p3, v2, v3, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    .line 13
    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 15
    sget-object v1, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$1;

    .line 16
    new-instance v3, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;-><init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;)V

    invoke-interface {p3, p1, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 18
    sget-object v3, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$bgGradientStart$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$bgGradientStart$1;

    .line 19
    new-instance v4, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;

    const v5, 0x3ee66666    # 0.45f

    invoke-direct {v4, p0, v3, v5}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;-><init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;Lkotlin/jvm/functions/Function1;F)V

    .line 20
    new-instance v3, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$bgGradientStart$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$bgGradientStart$2;-><init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;)V

    invoke-interface {p3, v1, v4, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    iput-object v1, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->bgGradientStart:Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 22
    sget-object v3, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$bgGradientEnd$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$bgGradientEnd$1;

    .line 23
    new-instance v4, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, p0, v3, v5}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;-><init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;Lkotlin/jvm/functions/Function1;F)V

    .line 24
    new-instance v3, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$bgGradientEnd$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$bgGradientEnd$2;-><init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;)V

    invoke-interface {p3, p2, v4, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->bgGradientEnd:Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    .line 25
    filled-new-array {v0, v2, p1, v1, p2}, [Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->colorTransitions:[Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    return-void
.end method

.method public static final access$updateAlbumGradient(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/ImageView;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    new-array v1, v1, [I

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->bgGradientStart:Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iget v3, v3, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->currentColor:I

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v3, v2

    .line 37
    :goto_1
    aput v3, v1, v2

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->bgGradientEnd:Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    iget v2, p0, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->currentColor:I

    .line 44
    .line 45
    :cond_2
    const/4 p0, 0x1

    .line 46
    aput v2, v1, p0

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 49
    .line 50
    .line 51
    :cond_3
    return-void
.end method
