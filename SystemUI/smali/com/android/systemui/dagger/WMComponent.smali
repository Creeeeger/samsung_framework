.class public interface abstract Lcom/android/systemui/dagger/WMComponent;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# virtual methods
.method public abstract getBackAnimation()Ljava/util/Optional;
.end method

.method public abstract getBubbles()Ljava/util/Optional;
.end method

.method public abstract getDesktopMode()Ljava/util/Optional;
.end method

.method public abstract getDisplayAreaHelper()Ljava/util/Optional;
.end method

.method public abstract getDisplayController()Ljava/util/Optional;
.end method

.method public abstract getEnterSplitGestureHandler()Ljava/util/Optional;
.end method

.method public abstract getKeyguardTransitions()Lcom/android/wm/shell/keyguard/KeyguardTransitions;
.end method

.method public abstract getOneHanded()Ljava/util/Optional;
.end method

.method public abstract getPip()Ljava/util/Optional;
.end method

.method public abstract getRecentTasks()Ljava/util/Optional;
.end method

.method public abstract getShell()Lcom/android/wm/shell/sysui/ShellInterface;
.end method

.method public abstract getSplitScreen()Ljava/util/Optional;
.end method

.method public abstract getSplitScreenController()Ljava/util/Optional;
.end method

.method public abstract getStartingSurface()Ljava/util/Optional;
.end method

.method public abstract getTaskViewFactory()Ljava/util/Optional;
.end method

.method public abstract getTransitions()Lcom/android/wm/shell/transition/ShellTransitions;
.end method

.method public init()V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/dagger/WMComponent;->getShell()Lcom/android/wm/shell/sysui/ShellInterface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/android/wm/shell/sysui/ShellInterface;->onInit()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
