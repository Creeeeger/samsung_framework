.class public abstract Lcom/android/systemui/keyguard/KeyguardSurfaceController$DefaultImpls;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public static setKeyguardSurfaceAppearAmount$default(Lcom/android/systemui/keyguard/KeyguardSurfaceController;)V
    .locals 4

    .line 1
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->viewRootImpl$delegate:Lkotlin/Lazy;

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/ViewRootImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x3c23d70a    # 0.01f

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->isValid(Landroid/view/SurfaceControl;F)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v3, "setKeyguardSurfaceAppearAmount amount=0.01 hasTransaction="

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "KeyguardSurface"

    .line 42
    .line 43
    invoke-static {v3, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-direct {v2, p0, v1, v0, v3}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;FLandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;->invoke()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Lcom/android/systemui/keyguard/KeyguadSurfaceControllerImplKt$sam$java_lang_Runnable$0;

    .line 67
    .line 68
    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/KeyguadSurfaceControllerImplKt$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 72
    .line 73
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method
