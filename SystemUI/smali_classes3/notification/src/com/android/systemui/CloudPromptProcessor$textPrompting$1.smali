.class public final Lnotification/src/com/android/systemui/CloudPromptProcessor$textPrompting$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# instance fields
.field public final synthetic $callback:Lnotification/src/com/android/systemui/PromptCallback;

.field public final synthetic this$0:Lnotification/src/com/android/systemui/CloudPromptProcessor;


# direct methods
.method public constructor <init>(Lnotification/src/com/android/systemui/CloudPromptProcessor;Lnotification/src/com/android/systemui/PromptCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor$textPrompting$1;->this$0:Lnotification/src/com/android/systemui/CloudPromptProcessor;

    .line 2
    .line 3
    iput-object p2, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor$textPrompting$1;->$callback:Lnotification/src/com/android/systemui/PromptCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x3

    .line 7
    iget-object v3, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor$textPrompting$1;->$callback:Lnotification/src/com/android/systemui/PromptCallback;

    .line 8
    .line 9
    iget-object p0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor$textPrompting$1;->this$0:Lnotification/src/com/android/systemui/CloudPromptProcessor;

    .line 10
    .line 11
    const-string v4, "CloudPromptProcessor"

    .line 12
    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v6, "SCS success: "

    .line 22
    .line 23
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/util/List;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/Result;

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    iget-object p1, p1, Lcom/samsung/android/sdk/scs/ai/language/Result;->content:Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object p1, v0

    .line 58
    :goto_0
    if-eqz p1, :cond_4

    .line 59
    .line 60
    invoke-static {p0, p1}, Lnotification/src/com/android/systemui/CloudPromptProcessor;->access$parseOutput(Lnotification/src/com/android/systemui/CloudPromptProcessor;Ljava/lang/String;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v7, ""

    .line 67
    .line 68
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-eqz v8, :cond_3

    .line 80
    .line 81
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    add-int/lit8 v9, v5, 0x1

    .line 86
    .line 87
    if-ltz v5, :cond_2

    .line 88
    .line 89
    check-cast v8, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    sub-int/2addr v8, v1

    .line 99
    if-eq v5, v8, :cond_1

    .line 100
    .line 101
    const-string v5, "\n"

    .line 102
    .line 103
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    :cond_1
    move v5, v9

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 109
    .line 110
    .line 111
    throw v0

    .line 112
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v0, "SCS result: "

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-object p1, v3

    .line 133
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;

    .line 134
    .line 135
    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;->onComplete(Ljava/lang/StringBuilder;)V

    .line 136
    .line 137
    .line 138
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 139
    .line 140
    :cond_4
    if-nez v0, :cond_8

    .line 141
    .line 142
    const-string p1, "SCS content is null"

    .line 143
    .line 144
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    invoke-static {p0, v2}, Lnotification/src/com/android/systemui/CloudPromptProcessor;->access$getErrorMessage(Lnotification/src/com/android/systemui/CloudPromptProcessor;I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    move-object v0, v3

    .line 152
    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;

    .line 153
    .line 154
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    invoke-static {p0, v2}, Lnotification/src/com/android/systemui/CloudPromptProcessor;->access$getErrorMessage(Lnotification/src/com/android/systemui/CloudPromptProcessor;I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    check-cast v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;

    .line 171
    .line 172
    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;->onFailure(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getException()Ljava/lang/Exception;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v6, "SCS failed: "

    .line 183
    .line 184
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    invoke-static {p0, v2}, Lnotification/src/com/android/systemui/CloudPromptProcessor;->access$getErrorMessage(Lnotification/src/com/android/systemui/CloudPromptProcessor;I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getException()Ljava/lang/Exception;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    if-eqz p1, :cond_7

    .line 206
    .line 207
    instance-of v2, p1, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;

    .line 208
    .line 209
    if-eqz v2, :cond_7

    .line 210
    .line 211
    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;

    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->getErrorCodeClassified()Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    sget-object v4, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->DEVICE_NETORK_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 218
    .line 219
    if-ne v2, v4, :cond_6

    .line 220
    .line 221
    invoke-static {p0, v1}, Lnotification/src/com/android/systemui/CloudPromptProcessor;->access$getErrorMessage(Lnotification/src/com/android/systemui/CloudPromptProcessor;I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    :goto_2
    move-object v0, p0

    .line 226
    goto :goto_3

    .line 227
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->getErrorCodeClassified()Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SAFETY_FILTER_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 232
    .line 233
    if-ne p1, v1, :cond_7

    .line 234
    .line 235
    const/4 p1, 0x2

    .line 236
    invoke-static {p0, p1}, Lnotification/src/com/android/systemui/CloudPromptProcessor;->access$getErrorMessage(Lnotification/src/com/android/systemui/CloudPromptProcessor;I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    goto :goto_2

    .line 241
    :cond_7
    :goto_3
    check-cast v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;

    .line 242
    .line 243
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;->onFailure(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :cond_8
    :goto_4
    return-void
.end method
