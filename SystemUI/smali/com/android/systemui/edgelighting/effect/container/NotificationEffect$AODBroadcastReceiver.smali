.class public final Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "BR_TSP_EVENT :onReceive : return: isInteractive"

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "info"

    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string/jumbo v3, "receive: "

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " info : "

    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    const/16 p1, 0xb

    .line 62
    .line 63
    if-eq v0, p1, :cond_1

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    const-string p1, "BR_TSP_EVENT :onReceive : not double tap"

    .line 70
    .line 71
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    const-string p1, "location"

    .line 76
    .line 77
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    array-length p2, p1

    .line 84
    const/4 v0, 0x2

    .line 85
    if-eq p2, v0, :cond_2

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 89
    .line 90
    iget-object p2, p2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v1, "BR_TSP_EVENT : TOUCHED "

    .line 95
    .line 96
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->getToastRectCalculated()Landroid/graphics/Rect;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    aget v2, p1, v1

    .line 110
    .line 111
    float-to-int v2, v2

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v2, " : "

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const/4 v2, 0x1

    .line 121
    aget v3, p1, v2

    .line 122
    .line 123
    float-to-int v3, v3

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    iget-object p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->getToastRectCalculated()Landroid/graphics/Rect;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    aget v0, p1, v1

    .line 141
    .line 142
    float-to-int v0, v0

    .line 143
    aget p1, p1, v2

    .line 144
    .line 145
    float-to-int p1, p1

    .line 146
    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_3

    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->launchPendingIntent()V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 159
    .line 160
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 161
    .line 162
    const-string p1, "BR_TSP_EVENT :onReceive : out of touch region"

    .line 163
    .line 164
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    :goto_0
    return-void

    .line 168
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 171
    .line 172
    const-string p1, "BR_TSP_EVENT :onReceive : There is no [x,y position] value"

    .line 173
    .line 174
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    return-void
.end method
