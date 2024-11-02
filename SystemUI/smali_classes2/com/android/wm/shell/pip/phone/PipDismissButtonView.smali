.class public final Lcom/android/wm/shell/pip/phone/PipDismissButtonView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/wm/shell/common/DismissButtonManager;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/common/DismissButtonManager;-><init>(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final hideDismissTargetMaybe()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/android/wm/shell/common/DismissButtonManager$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/DismissButtonManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DismissButtonManager;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/DismissButtonManager;->hide(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 25
    .line 26
    invoke-virtual {p0, v1, v1}, Lcom/android/wm/shell/common/DismissButtonView;->updateView(ZZ)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method
