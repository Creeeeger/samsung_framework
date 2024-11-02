.class public abstract Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService;


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.sivs.ai.sdkcommon.language.ISmartReplyService"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7

    .line 1
    const-string v0, "com.samsung.android.sivs.ai.sdkcommon.language.ISmartReplyService"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-eq p1, v2, :cond_11

    .line 18
    .line 19
    const-string v0, "com.samsung.android.sivs.ai.sdkcommon.language.ILlmServiceObserver"

    .line 20
    .line 21
    if-eq p1, v1, :cond_e

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x2

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eq p1, v3, :cond_a

    .line 27
    .line 28
    const-string v0, "com.samsung.android.sivs.ai.sdkcommon.language.ILlmServiceObserver2"

    .line 29
    .line 30
    const/4 v5, 0x3

    .line 31
    if-eq p1, v5, :cond_6

    .line 32
    .line 33
    const/4 v6, 0x4

    .line 34
    if-eq p1, v6, :cond_1

    .line 35
    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-gez p1, :cond_2

    .line 46
    .line 47
    move-object p4, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    new-instance p4, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-static {v4, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v6, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    invoke-direct {v6, p2, p4, v3}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;I)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v6}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-nez v3, :cond_3

    .line 75
    .line 76
    move-object v0, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    instance-of v6, v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver2;

    .line 85
    .line 86
    if-eqz v6, :cond_4

    .line 87
    .line 88
    check-cast v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver2;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    new-instance v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver2$Stub$Proxy;

    .line 92
    .line 93
    invoke-direct {v0, v3}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-gez v3, :cond_5

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    new-instance v2, Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-static {v4, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    new-instance v4, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;

    .line 113
    .line 114
    invoke-direct {v4, p2, v2, v5}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;I)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v3, v4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p0, p4, p1, v0, v2}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService;->replyWithHeader3(Ljava/util/Map;Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver2;Ljava/util/Map;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_8

    .line 127
    .line 128
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-gez p1, :cond_7

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_7
    new-instance v2, Ljava/util/HashMap;

    .line 136
    .line 137
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 138
    .line 139
    .line 140
    :goto_3
    invoke-static {v4, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    new-instance p4, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;

    .line 145
    .line 146
    invoke-direct {p4, p2, v2, v1}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;I)V

    .line 147
    .line 148
    .line 149
    invoke-interface {p1, p4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-nez p1, :cond_8

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_8
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    if-eqz p2, :cond_9

    .line 167
    .line 168
    instance-of p4, p2, Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver2;

    .line 169
    .line 170
    if-eqz p4, :cond_9

    .line 171
    .line 172
    check-cast p2, Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver2;

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_9
    new-instance p2, Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver2$Stub$Proxy;

    .line 176
    .line 177
    invoke-direct {p2, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 178
    .line 179
    .line 180
    :goto_4
    invoke-interface {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService;->replyWithHeader2()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    .line 185
    .line 186
    goto :goto_8

    .line 187
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-gez p1, :cond_b

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_b
    new-instance v2, Ljava/util/HashMap;

    .line 195
    .line 196
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 197
    .line 198
    .line 199
    :goto_5
    invoke-static {v4, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    new-instance p4, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;

    .line 204
    .line 205
    invoke-direct {p4, p2, v2, v4}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;I)V

    .line 206
    .line 207
    .line 208
    invoke-interface {p1, p4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    if-nez p1, :cond_c

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_c
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    if-eqz p2, :cond_d

    .line 226
    .line 227
    instance-of p4, p2, Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver;

    .line 228
    .line 229
    if-eqz p4, :cond_d

    .line 230
    .line 231
    check-cast p2, Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver;

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_d
    new-instance p2, Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver$Stub$Proxy;

    .line 235
    .line 236
    invoke-direct {p2, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 237
    .line 238
    .line 239
    :goto_6
    invoke-interface {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService;->replyWithHeader()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-nez p1, :cond_f

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_f
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    if-eqz p2, :cond_10

    .line 261
    .line 262
    instance-of p4, p2, Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver;

    .line 263
    .line 264
    if-eqz p4, :cond_10

    .line 265
    .line 266
    check-cast p2, Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver;

    .line 267
    .line 268
    goto :goto_7

    .line 269
    :cond_10
    new-instance p2, Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver$Stub$Proxy;

    .line 270
    .line 271
    invoke-direct {p2, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 272
    .line 273
    .line 274
    :goto_7
    invoke-interface {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService;->reply()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    .line 279
    .line 280
    :goto_8
    return v1

    .line 281
    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    return v1
.end method
