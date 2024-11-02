.class public final Lcom/android/systemui/qs/DNDDetailItems$Adapter$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

.field public final synthetic val$item:Lcom/android/systemui/qs/DNDDetailItems$Item;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/DNDDetailItems$Adapter;Lcom/android/systemui/qs/DNDDetailItems$Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter$1;->val$item:Lcom/android/systemui/qs/DNDDetailItems$Item;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/qs/DNDDetailItems;->mCallback:Lcom/android/systemui/qs/DNDDetailItems$Callback;

    .line 6
    .line 7
    if-eqz p1, :cond_7

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter$1;->val$item:Lcom/android/systemui/qs/DNDDetailItems$Item;

    .line 10
    .line 11
    check-cast p1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mItemsList:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    move v2, v1

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/systemui/qs/DNDDetailItems$Item;

    .line 32
    .line 33
    invoke-virtual {p1, v3, v1}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->updateDetailItem(Lcom/android/systemui/qs/DNDDetailItems$Item;Z)V

    .line 34
    .line 35
    .line 36
    iget-object v3, v3, Lcom/android/systemui/qs/DNDDetailItems$Item;->line1:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/systemui/qs/DNDDetailItems$Item;->line1:Ljava/lang/String;

    .line 39
    .line 40
    if-ne v3, v4, :cond_0

    .line 41
    .line 42
    iget-object v3, p1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 43
    .line 44
    iput v2, v3, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSelectedItem:I

    .line 45
    .line 46
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x1

    .line 50
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->updateDetailItem(Lcom/android/systemui/qs/DNDDetailItems$Item;Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->updateDndActivationItems(Z)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 57
    .line 58
    iget v2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSelectedItem:I

    .line 59
    .line 60
    const-string v3, ""

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    const-string v5, "DndTile"

    .line 64
    .line 65
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 66
    .line 67
    if-eqz v2, :cond_5

    .line 68
    .line 69
    const-string/jumbo v7, "zen_duration"

    .line 70
    .line 71
    .line 72
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    if-eq v2, v0, :cond_3

    .line 75
    .line 76
    const/4 v9, 0x2

    .line 77
    if-eq v2, v9, :cond_3

    .line 78
    .line 79
    const/4 v9, 0x3

    .line 80
    if-eq v2, v9, :cond_3

    .line 81
    .line 82
    const/4 v9, 0x4

    .line 83
    if-eq v2, v9, :cond_2

    .line 84
    .line 85
    const/4 v9, 0x5

    .line 86
    if-eq v2, v9, :cond_2

    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :cond_2
    check-cast v6, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 91
    .line 92
    invoke-virtual {v6, v0, v4, v5}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0, v7, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    .line 101
    .line 102
    iput-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    sub-int/2addr v2, v0

    .line 106
    int-to-double v2, v2

    .line 107
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 108
    .line 109
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    double-to-int v2, v2

    .line 114
    sget v3, Lcom/android/systemui/qs/tiles/DndTile;->mZenOneHourSession:I

    .line 115
    .line 116
    mul-int/2addr v3, v2

    .line 117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const/16 v4, 0xb

    .line 122
    .line 123
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    const/16 v9, 0xc

    .line 128
    .line 129
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    mul-int/lit8 v4, v4, 0x3c

    .line 134
    .line 135
    add-int/2addr v4, v2

    .line 136
    add-int/2addr v4, v3

    .line 137
    int-to-long v9, v4

    .line 138
    const-wide/16 v11, 0x5a0

    .line 139
    .line 140
    cmp-long v2, v9, v11

    .line 141
    .line 142
    if-ltz v2, :cond_4

    .line 143
    .line 144
    sub-long/2addr v9, v11

    .line 145
    invoke-static {v8, v9, v10}, Lcom/android/systemui/qs/tiles/DndTile;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    const v4, 0x7f130f3c

    .line 150
    .line 151
    .line 152
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v8, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    iput-object v2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_4
    invoke-static {v8, v9, v10}, Lcom/android/systemui/qs/tiles/DndTile;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    const v4, 0x7f130f3b

    .line 168
    .line 169
    .line 170
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v8, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    iput-object v2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    .line 179
    .line 180
    :goto_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    invoke-static {v8, v3, v2, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    iget-object v2, v2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 189
    .line 190
    check-cast v6, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 191
    .line 192
    invoke-virtual {v6, v0, v2, v5}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-static {v0, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    .line 201
    .line 202
    iget v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSelectedItem:I

    .line 203
    .line 204
    iput v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mLastDndDurationSelected:I

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_5
    check-cast v6, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 208
    .line 209
    invoke-virtual {v6, v1, v4, v5}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iput-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    .line 213
    .line 214
    :goto_2
    iget v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSelectedItem:I

    .line 215
    .line 216
    if-eqz v0, :cond_6

    .line 217
    .line 218
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mIsSettingsUpdated:Z

    .line 219
    .line 220
    :cond_6
    iget-object p0, p1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 221
    .line 222
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mSecQSDetail:Lcom/android/systemui/qs/SecQSDetail;

    .line 223
    .line 224
    if-eqz p0, :cond_7

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->onSummaryUpdated()V

    .line 227
    .line 228
    .line 229
    :cond_7
    return-void
.end method
