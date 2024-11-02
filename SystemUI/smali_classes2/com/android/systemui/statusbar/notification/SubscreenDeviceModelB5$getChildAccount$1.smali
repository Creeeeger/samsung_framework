.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getChildAccount$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getChildAccount$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string/jumbo v1, "result_message"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "result_code"

    .line 7
    .line 8
    .line 9
    const-string v3, "i5to7wq0er"

    .line 10
    .line 11
    const-string v4, "content://com.samsung.android.samsungaccount.accountmanagerprovider"

    .line 12
    .line 13
    const-string v5, "S.S.N."

    .line 14
    .line 15
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getChildAccount$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 16
    .line 17
    sget v7, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->$r8$clinit:I

    .line 18
    .line 19
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x1

    .line 28
    :try_start_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v11

    .line 32
    const-string v12, "isChildAccount"

    .line 33
    .line 34
    invoke-virtual {v7, v11, v12, v3, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    if-eqz v7, :cond_2

    .line 39
    .line 40
    invoke-virtual {v7, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v11

    .line 44
    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    if-nez v11, :cond_1

    .line 49
    .line 50
    const-string/jumbo v11, "true"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_0

    .line 58
    .line 59
    const-string v7, "This account is a child account."

    .line 60
    .line 61
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move v7, v10

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    const-string v7, "This account is not a child account."

    .line 67
    .line 68
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const-string v11, "isChildAccount Fail : resultMessage = "

    .line 73
    .line 74
    invoke-static {v11, v7, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const-string v7, "Result bundle is null"

    .line 79
    .line 80
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v7

    .line 85
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    const-string v11, "Exception Error isChildAccount : "

    .line 90
    .line 91
    invoke-static {v11, v7, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    move v7, v9

    .line 95
    :goto_1
    if-eqz v7, :cond_3

    .line 96
    .line 97
    sget-boolean v7, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isKor:Z

    .line 98
    .line 99
    if-nez v7, :cond_3

    .line 100
    .line 101
    move v9, v10

    .line 102
    :cond_3
    iput-boolean v9, v6, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isChildAccount:Z

    .line 103
    .line 104
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getChildAccount$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 105
    .line 106
    iget-boolean v7, v6, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isChildAccount:Z

    .line 107
    .line 108
    if-eqz v7, :cond_6

    .line 109
    .line 110
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    :try_start_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const-string v9, "getFamilyServiceInfo"

    .line 121
    .line 122
    invoke-virtual {v7, v4, v9, v3, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 123
    .line 124
    .line 125
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    if-eqz v3, :cond_5

    .line 127
    .line 128
    invoke-virtual {v3, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_4

    .line 133
    .line 134
    const-string/jumbo v0, "result_bundle"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    const-string v1, "childGraduateAge"

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    goto :goto_3

    .line 150
    :cond_4
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v1, "getChildGraduateAge() Fail : resultMessage = "

    .line 155
    .line 156
    invoke-static {v1, v0, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :catch_1
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v1, "Exception Error getFamilyServiceInfo : "

    .line 166
    .line 167
    invoke-static {v1, v0, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_5
    :goto_2
    const/4 v0, -0x1

    .line 171
    :goto_3
    iput v0, v6, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->childGraduateAge:I

    .line 172
    .line 173
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getChildAccount$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 174
    .line 175
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isChildAccount:Z

    .line 176
    .line 177
    const-string v0, "getChildAccount() : isChildAccount "

    .line 178
    .line 179
    invoke-static {v0, p0, v5}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    return-void
.end method
