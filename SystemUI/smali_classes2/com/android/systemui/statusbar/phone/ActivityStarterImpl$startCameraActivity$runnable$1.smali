.class public final Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$startCameraActivity$runnable$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/content/Intent;Lcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$startCameraActivity$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$startCameraActivity$runnable$1;->$intent:Landroid/content/Intent;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$startCameraActivity$runnable$1;->$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$startCameraActivity$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->assistManagerLazy:Ldagger/Lazy;

    .line 4
    .line 5
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 27
    .line 28
    .line 29
    sget-boolean v1, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 40
    .line 41
    iget-boolean v1, v1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 42
    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$startCameraActivity$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->access$getSubDisplayID(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$startCameraActivity$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->context:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const/4 v3, 0x0

    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$startCameraActivity$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->context:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$startCameraActivity$runnable$1;->$intent:Landroid/content/Intent;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$startCameraActivity$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 86
    .line 87
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->context:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v5, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    const/4 v7, 0x0

    .line 98
    const/4 v8, 0x0

    .line 99
    const/4 v9, 0x0

    .line 100
    const/high16 v10, 0x10000000

    .line 101
    .line 102
    const/4 v11, 0x0

    .line 103
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 110
    .line 111
    .line 112
    move-result v13

    .line 113
    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 114
    .line 115
    .line 116
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const-string v1, "ActivityStarterImpl"

    .line 120
    .line 121
    const-string v2, "Unable to start activity"

    .line 122
    .line 123
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    const/16 v0, -0x60

    .line 127
    .line 128
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$startCameraActivity$runnable$1;->$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    .line 129
    .line 130
    if-eqz p0, :cond_1

    .line 131
    .line 132
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    .line 133
    .line 134
    .line 135
    :cond_1
    return-void
.end method
