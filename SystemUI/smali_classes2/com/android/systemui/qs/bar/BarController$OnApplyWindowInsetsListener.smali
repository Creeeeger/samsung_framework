.class public final Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/BarController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/bar/BarController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/bar/BarController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;-><init>(Lcom/android/systemui/qs/bar/BarController;)V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/qs/bar/BarController;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/systemui/qs/bar/BarController;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNavBarHeight(Landroid/content/Context;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/qs/bar/BarController;

    .line 28
    .line 29
    iget v1, p0, Lcom/android/systemui/qs/bar/BarController;->mDisplayCutoutTopInset:I

    .line 30
    .line 31
    if-ne p1, v1, :cond_1

    .line 32
    .line 33
    iget v1, p0, Lcom/android/systemui/qs/bar/BarController;->mNavBarHeight:I

    .line 34
    .line 35
    if-eq v0, v1, :cond_2

    .line 36
    .line 37
    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/bar/BarController;->mDisplayCutoutTopInset:I

    .line 38
    .line 39
    iput v0, p0, Lcom/android/systemui/qs/bar/BarController;->mNavBarHeight:I

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 42
    .line 43
    new-instance p1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    invoke-direct {p1, v0}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-object p2
.end method
