.class public final Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImpl;
.super Lcom/android/systemui/decor/DecorProvider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final alignedBounds:Lkotlin/collections/EmptyList;

.field public final viewId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/decor/DecorProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImpl;->viewId:I

    .line 5
    .line 6
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImpl;->alignedBounds:Lkotlin/collections/EmptyList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getAlignedBounds()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImpl;->alignedBounds:Lkotlin/collections/EmptyList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getViewId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImpl;->viewId:I

    .line 2
    .line 3
    return p0
.end method

.method public final inflateView(Landroid/content/Context;Lcom/android/systemui/RegionInterceptingFrameLayout;II)Landroid/view/View;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget p0, p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImpl;->viewId:I

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setId(I)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 14
    .line 15
    .line 16
    const p0, 0x7f080ee0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p3, v0}, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImplKt;->access$setRotation(ILandroid/widget/ImageView;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 30
    .line 31
    .line 32
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 33
    .line 34
    const/16 p1, 0x11

    .line 35
    .line 36
    const/4 p3, -0x1

    .line 37
    invoke-direct {p0, p3, p3, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public final onReloadResAndMeasure(Landroid/view/View;IIILjava/lang/String;)V
    .locals 0

    .line 1
    instance-of p0, p1, Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-static {p3, p1}, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImplKt;->access$setRotation(ILandroid/widget/ImageView;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
