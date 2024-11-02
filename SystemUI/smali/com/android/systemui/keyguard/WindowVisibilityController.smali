.class public final Lcom/android/systemui/keyguard/WindowVisibilityController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/VisibilityController;


# instance fields
.field public final choreographer:Landroid/view/Choreographer;

.field public final shadeWindowControllerHelper$delegate:Lkotlin/Lazy;

.field public final shadeWindowControllerLazy:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Choreographer;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/WindowVisibilityController;->choreographer:Landroid/view/Choreographer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/keyguard/WindowVisibilityController;->shadeWindowControllerLazy:Ldagger/Lazy;

    .line 7
    .line 8
    new-instance p1, Lcom/android/systemui/keyguard/WindowVisibilityController$shadeWindowControllerHelper$2;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/WindowVisibilityController$shadeWindowControllerHelper$2;-><init>(Lcom/android/systemui/keyguard/WindowVisibilityController;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/systemui/keyguard/WindowVisibilityController;->shadeWindowControllerHelper$delegate:Lkotlin/Lazy;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/WindowVisibilityController;->shadeWindowControllerLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 8
    .line 9
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    const-string v1, "BioUnlock"

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl;->setReportNextDraw(ZLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final needToBeInvisibleWindow()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final registerFrameUpdateCallback(Lkotlin/jvm/functions/Function0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/WindowVisibilityController;->choreographer:Landroid/view/Choreographer;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-instance v2, Lcom/android/systemui/keyguard/WindowVisibilityController$registerFrameUpdateCallback$1;

    .line 5
    .line 6
    invoke-direct {v2, p1}, Lcom/android/systemui/keyguard/WindowVisibilityController$registerFrameUpdateCallback$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final resetForceInvisible(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/WindowVisibilityController;->shadeWindowControllerHelper$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;

    .line 8
    .line 9
    check-cast p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->resetForceInvisible(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setForceInvisible(Landroid/view/SurfaceControl$Transaction;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/WindowVisibilityController;->shadeWindowControllerHelper$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;

    .line 8
    .line 9
    check-cast p1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-boolean p1, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_0
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;

    .line 26
    .line 27
    check-cast p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->setForceInvisible(Z)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    return p0
.end method
