.class public final Lcom/android/systemui/settings/multisim/MultiSIMController$8;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const-string/jumbo p1, "select_icon_1"

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const-string v1, "MultiSIMController"

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 24
    .line 25
    iget-object v0, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 28
    .line 29
    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p2, p1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    aput p1, v0, v2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 42
    .line 43
    iget-object p2, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 44
    .line 45
    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 46
    .line 47
    aget p2, p2, v2

    .line 48
    .line 49
    if-ltz p2, :cond_1

    .line 50
    .line 51
    iget p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMaxSimIconNumber:I

    .line 52
    .line 53
    if-lt p2, p1, :cond_6

    .line 54
    .line 55
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p2, "mSimIconAndNameObserver onChange() SimImageIdx[0] = "

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 63
    .line 64
    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 65
    .line 66
    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 67
    .line 68
    aget p2, p2, v2

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 85
    .line 86
    aput v2, p1, v2

    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :cond_2
    const-string/jumbo p1, "select_name_1"

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 104
    .line 105
    iget-object v0, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 106
    .line 107
    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 108
    .line 109
    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-static {p2, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    aput-object p1, v0, v2

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    const-string/jumbo p1, "select_icon_2"

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    const/4 v2, 0x1

    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 137
    .line 138
    iget-object v0, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 141
    .line 142
    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 143
    .line 144
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-static {p2, p1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    aput p1, v0, v2

    .line 153
    .line 154
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 155
    .line 156
    iget-object p2, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 157
    .line 158
    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 159
    .line 160
    aget p2, p2, v2

    .line 161
    .line 162
    if-ltz p2, :cond_4

    .line 163
    .line 164
    iget p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMaxSimIconNumber:I

    .line 165
    .line 166
    if-lt p2, p1, :cond_6

    .line 167
    .line 168
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string p2, "mSimIconAndNameObserver onChange() SimImageIdx[1] = "

    .line 171
    .line 172
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 176
    .line 177
    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 178
    .line 179
    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 180
    .line 181
    aget p2, p2, v2

    .line 182
    .line 183
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 194
    .line 195
    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 196
    .line 197
    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 198
    .line 199
    aput v2, p1, v2

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_5
    const-string/jumbo p1, "select_name_2"

    .line 203
    .line 204
    .line 205
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-eqz p2, :cond_6

    .line 214
    .line 215
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 216
    .line 217
    iget-object v0, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 218
    .line 219
    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 220
    .line 221
    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 222
    .line 223
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-static {p2, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    aput-object p1, v0, v2

    .line 232
    .line 233
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 234
    .line 235
    sget-object p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    .line 238
    .line 239
    .line 240
    return-void
.end method
