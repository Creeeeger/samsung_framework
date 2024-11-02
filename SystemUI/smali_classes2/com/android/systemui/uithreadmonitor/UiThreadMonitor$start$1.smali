.class public final Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$start$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$start$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$start$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-boolean p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->DEBUG_LOG:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->display$delegate:Lkotlin/Lazy;

    .line 13
    .line 14
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/view/Display;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastDisplayState:I

    .line 25
    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    iput p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastDisplayState:I

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    const/4 v1, 0x0

    .line 33
    if-ne p1, v0, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 36
    .line 37
    const/16 v3, 0x8

    .line 38
    .line 39
    const-wide/16 v4, 0x1

    .line 40
    .line 41
    const-wide/16 v6, 0x1

    .line 42
    .line 43
    const-wide/16 v8, 0x2710

    .line 44
    .line 45
    const/4 v10, 0x1

    .line 46
    iget-object v11, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->onChoreographerLog:Lkotlin/jvm/functions/Function2;

    .line 47
    .line 48
    move-object v2, p1

    .line 49
    check-cast v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 50
    .line 51
    invoke-virtual/range {v2 .. v11}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->enable(IJJJZLkotlin/jvm/functions/Function2;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    iput-wide v2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerLogTime:J

    .line 62
    .line 63
    iput v1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerLogCount:I

    .line 64
    .line 65
    iput v1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerTotalDrawCount:I

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 69
    .line 70
    const/16 v2, 0x8

    .line 71
    .line 72
    check-cast p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->disable(I)Z

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_0
    sget-boolean p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->ENABLE_PAUSE:Z

    .line 78
    .line 79
    if-nez p1, :cond_4

    .line 80
    .line 81
    iput-boolean v1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    iget p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastDisplayState:I

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    if-eq p1, v2, :cond_5

    .line 88
    .line 89
    if-eq p1, v0, :cond_5

    .line 90
    .line 91
    iget-boolean p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    .line 92
    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    invoke-virtual {p0, v2}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->setAwake(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    move v1, v2

    .line 100
    :cond_6
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    .line 101
    .line 102
    iget-boolean p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    .line 103
    .line 104
    const-string/jumbo p1, "updatePause isPaused="

    .line 105
    .line 106
    .line 107
    invoke-static {p1, p0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    sget-boolean p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->DEBUG_LOG:Z

    .line 112
    .line 113
    if-eqz p1, :cond_7

    .line 114
    .line 115
    const-string p1, "UiThreadMonitor"

    .line 116
    .line 117
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_7
    :goto_2
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method
