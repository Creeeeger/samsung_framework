.class public final Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;
.super Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public animationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public final controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

.field public final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

.field public final subtitle:Landroid/widget/TextView;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            "Lcom/android/systemui/controls/util/ControlsRuneWrapper;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    .line 1
    const v3, 0x7f0a08db

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;-><init>(Landroid/view/View;IILcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lkotlin/jvm/functions/Function2;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->view:Landroid/view/View;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 18
    .line 19
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    const p4, 0x7f0a0b4d

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Landroid/widget/TextView;

    .line 29
    .line 30
    sget-object p4, Lcom/android/systemui/controls/ui/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;

    .line 31
    .line 32
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const p4, 0x7f070200

    .line 36
    .line 37
    .line 38
    const p5, 0x3f8ccccd    # 1.1f

    .line 39
    .line 40
    .line 41
    invoke-static {p2, p4, p5}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->updateFontSize(Landroid/widget/TextView;IF)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->subtitle:Landroid/widget/TextView;

    .line 45
    .line 46
    sget-boolean p4, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    .line 47
    .line 48
    if-eqz p4, :cond_0

    .line 49
    .line 50
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_0

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const p1, 0x7f070201

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    const/4 p1, 0x0

    .line 77
    invoke-virtual {p2, p1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method

.method public static synthetic getAnimationView$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final resetForReuse()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->resetForReuse()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->icon:Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 17
    .line 18
    .line 19
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_LOTTIE_ICON_ANIMATION:Z

    .line 20
    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 36
    .line 37
    check-cast v1, Lcom/android/systemui/controls/util/ControlsRuneWrapperImpl;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_OVERLAY_CUSTOM_ICON:Z

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final setContentDescription(Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->subtitle:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, " "

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final setSubtitleText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->subtitle:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateLottieIcon(Lcom/android/systemui/controls/CustomControlInterface;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->icon:Landroid/widget/ImageView;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->view:Landroid/view/View;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/android/systemui/controls/CustomControlInterface;->getCustomIconAnimationJson()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-interface {p1}, Lcom/android/systemui/controls/CustomControlInterface;->getCustomIconAnimationJsonCache()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-interface {p1}, Lcom/android/systemui/controls/CustomControlInterface;->getCustomIconAnimationStartFrame()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    invoke-interface {p1}, Lcom/android/systemui/controls/CustomControlInterface;->getCustomIconAnimationEndFrame()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    invoke-interface {p1}, Lcom/android/systemui/controls/CustomControlInterface;->getCustomIconAnimationRepeatCount()I

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static/range {v1 .. v9}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->updateLottieIcon(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;Ljava/lang/String;III)Lcom/airbnb/lottie/LottieAnimationView;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 43
    .line 44
    return-void
.end method
