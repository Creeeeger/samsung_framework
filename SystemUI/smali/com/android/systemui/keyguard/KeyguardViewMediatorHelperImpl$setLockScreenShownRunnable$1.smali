.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public aodShowing:Z

.field public showing:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    const-string v0, "KeyguardViewMediator"

    .line 2
    .line 3
    const-string/jumbo v1, "setLockScreenShown "

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;->showing:Z

    .line 11
    .line 12
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;->aodShowing:Z

    .line 13
    .line 14
    invoke-interface {v2, v3, v4}, Landroid/app/IActivityTaskManager;->setLockScreenShown(ZZ)V

    .line 15
    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;->showing:Z

    .line 18
    .line 19
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;->aodShowing:Z

    .line 20
    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " "

    .line 30
    .line 31
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    const-string/jumbo v1, "setLockScreenShown is failed"

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    :goto_0
    move v3, v0

    .line 54
    const/4 v2, 0x1

    .line 55
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;->showing:Z

    .line 56
    .line 57
    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;->aodShowing:Z

    .line 58
    .line 59
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardDumpLog;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v7, 0x0

    .line 63
    const/16 v8, 0x30

    .line 64
    .line 65
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->state$default(Lcom/android/systemui/keyguard/KeyguardDumpLog;IZZZIII)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
