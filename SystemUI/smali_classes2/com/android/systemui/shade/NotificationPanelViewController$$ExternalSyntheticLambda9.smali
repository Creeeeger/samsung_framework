.class public final synthetic Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/shade/NotificationPanelView;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Float;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    float-to-int p2, p0

    .line 10
    iput p2, p1, Lcom/android/systemui/shade/NotificationPanelView;->mCurrentPanelAlpha:I

    .line 11
    .line 12
    iget v0, p1, Lcom/android/systemui/shade/NotificationPanelView;->mStatusBarState:I

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    const/high16 p2, 0x437f0000    # 255.0f

    .line 22
    .line 23
    div-float/2addr p0, p2

    .line 24
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object p0, p1, Lcom/android/systemui/shade/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 29
    .line 30
    const/16 v0, 0xff

    .line 31
    .line 32
    invoke-virtual {p0, p2, v0, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
