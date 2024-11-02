.class public final Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/window/StatusBarWindowController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;->this$0:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/16 v2, 0x32

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    const/4 v4, 0x4

    .line 20
    iget-object v5, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;->this$0:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 21
    .line 22
    const/16 v6, 0x65

    .line 23
    .line 24
    if-ne v0, v2, :cond_2

    .line 25
    .line 26
    if-ne v1, v4, :cond_1

    .line 27
    .line 28
    if-ne p1, v6, :cond_1

    .line 29
    .line 30
    iget-object p1, v5, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    new-instance v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-ne v1, v3, :cond_3

    .line 43
    .line 44
    if-ne p1, v6, :cond_3

    .line 45
    .line 46
    iget-object p1, v5, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 47
    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    if-nez v0, :cond_3

    .line 59
    .line 60
    if-ne v1, v4, :cond_3

    .line 61
    .line 62
    if-ne p1, v6, :cond_3

    .line 63
    .line 64
    iget-object p1, v5, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 65
    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    invoke-direct {v0, p0, v3}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;I)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_0
    return-void
.end method
