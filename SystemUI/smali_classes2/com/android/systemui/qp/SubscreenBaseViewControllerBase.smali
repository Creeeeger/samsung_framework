.class public final Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qp/SubscreenQSControllerContract$BaseViewController;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mView:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;->mView:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onInit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;->mView:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 7
    .line 8
    const v2, 0x7f0a0b10

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qp/SubscreenBrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/qp/SubroomBrightnessSettingsView;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onViewAttached()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;->mView:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onViewDetached()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;->mView:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    return-void
.end method
