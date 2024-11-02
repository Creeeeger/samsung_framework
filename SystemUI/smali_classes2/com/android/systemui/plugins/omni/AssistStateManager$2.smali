.class Lcom/android/systemui/plugins/omni/AssistStateManager$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/plugins/omni/AssistStateManager;->updateIsOmniAvailableFromAppSearch(Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/appsearch/BatchResultCallback<",
        "Ljava/lang/String;",
        "Landroid/app/appsearch/GenericDocument;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

.field final synthetic val$callback:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/omni/AssistStateManager;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$2;->this$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$2;->val$callback:Ljava/util/function/Consumer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/GenericDocument;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "isVISAvailable"

    .line 2
    .line 3
    const-string v1, "isCSHelperAvailable"

    .line 4
    .line 5
    const-string v2, "AssistStateManager"

    .line 6
    .line 7
    const-string v3, "onResult mIsOmniAvailable = "

    .line 8
    .line 9
    const-string v4, "onResult getSuccesses.isEmpty = "

    .line 10
    .line 11
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->getSuccesses()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->getSuccesses()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/app/appsearch/GenericDocument;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$2;->this$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 57
    .line 58
    const-string v5, "isAvailable"

    .line 59
    .line 60
    invoke-virtual {p1, v5}, Landroid/app/appsearch/GenericDocument;->getPropertyBoolean(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-static {v4, v5}, Lcom/android/systemui/plugins/omni/AssistStateManager;->-$$Nest$fputmIsOmniAvailable(Lcom/android/systemui/plugins/omni/AssistStateManager;Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/app/appsearch/GenericDocument;->getPropertyNames()Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_0

    .line 76
    .line 77
    iget-object v5, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$2;->this$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroid/app/appsearch/GenericDocument;->getPropertyBoolean(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v5, v1}, Lcom/android/systemui/plugins/omni/AssistStateManager;->-$$Nest$fputmIsCsHelperAvailable(Lcom/android/systemui/plugins/omni/AssistStateManager;Ljava/util/Optional;)V

    .line 92
    .line 93
    .line 94
    :cond_0
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_1

    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$2;->this$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/app/appsearch/GenericDocument;->getPropertyBoolean(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v1, p1}, Lcom/android/systemui/plugins/omni/AssistStateManager;->-$$Nest$fputmIsVisAvailable(Lcom/android/systemui/plugins/omni/AssistStateManager;Ljava/util/Optional;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$2;->this$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 123
    .line 124
    invoke-static {v0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->-$$Nest$fgetmIsOmniAvailable(Lcom/android/systemui/plugins/omni/AssistStateManager;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v0, ", isCsHelperAvailable = "

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$2;->this$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->-$$Nest$fgetmIsCsHelperAvailable(Lcom/android/systemui/plugins/omni/AssistStateManager;)Ljava/util/Optional;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v0, ", isVisAvailable = "

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$2;->this$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->-$$Nest$fgetmIsVisAvailable(Lcom/android/systemui/plugins/omni/AssistStateManager;)Ljava/util/Optional;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :catch_0
    move-exception p1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v1, "onResult exception = "

    .line 181
    .line 182
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$2;->val$callback:Ljava/util/function/Consumer;

    .line 196
    .line 197
    if-eqz p1, :cond_4

    .line 198
    .line 199
    iget-object v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$2;->this$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 200
    .line 201
    invoke-static {v0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->-$$Nest$fgetmIsOmniAvailable(Lcom/android/systemui/plugins/omni/AssistStateManager;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_3

    .line 206
    .line 207
    iget-object v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$2;->this$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 208
    .line 209
    invoke-static {v0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->-$$Nest$fgetmIsCsHelperAvailable(Lcom/android/systemui/plugins/omni/AssistStateManager;)Ljava/util/Optional;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Ljava/lang/Boolean;

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_3

    .line 226
    .line 227
    iget-object p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$2;->this$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 228
    .line 229
    invoke-static {p0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->-$$Nest$fgetmIsVisAvailable(Lcom/android/systemui/plugins/omni/AssistStateManager;)Ljava/util/Optional;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    check-cast p0, Ljava/lang/Boolean;

    .line 238
    .line 239
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    if-eqz p0, :cond_2

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_2
    const/4 p0, 0x0

    .line 247
    goto :goto_2

    .line 248
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 249
    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    :cond_4
    return-void
.end method

.method public onSystemError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "onSystemError = "

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "AssistStateManager"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method
