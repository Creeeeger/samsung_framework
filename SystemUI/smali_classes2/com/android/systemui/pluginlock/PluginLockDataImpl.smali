.class public final Lcom/android/systemui/pluginlock/PluginLockDataImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/pluginlock/PluginLockData;
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    check-cast p2, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 7
    .line 8
    invoke-virtual {p2, p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getPaddingStart(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x4

    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    if-eq p1, v4, :cond_3

    .line 17
    .line 18
    if-eq p1, v3, :cond_2

    .line 19
    .line 20
    if-eq p1, v2, :cond_1

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getPaddingStartLand()Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getPaddingStartLand()Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingStartLand()Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    if-eq p1, v4, :cond_7

    .line 82
    .line 83
    if-eq p1, v3, :cond_6

    .line 84
    .line 85
    if-eq p1, v2, :cond_5

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getPaddingStart()Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    goto :goto_0

    .line 107
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getPaddingStart()Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    goto :goto_0

    .line 126
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingStart()Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    :goto_0
    return v1
.end method

.method public final getTop(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x4

    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eqz v0, :cond_5

    .line 16
    .line 17
    if-eq p1, v5, :cond_4

    .line 18
    .line 19
    if-eq p1, v4, :cond_3

    .line 20
    .line 21
    if-eq p1, v3, :cond_2

    .line 22
    .line 23
    if-eq p1, v2, :cond_1

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getTopYLand()Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getTopYLand()Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/MusicData;->getTopYLand()Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopYLand()Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    goto :goto_0

    .line 96
    :cond_5
    if-eq p1, v5, :cond_9

    .line 97
    .line 98
    if-eq p1, v4, :cond_8

    .line 99
    .line 100
    if-eq p1, v3, :cond_7

    .line 101
    .line 102
    if-eq p1, v2, :cond_6

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getTopY()Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    goto :goto_0

    .line 124
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getTopY()Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    goto :goto_0

    .line 143
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/MusicData;->getTopY()Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    goto :goto_0

    .line 158
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopY()Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    :goto_0
    return v1
.end method

.method public final getVisibility(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getLockIconData()Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->getVisibilityLand()Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    goto :goto_0

    .line 37
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/ShortcutData;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ShortcutData;->getVisibility()Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    goto :goto_0

    .line 52
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getVisibilityLand()Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    goto :goto_0

    .line 71
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getVisibility()Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    goto :goto_0

    .line 86
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/MusicData;->getVisibilityLand()Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    goto :goto_0

    .line 101
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getVisibilityLand()Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    :goto_0
    move v1, p0

    .line 116
    goto :goto_1

    .line 117
    :cond_1
    packed-switch p1, :pswitch_data_1

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getLockIconData()Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->getVisibility()Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    goto :goto_1

    .line 140
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/ShortcutData;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ShortcutData;->getVisibility()Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    goto :goto_1

    .line 155
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getVisibility()Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    goto :goto_1

    .line 174
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getVisibility()Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    goto :goto_1

    .line 189
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/MusicData;->getVisibility()Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    goto :goto_1

    .line 204
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getVisibility()Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    :goto_1
    return v1

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final isAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isLandscapeAvailable()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isPortraitAvailable()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    :goto_0
    return p0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final isLandscape()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-ne p0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    :cond_0
    return v0
.end method

.method public final onPluginLockReset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 3
    .line 4
    return-void
.end method

.method public final setDynamicLockData(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setDynamicLockData : "

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v2, "PluginLockDataImpl"

    .line 12
    .line 13
    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->fromJSon(Ljava/lang/String;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 21
    .line 22
    return-void
.end method

.method public final updateDynamicLockData(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "updateDynamicLockData : "

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v2, "PluginLockDataImpl"

    .line 12
    .line 13
    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->fromJSon(Ljava/lang/String;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 21
    .line 22
    return-void
.end method
