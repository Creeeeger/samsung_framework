.class public final Lcom/android/systemui/plank/monitor/TestInputHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plank/monitor/TestInputMonitor$EventHandler;


# instance fields
.field public final displaySize:Landroid/graphics/Point;

.field public final mContext:Landroid/content/Context;

.field public final mEventHistory:Ljava/util/List;

.field public mLastEventTime:J

.field public mStartEventTime:J

.field public mStartX:I

.field public mStartY:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/plank/monitor/TestInputHandler$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/plank/monitor/TestInputHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Point;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->displaySize:Landroid/graphics/Point;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    .line 19
    .line 20
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/view/SemWindowManager;->getInitialDisplaySize(Landroid/graphics/Point;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final addEvent(Lcom/android/systemui/plank/monitor/EventData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    .line 5
    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0

    .line 15
    throw p0
.end method

.method public final onEventHandler(Landroid/view/MotionEvent;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    float-to-int v7, v0

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    float-to-int v8, v0

    .line 26
    iget v0, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartX:I

    .line 27
    .line 28
    sub-int/2addr v0, v7

    .line 29
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget v3, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartY:I

    .line 34
    .line 35
    sub-int v3, v8, v3

    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-gt v0, v1, :cond_5

    .line 42
    .line 43
    if-gt v3, v1, :cond_5

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 56
    .line 57
    const/4 v1, 0x2

    .line 58
    if-ne v0, v1, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v2, 0x0

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->displaySize:Landroid/graphics/Point;

    .line 63
    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    iget v1, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartX:I

    .line 67
    .line 68
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 69
    .line 70
    if-gt v1, v3, :cond_3

    .line 71
    .line 72
    iget v1, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartY:I

    .line 73
    .line 74
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 75
    .line 76
    if-gt v1, v3, :cond_3

    .line 77
    .line 78
    :cond_2
    if-eqz v2, :cond_4

    .line 79
    .line 80
    iget v1, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartX:I

    .line 81
    .line 82
    iget v2, v0, Landroid/graphics/Point;->y:I

    .line 83
    .line 84
    if-gt v1, v2, :cond_3

    .line 85
    .line 86
    iget v1, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartY:I

    .line 87
    .line 88
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 89
    .line 90
    if-le v1, v0, :cond_4

    .line 91
    .line 92
    :cond_3
    sget-object v0, Lcom/android/systemui/plank/monitor/EventFactory;->Companion:Lcom/android/systemui/plank/monitor/EventFactory$Companion;

    .line 93
    .line 94
    iget v5, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartX:I

    .line 95
    .line 96
    iget v6, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartY:I

    .line 97
    .line 98
    const/4 v7, 0x1

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    new-instance v0, Lcom/android/systemui/plank/monitor/EventData;

    .line 103
    .line 104
    sget-object v2, Lcom/android/systemui/plank/monitor/EventType;->SWIPE:Lcom/android/systemui/plank/monitor/EventType;

    .line 105
    .line 106
    const/4 v8, 0x0

    .line 107
    move-object v1, v0

    .line 108
    move v3, v5

    .line 109
    move v4, v6

    .line 110
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/plank/monitor/EventData;-><init>(Lcom/android/systemui/plank/monitor/EventType;IIIIII)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lcom/android/systemui/plank/monitor/TestInputHandler;->addEvent(Lcom/android/systemui/plank/monitor/EventData;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    sget-object v0, Lcom/android/systemui/plank/monitor/EventFactory;->Companion:Lcom/android/systemui/plank/monitor/EventFactory$Companion;

    .line 118
    .line 119
    iget v3, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartX:I

    .line 120
    .line 121
    iget v4, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartY:I

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    new-instance v0, Lcom/android/systemui/plank/monitor/EventData;

    .line 127
    .line 128
    sget-object v2, Lcom/android/systemui/plank/monitor/EventType;->TOUCH:Lcom/android/systemui/plank/monitor/EventType;

    .line 129
    .line 130
    const/4 v5, 0x0

    .line 131
    const/4 v6, 0x0

    .line 132
    const/4 v7, 0x0

    .line 133
    const/4 v8, 0x0

    .line 134
    move-object v1, v0

    .line 135
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/plank/monitor/EventData;-><init>(Lcom/android/systemui/plank/monitor/EventType;IIIIII)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v0}, Lcom/android/systemui/plank/monitor/TestInputHandler;->addEvent(Lcom/android/systemui/plank/monitor/EventData;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 143
    .line 144
    .line 145
    move-result-wide v0

    .line 146
    iget-wide v2, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartEventTime:J

    .line 147
    .line 148
    sub-long/2addr v0, v2

    .line 149
    const/16 v2, 0x19

    .line 150
    .line 151
    int-to-long v2, v2

    .line 152
    div-long/2addr v0, v2

    .line 153
    long-to-int v9, v0

    .line 154
    sget-object v0, Lcom/android/systemui/plank/monitor/EventFactory;->Companion:Lcom/android/systemui/plank/monitor/EventFactory$Companion;

    .line 155
    .line 156
    iget v5, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartX:I

    .line 157
    .line 158
    iget v6, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartY:I

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    new-instance v0, Lcom/android/systemui/plank/monitor/EventData;

    .line 164
    .line 165
    sget-object v4, Lcom/android/systemui/plank/monitor/EventType;->SWIPE:Lcom/android/systemui/plank/monitor/EventType;

    .line 166
    .line 167
    const/4 v10, 0x0

    .line 168
    move-object v3, v0

    .line 169
    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/plank/monitor/EventData;-><init>(Lcom/android/systemui/plank/monitor/EventType;IIIIII)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v0}, Lcom/android/systemui/plank/monitor/TestInputHandler;->addEvent(Lcom/android/systemui/plank/monitor/EventData;)V

    .line 173
    .line 174
    .line 175
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 176
    .line 177
    .line 178
    move-result-wide v0

    .line 179
    iput-wide v0, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mLastEventTime:J

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    float-to-int v0, v0

    .line 187
    iput v0, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartX:I

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    float-to-int v0, v0

    .line 194
    iput v0, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartY:I

    .line 195
    .line 196
    iget-wide v2, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mLastEventTime:J

    .line 197
    .line 198
    const-wide/16 v4, 0x0

    .line 199
    .line 200
    cmp-long v0, v2, v4

    .line 201
    .line 202
    if-lez v0, :cond_7

    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 205
    .line 206
    .line 207
    move-result-wide v2

    .line 208
    iget-wide v4, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mLastEventTime:J

    .line 209
    .line 210
    sub-long/2addr v2, v4

    .line 211
    long-to-int v11, v2

    .line 212
    if-lt v11, v1, :cond_7

    .line 213
    .line 214
    sget-object v0, Lcom/android/systemui/plank/monitor/EventFactory;->Companion:Lcom/android/systemui/plank/monitor/EventFactory$Companion;

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    new-instance v0, Lcom/android/systemui/plank/monitor/EventData;

    .line 220
    .line 221
    sget-object v5, Lcom/android/systemui/plank/monitor/EventType;->SLEEP:Lcom/android/systemui/plank/monitor/EventType;

    .line 222
    .line 223
    const/4 v6, 0x0

    .line 224
    const/4 v7, 0x0

    .line 225
    const/4 v8, 0x0

    .line 226
    const/4 v9, 0x0

    .line 227
    const/4 v10, 0x0

    .line 228
    move-object v4, v0

    .line 229
    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/plank/monitor/EventData;-><init>(Lcom/android/systemui/plank/monitor/EventType;IIIIII)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v0}, Lcom/android/systemui/plank/monitor/TestInputHandler;->addEvent(Lcom/android/systemui/plank/monitor/EventData;)V

    .line 233
    .line 234
    .line 235
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 236
    .line 237
    .line 238
    move-result-wide v0

    .line 239
    iput-wide v0, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartEventTime:J

    .line 240
    .line 241
    :goto_2
    return-void
.end method
