.class public Lcom/android/systemui/doze/DozeService;
.super Landroid/service/dreams/DreamService;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Service;
.implements Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/dreams/DreamService;",
        "Lcom/android/systemui/doze/DozeMachine$Service;",
        "Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/Plugin;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field public mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

.field public mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

.field public final mDozeComponentBuilder:Lcom/android/systemui/doze/dagger/DozeComponent$Builder;

.field public mDozeMachine:Lcom/android/systemui/doze/AODMachine;

.field public mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field public mFaceWidgetManagerLazy:Ldagger/Lazy;

.field public mIsOccluded:Z

.field public mIsUnlockedState:Z

.field public mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mPluginAODManagerLazy:Ldagger/Lazy;

.field public final mPluginConnectionRunnable:Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "DozeService"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/dagger/DozeComponent$Builder;Lcom/android/systemui/plugins/PluginManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginConnectionRunnable:Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService;->mDozeComponentBuilder:Lcom/android/systemui/doze/dagger/DozeComponent$Builder;

    .line 12
    .line 13
    sget-boolean p1, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/service/dreams/DreamService;->setDebug(Z)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string p1, " state="

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const-string p1, " mUiModeType="

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget p1, p0, Lcom/android/systemui/doze/DozeMachine;->mUiModeType:I

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 26
    .line 27
    .line 28
    const-string p1, " wakeLockHeldForCurrentState="

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 36
    .line 37
    .line 38
    const-string p1, " wakeLock="

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const-string p1, "Parts:"

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    .line 54
    .line 55
    array-length p1, p0

    .line 56
    const/4 p3, 0x0

    .line 57
    :goto_0
    if-ge p3, p1, :cond_0

    .line 58
    .line 59
    aget-object v0, p0, p3

    .line 60
    .line 61
    invoke-interface {v0, p2}, Lcom/android/systemui/doze/DozeMachine$Part;->dump(Ljava/io/PrintWriter;)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 p3, p3, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 10
    .line 11
    and-int/lit8 v1, v1, 0xf

    .line 12
    .line 13
    iget v2, v0, Lcom/android/systemui/doze/DozeMachine;->mUiModeType:I

    .line 14
    .line 15
    if-ne v2, v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iput v1, v0, Lcom/android/systemui/doze/DozeMachine;->mUiModeType:I

    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    .line 21
    .line 22
    array-length v2, v1

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v2, :cond_1

    .line 25
    .line 26
    aget-object v4, v1, v3

    .line 27
    .line 28
    iget v5, v0, Lcom/android/systemui/doze/DozeMachine;->mUiModeType:I

    .line 29
    .line 30
    invoke-interface {v4, v5}, Lcom/android/systemui/doze/DozeMachine$Part;->onUiModeTypeChanged(I)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 37
    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public final onCreate()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setWindowless(Z)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v2, "onCreate: "

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "DozeService"

    .line 24
    .line 25
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mFaceWidgetManagerLazy:Ldagger/Lazy;

    .line 29
    .line 30
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v0, v7

    .line 43
    :goto_0
    if-eqz v0, :cond_2

    .line 44
    .line 45
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 50
    .line 51
    const-string v1, "com.android.systemui.action.PLUGIN_AOD"

    .line 52
    .line 53
    const-class v3, Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x1

    .line 57
    const/4 v6, 0x0

    .line 58
    move-object v2, p0

    .line 59
    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 64
    .line 65
    const-string v1, "com.samsung.systemui.action.PLUGIN_CLOCK_PACK"

    .line 66
    .line 67
    const-class v3, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    const/4 v5, 0x1

    .line 71
    const/4 v6, 0x0

    .line 72
    move-object v2, p0

    .line 73
    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const-string v0, "addPluginListener() PluginFaceWidget is not connected, wait connection"

    .line 78
    .line 79
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 83
    .line 84
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mPluginConnectionRunnable:Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/PluginAODManager;->addConnectionRunnable(Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeComponentBuilder:Lcom/android/systemui/doze/dagger/DozeComponent$Builder;

    .line 96
    .line 97
    invoke-interface {v0, p0}, Lcom/android/systemui/doze/dagger/DozeComponent$Builder;->build(Lcom/android/systemui/doze/DozeMachine$Service;)Lcom/android/systemui/doze/dagger/DozeComponent;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {v0}, Lcom/android/systemui/doze/dagger/DozeComponent;->getAODMachine()Lcom/android/systemui/doze/AODMachine;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 119
    .line 120
    and-int/lit8 v1, v1, 0xf

    .line 121
    .line 122
    iget v2, v0, Lcom/android/systemui/doze/DozeMachine;->mUiModeType:I

    .line 123
    .line 124
    if-ne v2, v1, :cond_3

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_3
    iput v1, v0, Lcom/android/systemui/doze/DozeMachine;->mUiModeType:I

    .line 128
    .line 129
    iget-object v1, v0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    .line 130
    .line 131
    array-length v2, v1

    .line 132
    :goto_2
    if-ge v7, v2, :cond_4

    .line 133
    .line 134
    aget-object v3, v1, v7

    .line 135
    .line 136
    iget v4, v0, Lcom/android/systemui/doze/DozeMachine;->mUiModeType:I

    .line 137
    .line 138
    invoke-interface {v3, v4}, Lcom/android/systemui/doze/DozeMachine$Part;->onUiModeTypeChanged(I)V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v7, v7, 0x1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    :goto_3
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDestroy()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    .line 14
    .line 15
    array-length v1, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_1

    .line 18
    .line 19
    aget-object v3, v0, v2

    .line 20
    .line 21
    invoke-interface {v3}, Lcom/android/systemui/doze/DozeMachine$Part;->destroy()V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    .line 29
    .line 30
    return-void
.end method

.method public final onDreamingStarted()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SAFEMODE:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    .line 10
    .line 11
    const-string v1, "DozeService"

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const-string/jumbo p0, "onDreamingStarted: mAODDozeMachine is null"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const-string/jumbo v0, "onDreamingStarted: "

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 29
    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 33
    .line 34
    const-string v1, "DozeServiceHost"

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const-string v0, "isUnLockedstate() called before initialize(), returning true"

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isKeyguardShowing()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    xor-int/2addr v2, v0

    .line 52
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeService;->mIsUnlockedState:Z

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    const-string v0, "isOccludedstate() called before initialize(), returning false"

    .line 61
    .line 62
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isOccluded()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mIsOccluded:Z

    .line 74
    .line 75
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    .line 76
    .line 77
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 80
    .line 81
    .line 82
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_BRIGHTNESS_CONTROL:Z

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    const v0, 0x10002

    .line 87
    .line 88
    .line 89
    const/4 v1, -0x1

    .line 90
    invoke-virtual {p0, v0, v1}, Landroid/service/dreams/DreamService;->semSetDozeScreenBrightness(II)V

    .line 91
    .line 92
    .line 93
    :cond_5
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->startDozing()V

    .line 94
    .line 95
    .line 96
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    .line 97
    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->startAlwaysOnDisplay()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_7

    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 107
    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->onRequestHideDoze()V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->startClockPack()V

    .line 115
    .line 116
    .line 117
    :cond_7
    :goto_2
    return-void
.end method

.method public final onDreamingStopped()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SAFEMODE:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    .line 10
    .line 11
    const-string v1, "DozeService"

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const-string/jumbo p0, "onDreamingStopped: mDozeMachine is null"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const-string/jumbo v0, "onDreamingStopped: "

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    .line 29
    .line 30
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 33
    .line 34
    .line 35
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->stopAlwaysOnDisplay()V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/android/systemui/doze/PluginAODManager;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/android/systemui/doze/PluginAODManager;->initAODOverlayContainer()V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p2, 0x0

    .line 18
    :goto_0
    const-string v0, "DozeService"

    .line 19
    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo p2, "onPluginConnected: aodMachine is null, plugin="

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    instance-of v1, p1, Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string/jumbo v2, "onPluginConnected: PluginAOD plugin="

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    check-cast p1, Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 68
    .line 69
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/PluginAODManager;->setAODPlugin(Lcom/android/systemui/plugins/aod/PluginAOD;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 81
    .line 82
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    .line 87
    .line 88
    iput-object p2, p1, Lcom/android/systemui/doze/PluginAODManager;->mAODMachine:Lcom/android/systemui/doze/AODMachine;

    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 91
    .line 92
    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->setAODPluginCallback(Lcom/android/systemui/plugins/aod/PluginAOD$Callback;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 96
    .line 97
    invoke-interface {p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->getAODParameter()Lcom/android/systemui/plugins/aod/PluginAODParameter;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p2}, Lcom/android/systemui/doze/AODMachine;->getAODDozeBrightness()Lcom/android/systemui/doze/AODScreenBrightness;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    if-eqz p2, :cond_2

    .line 106
    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    invoke-interface {p1}, Lcom/android/systemui/plugins/aod/PluginAODParameter;->getSensorToBrightness()[I

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    invoke-interface {p1}, Lcom/android/systemui/plugins/aod/PluginAODParameter;->getSensorToBrightness()[I

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    array-length v0, v0

    .line 120
    if-lez v0, :cond_2

    .line 121
    .line 122
    invoke-interface {p1}, Lcom/android/systemui/plugins/aod/PluginAODParameter;->getSensorToBrightness()[I

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iput-object p1, p2, Lcom/android/systemui/doze/AODScreenBrightness;->mBrightnessValues:[I

    .line 127
    .line 128
    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_6

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isDozing()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_6

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->startAlwaysOnDisplay()Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_6

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->onRequestHideDoze()V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    instance-of v1, p1, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 151
    .line 152
    if-eqz v1, :cond_5

    .line 153
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string/jumbo v2, "onPluginConnected: PluginClockPack plugin="

    .line 157
    .line 158
    .line 159
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    check-cast p1, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 173
    .line 174
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 175
    .line 176
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 177
    .line 178
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    .line 183
    .line 184
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 185
    .line 186
    iput-object v0, p1, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 187
    .line 188
    if-eqz v0, :cond_4

    .line 189
    .line 190
    iget-object p1, p1, Lcom/android/systemui/doze/PluginAODManager;->mAODUICallback:Lcom/android/systemui/doze/PluginAODManager$6;

    .line 191
    .line 192
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->setAODUICallback(Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;)V

    .line 193
    .line 194
    .line 195
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 196
    .line 197
    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->setAODPluginCallback(Lcom/android/systemui/plugins/aod/PluginAOD$Callback;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_6

    .line 205
    .line 206
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isDozing()Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-eqz p1, :cond_6

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->startClockPack()V

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string/jumbo v1, "onPluginConnected: abnormal plugin="

    .line 219
    .line 220
    .line 221
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->onRequestHideDoze()V

    .line 235
    .line 236
    .line 237
    :cond_6
    :goto_1
    return-void
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 2
    .line 3
    const-string v1, "DozeService"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "onPluginDisconnected: PluginAOD plugin="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 26
    .line 27
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 28
    .line 29
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 30
    .line 31
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 34
    .line 35
    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 36
    .line 37
    iget-object v1, p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 38
    .line 39
    iput-boolean v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->stopAlwaysOnDisplay()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string/jumbo v2, "onPluginDisconnected: PluginClockPack plugin="

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 71
    .line 72
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    iput-object v0, p1, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 80
    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string/jumbo v2, "stopClockPack: mClockPackPlugin="

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 90
    .line 91
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 102
    .line 103
    if-eqz p1, :cond_1

    .line 104
    .line 105
    invoke-interface {p1}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->onDreamingStopped()V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 109
    .line 110
    :cond_1
    :goto_0
    return-void
.end method

.method public final onRequestHideDoze()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onRequestShowDoze()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final requestWakeUp(I)V
    .locals 5

    .line 1
    const-class v0, Landroid/os/PowerManager;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/PowerManager;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq p1, v2, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    if-eq p1, v3, :cond_1

    .line 18
    .line 19
    const/4 v4, 0x6

    .line 20
    if-eq p1, v4, :cond_3

    .line 21
    .line 22
    const/16 v2, 0x9

    .line 23
    .line 24
    if-eq p1, v2, :cond_1

    .line 25
    .line 26
    const/16 v2, 0xa

    .line 27
    .line 28
    if-eq p1, v2, :cond_0

    .line 29
    .line 30
    move v2, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 v2, 0x11

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/16 v2, 0xf

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/16 v2, 0x10

    .line 39
    .line 40
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->reasonToString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v3, "com.android.systemui:NODOZE "

    .line 45
    .line 46
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final setDozeScreenState(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->setDozeScreenState(I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 16
    .line 17
    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logDisplayStateChanged$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDisplayStateChanged$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 21
    .line 22
    const-string v4, "DozeLog"

    .line 23
    .line 24
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v1, v2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    .line 39
    .line 40
    array-length v0, p0

    .line 41
    const/4 v1, 0x0

    .line 42
    :goto_0
    if-ge v1, v0, :cond_0

    .line 43
    .line 44
    aget-object v2, p0, v1

    .line 45
    .line 46
    invoke-interface {v2, p1}, Lcom/android/systemui/doze/DozeMachine$Part;->onScreenState(I)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public final startAlwaysOnDisplay()Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "startAlwaysOnDisplay: mAODPlugin="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " unlockedState="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mIsUnlockedState:Z

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " occlude="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mIsOccluded:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, " screenOffMemoRunning="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 40
    .line 41
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isScreenOffMemoRunning()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, " bouncerFullyShown="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 54
    .line 55
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBouncerFullyShown()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, " aodFullscreenMode="

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, " shouldControlUnlockedScreenOff="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 82
    .line 83
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/android/systemui/doze/PluginAODManager;

    .line 88
    .line 89
    iget-object v1, v1, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 90
    .line 91
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldPlayUnlockedScreenOffAnimation()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, " shouldControlScreenOff()="

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 106
    .line 107
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Lcom/android/systemui/doze/PluginAODManager;

    .line 112
    .line 113
    iget-object v1, v1, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 114
    .line 115
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 116
    .line 117
    const-string v2, "DozeService"

    .line 118
    .line 119
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 123
    .line 124
    const/4 v1, 0x0

    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 128
    .line 129
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    .line 136
    .line 137
    sget-boolean v2, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    .line 138
    .line 139
    const/4 v3, 0x5

    .line 140
    const/4 v4, 0x4

    .line 141
    if-eqz v2, :cond_0

    .line 142
    .line 143
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_0

    .line 150
    .line 151
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 152
    .line 153
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Lcom/android/systemui/doze/PluginAODManager;

    .line 158
    .line 159
    iget-object v2, v2, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 160
    .line 161
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 162
    .line 163
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldPlayUnlockedScreenOffAnimation()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_0

    .line 168
    .line 169
    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeService;->mIsUnlockedState:Z

    .line 177
    .line 178
    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    .line 179
    .line 180
    .line 181
    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeService;->mIsOccluded:Z

    .line 182
    .line 183
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    .line 184
    .line 185
    .line 186
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 187
    .line 188
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isScreenOffMemoRunning()Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    const/4 v3, 0x6

    .line 193
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    .line 194
    .line 195
    .line 196
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 197
    .line 198
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBouncerFullyShown()Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    const/4 v3, 0x7

    .line 203
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    .line 204
    .line 205
    .line 206
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 207
    .line 208
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Lcom/android/systemui/doze/PluginAODManager;

    .line 213
    .line 214
    iget-object v2, v2, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 215
    .line 216
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 217
    .line 218
    const/16 v3, 0x9

    .line 219
    .line 220
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    .line 221
    .line 222
    .line 223
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 224
    .line 225
    iget v2, v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    .line 226
    .line 227
    const/16 v3, 0xa

    .line 228
    .line 229
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(II)V

    .line 230
    .line 231
    .line 232
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 233
    .line 234
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    .line 235
    .line 236
    if-nez v2, :cond_1

    .line 237
    .line 238
    const-string v2, "DozeServiceHost"

    .line 239
    .line 240
    const-string v3, "getNotificationPanelView NotificationPanel is null"

    .line 241
    .line 242
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    const/4 v2, 0x0

    .line 246
    goto :goto_1

    .line 247
    :cond_1
    check-cast v2, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 248
    .line 249
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 250
    .line 251
    :goto_1
    sget-boolean v3, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_AOD_BY_FOLDER_EVENT:Z

    .line 252
    .line 253
    if-eqz v3, :cond_3

    .line 254
    .line 255
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 256
    .line 257
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    check-cast v3, Lcom/android/systemui/doze/PluginAODManager;

    .line 262
    .line 263
    iget-boolean v3, v3, Lcom/android/systemui/doze/PluginAODManager;->mStartedByFolderClosed:Z

    .line 264
    .line 265
    const/4 v4, 0x3

    .line 266
    if-eqz v3, :cond_2

    .line 267
    .line 268
    const/4 v3, 0x1

    .line 269
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(II)V

    .line 270
    .line 271
    .line 272
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 273
    .line 274
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    check-cast v3, Lcom/android/systemui/doze/PluginAODManager;

    .line 279
    .line 280
    invoke-virtual {v3, v1}, Lcom/android/systemui/doze/PluginAODManager;->setStartedByFolderClosed(Z)V

    .line 281
    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_2
    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(II)V

    .line 285
    .line 286
    .line 287
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 288
    .line 289
    invoke-interface {p0, v2, v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->onDreamingStarted(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    :cond_4
    return v1
.end method

.method public final startClockPack()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "startClockPack: mClockPackPlugin="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "DozeService"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const-string v0, "DozeServiceHost"

    .line 34
    .line 35
    const-string v1, "getNotificationPanelView NotificationPanel is null"

    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 45
    .line 46
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 49
    .line 50
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    .line 57
    .line 58
    invoke-interface {v1, v0, p0}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->onDreamingStarted(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public final stopAlwaysOnDisplay()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "stopAlwaysOnDisplay: mAODPlugin="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "DozeService"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 28
    .line 29
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/PluginAODManager;->setAODPlugin(Lcom/android/systemui/plugins/aod/PluginAOD;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 40
    .line 41
    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->onDreamingStopped()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 45
    .line 46
    :cond_0
    return-void
.end method
