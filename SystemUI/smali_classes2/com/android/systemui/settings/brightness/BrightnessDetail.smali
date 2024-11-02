.class public final Lcom/android/systemui/settings/brightness/BrightnessDetail;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public divider:Landroid/view/View;

.field public mAutoBrightnessContainer:Landroid/widget/LinearLayout;

.field public final mAutoBrightnessDelegate:Lcom/android/systemui/settings/brightness/BrightnessDetail$5;

.field public mAutoBrightnessSummary:Landroid/widget/TextView;

.field public mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field public final mBrightnessBarPrefEditor:Landroid/content/SharedPreferences$Editor;

.field public mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

.field public final mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

.field public final mBrightnessDetailAdapter:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

.field public final mContext:Landroid/content/Context;

.field public mExtraBrightnessContainer:Landroid/widget/LinearLayout;

.field public final mExtraBrightnessDelegate:Lcom/android/systemui/settings/brightness/BrightnessDetail$6;

.field public mExtraBrightnessSummary:Landroid/widget/TextView;

.field public mExtraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field public final mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;


# direct methods
.method public static -$$Nest$msetExtraBrightnessLayoutVisibilityLogic(Lcom/android/systemui/settings/brightness/BrightnessDetail;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->divider:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    move v3, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v2

    .line 11
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessContainer:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v1, v2

    .line 20
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static -$$Nest$msetExtraBrightnessLogic(Lcom/android/systemui/settings/brightness/BrightnessDetail;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "setExtraBrightness : "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "BrightenssDetail"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string/jumbo v0, "screen_extra_brightness"

    .line 31
    .line 32
    .line 33
    const/4 v1, -0x2

    .line 34
    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelController;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessDetailAdapter:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 10
    .line 11
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessDetail$5;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$5;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessDelegate:Lcom/android/systemui/settings/brightness/BrightnessDetail$5;

    .line 17
    .line 18
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessDetail$6;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$6;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessDelegate:Lcom/android/systemui/settings/brightness/BrightnessDetail$6;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    .line 30
    .line 31
    const-string/jumbo p2, "quick_pref"

    .line 32
    .line 33
    .line 34
    const/4 p3, 0x0

    .line 35
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string/jumbo v1, "screen_brightness_mode"

    .line 46
    .line 47
    .line 48
    const/4 v2, -0x2

    .line 49
    invoke-static {v0, v1, p3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x1

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    move v0, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v0, p3

    .line 59
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const-string v4, "display_outdoor_mode"

    .line 64
    .line 65
    invoke-static {v3, v4, p3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    move p3, v1

    .line 72
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/util/DeviceType;->isLightSensorSupported(Landroid/content/Context;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move v0, p3

    .line 80
    :goto_1
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessBarPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    const-string p0, "QPDS1006"

    .line 87
    .line 88
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 89
    .line 90
    .line 91
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    .line 93
    .line 94
    :cond_3
    return-void
.end method


# virtual methods
.method public final isSwitchChecked()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "screen_brightness_mode"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, -0x2

    .line 12
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v2

    .line 22
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const-string v5, "display_outdoor_mode"

    .line 29
    .line 30
    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    move v2, v1

    .line 37
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {p0}, Lcom/android/systemui/util/DeviceType;->isLightSensorSupported(Landroid/content/Context;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v0, v2

    .line 47
    :goto_1
    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
