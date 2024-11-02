.class public final Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$2;
.super Ljava/lang/Thread;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$2;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$2;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->DEBUG:Z

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "DataUsageLabelView"

    .line 9
    .line 10
    const-string/jumbo v2, "query result: "

    .line 11
    .line 12
    .line 13
    const-string v3, ""

    .line 14
    .line 15
    :try_start_0
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-string v4, "content://com.samsung.android.sm.dcapi"

    .line 22
    .line 23
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    const/4 v7, 0x0

    .line 28
    const-string v8, "getUsageLabel"

    .line 29
    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v10, 0x0

    .line 32
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 33
    .line 34
    .line 35
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catchall_0
    move-exception v2

    .line 70
    goto :goto_0

    .line 71
    :catchall_1
    move-exception v2

    .line 72
    move-object v6, v3

    .line 73
    :goto_0
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_2
    move-exception v4

    .line 78
    :try_start_4
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    throw v2

    .line 82
    :cond_0
    move-object v6, v3

    .line 83
    :goto_2
    if-eqz v4, :cond_1

    .line 84
    .line 85
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_4

    .line 89
    :catch_0
    move-exception v2

    .line 90
    goto :goto_3

    .line 91
    :catch_1
    move-exception v2

    .line 92
    move-object v6, v3

    .line 93
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string/jumbo v5, "query Data Usage fail: "

    .line 96
    .line 97
    .line 98
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    :cond_1
    :goto_4
    if-nez v6, :cond_2

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    :goto_5
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$2;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mHandler:Landroid/os/Handler;

    .line 127
    .line 128
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mUpdateRunnable:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;

    .line 129
    .line 130
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    .line 132
    .line 133
    return-void
.end method
