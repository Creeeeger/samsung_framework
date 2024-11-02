.class public final Lcom/android/systemui/controls/ui/view/CentralDescriptionView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mOnOffsetChangedListener:Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;-><init>(Lcom/android/systemui/controls/ui/view/CentralDescriptionView;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/CentralDescriptionView;->mOnOffsetChangedListener:Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;-><init>(Lcom/android/systemui/controls/ui/view/CentralDescriptionView;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/CentralDescriptionView;->mOnOffsetChangedListener:Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 6
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    new-instance p1, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;-><init>(Lcom/android/systemui/controls/ui/view/CentralDescriptionView;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/CentralDescriptionView;->mOnOffsetChangedListener:Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const p2, 0x7f0a00d3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/CentralDescriptionView;->mOnOffsetChangedListener:Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/CentralDescriptionView;->mOnOffsetChangedListener:Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    check-cast p1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_1
    return-void
.end method
