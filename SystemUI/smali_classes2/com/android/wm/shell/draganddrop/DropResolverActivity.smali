.class public Lcom/android/wm/shell/draganddrop/DropResolverActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mCallingPackage:Ljava/lang/String;

.field public mContentType:Ljava/lang/String;

.field public mPermissions:Landroid/view/DragAndDropPermissions;

.field public mUserHandle:Landroid/os/UserHandle;

.field public mWindowingMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;

    .line 2
    .line 3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 4
    .line 5
    sput-boolean v0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->DEBUG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final addPreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 8

    .line 1
    sget-boolean p4, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->DEBUG:Z

    .line 2
    .line 3
    const-string v0, "DropResolverActivity"

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "addPreferredActivity. intent="

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 25
    .line 26
    invoke-direct {v1, p5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const/4 p5, 0x0

    .line 34
    invoke-virtual {v1, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    iget-object p5, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mUserHandle:Landroid/os/UserHandle;

    .line 38
    .line 39
    if-eqz p5, :cond_1

    .line 40
    .line 41
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 42
    .line 43
    .line 44
    move-result p5

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    .line 47
    .line 48
    .line 49
    move-result p5

    .line 50
    :goto_0
    move v7, p5

    .line 51
    if-eqz p4, :cond_2

    .line 52
    .line 53
    new-instance p5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "addPreferredActivity. userId="

    .line 56
    .line 57
    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p5

    .line 71
    invoke-static {v0, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_2
    const/4 p5, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    invoke-virtual {p1, v1, p5, p0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    new-instance p5, Lcom/android/wm/shell/draganddrop/DropResolverActivity$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    invoke-direct {p5}, Lcom/android/wm/shell/draganddrop/DropResolverActivity$$ExternalSyntheticLambda0;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-interface {p0, p5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    new-instance p5, Lcom/android/wm/shell/draganddrop/DropResolverActivity$$ExternalSyntheticLambda1;

    .line 97
    .line 98
    invoke-direct {p5}, Lcom/android/wm/shell/draganddrop/DropResolverActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-interface {p0, p5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    new-instance p5, Lcom/android/wm/shell/draganddrop/DropResolverActivity$$ExternalSyntheticLambda2;

    .line 106
    .line 107
    invoke-direct {p5}, Lcom/android/wm/shell/draganddrop/DropResolverActivity$$ExternalSyntheticLambda2;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-interface {p0, p5}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    move-object v5, p0

    .line 115
    check-cast v5, [Landroid/content/ComponentName;

    .line 116
    .line 117
    if-eqz p4, :cond_3

    .line 118
    .line 119
    new-instance p0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string p4, "addPreferredActivity. set.length="

    .line 122
    .line 123
    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    array-length p4, v5

    .line 127
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p4, " set="

    .line 131
    .line 132
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object p4

    .line 139
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    :cond_3
    move-object v2, p1

    .line 150
    move-object v3, p2

    .line 151
    move v4, p3

    .line 152
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->addPreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public final appliedThemeResId()I
    .locals 0

    .line 1
    const p0, 0x103041c

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.extra.INTENT"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "dropResolverActivity.extra.contentType"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mContentType:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "dropResolverActivity.extra.callingPackage"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mCallingPackage:Ljava/lang/String;

    .line 26
    .line 27
    instance-of v2, v1, Landroid/content/Intent;

    .line 28
    .line 29
    const-string v3, "DropResolverActivity"

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Target is not an intent: "

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 52
    .line 53
    .line 54
    invoke-super {p0, v4}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    move-object v7, v1

    .line 59
    check-cast v7, Landroid/content/Intent;

    .line 60
    .line 61
    const-string v1, "dropResolverActivity.extra.rlist"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    new-array v2, v2, [Landroid/content/Intent;

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-object v9, v2

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    move-object v9, v4

    .line 87
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const v2, 0x1040f71

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    const-string v1, "android.intent.extra.ALTERNATE_INTENTS"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const/4 v2, 0x0

    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    array-length v5, v1

    .line 108
    new-array v5, v5, [Landroid/content/Intent;

    .line 109
    .line 110
    move v6, v2

    .line 111
    :goto_1
    array-length v11, v1

    .line 112
    if-ge v6, v11, :cond_3

    .line 113
    .line 114
    aget-object v11, v1, v6

    .line 115
    .line 116
    instance-of v12, v11, Landroid/content/Intent;

    .line 117
    .line 118
    if-nez v12, :cond_2

    .line 119
    .line 120
    const-string p1, "EXTRA_ALTERNATE_INTENTS array entry #"

    .line 121
    .line 122
    const-string v0, " is not an Intent: "

    .line 123
    .line 124
    invoke-static {p1, v6, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    aget-object v0, v1, v6

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 141
    .line 142
    .line 143
    invoke-super {p0, v4}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_2
    check-cast v11, Landroid/content/Intent;

    .line 148
    .line 149
    aput-object v11, v5, v6

    .line 150
    .line 151
    add-int/lit8 v6, v6, 0x1

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->setAdditionalTargets([Landroid/content/Intent;)V

    .line 155
    .line 156
    .line 157
    :cond_4
    const-string v1, "dragPermission"

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Landroid/view/DragAndDropPermissions;

    .line 164
    .line 165
    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mPermissions:Landroid/view/DragAndDropPermissions;

    .line 166
    .line 167
    if-eqz v1, :cond_5

    .line 168
    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v1, v5}, Landroid/view/DragAndDropPermissions;->take(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :catch_0
    move-exception v1

    .line 178
    const-string v5, "dnd permission failure"

    .line 179
    .line 180
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 187
    .line 188
    .line 189
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 198
    .line 199
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    iput v1, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mWindowingMode:I

    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    const-string v3, "dropResolverActivity.extra.userid"

    .line 210
    .line 211
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mUserHandle:Landroid/os/UserHandle;

    .line 220
    .line 221
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-eq v1, v3, :cond_6

    .line 230
    .line 231
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mUserHandle:Landroid/os/UserHandle;

    .line 232
    .line 233
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    invoke-virtual {v7, v1}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 238
    .line 239
    .line 240
    :cond_6
    const-string v1, "dropResolverActivity.extra.wallpaper"

    .line 241
    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_7

    .line 247
    .line 248
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->setTranslucent(Z)Z

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    const/high16 v3, 0x100000

    .line 256
    .line 257
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 258
    .line 259
    .line 260
    :cond_7
    const-string v1, "dropResolverActivity.extra.supportsAlwaysUseOption"

    .line 261
    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 263
    .line 264
    .line 265
    move-result v11

    .line 266
    move-object v5, p0

    .line 267
    move-object v6, p1

    .line 268
    invoke-super/range {v5 .. v11}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 269
    .line 270
    .line 271
    const p1, 0x1020279

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    check-cast p1, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 279
    .line 280
    if-eqz p1, :cond_9

    .line 281
    .line 282
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mWindowingMode:I

    .line 283
    .line 284
    const/4 v1, 0x5

    .line 285
    const v2, 0x7f060150

    .line 286
    .line 287
    .line 288
    if-ne v0, v1, :cond_8

    .line 289
    .line 290
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    const v1, 0x7f060151

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 302
    .line 303
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 304
    .line 305
    .line 306
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 307
    .line 308
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getColor(I)I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 313
    .line 314
    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 321
    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getColor(I)I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->setBackgroundColor(I)V

    .line 329
    .line 330
    .line 331
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 340
    .line 341
    const/high16 v1, 0x1000000

    .line 342
    .line 343
    or-int/2addr v0, v1

    .line 344
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 345
    .line 346
    const/4 v0, 0x3

    .line 347
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 348
    .line 349
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    const/16 p1, 0x400

    .line 365
    .line 366
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 367
    .line 368
    .line 369
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mPermissions:Landroid/view/DragAndDropPermissions;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/DragAndDropPermissions;->release()V

    .line 9
    .line 10
    .line 11
    const-string p0, "DropResolverActivity"

    .line 12
    .line 13
    const-string v0, "Release permissions"

    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 5

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    const-string/jumbo v1, "safelyStartActivity: SALogging... contentType="

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V

    .line 12
    .line 13
    .line 14
    iget v3, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mWindowingMode:I

    .line 15
    .line 16
    const/4 v4, 0x5

    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mUserHandle:Landroid/os/UserHandle;

    .line 27
    .line 28
    invoke-static {p1, v2, v3}, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->create(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Bundle;Landroid/os/UserHandle;)Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-super {p0, v2}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_0
    const-string v2, "1042"

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mContentType:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mCallingPackage:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v2, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sget-boolean v0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->DEBUG:Z

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    const-string v0, "DropResolverActivity"

    .line 92
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mContentType:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", callingPackage="

    .line 104
    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mCallingPackage:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p0, ", calleePackage="

    .line 114
    .line 115
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :catch_0
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    :cond_2
    :goto_1
    return-void
.end method
