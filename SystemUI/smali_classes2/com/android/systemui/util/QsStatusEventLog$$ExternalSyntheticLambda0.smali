.class public final synthetic Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/QsStatusEventLog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/QsStatusEventLog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/QsStatusEventLog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/QsStatusEventLog;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/systemui/util/QsStatusEventLog;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string v3, "QsStatusEventLog_prefs"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-string v6, "big_data_weekly_time_stored_in_milliseconds"

    .line 20
    .line 21
    invoke-interface {v5, v6, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v7

    .line 25
    sub-long v7, v0, v7

    .line 26
    .line 27
    const-wide/16 v9, 0x0

    .line 28
    .line 29
    cmp-long v5, v7, v9

    .line 30
    .line 31
    if-gtz v5, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p0, v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_0
    sget-object v5, Lcom/android/systemui/util/QsStatusEventLog;->SA_SEVEN_DAYS_IN_MILLISECONDS:Ljava/lang/Long;

    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v9

    .line 55
    cmp-long v5, v7, v9

    .line 56
    .line 57
    if-lez v5, :cond_2

    .line 58
    .line 59
    const-string v5, "QsStatusEventLog"

    .line 60
    .line 61
    const-string v7, " time difference greater than seven days. Send Weekly status logs."

    .line 62
    .line 63
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v2, v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/systemui/util/QsStatusEventLog;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    sget-object v2, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/systemui/qs/QSTileHost;->mQQSTileHost:Lcom/android/systemui/qs/SecQQSTileHost;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    move v3, v4

    .line 102
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    iget-object v6, p0, Lcom/android/systemui/util/QsStatusEventLog;->mHandler:Landroid/os/Handler;

    .line 107
    .line 108
    if-eqz v5, :cond_1

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile;

    .line 115
    .line 116
    new-instance v7, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda1;

    .line 117
    .line 118
    invoke-direct {v7, v5, v2, v4}, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    mul-int/lit8 v5, v3, 0x64

    .line 122
    .line 123
    int-to-long v8, v5

    .line 124
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    .line 126
    .line 127
    add-int/lit8 v3, v3, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_2

    .line 139
    .line 140
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 145
    .line 146
    new-instance v1, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda1;

    .line 147
    .line 148
    const/4 v4, 0x1

    .line 149
    invoke-direct {v1, v0, v2, v4}, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Ljava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    mul-int/lit8 v0, v3, 0x64

    .line 153
    .line 154
    int-to-long v7, v0

    .line 155
    invoke-virtual {v6, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    .line 157
    .line 158
    add-int/2addr v3, v4

    .line 159
    goto :goto_1

    .line 160
    :cond_2
    :goto_2
    return-void
.end method
