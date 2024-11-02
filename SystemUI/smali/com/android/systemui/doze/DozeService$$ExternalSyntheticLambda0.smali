.class public final synthetic Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeService;

    .line 2
    .line 3
    sget-boolean p0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string p0, "DozeService"

    .line 9
    .line 10
    const-string v0, "addPluginListener() PluginFaceWidget is connected"

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object p0, v2, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    sget-boolean p0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    iget-object v0, v2, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 24
    .line 25
    const-string v1, "com.android.systemui.action.PLUGIN_AOD"

    .line 26
    .line 27
    const-class v3, Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x1

    .line 31
    const/4 v6, 0x0

    .line 32
    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, v2, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 37
    .line 38
    const-string v1, "com.samsung.systemui.action.PLUGIN_CLOCK_PACK"

    .line 39
    .line 40
    const-class v3, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x1

    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method
