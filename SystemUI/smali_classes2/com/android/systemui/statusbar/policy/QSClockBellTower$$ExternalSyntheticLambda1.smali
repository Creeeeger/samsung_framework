.class public final synthetic Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

.field public final synthetic f$1:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final synthetic f$2:Lcom/android/systemui/keyguard/ScreenLifecycle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/keyguard/ScreenLifecycle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onBootAnimationFinished()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mTimeBroadcastReceiver:Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/os/Handler;

    .line 15
    .line 16
    new-instance v3, Landroid/content/IntentFilter;

    .line 17
    .line 18
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v4, "android.intent.action.TIME_TICK"

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v4, "android.intent.action.TIME_SET"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    .line 37
    .line 38
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    .line 42
    .line 43
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v5, "android.intent.action.USER_SWITCHED"

    .line 47
    .line 48
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-boolean v5, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR:Z

    .line 52
    .line 53
    if-eqz v5, :cond_0

    .line 54
    .line 55
    const-string v5, "android.intent.action.DATE_CHANGED"

    .line 56
    .line 57
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 61
    .line 62
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 63
    .line 64
    invoke-virtual {v6, v1, v3, v2, v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    .line 65
    .line 66
    .line 67
    new-instance v3, Landroid/content/IntentFilter;

    .line 68
    .line 69
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v1, v3, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->updateTimeZone(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;

    .line 90
    .line 91
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower()V

    .line 100
    .line 101
    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v1, "First TimeZoneChange"

    .line 105
    .line 106
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v1, " (currentTime:"

    .line 110
    .line 111
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 115
    .line 116
    .line 117
    move-result-wide v1

    .line 118
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mFirstTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    .line 122
    .line 123
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    .line 124
    .line 125
    const-string v2, ")"

    .line 126
    .line 127
    if-eqz v1, :cond_1

    .line 128
    .line 129
    const-string v1, ", Calendar.getTime():"

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", Calendar.getTimeZone():"

    .line 144
    .line 145
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    :cond_1
    iget-object p0, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    .line 161
    .line 162
    if-eqz p0, :cond_2

    .line 163
    .line 164
    iget-object p0, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mFirstTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v1, " FIRST TIME BELL: "

    .line 167
    .line 168
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    :cond_2
    iget-object p0, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockQuickStarHelper:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

    .line 181
    .line 182
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 183
    .line 184
    check-cast v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 185
    .line 186
    const-string v3, "QSClockBellTower"

    .line 187
    .line 188
    invoke-virtual {v1, v3, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    .line 189
    .line 190
    .line 191
    const-class v1, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 192
    .line 193
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    check-cast v1, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 198
    .line 199
    new-instance v4, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$1;

    .line 200
    .line 201
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$1;-><init>(Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v4}, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->registerTicket(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$SecPanelExpansionStateTicket;)V

    .line 205
    .line 206
    .line 207
    new-instance p0, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v1, "init("

    .line 210
    .line 211
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    return-void
.end method
