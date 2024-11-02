.class public final Lcom/android/systemui/keyguard/SurfaceVisibilityController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/VisibilityController;


# instance fields
.field public final keyguardSurfaceControllerLazy:Ldagger/Lazy;

.field public final keyguardViewControllerLazy:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/SurfaceVisibilityController;->keyguardViewControllerLazy:Ldagger/Lazy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/keyguard/SurfaceVisibilityController;->keyguardSurfaceControllerLazy:Ldagger/Lazy;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SurfaceVisibilityController;->keyguardViewControllerLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    const-string v1, "BioUnlock"

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl;->setReportNextDraw(ZLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final needToBeInvisibleWindow()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final registerFrameUpdateCallback(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SurfaceVisibilityController;->keyguardViewControllerLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Lcom/android/systemui/keyguard/SurfaceVisibilityController$registerFrameUpdateCallback$1;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/SurfaceVisibilityController$registerFrameUpdateCallback$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final resetForceInvisible(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setForceInvisible(Landroid/view/SurfaceControl$Transaction;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SurfaceVisibilityController;->keyguardSurfaceControllerLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardSurfaceController;

    .line 8
    .line 9
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->setKeyguardSurfaceVisible(Landroid/view/SurfaceControl$Transaction;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0
.end method
