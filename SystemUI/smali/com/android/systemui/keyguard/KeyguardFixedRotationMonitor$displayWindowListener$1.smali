.class public final Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;
.super Landroid/view/IDisplayWindowListener$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/IDisplayWindowListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFixedRotationFinished(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFixedRotationStarted(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    .line 2
    .line 3
    const-string/jumbo v1, "onFixedRotationStarted "

    .line 4
    .line 5
    .line 6
    const-string v2, ", "

    .line 7
    .line 8
    invoke-static {v1, p1, v2, p2}, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-boolean v2, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->DEBUG:Z

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->DEBUG:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "KeyguardFixedRotation"

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->handler:Landroid/os/Handler;

    .line 33
    .line 34
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1$onFixedRotationStarted$1;

    .line 35
    .line 36
    invoke-direct {v0, p2, p0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1$onFixedRotationStarted$1;-><init>(ILcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final onKeepClearAreasChanged(ILjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method
