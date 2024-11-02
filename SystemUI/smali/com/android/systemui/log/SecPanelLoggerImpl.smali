.class public final Lcom/android/systemui/log/SecPanelLoggerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/log/SecPanelLogger;


# static fields
.field public static final DEBUG_MODE:Z


# instance fields
.field public previousPanelStateInfoText:Ljava/lang/String;

.field public final sysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final writer:Lcom/android/systemui/log/SecPanelLogWriter;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/log/SecPanelLoggerImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Lcom/android/systemui/log/SecPanelLoggerImpl;->DEBUG_MODE:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/log/SecPanelLogWriter;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/BootAnimationFinishedCache;Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/log/SecPanelLoggerImpl;->writer:Lcom/android/systemui/log/SecPanelLogWriter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/log/SecPanelLoggerImpl;->sysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 7
    .line 8
    new-instance p1, Lcom/android/systemui/log/SecPanelLoggerImpl$1;

    .line 9
    .line 10
    invoke-direct {p1, p4, p0}, Lcom/android/systemui/log/SecPanelLoggerImpl$1;-><init>(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;Lcom/android/systemui/log/SecPanelLoggerImpl;)V

    .line 11
    .line 12
    .line 13
    check-cast p3, Lcom/android/systemui/BootAnimationFinishedCacheImpl;

    .line 14
    .line 15
    invoke-virtual {p3, p1}, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->addListener(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)Z

    .line 16
    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/systemui/log/SecPanelLoggerImpl;->previousPanelStateInfoText:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final addCoverPanelStateLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/log/SecPanelLoggerImpl;->DEBUG_MODE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[SecPanelLogger] SUB_QUICK_PANEL"

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/log/SecPanelLoggerImpl;->writer:Lcom/android/systemui/log/SecPanelLogWriter;

    .line 11
    .line 12
    const-string v0, "SUB_QUICK_PANEL"

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/log/SecPanelLogWriter;->logPanel(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "[NPVC]|[InterceptTouch]"

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "[NPVC]|[onTouch]"

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final addPanelLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p2, " | "

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {p1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, " | return:"

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/log/SecPanelLoggerImpl;->appendStatusBarState(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget-boolean p2, Lcom/android/systemui/log/SecPanelLoggerImpl;->DEBUG_MODE:Z

    .line 52
    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    const-string p2, "SecPanelLogger"

    .line 56
    .line 57
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_1
    const-string p2, "TOUCH"

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/systemui/log/SecPanelLoggerImpl;->writer:Lcom/android/systemui/log/SecPanelLogWriter;

    .line 63
    .line 64
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/log/SecPanelLogWriter;->logPanel(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final addPanelStateInfoLog(Ljava/lang/StringBuilder;Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/log/SecPanelLoggerImpl;->DEBUG_MODE:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    :cond_0
    const-string p2, "SecPanelLogger"

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/log/SecPanelLoggerImpl;->previousPanelStateInfoText:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/android/systemui/log/SecPanelLoggerImpl;->previousPanelStateInfoText:Ljava/lang/String;

    .line 33
    .line 34
    const-string p2, "\n"

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 p2, 0xa

    .line 40
    .line 41
    const-string v0, " - "

    .line 42
    .line 43
    invoke-static {p2, v0}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/log/SecPanelLoggerImpl;->writer:Lcom/android/systemui/log/SecPanelLogWriter;

    .line 55
    .line 56
    const-string p2, "PANEL_STATE_INFO"

    .line 57
    .line 58
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/log/SecPanelLogWriter;->logPanel(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final appendStatusBarState(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    const-string p2, "StatusBarState: "

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/log/SecPanelLoggerImpl;->sysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 10
    .line 11
    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 12
    .line 13
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 14
    .line 15
    invoke-static {p0}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    return-void
.end method
