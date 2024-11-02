.class public final Lcom/android/systemui/aod/AODTouchModeManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final aodManagerWrapper:Lcom/android/systemui/doze/AODManagerWrapper;

.field public currentDisplayState:I

.field public currentTouchMode:I

.field public final deviceTypeWrapper:Lcom/android/systemui/util/DeviceTypeWrapper;

.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public final executor:Ljava/util/concurrent/ExecutorService;

.field public final keyguardViewMediatorHelperLazy:Ldagger/Lazy;

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public final lsRuneWrapper:Lcom/android/systemui/LsRuneWrapper;

.field public touchNodePath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/aod/AODTouchModeManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/aod/AODTouchModeManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/LsRuneWrapper;Lcom/android/systemui/util/DeviceTypeWrapper;Ldagger/Lazy;Landroid/hardware/display/DisplayManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/keyguard/KeyguardFoldController;",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            "Lcom/android/systemui/LsRuneWrapper;",
            "Lcom/android/systemui/util/DeviceTypeWrapper;",
            "Ldagger/Lazy;",
            "Landroid/hardware/display/DisplayManager;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/android/systemui/aod/AODTouchModeManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/android/systemui/aod/AODTouchModeManager;->lsRuneWrapper:Lcom/android/systemui/LsRuneWrapper;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/android/systemui/aod/AODTouchModeManager;->deviceTypeWrapper:Lcom/android/systemui/util/DeviceTypeWrapper;

    .line 9
    .line 10
    iput-object p7, p0, Lcom/android/systemui/aod/AODTouchModeManager;->keyguardViewMediatorHelperLazy:Ldagger/Lazy;

    .line 11
    .line 12
    iput-object p8, p0, Lcom/android/systemui/aod/AODTouchModeManager;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 13
    .line 14
    const-string p4, "/sys/class/sec/tsp/input/enabled"

    .line 15
    .line 16
    iput-object p4, p0, Lcom/android/systemui/aod/AODTouchModeManager;->touchNodePath:Ljava/lang/String;

    .line 17
    .line 18
    sget-object p4, Lcom/android/systemui/doze/AODManagerWrapper;->Companion:Lcom/android/systemui/doze/AODManagerWrapper$Companion;

    .line 19
    .line 20
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object p4, Lcom/android/systemui/doze/AODManagerWrapper;->sInstance:Lcom/android/systemui/doze/AODManagerWrapper;

    .line 24
    .line 25
    const/4 p5, 0x0

    .line 26
    if-nez p4, :cond_0

    .line 27
    .line 28
    new-instance p4, Lcom/android/systemui/doze/AODManagerWrapper;

    .line 29
    .line 30
    invoke-direct {p4, p1, p5}, Lcom/android/systemui/doze/AODManagerWrapper;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    sput-object p4, Lcom/android/systemui/doze/AODManagerWrapper;->sInstance:Lcom/android/systemui/doze/AODManagerWrapper;

    .line 34
    .line 35
    :cond_0
    sget-object p1, Lcom/android/systemui/doze/AODManagerWrapper;->sInstance:Lcom/android/systemui/doze/AODManagerWrapper;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/systemui/aod/AODTouchModeManager;->aodManagerWrapper:Lcom/android/systemui/doze/AODManagerWrapper;

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    iput p1, p0, Lcom/android/systemui/aod/AODTouchModeManager;->currentTouchMode:I

    .line 44
    .line 45
    sget-object p1, Lcom/android/systemui/aod/AODTouchModeManager$executor$1;->INSTANCE:Lcom/android/systemui/aod/AODTouchModeManager$executor$1;

    .line 46
    .line 47
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/android/systemui/aod/AODTouchModeManager;->executor:Ljava/util/concurrent/ExecutorService;

    .line 52
    .line 53
    new-instance p1, Lcom/android/systemui/aod/AODTouchModeManager$1;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/android/systemui/aod/AODTouchModeManager$1;-><init>(Lcom/android/systemui/aod/AODTouchModeManager;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x4

    .line 62
    check-cast p3, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 63
    .line 64
    invoke-virtual {p3, p0, p1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;I)Z

    .line 65
    .line 66
    .line 67
    new-instance p1, Lcom/android/systemui/aod/AODTouchModeManager$2;

    .line 68
    .line 69
    invoke-direct {p1, p0}, Lcom/android/systemui/aod/AODTouchModeManager$2;-><init>(Lcom/android/systemui/aod/AODTouchModeManager;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p8, p1, p5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "onFolderStateChanged: isOpened="

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/systemui/aod/AODTouchModeManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 9
    .line 10
    const-string v2, "AODTouchModeManager"

    .line 11
    .line 12
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v3, "setTouchNodePath: isOpened="

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/aod/AODTouchModeManager;->lsRuneWrapper:Lcom/android/systemui/LsRuneWrapper;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_LOCK:Z

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_COVER:Z

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    :cond_0
    if-nez p1, :cond_1

    .line 47
    .line 48
    const-string p1, "/sys/class/sec/tsp2/input/enabled"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-string p1, "/sys/class/sec/tsp1/input/enabled"

    .line 52
    .line 53
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/aod/AODTouchModeManager;->touchNodePath:Ljava/lang/String;

    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method public final setTouchMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/aod/AODTouchModeManager;->deviceTypeWrapper:Lcom/android/systemui/util/DeviceTypeWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    .line 7
    .line 8
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x1f

    .line 18
    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Lcom/android/systemui/aod/AODTouchModeManager$setTouchMode$1;

    .line 26
    .line 27
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/aod/AODTouchModeManager$setTouchMode$1;-><init>(Lcom/android/systemui/aod/AODTouchModeManager;I)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/aod/AODTouchModeManager;->executor:Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/aod/AODTouchModeManager;->switchTouchMode(I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final switchTouchMode(I)V
    .locals 11

    .line 1
    const-string v0, "/sys/class/sec/sec_epen/input/enabled"

    .line 2
    .line 3
    const-string v1, "/sys/class/sec/tsp2/input/enabled"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/aod/AODTouchModeManager;->aodManagerWrapper:Lcom/android/systemui/doze/AODManagerWrapper;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/systemui/aod/AODTouchModeManager;->lsRuneWrapper:Lcom/android/systemui/LsRuneWrapper;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/systemui/aod/AODTouchModeManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 10
    .line 11
    const-string v5, "AODTouchModeManager"

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    if-eq p1, v6, :cond_0

    .line 17
    .line 18
    const-string/jumbo v0, "setTouchMode abnormal Touch Mode"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_0
    iget v6, p0, Lcom/android/systemui/aod/AODTouchModeManager;->currentTouchMode:I

    .line 27
    .line 28
    if-eqz v6, :cond_1

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/aod/AODTouchModeManager;->touchNodePath:Ljava/lang/String;

    .line 33
    .line 34
    const-string v7, "1"

    .line 35
    .line 36
    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/doze/AODManagerWrapper;->writeAODCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v6, p0, Lcom/android/systemui/aod/AODTouchModeManager;->touchNodePath:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    new-instance v8, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string/jumbo v9, "setSingleTouchMode: isSubDisplayNodePath()="

    .line 48
    .line 49
    .line 50
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/basic/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    sget-boolean v3, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_COVER:Z

    .line 67
    .line 68
    if-nez v3, :cond_4

    .line 69
    .line 70
    iget-object v3, p0, Lcom/android/systemui/aod/AODTouchModeManager;->touchNodePath:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_4

    .line 77
    .line 78
    const-string/jumbo v1, "setSingleTouchMode : sec.epen.input.enabled : 1"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v5, v1}, Lcom/android/systemui/basic/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v0, v7}, Lcom/android/systemui/doze/AODManagerWrapper;->writeAODCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/aod/AODTouchModeManager;->keyguardViewMediatorHelperLazy:Ldagger/Lazy;

    .line 89
    .line 90
    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    .line 95
    .line 96
    check-cast v6, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 97
    .line 98
    iget-object v6, v6, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 99
    .line 100
    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    check-cast v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 105
    .line 106
    invoke-virtual {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-interface {v6}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_3

    .line 115
    .line 116
    const-string/jumbo v0, "setDoubleTouchMode: return screen is on"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/basic/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/aod/AODTouchModeManager;->touchNodePath:Ljava/lang/String;

    .line 124
    .line 125
    const-string v7, "0"

    .line 126
    .line 127
    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/doze/AODManagerWrapper;->writeAODCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v6, p0, Lcom/android/systemui/aod/AODTouchModeManager;->touchNodePath:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    const/4 v8, 0x2

    .line 137
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    new-instance v9, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string/jumbo v10, "setDoubleTouchMode: isSubDisplayNodePath()="

    .line 144
    .line 145
    .line 146
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v6, " called="

    .line 153
    .line 154
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/basic/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    sget-boolean v3, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_COVER:Z

    .line 171
    .line 172
    if-nez v3, :cond_4

    .line 173
    .line 174
    iget-object v3, p0, Lcom/android/systemui/aod/AODTouchModeManager;->touchNodePath:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_4

    .line 181
    .line 182
    const-string/jumbo v1, "setDoubleTouchMode : sec.epen.input.enabled : 0"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v5, v1}, Lcom/android/systemui/basic/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v0, v7}, Lcom/android/systemui/doze/AODManagerWrapper;->writeAODCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_4
    :goto_0
    iput p1, p0, Lcom/android/systemui/aod/AODTouchModeManager;->currentTouchMode:I

    .line 192
    .line 193
    return-void
.end method
