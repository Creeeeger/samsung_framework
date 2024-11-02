.class public final Lcom/android/systemui/qs/bar/VoIPTranslator$settingsListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/VoIPTranslator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/VoIPTranslator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator$settingsListener$1;->this$0:Lcom/android/systemui/qs/bar/VoIPTranslator;

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
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string/jumbo v0, "voip_translator_enable"

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator$settingsListener$1;->this$0:Lcom/android/systemui/qs/bar/VoIPTranslator;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 v0, 0x1

    .line 32
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_0
    const-string p1, "onChanged() - voip_translator_enable : "

    .line 37
    .line 38
    const-string v1, "VoIPTranslator"

    .line 39
    .line 40
    invoke-static {p1, v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->isVoIPEnabled:Z

    .line 44
    .line 45
    invoke-static {}, Lcom/android/systemui/qs/bar/VoIPTranslator;->updatePrerequisite()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->isPrerequisiteMet:Z

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->updateBarVisibilitiesRunnable:Ljava/lang/Runnable;

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method
