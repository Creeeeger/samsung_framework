.class public final synthetic Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 2
    .line 3
    check-cast p1, Lcom/android/systemui/decor/DecorProvider;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCoverOverlay:Lcom/android/systemui/decor/OverlayWindow;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/decor/DecorProvider;->getViewId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/decor/OverlayWindow;->getView(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCoverOverlay:Lcom/android/systemui/decor/OverlayWindow;

    .line 19
    .line 20
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mCoverRotation:I

    .line 21
    .line 22
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mTintColor:I

    .line 23
    .line 24
    iget-object v2, v0, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    .line 25
    .line 26
    iget-object v3, v0, Lcom/android/systemui/decor/OverlayWindow;->context:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p1, v3, v2, v1, p0}, Lcom/android/systemui/decor/DecorProvider;->inflateView(Landroid/content/Context;Lcom/android/systemui/RegionInterceptingFrameLayout;II)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object v0, v0, Lcom/android/systemui/decor/OverlayWindow;->viewProviderMap:Ljava/util/Map;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/systemui/decor/DecorProvider;->getViewId()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Lkotlin/Pair;

    .line 43
    .line 44
    invoke-direct {v2, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method
