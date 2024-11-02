.class public final Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final SETTING_KEY_HIJRI_CALENDAR_URI:Landroid/net/Uri;

.field public static final SETTING_KEY_LUNAR_CALENDAR_URI:Landroid/net/Uri;


# instance fields
.field public final mAlternateCalendarSettingCallback:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$$ExternalSyntheticLambda0;

.field public mCachedAlternateCalendar:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mUpdateNotifyNewClockTime:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "aodlock_support_lunar"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->SETTING_KEY_LUNAR_CALENDAR_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string v0, "aodlock_support_hijri"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->SETTING_KEY_HIJRI_CALENDAR_URI:Landroid/net/Uri;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "."

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mCachedAlternateCalendar:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mAlternateCalendarSettingCallback:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    sget-object v1, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->SETTING_KEY_LUNAR_CALENDAR_URI:Landroid/net/Uri;

    .line 16
    .line 17
    sget-object v2, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->SETTING_KEY_HIJRI_CALENDAR_URI:Landroid/net/Uri;

    .line 18
    .line 19
    filled-new-array {v1, v2}, [Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 28
    .line 29
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR:Z

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p3, v0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$UpdateHelperByContent;

    .line 37
    .line 38
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$UpdateHelperByContent;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;Landroid/os/Handler;)V

    .line 39
    .line 40
    .line 41
    :try_start_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$UpdateHelperByContent;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p2, "content://com.samsung.android.app.clockpack.provider/alternate_calendar"

    .line 50
    .line 51
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const/4 p3, 0x1

    .line 56
    invoke-virtual {p0, p2, p3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    const-string p1, "QSClockBellTower"

    .line 62
    .line 63
    const-string p2, "Exception is caught in init()"

    .line 64
    .line 65
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final updateAlternateCalendar(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "android.intent.action.TIME_SET"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "android.intent.action.DATE_CHANGED"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_5

    .line 48
    .line 49
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR_HIJRI:Z

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    filled-new-array {v0}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const/4 v0, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string p1, "content://com.samsung.android.app.clockpack.provider/clock_pack_settings/get_alternate_calendar_complete_text"

    .line 67
    .line 68
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const/4 v4, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 76
    .line 77
    .line 78
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-lez v1, :cond_1

    .line 86
    .line 87
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    move-object v1, v0

    .line 102
    :goto_0
    if-eqz p1, :cond_3

    .line 103
    .line 104
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    goto :goto_3

    .line 110
    :catch_1
    move-exception p1

    .line 111
    move-object v1, p1

    .line 112
    move-object p1, v0

    .line 113
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    .line 115
    .line 116
    if-eqz p1, :cond_2

    .line 117
    .line 118
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 119
    .line 120
    .line 121
    :cond_2
    move-object v1, v0

    .line 122
    :cond_3
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_4

    .line 127
    .line 128
    const-string p1, " ("

    .line 129
    .line 130
    const-string v0, ")"

    .line 131
    .line 132
    invoke-static {p1, v1, v0}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :cond_4
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mCachedAlternateCalendar:Ljava/lang/String;

    .line 137
    .line 138
    :cond_5
    return-void

    .line 139
    :catchall_1
    move-exception p0

    .line 140
    move-object v0, p1

    .line 141
    :goto_3
    if-eqz v0, :cond_6

    .line 142
    .line 143
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 144
    .line 145
    .line 146
    :cond_6
    throw p0
.end method
