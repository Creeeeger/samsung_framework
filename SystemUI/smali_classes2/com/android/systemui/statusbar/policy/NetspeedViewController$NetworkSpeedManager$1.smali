.class public final Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBeforeSpd:J

.field public mBeforeVPNConnected:Z

.field public mSpd:J

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeVPNConnected:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-wide/16 v1, 0xbb8

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    if-eq p1, v0, :cond_7

    .line 8
    .line 9
    if-eq p1, v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    add-long/2addr v6, v4

    .line 22
    iput-wide v6, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mSpd:J

    .line 23
    .line 24
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sVpnConnected:Z

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    sget-object p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sActiveInterface:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    sget-object p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sActiveInterface:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v6

    .line 40
    add-long/2addr v6, v4

    .line 41
    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mSpd:J

    .line 42
    .line 43
    sub-long/2addr v4, v6

    .line 44
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mSpd:J

    .line 45
    .line 46
    :cond_1
    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mSpd:J

    .line 47
    .line 48
    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeSpd:J

    .line 49
    .line 50
    sub-long v6, v4, v6

    .line 51
    .line 52
    long-to-float p1, v6

    .line 53
    const/high16 v0, 0x44800000    # 1024.0f

    .line 54
    .line 55
    div-float/2addr p1, v0

    .line 56
    const/high16 v0, 0x40400000    # 3.0f

    .line 57
    .line 58
    div-float/2addr p1, v0

    .line 59
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeSpd:J

    .line 60
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeVPNConnected:Z

    .line 62
    .line 63
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sVpnConnected:Z

    .line 64
    .line 65
    if-eq v0, v4, :cond_2

    .line 66
    .line 67
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeVPNConnected:Z

    .line 68
    .line 69
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 70
    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :cond_2
    float-to-double v4, p1

    .line 75
    const-wide/16 v6, 0x0

    .line 76
    .line 77
    cmpg-double v0, v4, v6

    .line 78
    .line 79
    if-gtz v0, :cond_3

    .line 80
    .line 81
    const-string p1, "0\nK/s"

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 85
    .line 86
    cmpg-double v0, v4, v6

    .line 87
    .line 88
    if-gez v0, :cond_4

    .line 89
    .line 90
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v0, "%.2f\nK/s"

    .line 99
    .line 100
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    cmpg-double v0, v4, v6

    .line 111
    .line 112
    if-gez v0, :cond_5

    .line 113
    .line 114
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string v0, "%.1f\nK/s"

    .line 123
    .line 124
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    goto :goto_0

    .line 129
    :cond_5
    const-wide/high16 v6, 0x40f9000000000000L    # 102400.0

    .line 130
    .line 131
    cmpg-double p1, v4, v6

    .line 132
    .line 133
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 134
    .line 135
    if-gez p1, :cond_6

    .line 136
    .line 137
    div-double/2addr v4, v6

    .line 138
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const-string v0, "%.2f\nM/s"

    .line 147
    .line 148
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    goto :goto_0

    .line 153
    :cond_6
    div-double/2addr v4, v6

    .line 154
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    const-string v0, "%.1f\nM/s"

    .line 163
    .line 164
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/util/Observable;->countObservers()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-lez v0, :cond_9

    .line 175
    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    .line 177
    .line 178
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->access$100(Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    .line 182
    .line 183
    invoke-virtual {v0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_7
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    .line 191
    .line 192
    .line 193
    move-result-wide v4

    .line 194
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    .line 195
    .line 196
    .line 197
    move-result-wide v6

    .line 198
    add-long/2addr v6, v4

    .line 199
    iput-wide v6, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeSpd:J

    .line 200
    .line 201
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sVpnConnected:Z

    .line 202
    .line 203
    if-eqz p1, :cond_8

    .line 204
    .line 205
    sget-object p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sActiveInterface:Ljava/lang/String;

    .line 206
    .line 207
    invoke-static {p1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    .line 208
    .line 209
    .line 210
    move-result-wide v4

    .line 211
    sget-object p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sActiveInterface:Ljava/lang/String;

    .line 212
    .line 213
    invoke-static {p1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    .line 214
    .line 215
    .line 216
    move-result-wide v6

    .line 217
    add-long/2addr v6, v4

    .line 218
    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeSpd:J

    .line 219
    .line 220
    sub-long/2addr v4, v6

    .line 221
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeSpd:J

    .line 222
    .line 223
    :cond_8
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sVpnConnected:Z

    .line 224
    .line 225
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeVPNConnected:Z

    .line 226
    .line 227
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 228
    .line 229
    .line 230
    :cond_9
    :goto_1
    return-void
.end method
