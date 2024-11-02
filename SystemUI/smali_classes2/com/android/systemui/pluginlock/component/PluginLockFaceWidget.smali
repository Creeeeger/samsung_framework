.class public final Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mClockCallback:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;

.field public mClockGravity:I

.field public mClockGravityLand:I

.field public final mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

.field public mClockRecoverType:I

.field public mClockScale:F

.field public mClockScaleLand:F

.field public mClockType:I

.field public mClockVisibility:I

.field public mClockVisibilityLand:I

.field public mIsDlsData:Z

.field public mIsLandscapeAvailable:Z

.field public mIsPortraitAvailable:Z

.field public final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public mServiceBoxBottom:I

.field public mServiceBoxBottomLand:I

.field public mServiceBoxPaddingEnd:I

.field public mServiceBoxPaddingEndLand:I

.field public mServiceBoxPaddingStart:I

.field public mServiceBoxPaddingStartLand:I

.field public mServiceBoxTop:I

.field public mServiceBoxTopLand:I

.field public mStateListenerList:Ljava/util/List;


# direct methods
.method public static -$$Nest$mupdateLockStarData(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    const-string v0, "PluginLockFaceWidget"

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "updateLockStarData, mediator is null"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v2, "updateLockStarData() "

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, "="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    new-instance v1, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "action"

    .line 46
    .line 47
    const-string/jumbo v3, "update_lockstar_data"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string/jumbo v3, "update_lockstar_data_item"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    instance-of v3, p2, Ljava/lang/Integer;

    .line 65
    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    check-cast p2, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    instance-of v3, p2, Ljava/lang/Float;

    .line 79
    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    check-cast p2, Ljava/lang/Float;

    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    instance-of v3, p2, Ljava/lang/Boolean;

    .line 93
    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    check-cast p2, Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    :goto_0
    const-string p1, "extras"

    .line 106
    .line 107
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 111
    .line 112
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onEventReceived(Landroid/os/Bundle;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    const-string/jumbo p0, "updateLockStarData() unexpected value type"

    .line 117
    .line 118
    .line 119
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    .line 9
    .line 10
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    .line 11
    .line 12
    const/high16 p2, -0x40800000    # -1.0f

    .line 13
    .line 14
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScale:F

    .line 15
    .line 16
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravity:I

    .line 17
    .line 18
    const/4 p4, -0x1

    .line 19
    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibility:I

    .line 20
    .line 21
    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStart:I

    .line 22
    .line 23
    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEnd:I

    .line 24
    .line 25
    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTop:I

    .line 26
    .line 27
    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottom:I

    .line 28
    .line 29
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScaleLand:F

    .line 30
    .line 31
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravityLand:I

    .line 32
    .line 33
    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibilityLand:I

    .line 34
    .line 35
    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStartLand:I

    .line 36
    .line 37
    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEndLand:I

    .line 38
    .line 39
    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTopLand:I

    .line 40
    .line 41
    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottomLand:I

    .line 42
    .line 43
    new-instance p1, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockCallback:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;

    .line 49
    .line 50
    iput-object p3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 51
    .line 52
    iput-object p5, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 53
    .line 54
    return-void
.end method

.method public static getClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getClockType()Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getRecoverType()Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getGravity()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getScale()F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getVisibility()Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopY()Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getBottomY()Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingStart()Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingEnd()Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getGravityLand()Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getScaleLand()F

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getVisibilityLand()Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopYLand()Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getBottomYLand()Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingStartLand()Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingEndLand()Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isPortraitAvailable()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isLandscapeAvailable()Z

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    return-object p0
.end method


# virtual methods
.method public final apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->loadClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockState()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "apply() "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    .line 16
    .line 17
    const-string v3, "PluginLockFaceWidget"

    .line 18
    .line 19
    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, -0x2

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    const-string p0, "apply() skip!"

    .line 26
    .line 27
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v1, -0x3

    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    .line 39
    .line 40
    const/4 p2, -0x1

    .line 41
    if-eq p1, p2, :cond_5

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 44
    .line 45
    iget-object p2, p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    invoke-interface {p2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getLockClockType()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 p2, 0x2

    .line 55
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, "apply() current clock: "

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockBackupValue(I)V

    .line 73
    .line 74
    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v0, "apply() dls clock setClockType: "

    .line 78
    .line 79
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    .line 83
    .line 84
    invoke-static {p2, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    .line 88
    .line 89
    iget-object v0, p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    invoke-interface {v0, p2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->setClockType(I)Z

    .line 94
    .line 95
    .line 96
    :cond_3
    const-string/jumbo p2, "plugin_lock_clock"

    .line 97
    .line 98
    .line 99
    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    .line 100
    .line 101
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    .line 105
    .line 106
    iput p2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 107
    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 113
    .line 114
    iget-object p2, p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockCallback:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;

    .line 117
    .line 118
    if-eqz p2, :cond_4

    .line 119
    .line 120
    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->registerClockChangedCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    iget-object p1, p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockCallbacks:Ljava/util/List;

    .line 124
    .line 125
    check-cast p1, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-nez p2, :cond_5

    .line 132
    .line 133
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    :cond_5
    :goto_1
    return-void
.end method

.method public final loadClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getClockType()Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getRecoverType()Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getGravity()Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravity:I

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getScale()F

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScale:F

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getVisibility()Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibility:I

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopY()Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTop:I

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getBottomY()Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottom:I

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingStart()Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStart:I

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingEnd()Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEnd:I

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getGravityLand()Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravityLand:I

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getScaleLand()F

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScaleLand:F

    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getVisibilityLand()Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibilityLand:I

    .line 142
    .line 143
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopYLand()Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTopLand:I

    .line 156
    .line 157
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getBottomYLand()Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottomLand:I

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingStartLand()Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStartLand:I

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingEndLand()Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEndLand:I

    .line 190
    .line 191
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isPortraitAvailable()Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsPortraitAvailable:Z

    .line 196
    .line 197
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isLandscapeAvailable()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsLandscapeAvailable:Z

    .line 202
    .line 203
    invoke-static {p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->getClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-static {p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->getClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    const/4 v0, 0x0

    .line 212
    const/4 v1, 0x1

    .line 213
    if-eqz p1, :cond_0

    .line 214
    .line 215
    if-eqz p2, :cond_0

    .line 216
    .line 217
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_0

    .line 222
    .line 223
    move p1, v1

    .line 224
    goto :goto_0

    .line 225
    :cond_0
    move p1, v0

    .line 226
    :goto_0
    const-string p2, "loadClockData, isEqual: "

    .line 227
    .line 228
    const-string v2, "PluginLockFaceWidget"

    .line 229
    .line 230
    invoke-static {p2, p1, v2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    if-eqz p1, :cond_1

    .line 234
    .line 235
    return-void

    .line 236
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    .line 237
    .line 238
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 239
    .line 240
    .line 241
    const-string p2, "key_page_gravity"

    .line 242
    .line 243
    iget v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravity:I

    .line 244
    .line 245
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    .line 247
    .line 248
    const-string p2, "key_page_scale"

    .line 249
    .line 250
    iget v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScale:F

    .line 251
    .line 252
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 253
    .line 254
    .line 255
    const-string p2, "key_visibility"

    .line 256
    .line 257
    iget v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibility:I

    .line 258
    .line 259
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    const-string p2, "key_page_top_padding"

    .line 263
    .line 264
    iget v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTop:I

    .line 265
    .line 266
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    .line 268
    .line 269
    const-string p2, "key_page_bottom_padding"

    .line 270
    .line 271
    iget v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottom:I

    .line 272
    .line 273
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 274
    .line 275
    .line 276
    const-string p2, "key_page_start_padding"

    .line 277
    .line 278
    iget v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStart:I

    .line 279
    .line 280
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    .line 282
    .line 283
    const-string p2, "key_page_end_padding"

    .line 284
    .line 285
    iget v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEnd:I

    .line 286
    .line 287
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    .line 289
    .line 290
    const-string p2, "key_page_gravity_land"

    .line 291
    .line 292
    iget v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravityLand:I

    .line 293
    .line 294
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    .line 296
    .line 297
    const-string p2, "key_page_scale_land"

    .line 298
    .line 299
    iget v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScaleLand:F

    .line 300
    .line 301
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 302
    .line 303
    .line 304
    const-string p2, "key_visibility_land"

    .line 305
    .line 306
    iget v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibilityLand:I

    .line 307
    .line 308
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    .line 310
    .line 311
    const-string p2, "key_page_top_padding_land"

    .line 312
    .line 313
    iget v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTopLand:I

    .line 314
    .line 315
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    .line 317
    .line 318
    const-string p2, "key_page_bottom_padding_land"

    .line 319
    .line 320
    iget v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottomLand:I

    .line 321
    .line 322
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    .line 324
    .line 325
    const-string p2, "key_page_start_padding_land"

    .line 326
    .line 327
    iget v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStartLand:I

    .line 328
    .line 329
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    .line 331
    .line 332
    const-string p2, "key_page_end_padding_land"

    .line 333
    .line 334
    iget v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEndLand:I

    .line 335
    .line 336
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    .line 338
    .line 339
    const-string p2, "key_page_available"

    .line 340
    .line 341
    iget-boolean v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsPortraitAvailable:Z

    .line 342
    .line 343
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 344
    .line 345
    .line 346
    const-string p2, "key_page_available_land"

    .line 347
    .line 348
    iget-boolean v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsLandscapeAvailable:Z

    .line 349
    .line 350
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 351
    .line 352
    .line 353
    iget-boolean p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    .line 354
    .line 355
    xor-int/2addr p2, v1

    .line 356
    const-string v1, "key_lock_star_clock"

    .line 357
    .line 358
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    .line 360
    .line 361
    new-instance p2, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    const-string v1, "loadClockData() bundle: "

    .line 364
    .line 365
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mStateListenerList:Ljava/util/List;

    .line 383
    .line 384
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 385
    .line 386
    .line 387
    move-result p2

    .line 388
    if-ge v0, p2, :cond_3

    .line 389
    .line 390
    iget-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mStateListenerList:Ljava/util/List;

    .line 391
    .line 392
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 397
    .line 398
    if-eqz p2, :cond_2

    .line 399
    .line 400
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object p2

    .line 404
    check-cast p2, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 405
    .line 406
    if-eqz p2, :cond_2

    .line 407
    .line 408
    invoke-interface {p2, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onClockChanged(Landroid/os/Bundle;)V

    .line 409
    .line 410
    .line 411
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 412
    .line 413
    goto :goto_1

    .line 414
    :cond_3
    return-void
.end method

.method public final reset(Z)V
    .locals 8

    .line 1
    const-string v0, "PluginLockFaceWidget"

    .line 2
    .line 3
    const-string/jumbo v1, "resetClockData()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    .line 14
    .line 15
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStart:I

    .line 16
    .line 17
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEnd:I

    .line 18
    .line 19
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravity:I

    .line 20
    .line 21
    const/high16 v2, -0x40800000    # -1.0f

    .line 22
    .line 23
    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScale:F

    .line 24
    .line 25
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibility:I

    .line 26
    .line 27
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTop:I

    .line 28
    .line 29
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottom:I

    .line 30
    .line 31
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStartLand:I

    .line 32
    .line 33
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEndLand:I

    .line 34
    .line 35
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravityLand:I

    .line 36
    .line 37
    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScaleLand:F

    .line 38
    .line 39
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibilityLand:I

    .line 40
    .line 41
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTopLand:I

    .line 42
    .line 43
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottomLand:I

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    iput-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsPortraitAvailable:Z

    .line 47
    .line 48
    iput-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsLandscapeAvailable:Z

    .line 49
    .line 50
    new-instance v3, Landroid/os/Bundle;

    .line 51
    .line 52
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "key_page_gravity"

    .line 56
    .line 57
    iget v5, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravity:I

    .line 58
    .line 59
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    const-string v4, "key_page_scale"

    .line 63
    .line 64
    iget v5, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScale:F

    .line 65
    .line 66
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 67
    .line 68
    .line 69
    const-string v4, "key_visibility"

    .line 70
    .line 71
    iget v5, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibility:I

    .line 72
    .line 73
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    const-string v4, "key_page_top_padding"

    .line 77
    .line 78
    iget v5, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTop:I

    .line 79
    .line 80
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    const-string v4, "key_page_bottom_padding"

    .line 84
    .line 85
    iget v5, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottom:I

    .line 86
    .line 87
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    iget v4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStart:I

    .line 91
    .line 92
    const-string v5, "key_page_start_padding"

    .line 93
    .line 94
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    iget v4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEnd:I

    .line 98
    .line 99
    const-string v6, "key_page_end_padding"

    .line 100
    .line 101
    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    const-string v4, "key_page_gravity_land"

    .line 105
    .line 106
    iget v7, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravityLand:I

    .line 107
    .line 108
    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    const-string v4, "key_page_scale_land"

    .line 112
    .line 113
    iget v7, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScaleLand:F

    .line 114
    .line 115
    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 116
    .line 117
    .line 118
    const-string v4, "key_visibility_land"

    .line 119
    .line 120
    iget v7, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibilityLand:I

    .line 121
    .line 122
    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    const-string v4, "key_page_top_padding_land"

    .line 126
    .line 127
    iget v7, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTopLand:I

    .line 128
    .line 129
    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    const-string v4, "key_page_bottom_padding_land"

    .line 133
    .line 134
    iget v7, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottomLand:I

    .line 135
    .line 136
    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    .line 138
    .line 139
    iget v4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStartLand:I

    .line 140
    .line 141
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    iget v4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEndLand:I

    .line 145
    .line 146
    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    const-string v4, "key_lock_star_clock"

    .line 150
    .line 151
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    const-string v4, "key_page_available"

    .line 155
    .line 156
    iget-boolean v5, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsPortraitAvailable:Z

    .line 157
    .line 158
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    .line 160
    .line 161
    const-string v4, "key_page_available_land"

    .line 162
    .line 163
    iget-boolean v5, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsLandscapeAvailable:Z

    .line 164
    .line 165
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    .line 167
    .line 168
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mStateListenerList:Ljava/util/List;

    .line 169
    .line 170
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-ge v2, v4, :cond_1

    .line 175
    .line 176
    iget-object v4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mStateListenerList:Ljava/util/List;

    .line 177
    .line 178
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 183
    .line 184
    if-eqz v4, :cond_0

    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    check-cast v4, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 191
    .line 192
    if-eqz v4, :cond_0

    .line 193
    .line 194
    invoke-interface {v4, v3}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onClockChanged(Landroid/os/Bundle;)V

    .line 195
    .line 196
    .line 197
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_1
    iput v1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 201
    .line 202
    const-wide/16 v2, 0x0

    .line 203
    .line 204
    iput-wide v2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 205
    .line 206
    iget-object v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 207
    .line 208
    iget-object v3, v2, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 209
    .line 210
    iget-object v4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockCallback:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;

    .line 211
    .line 212
    if-eqz v3, :cond_2

    .line 213
    .line 214
    invoke-interface {v3, v4}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;)V

    .line 215
    .line 216
    .line 217
    :cond_2
    iget-object v3, v2, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockCallbacks:Ljava/util/List;

    .line 218
    .line 219
    check-cast v3, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockState()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    const-string/jumbo v4, "reset() state: "

    .line 229
    .line 230
    .line 231
    invoke-static {v4, v3, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    .line 233
    .line 234
    if-nez p1, :cond_7

    .line 235
    .line 236
    if-eq v3, v1, :cond_6

    .line 237
    .line 238
    const/4 p1, -0x2

    .line 239
    if-eq v3, p1, :cond_6

    .line 240
    .line 241
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 242
    .line 243
    if-nez p1, :cond_3

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    if-eqz p1, :cond_4

    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getClock()Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    goto :goto_2

    .line 261
    :cond_4
    :goto_1
    move p1, v1

    .line 262
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    const-string/jumbo v4, "reset() setClockType: "

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    iget-object v0, v2, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 284
    .line 285
    if-eqz v0, :cond_5

    .line 286
    .line 287
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->setClockType(I)Z

    .line 288
    .line 289
    .line 290
    :cond_5
    const-string/jumbo p1, "plugin_lock_clock"

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :catchall_0
    move-exception p1

    .line 298
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 299
    .line 300
    .line 301
    :cond_6
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockBackupValue(I)V

    .line 302
    .line 303
    .line 304
    :cond_7
    return-void
.end method

.method public final update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 4

    .line 1
    const-string v0, "PluginLockFaceWidget"

    .line 2
    .line 3
    const-string/jumbo v1, "update()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->loadClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockState()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, -0x2

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const-string/jumbo p0, "update() skip!"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    const/4 v2, -0x1

    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_1
    iput v2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 40
    .line 41
    const-wide/16 p1, 0x0

    .line 42
    .line 43
    iput-wide p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 46
    .line 47
    iget-object p2, p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockCallback:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;

    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    invoke-interface {p2, v1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object p2, p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockCallbacks:Ljava/util/List;

    .line 57
    .line 58
    check-cast p2, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string/jumbo v3, "update() mClockType: "

    .line 66
    .line 67
    .line 68
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    .line 72
    .line 73
    invoke-static {p2, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    .line 77
    .line 78
    const-string/jumbo v3, "plugin_lock_clock"

    .line 79
    .line 80
    .line 81
    if-eq p2, v2, :cond_5

    .line 82
    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string/jumbo v2, "update() setClockType: "

    .line 86
    .line 87
    .line 88
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    .line 92
    .line 93
    invoke-static {p2, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    .line 97
    .line 98
    iget-object v0, p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    invoke-interface {v0, p2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->setClockType(I)Z

    .line 103
    .line 104
    .line 105
    :cond_3
    iget p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    .line 106
    .line 107
    invoke-virtual {p0, p2, v3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    .line 111
    .line 112
    iput p2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 113
    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    iput-wide v2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 119
    .line 120
    iget-object p0, p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 121
    .line 122
    if-eqz p0, :cond_4

    .line 123
    .line 124
    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->registerClockChangedCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    iget-object p0, p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockCallbacks:Ljava/util/List;

    .line 128
    .line 129
    check-cast p0, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_9

    .line 136
    .line 137
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 142
    .line 143
    if-nez p2, :cond_6

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_6
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    if-eqz p2, :cond_7

    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getClock()Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    goto :goto_1

    .line 161
    :cond_7
    :goto_0
    move p2, v2

    .line 162
    :goto_1
    const-string/jumbo v1, "update() backupClockType: "

    .line 163
    .line 164
    .line 165
    invoke-static {v1, p2, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 169
    .line 170
    if-eqz p1, :cond_8

    .line 171
    .line 172
    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->setClockType(I)Z

    .line 173
    .line 174
    .line 175
    :cond_8
    invoke-virtual {p0, p2, v3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(ILjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockBackupValue(I)V

    .line 179
    .line 180
    .line 181
    :cond_9
    :goto_2
    return-void
.end method
