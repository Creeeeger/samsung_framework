.class public final synthetic Lcom/android/systemui/qp/SubroomSoundSettingsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/SubroomSoundSettingsView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;

    .line 2
    .line 3
    sget p1, Lcom/android/systemui/qp/SubroomSoundSettingsView;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 15
    .line 16
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isSoundModeTileBlocked()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string p0, "SubroomSoundSettingsView"

    .line 25
    .line 26
    const-string p1, "Subscreen Soundmode tile not available by KnoxStateMonitor."

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    sget-object v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 44
    .line 45
    :cond_1
    sget-object p1, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/4 v1, 0x0

    .line 53
    if-eq p1, v0, :cond_5

    .line 54
    .line 55
    const/4 v2, 0x2

    .line 56
    if-eq p1, v2, :cond_4

    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v3, "all_sound_off"

    .line 65
    .line 66
    invoke-static {p1, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-ne p1, v0, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    move v0, v1

    .line 74
    :goto_0
    if-eqz v0, :cond_3

    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/android/systemui/util/DeviceType;->isVibratorSupported(Landroid/content/Context;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move v1, v2

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/android/systemui/util/DeviceType;->isVibratorSupported(Landroid/content/Context;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    sget-object p1, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 94
    .line 95
    if-nez p1, :cond_6

    .line 96
    .line 97
    new-instance p1, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 98
    .line 99
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    sput-object p1, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 103
    .line 104
    :cond_6
    sget-object p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->setRingerModeInternal(I)V

    .line 107
    .line 108
    .line 109
    :goto_2
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 110
    .line 111
    const-string p1, "QPBE2002"

    .line 112
    .line 113
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method
