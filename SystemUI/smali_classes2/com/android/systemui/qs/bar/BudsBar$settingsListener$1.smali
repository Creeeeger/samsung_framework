.class public final Lcom/android/systemui/qs/bar/BudsBar$settingsListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/BudsBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/BudsBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BudsBar$settingsListener$1;->this$0:Lcom/android/systemui/qs/bar/BudsBar;

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
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "buds_enable"

    .line 5
    .line 6
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BudsBar$settingsListener$1;->this$0:Lcom/android/systemui/qs/bar/BudsBar;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BudsBar;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getBudsEnable()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsEnabled:Z

    .line 26
    .line 27
    const-string v0, "onChanged(): buds enabled: "

    .line 28
    .line 29
    invoke-static {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsEnabled:Z

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BudsBar;->updateBroadcastDispatcher(Z)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsEnabled:Z

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    if-nez p1, :cond_5

    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BudsBar;->qsPanelControllerLazy:Ldagger/Lazy;

    .line 53
    .line 54
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelController;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BudsBar;->soundCraftAdapter:Ldagger/Lazy;

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    move-object v1, v0

    .line 66
    :goto_0
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 71
    .line 72
    iget-object v2, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 73
    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    iget-object v3, v2, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 77
    .line 78
    if-eq v3, v1, :cond_4

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->showDetail(Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;Z)V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/BudsBar;->updateBarContents([B)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BudsBar;->updateBarVisibility()V

    .line 89
    .line 90
    .line 91
    return-void
.end method
