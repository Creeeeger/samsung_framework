.class public final synthetic Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Ljava/lang/Runnable;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Landroid/view/KeyEvent;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v2, "sendThreeFingerGestureKeyEvent : "

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "OverviewProxyRecentsImpl"

    .line 48
    .line 49
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    const-string v1, "Failed to notify back action"

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    const-string v3, "OverviewProxyService"

    .line 60
    .line 61
    iget-object v4, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 62
    .line 63
    packed-switch p0, :pswitch_data_1

    .line 64
    .line 65
    .line 66
    goto :goto_4

    .line 67
    :pswitch_1
    const/4 p0, 0x1

    .line 68
    iput-boolean p0, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :pswitch_2
    iget-boolean p0, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    .line 72
    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    const-string p0, "notifyThreeFingerGestureBottom"

    .line 79
    .line 80
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    iput-boolean v2, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :pswitch_3
    iget-boolean p0, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    .line 87
    .line 88
    if-eqz p0, :cond_3

    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    :try_start_0
    iget-object p0, v4, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 94
    .line 95
    if-eqz p0, :cond_0

    .line 96
    .line 97
    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onOverviewToggle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catch_0
    move-exception p0

    .line 104
    invoke-static {v3, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .line 106
    .line 107
    :cond_0
    :goto_1
    iput-boolean v2, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :pswitch_4
    iget-boolean p0, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    .line 111
    .line 112
    if-eqz p0, :cond_3

    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    :try_start_1
    iget-object p0, v4, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 118
    .line 119
    if-eqz p0, :cond_1

    .line 120
    .line 121
    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onQuickScrubEnd()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catch_1
    move-exception p0

    .line 128
    invoke-static {v3, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .line 130
    .line 131
    :cond_1
    :goto_2
    iput-boolean v2, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :pswitch_5
    iget-boolean p0, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    .line 135
    .line 136
    if-eqz p0, :cond_3

    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    :try_start_2
    iget-object p0, v4, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 142
    .line 143
    if-eqz p0, :cond_2

    .line 144
    .line 145
    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onQuickScrubStart()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :catch_2
    move-exception p0

    .line 152
    invoke-static {v3, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .line 154
    .line 155
    :cond_2
    :goto_3
    iput-boolean v2, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    .line 156
    .line 157
    :cond_3
    :goto_4
    return-void

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :pswitch_data_1
    .packed-switch 0x43d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
