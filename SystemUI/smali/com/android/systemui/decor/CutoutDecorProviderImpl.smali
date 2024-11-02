.class public final Lcom/android/systemui/decor/CutoutDecorProviderImpl;
.super Lcom/android/systemui/decor/BoundDecorProvider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final alignedBound:I

.field public final viewId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/decor/BoundDecorProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/decor/CutoutDecorProviderImpl;->alignedBound:I

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    const p1, 0x7f0a0349

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const p1, 0x7f0a034b

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const p1, 0x7f0a0348

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const p1, 0x7f0a034a

    .line 27
    .line 28
    .line 29
    :goto_0
    iput p1, p0, Lcom/android/systemui/decor/CutoutDecorProviderImpl;->viewId:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final getAlignedBound()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/decor/CutoutDecorProviderImpl;->alignedBound:I

    .line 2
    .line 3
    return p0
.end method

.method public final getViewId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/decor/CutoutDecorProviderImpl;->viewId:I

    .line 2
    .line 3
    return p0
.end method

.method public final inflateView(Landroid/content/Context;Lcom/android/systemui/RegionInterceptingFrameLayout;II)Landroid/view/View;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/decor/CutoutDecorProviderImpl;->alignedBound:I

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lcom/android/systemui/decor/CutoutDecorProviderImpl;->viewId:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p4}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setColor(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget p0, v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mRotation:I

    .line 20
    .line 21
    if-ne p3, p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput p3, v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mRotation:I

    .line 25
    .line 26
    iput p3, v0, Lcom/android/systemui/DisplayCutoutBaseView;->displayRotation:I

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->updateCutout()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/systemui/DisplayCutoutBaseView;->updateProtectionBoundingPath()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-object v0
.end method

.method public final onReloadResAndMeasure(Landroid/view/View;IIILjava/lang/String;)V
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    if-eqz p1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1, p4}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setColor(I)V

    .line 12
    .line 13
    .line 14
    iget p0, p1, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mRotation:I

    .line 15
    .line 16
    if-ne p3, p0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iput p3, p1, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mRotation:I

    .line 20
    .line 21
    iput p3, p1, Lcom/android/systemui/DisplayCutoutBaseView;->displayRotation:I

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->updateCutout()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/systemui/DisplayCutoutBaseView;->updateProtectionBoundingPath()V

    .line 27
    .line 28
    .line 29
    :goto_1
    invoke-virtual {p1, p5}, Lcom/android/systemui/DisplayCutoutBaseView;->updateConfiguration(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method
