.class public final Lcom/samsung/android/sdk/cover/ScoverManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static sIsClearCoverSystemFeatureEnabled:Z = false

.field public static sIsClearSideViewCoverSystemFeatureEnabled:Z = false

.field public static sIsFilpCoverSystemFeatureEnabled:Z = false

.field public static sIsLEDBackCoverSystemFeatureEnabled:Z = false

.field public static sIsMiniSviewWalletCoverSysltemFeatureEnabled:Z = false

.field public static sIsNeonCoverSystemFeatureEnabled:Z = false

.field public static sIsNfcLedCoverSystemFeatureEnabled:Z = false

.field public static sIsSViewCoverSystemFeatureEnabled:Z = false

.field public static sIsSystemFeatureQueried:Z = false

.field public static sServiceVersion:I = 0x1000000


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mService:Lcom/samsung/android/cover/ICoverManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v0, Landroid/os/Binder;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "com.sec.feature.cover.flip"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "com.sec.feature.cover.sview"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, "com.sec.feature.cover.nfcledcover"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v1, "com.sec.feature.cover.clearcover"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearCoverSystemFeatureEnabled:Z

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-string v1, "com.sec.feature.cover.neoncover"

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNeonCoverSystemFeatureEnabled:Z

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v1, "com.sec.feature.cover.clearsideviewcover"

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearSideViewCoverSystemFeatureEnabled:Z

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string v1, "com.sec.feature.cover.ledbackcover"

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsLEDBackCoverSystemFeatureEnabled:Z

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const-string v0, "com.sec.feature.cover.minisviewwalletcover"

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    sput-boolean p1, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsMiniSviewWalletCoverSysltemFeatureEnabled:Z

    .line 147
    .line 148
    const/4 p1, 0x1

    .line 149
    sput-boolean p1, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    .line 150
    .line 151
    invoke-static {}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    const-string v0, "ScoverManager"

    .line 156
    .line 157
    if-eqz p1, :cond_0

    .line 158
    .line 159
    :try_start_0
    const-class p1, Lcom/samsung/android/cover/ICoverManager;

    .line 160
    .line 161
    const-string v1, "getVersion"

    .line 162
    .line 163
    const/4 v2, 0x0

    .line 164
    new-array v3, v2, [Ljava/lang/Class;

    .line 165
    .line 166
    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    new-array v1, v2, [Ljava/lang/Object;

    .line 175
    .line 176
    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    check-cast p0, Ljava/lang/Integer;

    .line 181
    .line 182
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 187
    :catch_0
    move-exception p0

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v1, "getVersion failed : "

    .line 191
    .line 192
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    :cond_0
    const/high16 p0, 0x1000000

    .line 206
    .line 207
    :goto_0
    const-string p1, "serviceVersion : "

    .line 208
    .line 209
    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    sput p0, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    .line 213
    .line 214
    :cond_1
    return-void
.end method

.method public static isSupportCover()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearCoverSystemFeatureEnabled:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNeonCoverSystemFeatureEnabled:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearSideViewCoverSystemFeatureEnabled:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsLEDBackCoverSystemFeatureEnabled:Z

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsMiniSviewWalletCoverSysltemFeatureEnabled:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 37
    :goto_1
    return v0
.end method

.method public static isSupportableVersion(I)Z
    .locals 6

    .line 1
    shr-int/lit8 v0, p0, 0x18

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    shr-int/lit8 v1, p0, 0x10

    .line 6
    .line 7
    and-int/lit16 v1, v1, 0xff

    .line 8
    .line 9
    const v2, 0xffff

    .line 10
    .line 11
    .line 12
    and-int/2addr p0, v2

    .line 13
    sget v3, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    .line 14
    .line 15
    shr-int/lit8 v4, v3, 0x18

    .line 16
    .line 17
    and-int/lit16 v4, v4, 0xff

    .line 18
    .line 19
    shr-int/lit8 v5, v3, 0x10

    .line 20
    .line 21
    and-int/lit16 v5, v5, 0xff

    .line 22
    .line 23
    and-int/2addr v2, v3

    .line 24
    if-lt v4, v0, :cond_0

    .line 25
    .line 26
    if-lt v5, v1, :cond_0

    .line 27
    .line 28
    if-lt v2, p0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0
.end method


# virtual methods
.method public final getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 13

    .line 1
    invoke-static {}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "ScoverManager"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p0, "getCoverState : This device is not supported cover"

    .line 11
    .line 12
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_7

    .line 21
    .line 22
    invoke-interface {p0}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_6

    .line 27
    .line 28
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 29
    .line 30
    const/16 v3, 0xff

    .line 31
    .line 32
    if-ne v0, v3, :cond_1

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-string p0, "getCoverState : type of cover is nfc smart cover and cover is closed"

    .line 39
    .line 40
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_1
    const/high16 v0, 0x10b0000

    .line 45
    .line 46
    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    .line 53
    .line 54
    iget-boolean v4, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 55
    .line 56
    iget v5, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 57
    .line 58
    iget v6, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 59
    .line 60
    iget v7, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 61
    .line 62
    iget v8, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 63
    .line 64
    iget-boolean v9, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 65
    .line 66
    iget v10, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 67
    .line 68
    iget-boolean v11, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 69
    .line 70
    iget v12, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    .line 71
    .line 72
    move-object v3, v0

    .line 73
    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZIZI)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/high16 v0, 0x1070000

    .line 78
    .line 79
    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    .line 86
    .line 87
    iget-boolean v4, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 88
    .line 89
    iget v5, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 90
    .line 91
    iget v6, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 92
    .line 93
    iget v7, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 94
    .line 95
    iget v8, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 96
    .line 97
    iget-boolean v9, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 98
    .line 99
    iget v10, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 100
    .line 101
    iget-boolean v11, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 102
    .line 103
    move-object v3, v0

    .line 104
    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZIZ)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    const/high16 v0, 0x1020000

    .line 109
    .line 110
    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    .line 117
    .line 118
    iget-boolean v4, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 119
    .line 120
    iget v5, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 121
    .line 122
    iget v6, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 123
    .line 124
    iget v7, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 125
    .line 126
    iget v8, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 127
    .line 128
    iget-boolean v9, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 129
    .line 130
    iget v10, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 131
    .line 132
    move-object v3, v0

    .line 133
    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZI)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_4
    const/high16 v0, 0x1010000

    .line 138
    .line 139
    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    .line 146
    .line 147
    iget-boolean v4, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 148
    .line 149
    iget v5, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 150
    .line 151
    iget v6, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 152
    .line 153
    iget v7, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 154
    .line 155
    iget v8, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 156
    .line 157
    iget-boolean v9, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 158
    .line 159
    move-object v3, v0

    .line 160
    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZ)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_5
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    .line 165
    .line 166
    iget-boolean v4, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 167
    .line 168
    iget v5, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 169
    .line 170
    iget v6, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 171
    .line 172
    iget v7, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 173
    .line 174
    iget v8, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 175
    .line 176
    move-object v3, v0

    .line 177
    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIII)V

    .line 178
    .line 179
    .line 180
    :goto_0
    return-object v0

    .line 181
    :cond_6
    const-string p0, "getCoverState : coverState is null"

    .line 182
    .line 183
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :catch_0
    move-exception p0

    .line 188
    const-string v0, "RemoteException in getCoverState: "

    .line 189
    .line 190
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .line 192
    .line 193
    :cond_7
    :goto_1
    return-object v1
