.class public final synthetic Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/DoubleSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/SecQuickQSPanelController;

.field public final synthetic f$1:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final synthetic f$2:Lcom/android/systemui/qs/bar/BarController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQuickQSPanelController;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/qs/bar/BarController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/qs/bar/BarController;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getAsDouble()D
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/qs/bar/BarController;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 8
    .line 9
    check-cast v2, Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 16
    .line 17
    check-cast v0, Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQuickQSCommonBottomMargin(Landroid/content/Context;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/2addr v0, v2

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->parallelStream()Ljava/util/stream/Stream;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-instance v2, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda5;

    .line 41
    .line 42
    invoke-direct {v2, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda5;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    new-instance v2, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda6;

    .line 50
    .line 51
    invoke-direct {v2}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda6;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-interface {p0}, Ljava/util/stream/IntStream;->sum()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    :cond_0
    add-int/2addr v0, v1

    .line 67
    int-to-double v0, v0

    .line 68
    return-wide v0
.end method
