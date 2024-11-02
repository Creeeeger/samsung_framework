.class public final Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardSurfaceController;


# instance fields
.field public final isExpandedChangedListener:Lkotlin/reflect/KFunction;

.field public final keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

.field public lastKeyguardSurfaceParams:Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final surfaceTransactionApplier$delegate:Lkotlin/Lazy;

.field public final viewRootImpl$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Ldagger/Lazy;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardViewController;",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            "Ldagger/Lazy;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$isExpandedChangedListener$1;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$isExpandedChangedListener$1;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->isExpandedChangedListener:Lkotlin/reflect/KFunction;

    .line 16
    .line 17
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$viewRootImpl$2;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$viewRootImpl$2;-><init>(Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->viewRootImpl$delegate:Lkotlin/Lazy;

    .line 27
    .line 28
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$surfaceTransactionApplier$2;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$surfaceTransactionApplier$2;-><init>(Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->surfaceTransactionApplier$delegate:Lkotlin/Lazy;

    .line 38
    .line 39
    return-void
.end method

.method public static isValid(Landroid/view/SurfaceControl;F)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const-string v0, "KeyguardSurface"

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string p0, "invalid surface"

    .line 10
    .line 11
    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    cmpg-float p0, p1, p0

    .line 17
    .line 18
    if-ltz p0, :cond_2

    .line 19
    .line 20
    const/high16 p0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    cmpl-float p0, p1, p0

    .line 23
    .line 24
    if-lez p0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x1

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string/jumbo v1, "wrong amount "

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    const/4 p0, 0x0

    .line 48
    :goto_2
    return p0
.end method


# virtual methods
.method public final internalRestoreKeyguardSurfaceIfVisible(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "restoreKeyguardSurfaceIfVisible "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "KeyguardSurface"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->lastKeyguardSurfaceParams:Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object p1, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    :goto_0
    xor-int/2addr v0, p1

    .line 40
    :goto_1
    if-nez v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->restoreKeyguardSurface()V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->isExpandedChangedListener:Lkotlin/reflect/KFunction;

    .line 46
    .line 47
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isExpandedChangedListeners:Ljava/util/List;

    .line 52
    .line 53
    check-cast p0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void
.end method

.method public final restoreKeyguardSurface()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->lastKeyguardSurfaceParams:Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v4, v0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    .line 9
    .line 10
    const/high16 v5, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-static {v4, v5}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->isValid(Landroid/view/SurfaceControl;F)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    new-instance v4, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 19
    .line 20
    iget-object v0, v0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    .line 21
    .line 22
    invoke-direct {v4, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, v5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->surfaceTransactionApplier$delegate:Lkotlin/Lazy;

    .line 38
    .line 39
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 44
    .line 45
    filled-new-array {v0}, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v4, v0}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 50
    .line 51
    .line 52
    move v0, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v0, v1

    .line 55
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move-object v0, v2

    .line 61
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->lastKeyguardSurfaceParams:Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 62
    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string/jumbo v6, "restoreKeyguardSurface surfaceParam="

    .line 66
    .line 67
    .line 68
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v4, " restored="

    .line 75
    .line 76
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sget v4, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    .line 87
    .line 88
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_2

    .line 93
    .line 94
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-ne v4, v3, :cond_3

    .line 99
    .line 100
    :cond_2
    move v1, v3

    .line 101
    :cond_3
    if-eqz v1, :cond_4

    .line 102
    .line 103
    const/4 v1, 0x3

    .line 104
    const-string v3, " "

    .line 105
    .line 106
    invoke-static {v1, v3}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const-string v3, "\n"

    .line 111
    .line 112
    invoke-static {v0, v3, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :cond_4
    const-string v1, "KeyguardSurface"

    .line 117
    .line 118
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->lastKeyguardSurfaceParams:Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 122
    .line 123
    return-void
.end method

.method public final setKeyguardSurfaceVisible(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->viewRootImpl$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewRootImpl;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->isValid(Landroid/view/SurfaceControl;F)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v2, v1

    .line 28
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v4, "setKeyguardSurfaceVisible visible=false hasTransaction="

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "KeyguardSurface"

    .line 44
    .line 45
    invoke-static {v3, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 51
    .line 52
    .line 53
    :cond_2
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;

    .line 54
    .line 55
    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;->invoke()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    new-instance p1, Lcom/android/systemui/keyguard/KeyguadSurfaceControllerImplKt$sam$java_lang_Runnable$0;

    .line 73
    .line 74
    invoke-direct {p1, v2}, Lcom/android/systemui/keyguard/KeyguadSurfaceControllerImplKt$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 78
    .line 79
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    return-void
.end method