.end method

.method public final declared-synchronized getService()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "cover"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "ScoverManager"

    .line 21
    .line 22
    const-string v1, "warning: no COVER_MANAGER_SERVICE"

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    monitor-exit p0

    .line 33
    throw v0
.end method

.method public final registerListener(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;)V
    .locals 9

    .line 1
    const-string v0, "ScoverManager"

    .line 2
    .line 3
    const-string v1, "registerListener"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string p0, "registerListener : This device is not supported cover"

    .line 15
    .line 16
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget v1, v1, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 29
    .line 30
    const/16 v4, 0xff

    .line 31
    .line 32
    if-ne v1, v4, :cond_1

    .line 33
    .line 34
    move v1, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v1, v3

    .line 37
    :goto_0
    if-eqz v1, :cond_2

    .line 38
    .line 39
    const-string p0, "registerListener : If cover is smart cover, it does not need to register listener of intenal App"

    .line 40
    .line 41
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    const/high16 v1, 0x1010000

    .line 46
    .line 47
    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v4, 0x2

    .line 52
    if-eqz v1, :cond_7

    .line 53
    .line 54
    iget-object v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const/4 v7, 0x0

    .line 65
    if-eqz v6, :cond_4

    .line 66
    .line 67
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;

    .line 72
    .line 73
    iget-object v8, v6, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    .line 74
    .line 75
    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-eqz v8, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    move v2, v3

    .line 83
    move-object v6, v7

    .line 84
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    if-nez v6, :cond_5

    .line 87
    .line 88
    new-instance v6, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;

    .line 89
    .line 90
    invoke-direct {v6, p1, v7, v3}, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;Landroid/os/Handler;Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    if-eqz p0, :cond_6

    .line 98
    .line 99
    new-instance p1, Landroid/content/ComponentName;

    .line 100
    .line 101
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    const-class v5, Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-direct {p1, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {p0, v6, p1, v4}, Lcom/samsung/android/cover/ICoverManager;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 115
    .line 116
    .line 117
    if-nez v2, :cond_6

    .line 118
    .line 119
    invoke-virtual {v1, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :catch_0
    move-exception p0

    .line 124
    const-string p1, "RemoteException in registerListener: "

    .line 125
    .line 126
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .line 128
    .line 129
    :cond_6
    :goto_2
    return-void

    .line 130
    :cond_7
    new-instance p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    .line 131
    .line 132
    const-string p1, "This device is not supported this function. Device is must higher then v1.1.0"

    .line 133
    .line 134
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    throw p0
.end method

.method public final unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V
    .locals 5

    .line 1
    const-string v0, "ScoverManager"

    .line 2
    .line 3
    const-string v1, "unregisterListener"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string p0, "unregisterListener : This device is not supported cover"

    .line 15
    .line 16
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget v1, v1, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 27
    .line 28
    const/16 v2, 0xff

    .line 29
    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    :goto_0
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const-string p0, "unregisterListener : If cover is smart cover, it does not need to unregister listener of intenal App"

    .line 38
    .line 39
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    const/high16 v1, 0x1010000

    .line 44
    .line 45
    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_8

    .line 50
    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    const-string p0, "unregisterListener : listener is null"

    .line 54
    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_5

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;

    .line 76
    .line 77
    iget-object v4, v3, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    .line 78
    .line 79
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_4

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    const/4 v3, 0x0

    .line 87
    :goto_1
    if-nez v3, :cond_6

    .line 88
    .line 89
    return-void

    .line 90
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    if-eqz p0, :cond_7

    .line 95
    .line 96
    invoke-interface {p0, v3}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_7

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :catch_0
    move-exception p0

    .line 107
    const-string p1, "RemoteException in unregisterListener: "

    .line 108
    .line 109
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .line 111
    .line 112
    :cond_7
    :goto_2
    return-void

    .line 113
    :cond_8
    new-instance p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    .line 114
    .line 115
    const-string p1, "This device is not supported this function. Device is must higher then v1.1.0"

    .line 116
    .line 117
    const/4 v0, 0x2

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    throw p0
.end method
