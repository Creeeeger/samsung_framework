.class public final Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mClockFaceShowing:Z

.field public final mCollapsePanel:Ljava/lang/Runnable;

.field public final mFilter:Landroid/content/IntentFilter;

.field public mIsInPocket:Z

.field public final mOnPocketModeChanged:Ljava/lang/Runnable;

.field public final mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/android/systemui/log/SecPanelLogger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mIsInPocket:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mClockFaceShowing:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mOnPocketModeChanged:Ljava/lang/Runnable;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mCollapsePanel:Ljava/lang/Runnable;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 14
    .line 15
    const-class p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 24
    .line 25
    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 34
    .line 35
    new-instance p1, Landroid/content/IntentFilter;

    .line 36
    .line 37
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 41
    .line 42
    const-string p0, "com.samsung.intent.action.KSO_SHOW_POPUP_SUB"

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string p0, "com.samsung.intent.action.KSO_CLOSE_POPUP_SUB"

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string p0, "com.samsung.android.app.aodservice.ACTION_COVER_HOME_QUICK_PANEL_TOUCH_AREA_CHANGED"

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "com.samsung.intent.action.KSO_CLOSE_POPUP_SUB"

    .line 13
    .line 14
    const-string v2, "com.samsung.intent.action.KSO_SHOW_POPUP_SUB"

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, -0x1

    .line 19
    sparse-switch v0, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v5, 0x3

    .line 31
    goto :goto_0

    .line 32
    :sswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v5, 0x2

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string v0, "com.samsung.android.app.aodservice.ACTION_COVER_HOME_QUICK_PANEL_TOUCH_AREA_CHANGED"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v5, v3

    .line 51
    goto :goto_0

    .line 52
    :sswitch_3
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move v5, v4

    .line 62
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mIsInPocket:Z

    .line 67
    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_5

    .line 80
    .line 81
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-nez p2, :cond_4

    .line 86
    .line 87
    move v3, p1

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 90
    .line 91
    const-string p2, "NO_POCKET_ACTION"

    .line 92
    .line 93
    check-cast p1, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    move v3, v4

    .line 99
    goto :goto_1

    .line 100
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 101
    .line 102
    const-string p2, "IN_POCKET_ACTION"

    .line 103
    .line 104
    check-cast p1, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mIsInPocket:Z

    .line 110
    .line 111
    if-eq p1, v3, :cond_6

    .line 112
    .line 113
    iput-boolean v3, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mIsInPocket:Z

    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mOnPocketModeChanged:Ljava/lang/Runnable;

    .line 116
    .line 117
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :pswitch_1
    const-string p1, "isSmallQuickPanelTouchArea"

    .line 122
    .line 123
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mClockFaceShowing:Z

    .line 128
    .line 129
    iget-object p1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 130
    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v0, "CLOCK_FACE: "

    .line 134
    .line 135
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-boolean p0, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mClockFaceShowing:Z

    .line 139
    .line 140
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    check-cast p1, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 148
    .line 149
    invoke-virtual {p1, p0}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 154
    .line 155
    const-string p2, "ACTION_CLOSE_SYSTEM_DIALOGS"

    .line 156
    .line 157
    check-cast p1, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 158
    .line 159
    invoke-virtual {p1, p2}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mCollapsePanel:Ljava/lang/Runnable;

    .line 163
    .line 164
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 165
    .line 166
    .line 167
    :cond_6
    :goto_2
    return-void

    .line 168
    nop

    .line 169
    :sswitch_data_0
    .sparse-switch
        -0x1808c879 -> :sswitch_3
        -0x124229c0 -> :sswitch_2
        -0xe3f3456 -> :sswitch_1
        0x6e0473a7 -> :sswitch_0
    .end sparse-switch

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mIsInPocket:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mIsInPocket:Z

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mOnPocketModeChanged:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
