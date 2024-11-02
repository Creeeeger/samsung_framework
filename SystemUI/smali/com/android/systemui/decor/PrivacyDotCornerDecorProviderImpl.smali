.class public final Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;
.super Lcom/android/systemui/decor/CornerDecorProvider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final alignedBound1:I

.field public final alignedBound2:I

.field public final layoutId:I

.field public final viewId:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/decor/CornerDecorProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;->viewId:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;->alignedBound1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;->alignedBound2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;->layoutId:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getAlignedBound1()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;->alignedBound1:I

    .line 2
    .line 3
    return p0
.end method

.method public final getAlignedBound2()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;->alignedBound2:I

    .line 2
    .line 3
    return p0
.end method

.method public final getViewId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;->viewId:I

    .line 2
    .line 3
    return p0
.end method

.method public final inflateView(Landroid/content/Context;Lcom/android/systemui/RegionInterceptingFrameLayout;II)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p0, p0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;->layoutId:I

    .line 6
    .line 7
    const/4 p3, 0x1

    .line 8
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    sub-int/2addr p0, p3

    .line 16
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final onReloadResAndMeasure(Landroid/view/View;IIILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
