.class public final Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

.field public final mFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

.field public final mMaxPanelHeightSupplier:Ljava/util/function/IntSupplier;

.field public final mMinExpansionHeightSupplier:Ljava/util/function/IntSupplier;

.field public final mOnKeyguardStateSupplier:Ljava/util/function/BooleanSupplier;

.field public final mPanelViewSupplier:Ljava/util/function/Supplier;

.field public mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/DoubleSupplier;Ljava/util/function/IntSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/IntSupplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/shade/NotificationPanelView;",
            ">;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/IntSupplier;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mPanelViewSupplier:Ljava/util/function/Supplier;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mOnKeyguardStateSupplier:Ljava/util/function/BooleanSupplier;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mMinExpansionHeightSupplier:Ljava/util/function/IntSupplier;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mMaxPanelHeightSupplier:Ljava/util/function/IntSupplier;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getParentViewGroup()Landroid/view/ViewGroup;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mPanelViewSupplier:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mParent:Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const v1, 0x7f0a09a7

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/ViewStub;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    check-cast v0, Landroid/view/ViewGroup;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mParent:Landroid/view/ViewGroup;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "ERROR: it shows that two or more objects using the same view name may exist at the same time: "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "DataUsageLabelParent"

    .line 52
    .line 53
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mParent:Landroid/view/ViewGroup;

    .line 57
    .line 58
    return-object p0
.end method
