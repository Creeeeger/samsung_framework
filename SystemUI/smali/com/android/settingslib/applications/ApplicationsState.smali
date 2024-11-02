.class public final Lcom/android/settingslib/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ALPHA_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$1;

.field public static final FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$23;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$10;

.field public static final FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$22;

.field public static final FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$24;

.field public static final FILTER_PHOTOS:Lcom/android/settingslib/applications/ApplicationsState$25;

.field public static mAppLabelCache:Ljava/util/HashMap;

.field public static mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public static final mNewAppListForAppLabelCache:Ljava/util/ArrayList;

.field public static mPm:Landroid/content/pm/PackageManager;

.field public static mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

.field public static mUsbManager:Landroid/hardware/usb/IUsbManager;

.field static sInstance:Lcom/android/settingslib/applications/ApplicationsState;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public final mActiveSessions:Ljava/util/ArrayList;

.field public final mAdminRetrieveFlags:I

.field public final mAppEntries:Ljava/util/ArrayList;

.field public mAppLoadStartTime:J

.field public mApplications:Ljava/util/List;

.field public final mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

.field public mClonePackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

.field public final mContext:Landroid/content/Context;

.field public mCurComputingSizePkg:Ljava/lang/String;

.field public mCurComputingSizeUserId:I

.field public mCurComputingSizeUuid:Ljava/util/UUID;

.field public mCurId:J

.field public final mDrawableFactory:Landroid/util/IconDrawableFactory;

.field public final mEntriesMap:Landroid/util/SparseArray;

.field public mHaveDisabledApps:Z

.field public mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field public final mIpm:Landroid/content/pm/IPackageManager;

.field public final mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

.field public mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

.field public final mRebuildingSessions:Ljava/util/ArrayList;

.field public mRefreshCandidatePkgName:Ljava/lang/String;

.field public mResumed:Z

.field public final mRetrieveFlags:I

.field public final mSessions:Ljava/util/ArrayList;

.field public mSessionsChanged:Z

.field public final mStats:Landroid/app/usage/StorageStatsManager;

.field public final mSystemModules:Ljava/util/HashMap;

.field public final mUm:Landroid/os/UserManager;

.field public final mWorkUserId:I


