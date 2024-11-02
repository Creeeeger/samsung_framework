.class public final Lcom/android/systemui/statusbar/policy/QSClockBellTower;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/demomode/DemoModeCommandReceiver;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final DEBUG:Z

.field public static final NNBSP_UNICODE:Ljava/lang/String;


# instance fields
.field public final mAlternateCalendarUtil:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

.field public final mAudienceList:Ljava/util/HashMap;

.field public mCalendar:Ljava/util/Calendar;

.field public mClockFormat:Ljava/text/SimpleDateFormat;

.field public mClockFormatString:Ljava/lang/String;

.field public mClockFormatStringWithSeconds:Ljava/lang/String;

.field public mClockFormatWithSeconds:Ljava/text/SimpleDateFormat;

.field public mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentDate:Ljava/util/Date;

.field public final mCurrentShortenDate:Ljava/util/Date;

.field public mDateStringFormat:Ljava/lang/String;

.field public mDateStringPattern:Ljava/lang/String;

.field public mDemoMode:Z

.field public mFirstTimeZoneChangeLogString:Ljava/lang/StringBuilder;

.field public final mHandler:Landroid/os/Handler;

.field public mLastTimeZoneChangeLogString:Ljava/lang/StringBuilder;

.field public mLocale:Ljava/util/Locale;

.field public mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

.field public final mQSClockQuickStarHelper:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

.field public mQuickStarDateStringFormat:Ljava/lang/String;

.field public mQuickStarDateStringPattern:Ljava/lang/String;

.field public final mSettingListener:Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mShortenDateStringFormat:Ljava/lang/String;

.field public mShortenDateStringPattern:Ljava/lang/String;

.field public final mTimeBroadcastReceiver:Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;

