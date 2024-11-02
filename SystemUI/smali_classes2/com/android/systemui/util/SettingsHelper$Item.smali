.class public final Lcom/android/systemui/util/SettingsHelper$Item;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mCachedIntegrity:Z

.field public final mDataType:Ljava/lang/String;

.field public final mDef:Ljava/lang/Object;

.field public mFloatValue:F

.field public final mForUser:Ljava/lang/String;

.field public mIntValue:I

.field public final mIsUserAll:Z

.field public final mKey:Ljava/lang/String;

.field public final mSettingType:Ljava/lang/String;

.field public mStringValue:Ljava/lang/String;

.field public final mUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mCachedIntegrity:Z

    .line 5
    iput-object p2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mSettingType:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDef:Ljava/lang/Object;

    if-eqz p6, :cond_0

    const-string p1, "ForUser"

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 9
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mForUser:Ljava/lang/String;

    .line 10
    iput-boolean p7, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIsUserAll:Z

    const-string p1, "Global"

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Secure"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "System"

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid setting type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-eqz p3, :cond_5

    .line 14
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Int"

    .line 15
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "String"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Float"

    .line 16
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid data type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_4
    :goto_2
    invoke-virtual {p0, p3}, Lcom/android/systemui/util/SettingsHelper$Item;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mUri:Landroid/net/Uri;

    return-void

    .line 19
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid setting key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getIntValue()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mCachedIntegrity:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    .line 15
    .line 16
    return p0
.end method

.method public final getStringValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mCachedIntegrity:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mStringValue:Ljava/lang/String;

    .line 15
    .line 16
    return-object p0
.end method

