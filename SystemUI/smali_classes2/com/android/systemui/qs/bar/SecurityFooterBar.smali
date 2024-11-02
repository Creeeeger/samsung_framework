.class public final Lcom/android/systemui/qs/bar/SecurityFooterBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/bar/SecurityFooterBar;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/bar/SecurityFooterBar;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mVisibilityChangedListener:Lcom/android/systemui/qs/bar/SecurityFooterBar;

    .line 7
    .line 8
    return-void
.end method

.method public final getBarLayout()I
    .locals 0

    .line 1
    const p0, 0x7f0d0394

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/SecurityFooterBar;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->updateTextMaxWidth()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f0a09bb

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/bar/SecurityFooterBar;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v2, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object p0, v1, Lcom/android/systemui/qs/QSSecurityFooter;->mVisibilityChangedListener:Lcom/android/systemui/qs/bar/SecurityFooterBar;

    .line 22
    .line 23
    return-void
.end method

.method public final setListening(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/bar/SecurityFooterBar;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    .line 15
    .line 16
    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    .line 31
    .line 32
    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method