.field public final mUpdateNotifyNewClockTime:Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->DEBUG:Z

    .line 6
    .line 7
    const/16 v0, 0x202f

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->NNBSP_UNICODE:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/BootAnimationFinishedCache;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p7

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v4, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v4, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    .line 16
    .line 17
    new-instance v4, Ljava/util/Date;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v4, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentDate:Ljava/util/Date;

    .line 23
    .line 24
    new-instance v4, Ljava/util/Date;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v4, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentShortenDate:Ljava/util/Date;

    .line 30
    .line 31
    new-instance v4, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;I)V

    .line 35
    .line 36
    .line 37
    iput-object v4, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mTimeBroadcastReceiver:Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;

    .line 38
    .line 39
    new-instance v4, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;

    .line 40
    .line 41
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    .line 42
    .line 43
    .line 44
    iput-object v4, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mUpdateNotifyNewClockTime:Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;

    .line 45
    .line 46
    new-instance v6, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;

    .line 47
    .line 48
    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    .line 49
    .line 50
    .line 51
    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mSettingListener:Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;

    .line 52
    .line 53
    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    sget-object v7, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 56
    .line 57
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    check-cast v7, Landroid/os/Handler;

    .line 62
    .line 63
    iput-object v7, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    .line 64
    .line 65
    new-instance v7, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

    .line 66
    .line 67
    new-instance v8, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda0;

    .line 68
    .line 69
    invoke-direct {v8, p0, v5}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 70
    .line 71
    .line 72
    move-object/from16 v9, p3

    .line 73
    .line 74
    invoke-direct {v7, v9, v8}, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    iput-object v7, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockQuickStarHelper:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

    .line 78
    .line 79
    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 80
    .line 81
    const-string/jumbo v7, "quickstar_indicator_clock_date_format"

    .line 82
    .line 83
    .line 84
    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    filled-new-array {v7}, [Landroid/net/Uri;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v3, v6, v7}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    .line 104
    .line 105
    if-eqz v1, :cond_0

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    .line 124
    .line 125
    :cond_0
    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAlternateCalendarUtil:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    .line 126
    .line 127
    iput-object v4, v2, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mUpdateNotifyNewClockTime:Ljava/lang/Runnable;

    .line 128
    .line 129
    new-instance v1, Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    .line 130
    .line 131
    const-string v6, "00:00"

    .line 132
    .line 133
    const-string v7, "00:00"

    .line 134
    .line 135
    const-string v8, "...."

    .line 136
    .line 137
    const-string v9, ".."

    .line 138
    .line 139
    const/4 v10, 0x0

    .line 140
    const-string v11, "00:00:00"

    .line 141
    .line 142
    const/4 v12, 0x0

    .line 143
    const-string v13, ".."

    .line 144
    .line 145
    move-object v5, v1

    .line 146
    invoke-direct/range {v5 .. v13}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    .line 150
    .line 151
    new-instance v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda1;

    .line 152
    .line 153
    move-object/from16 v2, p4

    .line 154
    .line 155
    move-object/from16 v3, p5

    .line 156
    .line 157
    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/keyguard/ScreenLifecycle;)V

    .line 158
    .line 159
    .line 160
    move-object/from16 v0, p6

    .line 161
    .line 162
    check-cast v0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->addListener(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)Z

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public static getBasicSmallTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const v0, 0xef00

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0xef01

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ltz v0, :cond_2

    .line 16
    .line 17
    if-le v1, v0, :cond_2

    .line 18
    .line 19
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    invoke-virtual {v2, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    invoke-virtual {v2, p0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    move v0, p0

    .line 41
    :goto_0
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-le v1, v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v2, p0, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :cond_2
    return-object p0
.end method


# virtual methods
.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, "millis"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const-string v0, "hhmm"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    const/4 v1, 0x4

    .line 33
    if-ne p2, v1, :cond_3

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_1

    .line 61
    .line 62
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-static {v2, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    :cond_1
    if-eqz p2, :cond_2

    .line 71
    .line 72
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    .line 73
    .line 74
    const/16 v2, 0xb

    .line 75
    .line 76
    invoke-virtual {p2, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    .line 81
    .line 82
    const/16 v2, 0xa

    .line 83
    .line 84
    invoke-virtual {p2, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 85
    .line 86
    .line 87
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    .line 88
    .line 89
    const/16 v1, 0xc

    .line 90
    .line 91
    invoke-virtual {p2, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    .line 95
    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    new-instance p2, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    .line 105
    .line 106
    :cond_4
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mFirstTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "   "

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mFirstTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLastTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLastTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    const-string p0, "    mAudienceList("

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_2

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p0, ", "

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    const-string p0, ")\n"

    .line 100
    .line 101
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final getBestPatternFormat(Z)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Ljava/util/Locale;

    .line 34
    .line 35
    const-string v3, "ko"

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    const-string p0, "a H:mm:ss"

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    .line 54
    .line 55
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    const-string v0, "H"

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const-string v0, "h"

    .line 70
    .line 71
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, "m"

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    const-string/jumbo p1, "s"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method

.method public final onDemoModeFinished()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final registerAudience(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "registerAudience() ticket:"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->getTicket()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "QSClockBellTower"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->getTicket()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    .line 38
    .line 39
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->notifyTimeChanged(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final ringBellOfTower()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower(Z)V

    return-void
.end method

.method public final ringBellOfTower(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 2
    new-instance v10, Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    .line 3
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    const-string v11, "QSClockBellTower"

    const-string v2, ")"

    const-string v3, ", format:"

    const/4 v4, 0x0

    const-string v5, ""

    if-nez v1, :cond_0

    const-string v1, "12:34"

    :goto_0
    move-object v6, v1

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getBestPatternFormat(Z)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormat:Ljava/text/SimpleDateFormat;

    goto :goto_1

    .line 7
    :cond_1
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getSmallTime recalculate time format (mClockFormatString:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_2
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    .line 10
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QSClockUtils;->getBasicClockFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 11
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getBestPatternFormat(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatString:Ljava/lang/String;

    move-object v1, v6

    .line 12
    :goto_1
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getBasicSmallTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->NNBSP_UNICODE:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 13
    :goto_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_3

    .line 14
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object v7, v5

    .line 15
    :goto_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    const v1, 0x7f131121

    .line 16
    invoke-virtual {v12, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringPattern:Ljava/lang/String;

    .line 17
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringPattern:Ljava/lang/String;

    invoke-static {v1, v13}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 18
    :catch_0
    iput-object v8, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    move-object v4, v5

    goto/16 :goto_7

    .line 19
    :cond_4
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentDate:Ljava/util/Date;

    invoke-virtual {v1, v13, v14}, Ljava/util/Date;->setTime(J)V

    .line 20
    new-instance v13, Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    .line 21
    invoke-static {v14, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAlternateCalendarUtil:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    sget-boolean v14, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR:Z

    if-eqz v14, :cond_8

    .line 24
    iget-object v14, v1, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    sget-boolean v15, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR_LUNAR_IN_VIETNAM:Z

    iget-object v14, v14, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    if-eqz v15, :cond_5

    const-string v15, "aodlock_support_lunar"

    .line 26
    invoke-virtual {v14, v15}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v15

    if-ne v15, v9, :cond_5

    move v15, v9

    goto :goto_5

    :cond_5
    move v15, v4

    :goto_5
    if-nez v15, :cond_7

    .line 27
    sget-boolean v15, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR_HIJRI:Z

    if-eqz v15, :cond_6

    const-string v15, "aodlock_support_hijri"

    invoke-virtual {v14, v15}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v14

    if-ne v14, v9, :cond_6

    move v14, v9

    goto :goto_6

    :cond_6
    move v14, v4

    :goto_6
    if-nez v14, :cond_7

    .line 28
    sget-boolean v14, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR_PERSIAN:Z

    if-eqz v14, :cond_8

    :cond_7
    move v4, v9

    :cond_8
    if-eqz v4, :cond_a

    .line 29
    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mCachedAlternateCalendar:Ljava/lang/String;

    const-string v14, "."

    .line 30
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 31
    invoke-virtual {v1, v14}, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->updateAlternateCalendar(Ljava/lang/String;)V

    .line 32
    :cond_9
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mCachedAlternateCalendar:Ljava/lang/String;

    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_a
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 35
    :goto_7
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v13, 0x7f130d5c

    if-eqz v1, :cond_b

    .line 36
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringPattern:Ljava/lang/String;

    .line 37
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringPattern:Ljava/lang/String;

    invoke-static {v1, v14}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    .line 38
    :catch_1
    iput-object v8, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;

    move-object v14, v5

    goto :goto_9

    .line 39
    :cond_b
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentShortenDate:Ljava/util/Date;

    invoke-virtual {v1, v14, v15}, Ljava/util/Date;->setTime(J)V

    .line 40
    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;

    invoke-static {v14, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .line 41
    :goto_9
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockQuickStarHelper:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->shouldShowSecondsClock()Z

    move-result v15

    if-nez v15, :cond_c

    goto :goto_a

    .line 42
    :cond_c
    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    if-nez v15, :cond_d

    :goto_a
    const-string v2, "12:34:56"

    move-object v9, v2

    move-object v13, v10

    goto :goto_c

    .line 43
    :cond_d
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getBestPatternFormat(Z)Ljava/lang/String;

    move-result-object v15

    .line 44
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatStringWithSeconds:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 45
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "getSmallTimeWithSeconds() recalculate time format (mClockFormatString:"

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatStringWithSeconds:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {v15}, Lcom/android/systemui/statusbar/policy/QSClockUtils;->getBasicClockFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatWithSeconds:Ljava/text/SimpleDateFormat;

    .line 47
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getBestPatternFormat(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatStringWithSeconds:Ljava/lang/String;

    goto :goto_b

    .line 48
    :cond_e
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatWithSeconds:Ljava/text/SimpleDateFormat;

    .line 49
    :goto_b
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    move-object v13, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 50
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getBasicSmallTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 51
    :goto_c
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->shouldShowSecondsClock()Z

    move-result v10

    .line 52
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQuickStarDateStringFormat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 53
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v2, "quickstar_indicator_clock_date_format"

    .line 54
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_12

    const/4 v3, 0x2

    if-eq v1, v3, :cond_11

    if-eq v1, v2, :cond_10

    const/4 v2, 0x4

    if-eq v1, v2, :cond_f

    const v2, 0x7f130d5c

    .line 55
    invoke-virtual {v12, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQuickStarDateStringPattern:Ljava/lang/String;

    goto :goto_d

    :cond_f
    const v2, 0x7f130e25

    .line 56
    invoke-virtual {v12, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQuickStarDateStringPattern:Ljava/lang/String;

    goto :goto_d

    :cond_10
    const v2, 0x7f130e23

    .line 57
    invoke-virtual {v12, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQuickStarDateStringPattern:Ljava/lang/String;

    goto :goto_d

    :cond_11
    const v2, 0x7f130e24

    .line 58
    invoke-virtual {v12, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQuickStarDateStringPattern:Ljava/lang/String;

    goto :goto_d

    .line 59
    :cond_12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/text/SimpleDateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\W?[Yy]+\\W?"

    .line 60
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQuickStarDateStringPattern:Ljava/lang/String;

    :goto_d
    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 62
    :try_start_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQuickStarDateStringPattern:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQuickStarDateStringFormat:Ljava/lang/String;

    goto :goto_e

    .line 63
    :cond_13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQuickStarDateStringPattern:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQuickStarDateStringFormat:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_e

    :catch_2
    const/4 v1, 0x0

    .line 64
    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQuickStarDateStringFormat:Ljava/lang/String;

    move-object v12, v5

    goto :goto_f

    .line 65
    :cond_14
    :goto_e
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 67
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQuickStarDateStringFormat:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    :goto_f
    move-object v1, v13

    move-object v2, v6

    move-object v3, v7

    move-object v5, v14

    move/from16 v6, p1

    move-object v7, v9

    move v8, v10

    move-object v9, v12

    .line 68
    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "He is ready to ring the bell. ((("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda3;

    invoke-direct {v1, v13}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final unregisterAudience(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "unregisterAudience() ticket:"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->getTicket()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "QSClockBellTower"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->getTicket()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    return-void
.end method
