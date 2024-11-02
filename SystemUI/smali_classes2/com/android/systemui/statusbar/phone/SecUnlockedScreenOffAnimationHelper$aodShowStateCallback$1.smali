.class public final Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$aodShowStateCallback$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$aodShowStateCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

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
    .locals 7

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-string v0, "aod_show_state"

    .line 4
    .line 5
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$aodShowStateCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->needUpdateWallpaperVisibility:Z

    .line 30
    .line 31
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->deviceInteractive:Z

    .line 32
    .line 33
    const-string v4, "aodShowStateCallback.isAODShown="

    .line 34
    .line 35
    const-string v5, ", settingsHelper.isAODShown="

    .line 36
    .line 37
    const-string v6, ", needUpdateWallpaperVisibility="

    .line 38
    .line 39
    invoke-static {v4, p1, v5, v1, v6}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v1, " deviceInteractive="

    .line 44
    .line 45
    const-string v4, "UnlockedScreenOffAnimation"

    .line 46
    .line 47
    invoke-static {p1, v2, v1, v3, v4}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->deviceInteractive:Z

    .line 51
    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    if-nez p1, :cond_0

    .line 72
    .line 73
    move-object p1, v1

    .line 74
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    .line 77
    .line 78
    const v2, 0x3f19999a    # 0.6f

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/LightRevealScrim;->setAlpha(F)V

    .line 82
    .line 83
    .line 84
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->needUpdateWallpaperVisibility:Z

    .line 85
    .line 86
    if-nez p1, :cond_1

    .line 87
    .line 88
    const/4 p1, 0x0

    .line 89
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->setCapturedViewVisibility(ZLandroid/graphics/Bitmap;)V

    .line 90
    .line 91
    .line 92
    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->needUpdateWallpaperVisibility:Z

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    xor-int/2addr p1, v0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->updateWallpaperVisibility(Z)V

    .line 101
    .line 102
    .line 103
    :cond_1
    return-void
.end method
