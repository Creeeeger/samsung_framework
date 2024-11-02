.class public final Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static sAppList:Ljava/util/ArrayList;

.field public static final sRemoteViewsClassArray:[Ljava/lang/Class;

.field public static final sWidgetClassArray:[Ljava/lang/Class;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;

    .line 2
    .line 3
    const-class v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherMediumWidgetProvider;

    .line 4
    .line 5
    const-class v2, Lcom/android/systemui/coverlauncher/widget/CoverLauncherSmallWidgetProvider;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->sWidgetClassArray:[Ljava/lang/Class;

    .line 12
    .line 13
    const-class v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeRemoteViewService;

    .line 14
    .line 15
    const-class v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherMediumRemoteViewService;

    .line 16
    .line 17
    const-class v2, Lcom/android/systemui/coverlauncher/widget/CoverLauncherSmallRemoteViewService;

    .line 18
    .line 19
    filled-new-array {v0, v1, v2}, [Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->sRemoteViewsClassArray:[Ljava/lang/Class;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static getAppListFromDB(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->sAppList:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-nez p0, :cond_3

    .line 11
    .line 12
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v1, -0x2

    .line 19
    invoke-interface {p0, v1}, Landroid/app/IActivityTaskManager;->getCoverLauncherEnabledAppList(I)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    move v3, v2

    .line 37
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ge v3, v4, :cond_1

    .line 42
    .line 43
    new-instance v4, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;-><init>(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    const-string v4, "CoverLauncherPackageUtils"

    .line 62
    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v6, "add pkg : "

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v6, ", "

    .line 83
    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_2

    .line 113
    .line 114
    new-instance v3, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->getCoverLauncherEnabledAppList(I)Ljava/util/Map;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    .line 126
    .line 127
    move p0, v2

    .line 128
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-ge p0, v4, :cond_2

    .line 133
    .line 134
    new-instance v4, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;

    .line 135
    .line 136
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    check-cast v5, Ljava/lang/String;

    .line 141
    .line 142
    invoke-direct {v4, v5, p1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    const-string v4, "CoverLauncherPackageUtils"

    .line 149
    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v6, "add pkg : "

    .line 156
    .line 157
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    check-cast v6, Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v6, ", "

    .line 170
    .line 171
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    add-int/lit8 p0, p0, 0x1

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_2
    iget-object p0, v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mLock:Ljava/lang/Object;

    .line 188
    .line 189
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :try_start_1
    iget-object p1, v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mAllowedPackageList:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 193
    .line 194
    .line 195
    iget-object p1, v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mAllowedPackageList:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 198
    .line 199
    .line 200
    iget-object p1, v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mAllowedPackageList:Ljava/util/ArrayList;

    .line 201
    .line 202
    new-instance v1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$AppLabelComparator;

    .line 203
    .line 204
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$AppLabelComparator;-><init>(Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 208
    .line 209
    .line 210
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :try_start_2
    iget-object p0, v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mAllowedPackageList:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :catchall_0
    move-exception p1

    .line 215
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 217
    :catch_0
    move-exception p0

    .line 218
    const-string p1, "CoverLauncherPackageUtils"

    .line 219
    .line 220
    const-string v1, "Failed to get allowed package list "

    .line 221
    .line 222
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->tryUpdateAppWidget()V

    .line 226
    .line 227
    .line 228
    const/4 p0, 0x0

    .line 229
    :goto_2
    sput-object p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->sAppList:Ljava/util/ArrayList;

    .line 230
    .line 231
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    .line 232
    .line 233
    sget-object p1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->sAppList:Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 236
    .line 237
    .line 238
    return-object p0
.end method
