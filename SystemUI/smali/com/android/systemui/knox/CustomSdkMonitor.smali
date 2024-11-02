.class public final Lcom/android/systemui/knox/CustomSdkMonitor;
.super Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

.field public mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

.field public mChargerConnectionSoundEnabledState:Z

.field public mHardKeyIntentState:Z

.field public mHideNotificationMessages:I

.field public mIsCustomSdkStatusBarHidden:Z

.field public mKnoxCustomDoubleTapState:Z

.field public mKnoxCustomLockScreenHiddenItems:I

.field public mKnoxCustomLockScreenOverrideMode:I

.field public mKnoxCustomQuickPanelButtonUsers:Z

.field public mKnoxCustomQuickPanelButtons:I

.field public mKnoxCustomQuickPanelEditMode:I

.field public mKnoxCustomUnlockSimOnBootState:Z

.field public mQuickPanelItems:Ljava/lang/String;

.field public mQuickPanelUnavailableButtons:Ljava/lang/String;

.field public mStatusBarIconsState:Z

.field public final mStatusBarMode:I

.field public mStatusBarNotificationsState:Z

.field public mStatusBarText:Ljava/lang/String;

.field public mStatusBarTextSize:I

.field public mStatusBarTextStyle:I

.field public mStatusBarTextWidth:I

.field public mUnlockSimPin:Ljava/lang/String;

.field public mVolumePanelEnabledState:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarNotificationsState:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mVolumePanelEnabledState:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHardKeyIntentState:Z

    .line 23
    .line 24
    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 25
    .line 26
    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    .line 27
    .line 28
    const/4 v2, 0x7

    .line 29
    iput v2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    .line 30
    .line 31
    iput v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    iput v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarMode:I

    .line 35
    .line 36
    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextStyle:I

    .line 37
    .line 38
    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextSize:I

    .line 39
    .line 40
    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextWidth:I

    .line 41
    .line 42
    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHideNotificationMessages:I

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "CustomSdkMonitor state:"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "-mKnoxCustomLockScreenHiddenItems="

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 14
    .line 15
    .line 16
    const-string p2, "-mKnoxCustomLockScreenOverrideMode="

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 24
    .line 25
    .line 26
    const-string p2, "-mKnoxCustomUnlockSimOnBootState="

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 34
    .line 35
    .line 36
    const-string p2, "-mUnlockSimPin="

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string p2, "-mKnoxCustomQuickPanelButtons="

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 54
    .line 55
    .line 56
    const-string p2, "-mKnoxCustomQuickPanelButtonUsers="

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-boolean p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 64
    .line 65
    .line 66
    const-string p2, "-mKnoxCustomQuickPanelEditMode="

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 74
    .line 75
    .line 76
    const-string p2, "-mQuickPanelItems="

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string p2, "-mQuickPanelUnavailableButtons="

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string p2, "-mKnoxCustomDoubleTapState="

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-boolean p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 104
    .line 105
    .line 106
    const-string p2, "-mStatusBarText="

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string p2, "-mStatusBarMode="

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarMode:I

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 124
    .line 125
    .line 126
    const-string p2, "-mStatusBarTextStyle="

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextStyle:I

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 134
    .line 135
    .line 136
    const-string p2, "-mStatusBarTextSize="

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextSize:I

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 144
    .line 145
    .line 146
    const-string p2, "-mStatusBarTextWidth="

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextWidth:I

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 154
    .line 155
    .line 156
    const-string p2, "-mStatusBarIconsState="

    .line 157
    .line 158
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-boolean p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    .line 162
    .line 163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 164
    .line 165
    .line 166
    iget-object p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .line 167
    .line 168
    if-eqz p2, :cond_0

    .line 169
    .line 170
    const-string p2, "-mBatteryLevelColourItem="

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .line 176
    .line 177
    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_0
    const-string p2, "-mBatteryLevelColourItem=null"

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :goto_0
    const-string p2, "-mHideNotificationMessages="

    .line 191
    .line 192
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHideNotificationMessages:I

    .line 196
    .line 197
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 198
    .line 199
    .line 200
    const-string p2, "-mStatusBarNotificationsState="

    .line 201
    .line 202
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-boolean p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarNotificationsState:Z

    .line 206
    .line 207
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 208
    .line 209
    .line 210
    const-string p2, "-mChargerConnectionSoundEnabledState="

    .line 211
    .line 212
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-boolean p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    .line 216
    .line 217
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 218
    .line 219
    .line 220
    const-string p2, "-mVolumePanelEnabledState="

    .line 221
    .line 222
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-boolean p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mVolumePanelEnabledState:Z

    .line 226
    .line 227
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 228
    .line 229
    .line 230
    const-string p2, "-mIsCustomSdkStatusBarHidden="

    .line 231
    .line 232
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-boolean p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    .line 236
    .line 237
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 238
    .line 239
    .line 240
    const-string p2, "-mHardKeyIntentState="

    .line 241
    .line 242
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-boolean p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHardKeyIntentState:Z

    .line 246
    .line 247
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 248
    .line 249
    .line 250
    return-void
.end method

.method public final setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 6
    .line 7
    const/16 v0, 0x139a

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setChargerConnectionSoundEnabledState(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final setHardKeyIntentState(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHardKeyIntentState:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHardKeyIntentState:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 10
    .line 11
    const/16 v1, 0x13a3

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final setHideNotificationMessages(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHideNotificationMessages:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHideNotificationMessages:I

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final setLockScreenHiddenItems(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 10
    .line 11
    const/16 v0, 0x1392

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final setLockScreenOverrideMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 10
    .line 11
    const/16 v0, 0x1393

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final setQuickPanelButtonUsers(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 10
    .line 11
    const/16 v0, 0x139f

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final setQuickPanelButtons(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 10
    .line 11
    const/16 v0, 0x1394

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final setQuickPanelEditMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 10
    .line 11
    const/16 v0, 0x1395

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final setQuickPanelItems(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    if-nez p1, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 22
    .line 23
    const/16 v0, 0x1396

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final setQuickPanelUnavailableButtons(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    if-nez p1, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 22
    .line 23
    const/16 v0, 0x13a4

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final setScreenOffOnStatusBarDoubleTapState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setStatusBarHidden(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 10
    .line 11
    const/16 v0, 0x139b

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final setStatusBarIconsState(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 10
    .line 11
    const/16 v0, 0x1399

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final setStatusBarNotificationsState(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarNotificationsState:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarNotificationsState:Z

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final setStatusBarTextInfo(Ljava/lang/String;III)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    :cond_1
    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextStyle:I

    .line 18
    .line 19
    if-ne v0, p2, :cond_2

    .line 20
    .line 21
    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextSize:I

    .line 22
    .line 23
    if-ne v0, p3, :cond_2

    .line 24
    .line 25
    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextWidth:I

    .line 26
    .line 27
    if-eq v0, p4, :cond_3

    .line 28
    .line 29
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    .line 30
    .line 31
    iput p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextStyle:I

    .line 32
    .line 33
    iput p3, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextSize:I

    .line 34
    .line 35
    iput p4, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextWidth:I

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 40
    .line 41
    const/16 p2, 0x1397

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 49
    .line 50
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method public final setUnlockSimOnBootState(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final setUnlockSimPin(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    if-nez p1, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    return-void
.end method

.method public final setVolumePanelEnabledState(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mVolumePanelEnabledState:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mVolumePanelEnabledState:Z

    .line 6
    .line 7
    :cond_0
    return-void
.end method
