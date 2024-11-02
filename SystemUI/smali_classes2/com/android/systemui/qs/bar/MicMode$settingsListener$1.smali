.class public final Lcom/android/systemui/qs/bar/MicMode$settingsListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/MicMode;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/MicMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MicMode$settingsListener$1;->this$0:Lcom/android/systemui/qs/bar/MicMode;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "mic_mode_enable"

    .line 5
    .line 6
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-string v2, "MicMode"

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicMode$settingsListener$1;->this$0:Lcom/android/systemui/qs/bar/MicMode;

    .line 17
    .line 18
    if-eqz v1, :cond_4

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v3, 0x1

    .line 34
    if-ne v0, v3, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v3, v1

    .line 38
    :goto_0
    const-string v0, "onChanged() - mic_mode_enable : "

    .line 39
    .line 40
    invoke-static {v0, v3, v2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput-boolean v3, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeEnable:Z

    .line 44
    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->qsPanelControllerLazy:Ldagger/Lazy;

    .line 48
    .line 49
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/android/systemui/qs/SecQSPanelController;

    .line 54
    .line 55
    iget-object v3, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 56
    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    iget-object v4, v3, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 60
    .line 61
    iget-object v5, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeDetailAdapter:Lcom/android/systemui/qs/bar/MicModeDetailAdapter;

    .line 62
    .line 63
    if-eq v4, v5, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->showDetail(Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;Z)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->updateBarVisibilitiesRunnable:Ljava/lang/Runnable;

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 72
    .line 73
    .line 74
    :cond_4
    const-string v0, "mic_mode_effect"

    .line 75
    .line 76
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    const-string p1, "onChanged() - mic_mode_effect : "

    .line 87
    .line 88
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicMode;->updateBarContentsRunnable:Ljava/lang/Runnable;

    .line 92
    .line 93
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 94
    .line 95
    .line 96
    :cond_5
    return-void
.end method