# direct methods
.method public static -$$Nest$mgetEntryLocked(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5
    .line 6
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/util/HashMap;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-nez v2, :cond_3

    .line 31
    .line 32
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/Boolean;

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_1
    if-eqz v2, :cond_2

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    iget-wide v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    .line 58
    .line 59
    const-wide/16 v6, 0x1

    .line 60
    .line 61
    add-long/2addr v6, v4

    .line 62
    iput-wide v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    .line 63
    .line 64
    invoke-direct {v2, v3, p1, v4, v5}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/util/HashMap;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    iget-object p0, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 87
    .line 88
    if-eq p0, p1, :cond_4

    .line 89
    .line 90
    iput-object p1, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 91
    .line 92
    :cond_4
    :goto_2
    return-void
.end method

.method public static -$$Nest$mgetSizeStr(Lcom/android/settingslib/applications/ApplicationsState;J)V
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_a

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    sget-object v0, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->roundBytes(J)Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p2}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget v2, p1, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->fractionDigits:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    .line 49
    .line 50
    .line 51
    instance-of v2, v1, Landroid/icu/text/DecimalFormat;

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    const/4 v2, 0x4

    .line 56
    invoke-virtual {v1, v2}, Landroid/icu/text/NumberFormat;->setRoundingMode(I)V

    .line 57
    .line 58
    .line 59
    :cond_1
    sget-object v2, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    iget-object v4, p1, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    .line 63
    .line 64
    if-eq v4, v2, :cond_3

    .line 65
    .line 66
    sget-object v2, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    .line 67
    .line 68
    if-eq v4, v2, :cond_3

    .line 69
    .line 70
    sget-object v2, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    .line 71
    .line 72
    if-eq v4, v2, :cond_3

    .line 73
    .line 74
    sget-object v2, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    .line 75
    .line 76
    if-eq v4, v2, :cond_3

    .line 77
    .line 78
    sget-object v2, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    .line 79
    .line 80
    if-eq v4, v2, :cond_3

    .line 81
    .line 82
    sget-object v2, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    .line 83
    .line 84
    if-ne v4, v2, :cond_2

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    move v2, v0

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    :goto_0
    move v2, v3

    .line 90
    :goto_1
    iget p1, p1, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->value:F

    .line 91
    .line 92
    if-eqz v2, :cond_9

    .line 93
    .line 94
    float-to-double p1, p1

    .line 95
    invoke-virtual {v1, p1, p2}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const/4 p2, 0x2

    .line 100
    new-array p2, p2, [Ljava/lang/Object;

    .line 101
    .line 102
    aput-object p1, p2, v0

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    sget-object v1, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    .line 109
    .line 110
    if-ne v4, v1, :cond_4

    .line 111
    .line 112
    const v1, 0x7f1302e4

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    goto :goto_2

    .line 120
    :cond_4
    sget-object v1, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    .line 121
    .line 122
    if-ne v4, v1, :cond_5

    .line 123
    .line 124
    const v1, 0x7f130a0c

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    sget-object v1, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    .line 133
    .line 134
    if-ne v4, v1, :cond_6

    .line 135
    .line 136
    const v1, 0x7f130b1d

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    goto :goto_2

    .line 144
    :cond_6
    sget-object v1, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    .line 145
    .line 146
    if-ne v4, v1, :cond_7

    .line 147
    .line 148
    const v1, 0x7f1306a2

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    goto :goto_2

    .line 156
    :cond_7
    sget-object v1, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    .line 157
    .line 158
    if-ne v4, v1, :cond_8

    .line 159
    .line 160
    const v1, 0x7f131136

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    goto :goto_2

    .line 168
    :cond_8
    const v1, 0x7f130c96

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    :goto_2
    aput-object p1, p2, v3

    .line 176
    .line 177
    const p1, 0x104052c

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    goto :goto_3

    .line 185
    :cond_9
    sget-object v2, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 186
    .line 187
    invoke-static {p2, v2, v1}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    new-instance v1, Landroid/icu/util/Measure;

    .line 192
    .line 193
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-direct {v1, p1, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2, v1}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    if-ne p0, v3, :cond_b

    .line 225
    .line 226
    invoke-static {v3}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-virtual {p0, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    :cond_b
    :goto_4
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->mNewAppListForAppLabelCache:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$1;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$1;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$1;

    .line 26
    .line 27
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$2;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$2;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$3;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$3;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$4;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$4;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$5;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$5;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$6;

    .line 48
    .line 49
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$6;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$7;

    .line 53
    .line 54
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$7;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$8;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$8;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    .line 63
    .line 64
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$10;

    .line 68
    .line 69
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$10;-><init>()V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$10;

    .line 73
    .line 74
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$11;

    .line 75
    .line 76
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$11;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$12;

    .line 80
    .line 81
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$12;-><init>()V

    .line 82
    .line 83
    .line 84
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$13;

    .line 85
    .line 86
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$13;-><init>()V

    .line 87
    .line 88
    .line 89
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$14;

    .line 90
    .line 91
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$14;-><init>()V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$15;

    .line 95
    .line 96
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$15;-><init>()V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$16;

    .line 100
    .line 101
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$16;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$17;

    .line 105
    .line 106
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$17;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$18;

    .line 110
    .line 111
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$18;-><init>()V

    .line 112
    .line 113
    .line 114
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$19;

    .line 115
    .line 116
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$19;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$20;

    .line 120
    .line 121
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$20;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$21;

    .line 125
    .line 126
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$21;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$22;

    .line 130
    .line 131
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$22;-><init>()V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$22;

    .line 135
    .line 136
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$23;

    .line 137
    .line 138
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$23;-><init>()V

    .line 139
    .line 140
    .line 141
    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$23;

    .line 142
    .line 143
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$24;

    .line 144
    .line 145
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$24;-><init>()V

    .line 146
    .line 147
    .line 148
    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$24;

    .line 149
    .line 150
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$25;

    .line 151
    .line 152
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$25;-><init>()V

    .line 153
    .line 154
    .line 155
    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PHOTOS:Lcom/android/settingslib/applications/ApplicationsState$25;

    .line 156
    .line 157
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$26;

    .line 158
    .line 159
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$26;-><init>()V

    .line 160
    .line 161
    .line 162
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$27;

    .line 163
    .line 164
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$27;-><init>()V

    .line 165
    .line 166
    .line 167
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$28;

    .line 168
    .line 169
    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$28;-><init>()V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Landroid/content/pm/IPackageManager;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, -0x2710

    .line 5
    .line 6
    iput v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mWorkUserId:I

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRefreshCandidatePkgName:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 32
    .line 33
    new-instance v0, Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 46
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 53
    .line 54
    const-wide/16 v0, 0x1

    .line 55
    .line 56
    iput-wide v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    .line 57
    .line 58
    new-instance v2, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    .line 64
    .line 65
    new-instance v2, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    .line 71
    .line 72
    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 73
    .line 74
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-direct {v2, p0, v3}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V

    .line 79
    .line 80
    .line 81
    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 82
    .line 83
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    sput-object v2, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 90
    .line 91
    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 92
    .line 93
    const-class p2, Landroid/os/UserManager;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Landroid/os/UserManager;

    .line 100
    .line 101
    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    .line 102
    .line 103
    const-class v2, Landroid/app/usage/StorageStatsManager;

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Landroid/app/usage/StorageStatsManager;

    .line 110
    .line 111
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mStats:Landroid/app/usage/StorageStatsManager;

    .line 112
    .line 113
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    array-length p2, p1

    .line 122
    const/4 v2, 0x0

    .line 123
    move v3, v2

    .line 124
    :goto_0
    if-ge v3, p2, :cond_0

    .line 125
    .line 126
    aget v4, p1, v3

    .line 127
    .line 128
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 129
    .line 130
    new-instance v6, Ljava/util/HashMap;

    .line 131
    .line 132
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    add-int/lit8 v3, v3, 0x1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    .line 142
    .line 143
    const-string p2, "ApplicationsState.Loader"

    .line 144
    .line 145
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 149
    .line 150
    .line 151
    new-instance p2, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-direct {p2, p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V

    .line 158
    .line 159
    .line 160
    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 161
    .line 162
    const p1, 0x408280

    .line 163
    .line 164
    .line 165
    iput p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    .line 166
    .line 167
    const p1, 0x8280

    .line 168
    .line 169
    .line 170
    iput p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:I

    .line 171
    .line 172
    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    if-eqz p2, :cond_1

    .line 187
    .line 188
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    check-cast p2, Landroid/content/pm/ModuleInfo;

    .line 193
    .line 194
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    .line 195
    .line 196
    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->isHidden()Z

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 213
    .line 214
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 219
    .line 220
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 221
    .line 222
    const-string/jumbo p2, "usagestats"

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Landroid/app/usage/UsageStatsManager;

    .line 230
    .line 231
    sput-object p1, Lcom/android/settingslib/applications/ApplicationsState;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 232
    .line 233
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 234
    .line 235
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    sput-object p1, Lcom/android/settingslib/applications/ApplicationsState;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 240
    .line 241
    const-string/jumbo p1, "usb"

    .line 242
    .line 243
    .line 244
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    sput-object p1, Lcom/android/settingslib/applications/ApplicationsState;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 253
    .line 254
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 255
    .line 256
    monitor-enter p1

    .line 257
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 258
    .line 259
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .line 261
    .line 262
    goto :goto_2

    .line 263
    :catchall_0
    move-exception p0

    .line 264
    goto :goto_3

    .line 265
    :catch_0
    :goto_2
    :try_start_1
    monitor-exit p1

    .line 266
    return-void

    .line 267
    :goto_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    throw p0
.end method

.method public static getInstance(Landroid/app/Application;Landroid/content/pm/IPackageManager;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;-><init>(Landroid/app/Application;Landroid/content/pm/IPackageManager;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;

    .line 14
    .line 15
    :cond_0
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public static hasFlag(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method


# virtual methods
.method public final addPackage(ILjava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->indexOfApplicationInfoLocked(ILjava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ltz v1, :cond_1

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->isUserAdmin(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    iget v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    .line 29
    .line 30
    :goto_0
    int-to-long v2, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    invoke-interface {v1, p2, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :cond_3
    iget-boolean p2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    if-nez p2, :cond_5

    .line 47
    .line 48
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 49
    .line 50
    const/4 v2, 0x3

    .line 51
    if-eq p2, v2, :cond_4

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :cond_4
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 56
    .line 57
    :cond_5
    iget-boolean p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 58
    .line 59
    if-nez p2, :cond_7

    .line 60
    .line 61
    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isAutoDisabled(Landroid/content/pm/ApplicationInfo;)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_6

    .line 66
    .line 67
    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isManualDisabled(Landroid/content/pm/ApplicationInfo;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_7

    .line 72
    .line 73
    :cond_6
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 74
    .line 75
    :cond_7
    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 85
    .line 86
    const/4 p2, 0x2

    .line 87
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_8

    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 96
    .line 97
    .line 98
    :cond_8
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_9

    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 107
    .line 108
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    .line 110
    .line 111
    :cond_9
    monitor-exit v0

    .line 112
    goto :goto_2

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 116
    :catch_0
    :goto_2
    return-void
.end method

.method public clearEntries()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final doPauseLocked()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mClonePackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mClonePackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final doResumeIfNeededLocked()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 15
    .line 16
    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settingslib/applications/ApplicationsState;I)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 20
    .line 21
    new-instance v3, Landroid/content/IntentFilter;

    .line 22
    .line 23
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    .line 24
    .line 25
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v4, "package"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 45
    .line 46
    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v4, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    new-instance v3, Landroid/content/IntentFilter;

    .line 52
    .line 53
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 67
    .line 68
    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {v4, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    new-instance v3, Landroid/content/IntentFilter;

    .line 74
    .line 75
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v4, "android.intent.action.USER_ADDED"

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v4, "android.intent.action.USER_REMOVED"

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 89
    .line 90
    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v4, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mClonePackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 96
    .line 97
    if-nez v1, :cond_4

    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    sget v3, Lcom/android/settingslib/applications/AppUtils;->$r8$clinit:I

    .line 102
    .line 103
    const-class v3, Landroid/os/UserManager;

    .line 104
    .line 105
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Landroid/os/UserManager;

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    const/4 v5, -0x1

    .line 124
    if-eqz v4, :cond_3

    .line 125
    .line 126
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    check-cast v4, Landroid/os/UserHandle;

    .line 131
    .line 132
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    invoke-virtual {v1, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_2

    .line 145
    .line 146
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    goto :goto_0

    .line 151
    :cond_3
    move v1, v5

    .line 152
    :goto_0
    if-eq v1, v5, :cond_4

    .line 153
    .line 154
    new-instance v7, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 155
    .line 156
    invoke-direct {v7, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settingslib/applications/ApplicationsState;I)V

    .line 157
    .line 158
    .line 159
    iput-object v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mClonePackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 160
    .line 161
    new-instance v9, Landroid/content/IntentFilter;

    .line 162
    .line 163
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 164
    .line 165
    invoke-direct {v9, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string/jumbo v3, "package"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v3, v7, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 175
    .line 176
    iget-object v6, v3, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 177
    .line 178
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    const/4 v10, 0x0

    .line 183
    const/4 v11, 0x0

    .line 184
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 185
    .line 186
    .line 187
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .line 191
    .line 192
    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 193
    .line 194
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    .line 195
    .line 196
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-eqz v3, :cond_c

    .line 213
    .line 214
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 219
    .line 220
    :try_start_0
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 221
    .line 222
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 223
    .line 224
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-gez v4, :cond_6

    .line 229
    .line 230
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 231
    .line 232
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 233
    .line 234
    new-instance v6, Ljava/util/HashMap;

    .line 235
    .line 236
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    :cond_6
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 243
    .line 244
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-eqz v5, :cond_7

    .line 249
    .line 250
    iget v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_7
    iget v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:I

    .line 254
    .line 255
    :goto_2
    int-to-long v5, v5

    .line 256
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 257
    .line 258
    invoke-interface {v4, v5, v6, v3}, Landroid/content/pm/IPackageManager;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 263
    .line 264
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    check-cast v4, Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 271
    .line 272
    .line 273
    const-string/jumbo v3, "persist.log.seclevel"

    .line 274
    .line 275
    .line 276
    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    if-ne v3, v0, :cond_8

    .line 281
    .line 282
    move v4, v0

    .line 283
    move v3, v2

    .line 284
    goto :goto_3

    .line 285
    :cond_8
    move v3, v2

    .line 286
    move v4, v3

    .line 287
    :goto_3
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 288
    .line 289
    check-cast v5, Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    if-ge v3, v5, :cond_5

    .line 296
    .line 297
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 298
    .line 299
    check-cast v5, Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 306
    .line 307
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 308
    .line 309
    invoke-static {v6, v5}, Lcom/android/settingslib/applications/AppUtils;->isLanguagePackApk(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    .line 310
    .line 311
    .line 312
    move-result v6

    .line 313
    if-eqz v6, :cond_a

    .line 314
    .line 315
    if-nez v4, :cond_9

    .line 316
    .line 317
    const-string v6, "ApplicationsState"

    .line 318
    .line 319
    new-instance v7, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .line 323
    .line 324
    const-string v8, "doResumeIfNeededLocked: hidden language pack apk= "

    .line 325
    .line 326
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 330
    .line 331
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 342
    .line 343
    check-cast v5, Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    goto :goto_4

    .line 349
    :cond_9
    const-string v6, "ApplicationsState"

    .line 350
    .line 351
    new-instance v7, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    const-string v8, "doResumeIfNeededLocked: don\'t hidden language pack apk= "

    .line 357
    .line 358
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v8, " because secLevel"

    .line 367
    .line 368
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    :cond_a
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 379
    .line 380
    const/high16 v6, 0x800000

    .line 381
    .line 382
    invoke-static {v5, v6}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    .line 383
    .line 384
    .line 385
    move-result v5

    .line 386
    if-nez v5, :cond_b

    .line 387
    .line 388
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 389
    .line 390
    check-cast v5, Ljava/util/ArrayList;

    .line 391
    .line 392
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .line 394
    .line 395
    :goto_4
    add-int/lit8 v3, v3, -0x1

    .line 396
    .line 397
    :cond_b
    add-int/2addr v3, v0

    .line 398
    goto :goto_3

    .line 399
    :catch_0
    move-exception v3

    .line 400
    const-string v4, "ApplicationsState"

    .line 401
    .line 402
    const-string v5, "Error during doResumeIfNeededLocked"

    .line 403
    .line 404
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    .line 406
    .line 407
    goto/16 :goto_1

    .line 408
    .line 409
    :cond_c
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 410
    .line 411
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 412
    .line 413
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 421
    .line 422
    .line 423
    move-result-object v5

    .line 424
    iget-object v6, v1, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 425
    .line 426
    invoke-virtual {v6, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    iget v6, v1, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastDensity:I

    .line 431
    .line 432
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 437
    .line 438
    if-eq v6, v7, :cond_d

    .line 439
    .line 440
    move v6, v0

    .line 441
    goto :goto_5

    .line 442
    :cond_d
    move v6, v2

    .line 443
    :goto_5
    const-string v7, "InterestingConfigChanges"

    .line 444
    .line 445
    if-nez v6, :cond_f

    .line 446
    .line 447
    and-int/lit16 v5, v5, 0x304

    .line 448
    .line 449
    if-eqz v5, :cond_e

    .line 450
    .line 451
    goto :goto_6

    .line 452
    :cond_e
    move v1, v2

    .line 453
    goto :goto_7

    .line 454
    :cond_f
    :goto_6
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 459
    .line 460
    iput v4, v1, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastDensity:I

    .line 461
    .line 462
    const-string v1, "isConfigChanged=true"

    .line 463
    .line 464
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .line 466
    .line 467
    move v1, v0

    .line 468
    :goto_7
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    const-string/jumbo v5, "settings_locale_changed"

    .line 473
    .line 474
    .line 475
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 476
    .line 477
    .line 478
    move-result v4

    .line 479
    if-ne v4, v0, :cond_10

    .line 480
    .line 481
    const-string v1, "isLocaleChanged=true"

    .line 482
    .line 483
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 491
    .line 492
    .line 493
    move v1, v0

    .line 494
    :cond_10
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    const-string v4, "current_sec_appicon_theme_package"

    .line 499
    .line 500
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    sget-object v4, Lcom/android/settingslib/applications/InterestingConfigChanges;->mCachedAppIconPkg:Ljava/lang/String;

    .line 505
    .line 506
    if-eqz v4, :cond_11

    .line 507
    .line 508
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    if-eqz v4, :cond_12

    .line 513
    .line 514
    :cond_11
    if-eqz v3, :cond_13

    .line 515
    .line 516
    sget-object v4, Lcom/android/settingslib/applications/InterestingConfigChanges;->mCachedAppIconPkg:Ljava/lang/String;

    .line 517
    .line 518
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    if-nez v4, :cond_13

    .line 523
    .line 524
    :cond_12
    const-string v1, "isIconThemeChanged=true"

    .line 525
    .line 526
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .line 528
    .line 529
    move v1, v0

    .line 530
    :cond_13
    sput-object v3, Lcom/android/settingslib/applications/InterestingConfigChanges;->mCachedAppIconPkg:Ljava/lang/String;

    .line 531
    .line 532
    if-eqz v1, :cond_14

    .line 533
    .line 534
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->clearEntries()V

    .line 535
    .line 536
    .line 537
    goto :goto_9

    .line 538
    :cond_14
    move v1, v2

    .line 539
    :goto_8
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 540
    .line 541
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 542
    .line 543
    .line 544
    move-result v3

    .line 545
    if-ge v1, v3, :cond_15

    .line 546
    .line 547
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 548
    .line 549
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 554
    .line 555
    iput-boolean v0, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 556
    .line 557
    add-int/lit8 v1, v1, 0x1

    .line 558
    .line 559
    goto :goto_8

    .line 560
    :cond_15
    :goto_9
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 561
    .line 562
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    move v3, v2

    .line 567
    :goto_a
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 568
    .line 569
    check-cast v4, Ljava/util/ArrayList;

    .line 570
    .line 571
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 572
    .line 573
    .line 574
    move-result v4

    .line 575
    if-ge v3, v4, :cond_20

    .line 576
    .line 577
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 578
    .line 579
    check-cast v4, Ljava/util/ArrayList;

    .line 580
    .line 581
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v4

    .line 585
    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 586
    .line 587
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    const-string v6, "CscFeature_Setting_ConfigAppListForHidingAppMgr"

    .line 592
    .line 593
    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v5

    .line 597
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 598
    .line 599
    .line 600
    move-result v5

    .line 601
    if-nez v5, :cond_18

    .line 602
    .line 603
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 604
    .line 605
    .line 606
    move-result-object v5

    .line 607
    const-string v6, "CscFeature_Setting_ConfigAppListForHidingAppMgr"

    .line 608
    .line 609
    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v5

    .line 613
    const-string v6, ","

    .line 614
    .line 615
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v5

    .line 619
    array-length v6, v5

    .line 620
    move v7, v2

    .line 621
    :goto_b
    if-ge v7, v6, :cond_17

    .line 622
    .line 623
    aget-object v8, v5, v7

    .line 624
    .line 625
    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 626
    .line 627
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v9

    .line 631
    if-eqz v9, :cond_16

    .line 632
    .line 633
    const-string v5, "ApplicationsState"

    .line 634
    .line 635
    const-string v6, "hideAppList : "

    .line 636
    .line 637
    const-string v7, " is removed from mApplications"

    .line 638
    .line 639
    invoke-static {v6, v8, v7, v5}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 643
    .line 644
    check-cast v5, Ljava/util/ArrayList;

    .line 645
    .line 646
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move v5, v0

    .line 650
    goto :goto_c

    .line 651
    :cond_16
    add-int/lit8 v7, v7, 0x1

    .line 652
    .line 653
    goto :goto_b

    .line 654
    :cond_17
    move v5, v2

    .line 655
    :goto_c
    if-eqz v5, :cond_18

    .line 656
    .line 657
    goto/16 :goto_f

    .line 658
    .line 659
    :cond_18
    iget-boolean v5, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 660
    .line 661
    if-nez v5, :cond_1b

    .line 662
    .line 663
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 664
    .line 665
    const/4 v6, 0x3

    .line 666
    if-eq v5, v6, :cond_19

    .line 667
    .line 668
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 669
    .line 670
    check-cast v4, Ljava/util/ArrayList;

    .line 671
    .line 672
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    add-int/lit8 v3, v3, -0x1

    .line 676
    .line 677
    goto :goto_f

    .line 678
    :cond_19
    iget v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mWorkUserId:I

    .line 679
    .line 680
    if-lez v5, :cond_1a

    .line 681
    .line 682
    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 683
    .line 684
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 685
    .line 686
    .line 687
    move-result v6

    .line 688
    if-ne v5, v6, :cond_1a

    .line 689
    .line 690
    goto :goto_d

    .line 691
    :cond_1a
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 692
    .line 693
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 694
    .line 695
    .line 696
    move-result v5

    .line 697
    if-ne v1, v5, :cond_1b

    .line 698
    .line 699
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 700
    .line 701
    :cond_1b
    :goto_d
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 702
    .line 703
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    .line 704
    .line 705
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v5

    .line 709
    check-cast v5, Ljava/lang/Boolean;

    .line 710
    .line 711
    if-nez v5, :cond_1c

    .line 712
    .line 713
    move v5, v2

    .line 714
    goto :goto_e

    .line 715
    :cond_1c
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 716
    .line 717
    .line 718
    move-result v5

    .line 719
    :goto_e
    if-eqz v5, :cond_1d

    .line 720
    .line 721
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 722
    .line 723
    add-int/lit8 v5, v3, -0x1

    .line 724
    .line 725
    check-cast v4, Ljava/util/ArrayList;

    .line 726
    .line 727
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move v3, v5

    .line 731
    goto :goto_f

    .line 732
    :cond_1d
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRefreshCandidatePkgName:Ljava/lang/String;

    .line 733
    .line 734
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 735
    .line 736
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    move-result v5

    .line 740
    if-eqz v5, :cond_1e

    .line 741
    .line 742
    const-string v5, ""

    .line 743
    .line 744
    iput-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRefreshCandidatePkgName:Ljava/lang/String;

    .line 745
    .line 746
    :cond_1e
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 747
    .line 748
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 749
    .line 750
    .line 751
    move-result v5

    .line 752
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 753
    .line 754
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v5

    .line 758
    check-cast v5, Ljava/util/HashMap;

    .line 759
    .line 760
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 761
    .line 762
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v5

    .line 766
    check-cast v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 767
    .line 768
    if-eqz v5, :cond_1f

    .line 769
    .line 770
    iput-object v4, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 771
    .line 772
    :cond_1f
    :goto_f
    add-int/2addr v3, v0

    .line 773
    goto/16 :goto_a

    .line 774
    .line 775
    :cond_20
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRefreshCandidatePkgName:Ljava/lang/String;

    .line 776
    .line 777
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 778
    .line 779
    .line 780
    move-result v0

    .line 781
    const/4 v1, 0x0

    .line 782
    const/4 v3, 0x2

    .line 783
    if-lez v0, :cond_24

    .line 784
    .line 785
    move v0, v2

    .line 786
    :goto_10
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 787
    .line 788
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 789
    .line 790
    .line 791
    move-result v4

    .line 792
    if-ge v0, v4, :cond_24

    .line 793
    .line 794
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRefreshCandidatePkgName:Ljava/lang/String;

    .line 795
    .line 796
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 797
    .line 798
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 799
    .line 800
    .line 801
    move-result v5

    .line 802
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 803
    .line 804
    monitor-enter v6

    .line 805
    :try_start_1
    iget-object v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 806
    .line 807
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v7

    .line 811
    if-eqz v7, :cond_21

    .line 812
    .line 813
    iget-object v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 814
    .line 815
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v7

    .line 819
    check-cast v7, Ljava/util/HashMap;

    .line 820
    .line 821
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v7

    .line 825
    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 826
    .line 827
    goto :goto_11

    .line 828
    :catchall_0
    move-exception p0

    .line 829
    goto :goto_12

    .line 830
    :catch_1
    move-exception v7

    .line 831
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 832
    .line 833
    .line 834
    :cond_21
    move-object v7, v1

    .line 835
    :goto_11
    if-eqz v7, :cond_22

    .line 836
    .line 837
    iget-object v8, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 838
    .line 839
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v8

    .line 843
    if-eqz v8, :cond_22

    .line 844
    .line 845
    iget-object v8, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 846
    .line 847
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v5

    .line 851
    check-cast v5, Ljava/util/HashMap;

    .line 852
    .line 853
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 857
    .line 858
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 859
    .line 860
    .line 861
    :cond_22
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 862
    .line 863
    invoke-virtual {v4, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 864
    .line 865
    .line 866
    move-result v4

    .line 867
    if-nez v4, :cond_23

    .line 868
    .line 869
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 870
    .line 871
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 872
    .line 873
    .line 874
    :cond_23
    monitor-exit v6

    .line 875
    add-int/lit8 v0, v0, 0x1

    .line 876
    .line 877
    goto :goto_10

    .line 878
    :goto_12
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 879
    throw p0

    .line 880
    :cond_24
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 881
    .line 882
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 883
    .line 884
    .line 885
    move-result v0

    .line 886
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 887
    .line 888
    check-cast v4, Ljava/util/ArrayList;

    .line 889
    .line 890
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 891
    .line 892
    .line 893
    move-result v4

    .line 894
    if-le v0, v4, :cond_25

    .line 895
    .line 896
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->clearEntries()V

    .line 897
    .line 898
    .line 899
    :cond_25
    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 900
    .line 901
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 902
    .line 903
    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 904
    .line 905
    .line 906
    move-result v0

    .line 907
    if-nez v0, :cond_29

    .line 908
    .line 909
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 910
    .line 911
    .line 912
    move-result-wide v0

    .line 913
    iput-wide v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppLoadStartTime:J

    .line 914
    .line 915
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 916
    .line 917
    new-instance v1, Ljava/util/HashMap;

    .line 918
    .line 919
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 920
    .line 921
    .line 922
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 923
    .line 924
    .line 925
    move-result-object v4

    .line 926
    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v4

    .line 930
    const-string v5, "AppListPreference"

    .line 931
    .line 932
    invoke-virtual {v0, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 933
    .line 934
    .line 935
    move-result-object v2

    .line 936
    const-string v5, "CachedLocale"

    .line 937
    .line 938
    const-string v6, ""

    .line 939
    .line 940
    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v2

    .line 944
    new-instance v5, Ljava/lang/StringBuilder;

    .line 945
    .line 946
    const-string v6, "isValidCache() cached : "

    .line 947
    .line 948
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    .line 953
    .line 954
    const-string v6, " / current "

    .line 955
    .line 956
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    .line 958
    .line 959
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v5

    .line 966
    const-string v6, "AppListCacheManager"

    .line 967
    .line 968
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    .line 970
    .line 971
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 972
    .line 973
    .line 974
    move-result v2

    .line 975
    if-nez v2, :cond_26

    .line 976
    .line 977
    const-string v0, "getAppLabelCache : invalid cache!!"

    .line 978
    .line 979
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    .line 981
    .line 982
    goto :goto_16

    .line 983
    :cond_26
    :try_start_3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 984
    .line 985
    .line 986
    move-result-object v7

    .line 987
    sget-object v8, Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheProviderContract;->URI_APP_LIST:Landroid/net/Uri;

    .line 988
    .line 989
    const/4 v9, 0x0

    .line 990
    const/4 v10, 0x0

    .line 991
    const/4 v11, 0x0

    .line 992
    const/4 v12, 0x0

    .line 993
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 994
    .line 995
    .line 996
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 997
    if-eqz v0, :cond_27

    .line 998
    .line 999
    :goto_13
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1000
    .line 1001
    .line 1002
    move-result v2

    .line 1003
    if-eqz v2, :cond_27

    .line 1004
    .line 1005
    new-instance v2, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;

    .line 1006
    .line 1007
    invoke-direct {v2}, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;-><init>()V

    .line 1008
    .line 1009
    .line 1010
    const-string/jumbo v4, "package_name"

    .line 1011
    .line 1012
    .line 1013
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 1014
    .line 1015
    .line 1016
    move-result v4

    .line 1017
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v4

    .line 1021
    iput-object v4, v2, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;->packageName:Ljava/lang/String;

    .line 1022
    .line 1023
    const-string v4, "app_title"

    .line 1024
    .line 1025
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 1026
    .line 1027
    .line 1028
    move-result v4

    .line 1029
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v4

    .line 1033
    iput-object v4, v2, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;->label:Ljava/lang/String;

    .line 1034
    .line 1035
    const-string v4, "last_updated"

    .line 1036
    .line 1037
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 1038
    .line 1039
    .line 1040
    move-result v4

    .line 1041
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 1042
    .line 1043
    .line 1044
    move-result-wide v4

    .line 1045
    iput-wide v4, v2, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;->lastUpdateTime:J

    .line 1046
    .line 1047
    iget-object v4, v2, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;->packageName:Ljava/lang/String;

    .line 1048
    .line 1049
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1050
    .line 1051
    .line 1052
    goto :goto_13

    .line 1053
    :catchall_1
    move-exception v2

    .line 1054
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1055
    .line 1056
    .line 1057
    goto :goto_14

    .line 1058
    :catchall_2
    move-exception v0

    .line 1059
    :try_start_6
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1060
    .line 1061
    .line 1062
    :goto_14
    throw v2

    .line 1063
    :cond_27
    if-eqz v0, :cond_28

    .line 1064
    .line 1065
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1066
    .line 1067
    .line 1068
    goto :goto_15

    .line 1069
    :catch_2
    move-exception v0

    .line 1070
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1071
    .line 1072
    .line 1073
    :cond_28
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    const-string v2, "getAppLabelCache data size: "

    .line 1076
    .line 1077
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 1081
    .line 1082
    .line 1083
    move-result v2

    .line 1084
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v0

    .line 1091
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    .line 1093
    .line 1094
    :goto_16
    sput-object v1, Lcom/android/settingslib/applications/ApplicationsState;->mAppLabelCache:Ljava/util/HashMap;

    .line 1095
    .line 1096
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->mNewAppListForAppLabelCache:Ljava/util/ArrayList;

    .line 1097
    .line 1098
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1099
    .line 1100
    .line 1101
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 1102
    .line 1103
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1104
    .line 1105
    .line 1106
    :cond_29
    return-void
.end method

.method public final indexOfApplicationInfoLocked(ILjava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 28
    .line 29
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ne v1, p1, :cond_0

    .line 34
    .line 35
    return v0

    .line 36
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p0, -0x1

    .line 40
    return p0
.end method

.method public final removePackage(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->indexOfApplicationInfoLocked(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ltz v1, :cond_7

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 49
    .line 50
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-boolean p2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 56
    .line 57
    if-nez p2, :cond_4

    .line 58
    .line 59
    const/4 p2, 0x0

    .line 60
    iput-boolean p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 61
    .line 62
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 79
    .line 80
    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    if-nez v2, :cond_2

    .line 84
    .line 85
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iget-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 89
    .line 90
    if-nez v2, :cond_1

    .line 91
    .line 92
    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isAutoDisabled(Landroid/content/pm/ApplicationInfo;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_3

    .line 97
    .line 98
    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isManualDisabled(Landroid/content/pm/ApplicationInfo;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_1

    .line 103
    .line 104
    :cond_3
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_6

    .line 124
    .line 125
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .line 130
    .line 131
    invoke-static {p2}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    if-eqz p2, :cond_5

    .line 136
    .line 137
    :cond_6
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 138
    .line 139
    const/4 p2, 0x2

    .line 140
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_7

    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 147
    .line 148
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 149
    .line 150
    .line 151
    :cond_7
    monitor-exit v0

    .line 152
    return-void

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    throw p0
.end method

.method public setInterestingConfigChanges(Lcom/android/settingslib/applications/InterestingConfigChanges;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 2
    .line 3
    return-void
.end method
