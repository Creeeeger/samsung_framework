.class public final Lcom/android/systemui/aod/AODTouchModeManager$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/aod/AODTouchModeManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aod/AODTouchModeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/aod/AODTouchModeManager$2;->this$0:Lcom/android/systemui/aod/AODTouchModeManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public final onDisplayChanged(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/aod/AODTouchModeManager$2;->this$0:Lcom/android/systemui/aod/AODTouchModeManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/aod/AODTouchModeManager;->keyguardViewMediatorHelperLazy:Ldagger/Lazy;

    .line 4
    .line 5
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    .line 10
    .line 11
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 14
    .line 15
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/AODTouchModeManager$2;->this$0:Lcom/android/systemui/aod/AODTouchModeManager;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/systemui/aod/AODTouchModeManager;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iget-object v0, p0, Lcom/android/systemui/aod/AODTouchModeManager$2;->this$0:Lcom/android/systemui/aod/AODTouchModeManager;

    .line 47
    .line 48
    iget v1, v0, Lcom/android/systemui/aod/AODTouchModeManager;->currentDisplayState:I

    .line 49
    .line 50
    if-eq v1, p1, :cond_4

    .line 51
    .line 52
    const-string/jumbo v2, "onDisplayChanged newDisplayState="

    .line 53
    .line 54
    .line 55
    const-string v3, ", currentDisplayState="

    .line 56
    .line 57
    invoke-static {v2, p1, v3, v1}, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "AODTouchModeManager"

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/systemui/aod/AODTouchModeManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/systemui/aod/AODTouchModeManager$2;->this$0:Lcom/android/systemui/aod/AODTouchModeManager;

    .line 69
    .line 70
    iget v1, v0, Lcom/android/systemui/aod/AODTouchModeManager;->currentDisplayState:I

    .line 71
    .line 72
    const/4 v2, 0x2

    .line 73
    if-eq v1, v2, :cond_1

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    if-ne v1, v2, :cond_3

    .line 77
    .line 78
    :cond_1
    const/4 v1, 0x3

    .line 79
    if-eq p1, v1, :cond_2

    .line 80
    .line 81
    const/4 v1, 0x4

    .line 82
    if-ne p1, v1, :cond_3

    .line 83
    .line 84
    :cond_2
    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Lcom/android/systemui/aod/AODTouchModeManager;->setTouchMode(I)V

    .line 86
    .line 87
    .line 88
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/aod/AODTouchModeManager$2;->this$0:Lcom/android/systemui/aod/AODTouchModeManager;

    .line 89
    .line 90
    iput p1, p0, Lcom/android/systemui/aod/AODTouchModeManager;->currentDisplayState:I

    .line 91
    .line 92
    :cond_4
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method
