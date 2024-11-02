.class public final Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic $updateIsDLNAEnabled:Ljava/util/function/Consumer;

.field public final synthetic $updateIsSupportTvVolumeControl:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/volume/util/BroadcastReceiverManager;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Lcom/android/systemui/volume/util/BroadcastReceiverManager;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/systemui/volume/util/BroadcastReceiverManager;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;->$updateIsSupportTvVolumeControl:Ljava/util/function/Consumer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;->this$0:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;->$updateIsDLNAEnabled:Ljava/util/function/Consumer;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_8

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const v1, -0x3f4ab253

    .line 12
    .line 13
    .line 14
    const-string v2, "onReceive : SmartView action="

    .line 15
    .line 16
    const-string v3, "BroadcastManager"

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    if-eq v0, v1, :cond_4

    .line 21
    .line 22
    const v1, 0x676d493f

    .line 23
    .line 24
    .line 25
    if-eq v0, v1, :cond_3

    .line 26
    .line 27
    const v1, 0x706b3984

    .line 28
    .line 29
    .line 30
    if-eq v0, v1, :cond_0

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_0
    const-string v0, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_1
    const-string/jumbo p1, "status"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-ne p1, v4, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v4, v5

    .line 55
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;->$updateIsDLNAEnabled:Ljava/util/function/Consumer;

    .line 56
    .line 57
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;->this$0:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 67
    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p1, ", dlnaEnabled="

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_3
    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_VOLUME_SUPPORT_CHANGED"

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_5

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_4
    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_5

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    const-string/jumbo p1, "state"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    const-string v0, "isSupportDisplayVolumeControl"

    .line 122
    .line 123
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iget-object v1, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;->$updateIsSupportTvVolumeControl:Ljava/util/function/Consumer;

    .line 128
    .line 129
    if-ne p1, v4, :cond_6

    .line 130
    .line 131
    if-eqz v0, :cond_6

    .line 132
    .line 133
    move v6, v4

    .line 134
    goto :goto_1

    .line 135
    :cond_6
    move v6, v5

    .line 136
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-interface {v1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;->this$0:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    .line 144
    .line 145
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 146
    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    if-ne p1, v4, :cond_7

    .line 152
    .line 153
    if-eqz v0, :cond_7

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_7
    move v4, v5

    .line 157
    :goto_2
    const-string v1, ", state="

    .line 158
    .line 159
    const-string v5, ", isSupportDisplayVolumeControl="

    .line 160
    .line 161
    invoke-static {v2, p2, v1, p1, v5}, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const-string p2, ", ret="

    .line 166
    .line 167
    invoke-static {p1, v0, p2, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_8
    :goto_3
    return-void
.end method
