.class public final Lcom/android/systemui/volume/view/VolumePanelViewExt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelViewExt;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/volume/view/VolumePanelViewExt;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isIconClickWillConsume(Lcom/android/systemui/volume/view/standard/VolumePanelView;Landroid/view/MotionEvent;)Z
    .locals 3

    const v0, 0x7f0a0d01

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 2
    new-instance v0, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {v0, p0}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;)V

    .line 3
    sget-object p0, Lcom/android/systemui/volume/view/VolumePanelViewExt$isIconClickWillConsume$1;->INSTANCE:Lcom/android/systemui/volume/view/VolumePanelViewExt$isIconClickWillConsume$1;

    .line 4
    new-instance v1, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v1, v0, p0}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 5
    new-instance p0, Lkotlin/sequences/TransformingSequence$iterator$1;

    invoke-direct {p0, v1}, Lkotlin/sequences/TransformingSequence$iterator$1;-><init>(Lkotlin/sequences/TransformingSequence;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lkotlin/sequences/TransformingSequence$iterator$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlin/sequences/TransformingSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/VolumeRowView;

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/view/VolumeRowView;->isIconClicked(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isIconClickWillConsume(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;Landroid/view/MotionEvent;)Z
    .locals 3

    const v0, 0x7f0a0d01

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 9
    new-instance v0, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {v0, p0}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;)V

    .line 10
    sget-object p0, Lcom/android/systemui/volume/view/VolumePanelViewExt$isIconClickWillConsume$3;->INSTANCE:Lcom/android/systemui/volume/view/VolumePanelViewExt$isIconClickWillConsume$3;

    .line 11
    new-instance v1, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v1, v0, p0}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 12
    new-instance p0, Lkotlin/sequences/TransformingSequence$iterator$1;

    invoke-direct {p0, v1}, Lkotlin/sequences/TransformingSequence$iterator$1;-><init>(Lkotlin/sequences/TransformingSequence;)V

    .line 13
    :cond_0
    invoke-virtual {p0}, Lkotlin/sequences/TransformingSequence$iterator$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlin/sequences/TransformingSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isIconClicked(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
