.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;
.super Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 2
    .line 3
    const-string v0, "PhoneStatusBarViewController"

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getCameraTopMarginContainerMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 6
    .line 7
    const v0, 0x7f0a0ad0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 19
    .line 20
    return-object p0
.end method

.method public final needToUpdatePaddings(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->needToUpdatePaddings(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->hasSomethingChanged:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->marqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->hasSomethingChanged:Z

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v1

    .line 27
    :goto_0
    return v0
.end method

.method public final updateSidePadding(II)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->marqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    .line 6
    .line 7
    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftLeft:I

    .line 8
    .line 9
    add-int/2addr p1, v1

    .line 10
    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftTop:I

    .line 11
    .line 12
    iget v2, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftRight:I

    .line 13
    .line 14
    add-int/2addr p2, v2

    .line 15
    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftBottom:I

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->sidePaddingContainer:Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1, v1, p2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