.method public final getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .line 1
    const-string v0, "android.provider.Settings$"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mUri:Landroid/net/Uri;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mSettingType:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v0, "getUriFor"

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    new-array v1, v1, [Ljava/lang/Class;

    .line 30
    .line 31
    const-class v2, Ljava/lang/String;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    aput-object v2, v1, v3

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    const-string p1, "SettingsHelper"

    .line 53
    .line 54
    const-string v0, "Exception occurred"

    .line 55
    .line 56
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    :goto_0
    return-object p0
.end method

.method public final read(Landroid/content/ContentResolver;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcom/android/systemui/util/SettingsHelper$Item;->mForUser:Ljava/lang/String;

    .line 4
    .line 5
    const-string v3, "android.provider.Settings$"

    .line 6
    .line 7
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, v1, Lcom/android/systemui/util/SettingsHelper$Item;->mSettingType:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "ForUser"

    .line 26
    .line 27
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    const-string v5, "String"

    .line 32
    .line 33
    const-string v6, "Float"

    .line 34
    .line 35
    const-string v7, "Int"

    .line 36
    .line 37
    const-class v8, Ljava/lang/String;

    .line 38
    .line 39
    iget-object v9, v1, Lcom/android/systemui/util/SettingsHelper$Item;->mDef:Ljava/lang/Object;

    .line 40
    .line 41
    iget-object v10, v1, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v12, 0x0

    .line 44
    const/4 v13, 0x2

    .line 45
    const/4 v14, 0x1

    .line 46
    iget-object v15, v1, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    .line 47
    .line 48
    const-string v11, "get"

    .line 49
    .line 50
    if-eqz v4, :cond_7

    .line 51
    .line 52
    const/4 v4, -0x2

    .line 53
    if-eqz v9, :cond_4

    .line 54
    .line 55
    :try_start_1
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v17

    .line 59
    if-eqz v17, :cond_0

    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const/4 v5, 0x4

    .line 79
    new-array v11, v5, [Ljava/lang/Class;

    .line 80
    .line 81
    const-class v17, Landroid/content/ContentResolver;

    .line 82
    .line 83
    aput-object v17, v11, v12

    .line 84
    .line 85
    aput-object v8, v11, v14

    .line 86
    .line 87
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v17

    .line 91
    if-eqz v17, :cond_1

    .line 92
    .line 93
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v17

    .line 100
    if-eqz v17, :cond_2

    .line 101
    .line 102
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 103
    .line 104
    :cond_2
    :goto_0
    aput-object v8, v11, v13

    .line 105
    .line 106
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 107
    .line 108
    const/16 v16, 0x3

    .line 109
    .line 110
    aput-object v8, v11, v16

    .line 111
    .line 112
    invoke-virtual {v3, v2, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_3

    .line 121
    .line 122
    new-array v5, v5, [Ljava/lang/Object;

    .line 123
    .line 124
    aput-object p1, v5, v12

    .line 125
    .line 126
    aput-object v10, v5, v14

    .line 127
    .line 128
    aput-object v9, v5, v13

    .line 129
    .line 130
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    const/4 v6, 0x3

    .line 135
    aput-object v4, v5, v6

    .line 136
    .line 137
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    iput v2, v1, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    .line 148
    .line 149
    goto/16 :goto_4

    .line 150
    .line 151
    :cond_3
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_f

    .line 156
    .line 157
    new-array v5, v5, [Ljava/lang/Object;

    .line 158
    .line 159
    aput-object p1, v5, v12

    .line 160
    .line 161
    aput-object v10, v5, v14

    .line 162
    .line 163
    aput-object v9, v5, v13

    .line 164
    .line 165
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    const/4 v6, 0x3

    .line 170
    aput-object v4, v5, v6

    .line 171
    .line 172
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Ljava/lang/Float;

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    iput v2, v1, Lcom/android/systemui/util/SettingsHelper$Item;->mFloatValue:F

    .line 183
    .line 184
    goto/16 :goto_4

    .line 185
    .line 186
    :cond_4
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    const/4 v9, 0x3

    .line 202
    new-array v11, v9, [Ljava/lang/Class;

    .line 203
    .line 204
    const-class v9, Landroid/content/ContentResolver;

    .line 205
    .line 206
    aput-object v9, v11, v12

    .line 207
    .line 208
    aput-object v8, v11, v14

    .line 209
    .line 210
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 211
    .line 212
    aput-object v8, v11, v13

    .line 213
    .line 214
    invoke-virtual {v3, v2, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    if-eqz v7, :cond_5

    .line 223
    .line 224
    const/4 v7, 0x3

    .line 225
    new-array v5, v7, [Ljava/lang/Object;

    .line 226
    .line 227
    aput-object p1, v5, v12

    .line 228
    .line 229
    aput-object v10, v5, v14

    .line 230
    .line 231
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    aput-object v4, v5, v13

    .line 236
    .line 237
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    check-cast v2, Ljava/lang/Integer;

    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    iput v2, v1, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    .line 248
    .line 249
    goto/16 :goto_4

    .line 250
    .line 251
    :cond_5
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-eqz v5, :cond_6

    .line 256
    .line 257
    const/4 v5, 0x3

    .line 258
    new-array v5, v5, [Ljava/lang/Object;

    .line 259
    .line 260
    aput-object p1, v5, v12

    .line 261
    .line 262
    aput-object v10, v5, v14

    .line 263
    .line 264
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    aput-object v4, v5, v13

    .line 269
    .line 270
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    check-cast v2, Ljava/lang/String;

    .line 275
    .line 276
    iput-object v2, v1, Lcom/android/systemui/util/SettingsHelper$Item;->mStringValue:Ljava/lang/String;

    .line 277
    .line 278
    goto/16 :goto_4

    .line 279
    .line 280
    :cond_6
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-eqz v5, :cond_f

    .line 285
    .line 286
    const/4 v5, 0x3

    .line 287
    new-array v5, v5, [Ljava/lang/Object;

    .line 288
    .line 289
    aput-object p1, v5, v12

    .line 290
    .line 291
    aput-object v10, v5, v14

    .line 292
    .line 293
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    aput-object v4, v5, v13

    .line 298
    .line 299
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    check-cast v2, Ljava/lang/Float;

    .line 304
    .line 305
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    iput v2, v1, Lcom/android/systemui/util/SettingsHelper$Item;->mFloatValue:F

    .line 310
    .line 311
    goto/16 :goto_4

    .line 312
    .line 313
    :cond_7
    if-eqz v9, :cond_c

    .line 314
    .line 315
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-eqz v2, :cond_8

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    const/4 v4, 0x3

    .line 335
    new-array v5, v4, [Ljava/lang/Class;

    .line 336
    .line 337
    const-class v4, Landroid/content/ContentResolver;

    .line 338
    .line 339
    aput-object v4, v5, v12

    .line 340
    .line 341
    aput-object v8, v5, v14

    .line 342
    .line 343
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v4

    .line 347
    if-eqz v4, :cond_9

    .line 348
    .line 349
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 350
    .line 351
    goto :goto_2

    .line 352
    :cond_9
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    if-eqz v4, :cond_a

    .line 357
    .line 358
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 359
    .line 360
    :cond_a
    :goto_2
    aput-object v8, v5, v13

    .line 361
    .line 362
    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    if-eqz v4, :cond_b

    .line 371
    .line 372
    const/4 v4, 0x3

    .line 373
    new-array v4, v4, [Ljava/lang/Object;

    .line 374
    .line 375
    aput-object p1, v4, v12

    .line 376
    .line 377
    aput-object v10, v4, v14

    .line 378
    .line 379
    aput-object v9, v4, v13

    .line 380
    .line 381
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    check-cast v2, Ljava/lang/Integer;

    .line 386
    .line 387
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    iput v2, v1, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    .line 392
    .line 393
    goto/16 :goto_4

    .line 394
    .line 395
    :cond_b
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    if-eqz v4, :cond_f

    .line 400
    .line 401
    const/4 v4, 0x3

    .line 402
    new-array v4, v4, [Ljava/lang/Object;

    .line 403
    .line 404
    aput-object p1, v4, v12

    .line 405
    .line 406
    aput-object v10, v4, v14

    .line 407
    .line 408
    aput-object v9, v4, v13

    .line 409
    .line 410
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    check-cast v2, Ljava/lang/Float;

    .line 415
    .line 416
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    iput v2, v1, Lcom/android/systemui/util/SettingsHelper$Item;->mFloatValue:F

    .line 421
    .line 422
    goto :goto_4

    .line 423
    :cond_c
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    new-array v4, v13, [Ljava/lang/Class;

    .line 436
    .line 437
    const-class v9, Landroid/content/ContentResolver;

    .line 438
    .line 439
    aput-object v9, v4, v12

    .line 440
    .line 441
    aput-object v8, v4, v14

    .line 442
    .line 443
    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v4

    .line 451
    if-eqz v4, :cond_d

    .line 452
    .line 453
    new-array v4, v13, [Ljava/lang/Object;

    .line 454
    .line 455
    aput-object p1, v4, v12

    .line 456
    .line 457
    aput-object v10, v4, v14

    .line 458
    .line 459
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    check-cast v2, Ljava/lang/Integer;

    .line 464
    .line 465
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    iput v2, v1, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    .line 470
    .line 471
    goto :goto_4

    .line 472
    :cond_d
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v4

    .line 476
    if-eqz v4, :cond_e

    .line 477
    .line 478
    new-array v4, v13, [Ljava/lang/Object;

    .line 479
    .line 480
    aput-object p1, v4, v12

    .line 481
    .line 482
    aput-object v10, v4, v14

    .line 483
    .line 484
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    check-cast v2, Ljava/lang/String;

    .line 489
    .line 490
    iput-object v2, v1, Lcom/android/systemui/util/SettingsHelper$Item;->mStringValue:Ljava/lang/String;

    .line 491
    .line 492
    goto :goto_4

    .line 493
    :cond_e
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v4

    .line 497
    if-eqz v4, :cond_f

    .line 498
    .line 499
    new-array v4, v13, [Ljava/lang/Object;

    .line 500
    .line 501
    aput-object p1, v4, v12

    .line 502
    .line 503
    aput-object v10, v4, v14

    .line 504
    .line 505
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    check-cast v2, Ljava/lang/Float;

    .line 510
    .line 511
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    iput v2, v1, Lcom/android/systemui/util/SettingsHelper$Item;->mFloatValue:F

    .line 516
    .line 517
    :cond_f
    :goto_4
    iput-boolean v14, v1, Lcom/android/systemui/util/SettingsHelper$Item;->mCachedIntegrity:Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 518
    .line 519
    goto :goto_5

    .line 520
    :catch_0
    move-exception v0

    .line 521
    move-object v1, v0

    .line 522
    const-string v2, "SettingsHelper"

    .line 523
    .line 524
    const-string v3, "Exception occurred"

    .line 525
    .line 526
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    .line 528
    .line 529
    :goto_5
    return-void
.end method
