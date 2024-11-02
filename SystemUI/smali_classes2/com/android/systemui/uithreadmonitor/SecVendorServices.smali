.class public final Lcom/android/systemui/uithreadmonitor/SecVendorServices;
.super Lcom/android/systemui/VendorServices;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

.field public looperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

.field public uiThreadMonitor:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/VendorServices;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final start()V
    .locals 15

    .line 1
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string/jumbo v3, "start"

    .line 6
    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/SecVendorServices;->uiThreadMonitor:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v4

    .line 17
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string v5, "debug.sysui.anr_detector.disabled"

    .line 21
    .line 22
    invoke-static {v5, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const-string v6, "UiThreadMonitor"

    .line 27
    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    const-string v7, "disabled"

    .line 31
    .line 32
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_1
    if-eqz v5, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    new-instance v5, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$start$1;

    .line 42
    .line 43
    invoke-direct {v5, v0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$start$1;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    .line 44
    .line 45
    .line 46
    iget-object v7, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->bgHandler:Landroid/os/Handler;

    .line 47
    .line 48
    iget-object v8, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 49
    .line 50
    invoke-virtual {v8, v5, v7}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    invoke-static {v2}, Landroid/view/ViewRootImpl;->setSafeScheduleTraversals(Z)V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v7

    .line 66
    iput-wide v7, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    .line 67
    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 69
    .line 70
    .line 71
    move-result-wide v7

    .line 72
    iput-wide v7, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAwakeTime:J

    .line 73
    .line 74
    :try_start_0
    iget-object v5, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->handler:Landroid/os/Handler;

    .line 75
    .line 76
    iget-object v7, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->asyncRunnable:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;

    .line 77
    .line 78
    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v5, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v7, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 86
    .line 87
    .line 88
    const-wide/16 v8, 0xbb8

    .line 89
    .line 90
    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 91
    .line 92
    .line 93
    iget-object v5, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->monitorThread$delegate:Lkotlin/Lazy;

    .line 94
    .line 95
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Ljava/lang/Thread;

    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 102
    .line 103
    .line 104
    iget-object v5, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 105
    .line 106
    invoke-virtual {v5, v6, v0}, Lcom/android/systemui/dump/DumpManager;->registerNsDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v5, "init exception: "

    .line 116
    .line 117
    invoke-static {v5, v0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    sget-boolean v0, Lcom/android/systemui/util/DeviceState;->IS_ALREADY_BOOTED:Z

    .line 121
    .line 122
    if-nez v0, :cond_5

    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/SecVendorServices;->looperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 125
    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    move-object v0, v4

    .line 130
    :goto_2
    const/4 v6, 0x7

    .line 131
    const-wide/16 v7, 0x1e

    .line 132
    .line 133
    const-wide/16 v9, 0x32

    .line 134
    .line 135
    const-wide/32 v11, 0xea60

    .line 136
    .line 137
    .line 138
    move-object v5, v0

    .line 139
    check-cast v5, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 140
    .line 141
    const/4 v13, 0x0

    .line 142
    const/4 v14, 0x0

    .line 143
    invoke-virtual/range {v5 .. v14}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->enable(IJJJZLkotlin/jvm/functions/Function2;)Z

    .line 144
    .line 145
    .line 146
    :cond_5
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    .line 147
    .line 148
    if-eqz v0, :cond_9

    .line 149
    .line 150
    sget-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    .line 151
    .line 152
    if-nez v0, :cond_9

    .line 153
    .line 154
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/SecVendorServices;->binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    .line 155
    .line 156
    if-eqz p0, :cond_6

    .line 157
    .line 158
    move-object v4, p0

    .line 159
    :cond_6
    check-cast v4, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    sget-wide v5, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->MAX_DURATION:J

    .line 165
    .line 166
    const-wide/16 v7, 0x0

    .line 167
    .line 168
    cmp-long p0, v5, v7

    .line 169
    .line 170
    if-eqz p0, :cond_8

    .line 171
    .line 172
    sget p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->MAX_BUF_COUNT:I

    .line 173
    .line 174
    if-nez p0, :cond_7

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_7
    const-string p0, "BinderCallMonitor"

    .line 178
    .line 179
    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    new-instance p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$1;

    .line 183
    .line 184
    invoke-direct {p0, v4}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$1;-><init>(Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;)V

    .line 185
    .line 186
    .line 187
    invoke-static {p0}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    .line 188
    .line 189
    .line 190
    :cond_8
    :goto_3
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    if-ne p0, v2, :cond_9

    .line 195
    .line 196
    invoke-virtual {v4, v1}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->startMonitoring$1(I)Z

    .line 197
    .line 198
    .line 199
    :cond_9
    return-void
.end method
