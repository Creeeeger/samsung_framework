.class public final Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field protected static final STALE:I = 0xb


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/SQSTileImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/SQSTileImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;->this$0:Lcom/android/systemui/qs/tileimpl/SQSTileImpl;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    const/16 v2, 0xd

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    if-ne v1, v2, :cond_1

    .line 9
    .line 10
    const-string v0, "handleScanStateChanged"

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;->this$0:Lcom/android/systemui/qs/tileimpl/SQSTileImpl;

    .line 13
    .line 14
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v3, v4

    .line 20
    :goto_0
    sget-object p1, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 21
    .line 22
    :goto_1
    iget-object p1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ge v4, v2, :cond_8

    .line 29
    .line 30
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    .line 35
    .line 36
    invoke-interface {p1, v3}, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;->onScanStateChanged(Z)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/16 v2, 0x63

    .line 43
    .line 44
    if-ne v1, v2, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;->this$0:Lcom/android/systemui/qs/tileimpl/SQSTileImpl;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    const-string v2, "handleShowDetail from Handler is called:++++ "

    .line 51
    .line 52
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    const-string v0, "handleShowDetail"

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;->this$0:Lcom/android/systemui/qs/tileimpl/SQSTileImpl;

    .line 58
    .line 59
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    move v3, v4

    .line 65
    :goto_2
    sget-object p1, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 66
    .line 67
    iget-object p1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    const-string v2, "handleShowDetail is called:++++ "

    .line 70
    .line 71
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :goto_3
    iget-object v2, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-ge v4, v5, :cond_8

    .line 81
    .line 82
    const-string v5, "onShowDetail(show) is called:++++ "

    .line 83
    .line 84
    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    .line 92
    .line 93
    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;->onShowDetail(Z)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v4, v4, 0x1

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_3
    const/16 v2, 0x67

    .line 100
    .line 101
    if-ne v1, v2, :cond_4

    .line 102
    .line 103
    const-string v0, "handleScrollToDetail"

    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;->this$0:Lcom/android/systemui/qs/tileimpl/SQSTileImpl;

    .line 106
    .line 107
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 108
    .line 109
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 110
    .line 111
    sget-object v3, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 112
    .line 113
    :goto_4
    iget-object v3, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-ge v4, v5, :cond_8

    .line 120
    .line 121
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    .line 126
    .line 127
    invoke-interface {v3, v2, p1}, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;->onScrollToDetail(II)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v4, v4, 0x1

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_4
    const/16 v2, 0x65

    .line 134
    .line 135
    if-ne v1, v2, :cond_5

    .line 136
    .line 137
    const-string v0, "handleUpdateDetail"

    .line 138
    .line 139
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;->this$0:Lcom/android/systemui/qs/tileimpl/SQSTileImpl;

    .line 140
    .line 141
    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    .line 142
    .line 143
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;->this$0:Lcom/android/systemui/qs/tileimpl/SQSTileImpl;

    .line 147
    .line 148
    :goto_5
    iget-object v1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-ge v4, v2, :cond_8

    .line 155
    .line 156
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    .line 161
    .line 162
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;->onUpdateDetail()V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v4, v4, 0x1

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_5
    const/16 v2, 0x64

    .line 169
    .line 170
    if-ne v1, v2, :cond_7

    .line 171
    .line 172
    const-string v0, "handleToggleStateChanged"

    .line 173
    .line 174
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;->this$0:Lcom/android/systemui/qs/tileimpl/SQSTileImpl;

    .line 175
    .line 176
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 177
    .line 178
    if-eqz p1, :cond_6

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_6
    move v3, v4

    .line 182
    :goto_6
    invoke-static {v1, v3}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->-$$Nest$mhandleToggleStateChanged(Lcom/android/systemui/qs/tileimpl/SQSTileImpl;Z)V

    .line 183
    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_7
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .line 188
    .line 189
    goto :goto_7

    .line 190
    :catchall_0
    move-exception p1

    .line 191
    const-string v1, "Error in "

    .line 192
    .line 193
    invoke-static {v1, v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;->this$0:Lcom/android/systemui/qs/tileimpl/SQSTileImpl;

    .line 198
    .line 199
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .line 203
    .line 204
    :cond_8
    :goto_7
    return-void
.end method
