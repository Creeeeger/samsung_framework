.class public final Lcom/android/systemui/knox/EdmMonitor;
.super Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

.field public mAirplaneModeAllowed:Z

.field public mBluetoothAllowed:Z

.field public mCellularDataAllowed:Z

.field public mEnableAdminLock:Z

.field public mGPSStateChangeAllowed:Z

.field public mIsCameraDisabledByMdm:Z

.field public mIsDeviceDisableForMaxFailedAttempt:Z

.field public mIsFaceRecognitionAllowedEvenCameraBlocked:Z

.field public mIsLockscreenInvisibleOverlayConfigured:Z

.field public mIsLockscreenWallpaperConfigured:Z

.field public mIsMDMKioskMode:Z

.field public mIsNavigationBarHidden:Z

.field public mIsProfileDisableForMaxFailedAttempt:Z

.field public mIsStatusBarHidden:Z

.field public mLicenseExpired:Z

.field public final mLocationProviderAllowed:Ljava/util/HashMap;

.field public mLockDelay:I

.field public mLockedIccIdList:[Ljava/lang/String;

.field public mMaxNumFailedAttemptForDisable:I

.field public mMaxNumFailedAttemptForProfileDisable:I

.field public mMultiFactorAuthEnabled:Z

.field public final mNFCAllowed:Z

.field public mNFCStateChangeAllowed:Z

.field public mPasswordVisibilityEnabled:Z

.field public mPkgNameForMaxAttemptDisable:Ljava/lang/String;

.field public mPwdChangeRequest:I

.field public mRoamingAllowed:Z

.field public mSettingsChangesAllowed:Z

.field public mStatusBarExpandAllowed:Z

.field public final mUserManager:Landroid/os/UserManager;

.field public mWifiAllowed:Z

.field public mWifiStateChangeAllowed:Z

.field public mWifiTetheringAllowed:Z

.field public mWipeExcludeExternalStorage:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsStatusBarHidden:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsNavigationBarHidden:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsMDMKioskMode:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mWipeExcludeExternalStorage:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsProfileDisableForMaxFailedAttempt:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mStatusBarExpandAllowed:Z

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mAirplaneModeAllowed:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mCellularDataAllowed:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mNFCAllowed:Z

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiTetheringAllowed:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mBluetoothAllowed:Z

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mNFCStateChangeAllowed:Z

    .line 37
    .line 38
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mRoamingAllowed:Z

    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiStateChangeAllowed:Z

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiAllowed:Z

    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mGPSStateChangeAllowed:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMultiFactorAuthEnabled:Z

    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mPasswordVisibilityEnabled:Z

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsCameraDisabledByMdm:Z

    .line 51
    .line 52
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    .line 53
    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    .line 57
    .line 58
    iput v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mPwdChangeRequest:I

    .line 59
    .line 60
    const/4 v1, -0x1

    .line 61
    iput v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockDelay:I

    .line 62
    .line 63
    iput v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    .line 64
    .line 65
    iput v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForProfileDisable:I

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mPkgNameForMaxAttemptDisable:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v0, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 78
    .line 79
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    return-void

    .line 86
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    const-string/jumbo v0, "user"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Landroid/os/UserManager;

    .line 96
    .line 97
    iput-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mUserManager:Landroid/os/UserManager;

    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, "EdmMonitor state:"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "-mIsStatusBarHidden="

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsStatusBarHidden:Z

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 14
    .line 15
    .line 16
    const-string p2, "-mIsNavigationBarHidden="

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsNavigationBarHidden:Z

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 24
    .line 25
    .line 26
    const-string p2, "-mIsMDMKioskMode="

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsMDMKioskMode:Z

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 34
    .line 35
    .line 36
    const-string p2, "-mWipeExcludeExternalStorage="

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mWipeExcludeExternalStorage:Z

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 44
    .line 45
    .line 46
    const-string p2, "-mLockDelay="

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockDelay:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 54
    .line 55
    .line 56
    const-string p2, "-mMaxNumFailedAttemptForDisable="

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 64
    .line 65
    .line 66
    const-string p2, "-mPkgNameForMaxFailedAttemptDisable="

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mPkgNameForMaxAttemptDisable:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string p2, "-mIsDeviceDisableForMaxFailedAttempt="

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 84
    .line 85
    .line 86
    const-string p2, "-mPwdChangeRequest="

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mPwdChangeRequest:I

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 94
    .line 95
    .line 96
    const-string p2, "-mSettingsChangesAllowed="

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 104
    .line 105
    .line 106
    const-string p2, "-mStatusBarExpandAllowed="

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mStatusBarExpandAllowed:Z

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 114
    .line 115
    .line 116
    const-string p2, "-mAirplaneModeAllowed="

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mAirplaneModeAllowed:Z

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 124
    .line 125
    .line 126
    const-string p2, "-mCellularDataAllowed="

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mCellularDataAllowed:Z

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 134
    .line 135
    .line 136
    const-string p2, "-mNFCAllowed="

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mNFCAllowed:Z

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 144
    .line 145
    .line 146
    const-string p2, "-mWifiTetheringAllowed="

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiTetheringAllowed:Z

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 154
    .line 155
    .line 156
    const-string p2, "-mBluetoothAllowed="

    .line 157
    .line 158
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mBluetoothAllowed:Z

    .line 162
    .line 163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 164
    .line 165
    .line 166
    const-string p2, "-mNFCStateChangeAllowed="

    .line 167
    .line 168
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mNFCStateChangeAllowed:Z

    .line 172
    .line 173
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 174
    .line 175
    .line 176
    const-string p2, "-mRoamingAllowed="

    .line 177
    .line 178
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mRoamingAllowed:Z

    .line 182
    .line 183
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 184
    .line 185
    .line 186
    const-string p2, "-mWifiStateChangeAllowed="

    .line 187
    .line 188
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiStateChangeAllowed:Z

    .line 192
    .line 193
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 194
    .line 195
    .line 196
    const-string p2, "-mWifiAllowed="

    .line 197
    .line 198
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiAllowed:Z

    .line 202
    .line 203
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 204
    .line 205
    .line 206
    const-string p2, "-mLocationProviderAllowed="

    .line 207
    .line 208
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    .line 212
    .line 213
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    const-string p2, "-mGPSStateChangeAllowed="

    .line 217
    .line 218
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mGPSStateChangeAllowed:Z

    .line 222
    .line 223
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 224
    .line 225
    .line 226
    const-string p2, "-mIsLockscreenInvisibleOverlayConfigured="

    .line 227
    .line 228
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    .line 232
    .line 233
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 234
    .line 235
    .line 236
    const-string p2, "-mIsLockscreenWallpaperConfigured="

    .line 237
    .line 238
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    .line 242
    .line 243
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 244
    .line 245
    .line 246
    const-string p2, "-mMultiFactorAuthEnabled="

    .line 247
    .line 248
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mMultiFactorAuthEnabled:Z

    .line 252
    .line 253
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 254
    .line 255
    .line 256
    const-string p2, "-mIsCameraDisabledByMdm="

    .line 257
    .line 258
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsCameraDisabledByMdm:Z

    .line 262
    .line 263
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 264
    .line 265
    .line 266
    const-string p2, "-mIsFaceRecognitionAllowedEvenCameraBlocked="

    .line 267
    .line 268
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    .line 272
    .line 273
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 274
    .line 275
    .line 276
    iget-object p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    .line 277
    .line 278
    if-eqz p2, :cond_1

    .line 279
    .line 280
    const-string p2, "-mLockedIccIdList="

    .line 281
    .line 282
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    .line 286
    .line 287
    array-length p2, p0

    .line 288
    const/4 v0, 0x0

    .line 289
    :goto_0
    if-ge v0, p2, :cond_0

    .line 290
    .line 291
    aget-object v1, p0, v0

    .line 292
    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string v3, " "

    .line 296
    .line 297
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    add-int/lit8 v0, v0, 0x1

    .line 311
    .line 312
    goto :goto_0

    .line 313
    :cond_0
    const-string p0, ""

    .line 314
    .line 315
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    :cond_1
    return-void
.end method

.method public final excludeExternalStorageForFailedPasswordsWipe(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWipeExcludeExternalStorage:Z

    .line 2
    .line 3
    return-void
.end method

.method public final getCurrentFailedAttempts()I
    .locals 7

    .line 1
    const-string v0, "content://com.sec.knox.provider/PasswordPolicy2"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-string v0, "getCurrentFailedPasswordAttempts"

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v4, v0

    .line 21
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 35
    .line 36
    .line 37
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :catch_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 48
    .line 49
    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0
.end method

.method public final setAdminLock(ZZ)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setAdminLock enabled:"

    .line 2
    .line 3
    .line 4
    const-string v1, "  licenseExpired:"

    .line 5
    .line 6
    const-string v2, "EdmMonitor"

    .line 7
    .line 8
    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    .line 12
    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    .line 16
    .line 17
    if-eq v0, p2, :cond_1

    .line 18
    .line 19
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    .line 20
    .line 21
    iput-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 26
    .line 27
    const/16 p2, 0x13a2

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final setAirplaneModeAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mAirplaneModeAllowed:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setApplicationNameControlEnabled(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setBluetoothAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mBluetoothAllowed:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCameraAllowed(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setCameraAllowed( "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, " )"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "EdmMonitor"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    xor-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsCameraDisabledByMdm:Z

    .line 29
    .line 30
    return-void
.end method

.method public final setCellularDataAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mCellularDataAllowed:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setFaceRecognitionEvenCameraBlockedAllowed(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setFaceRecognitionEvenCameraBlockedAllowed( "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, " )"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "EdmMonitor"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    .line 27
    .line 28
    return-void
.end method

.method public final setGPSStateChangeAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mGPSStateChangeAllowed:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setKioskModeEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsMDMKioskMode:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLocationProviderAllowed(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setLockedIccIds([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLockscreenInvisibleOverlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLockscreenWallpaper(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 10
    .line 11
    const/16 v0, 0x13a0

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 29
    .line 30
    const/16 v0, 0x13a1

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public final setMaximumFailedPasswordsForDisable(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mPkgNameForMaxAttemptDisable:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setMaximumFailedPasswordsForProfileDisable(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForProfileDisable:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->updateFailedUnlockAttemptForProfileDisabled()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setMultifactorAuthEnabled(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setMultifactorAuthEnabled( "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, " )"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "EdmMonitor"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mMultiFactorAuthEnabled:Z

    .line 27
    .line 28
    return-void
.end method

.method public final setNFCStateChangeAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mNFCStateChangeAllowed:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setNavigationBarHidden(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsNavigationBarHidden:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsNavigationBarHidden:Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 10
    .line 11
    const/16 v0, 0x139c

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

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

.method public final setPasswordLockDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPasswordVisibilityEnabled(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setPasswordVisibilityEnabled( "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, " )"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "EdmMonitor"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mPasswordVisibilityEnabled:Z

    .line 27
    .line 28
    return-void
.end method

.method public final setPwdChangeRequested(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mPwdChangeRequest:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRoamingAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mRoamingAllowed:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSettingsChangeAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setStatusBarExpansionAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mStatusBarExpandAllowed:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setStatusBarHidden(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsStatusBarHidden:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsStatusBarHidden:Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

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
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

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

.method public final setWifiAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiAllowed:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setWifiStateChangeAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiStateChangeAllowed:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setWifiTetheringAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiTetheringAllowed:Z

    .line 2
    .line 3
    return-void
.end method

.method public final updateFailedUnlockAttemptForDeviceDisabled()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    const-string v3, "EdmMonitor"

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->getCurrentFailedAttempts()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v4, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    .line 19
    .line 20
    if-lt v0, v4, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v1, v2

    .line 24
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v2, "reportFailedUnlockAttempt : maxNumFailedAttemptForDisable="

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget v2, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, " , curNumFailedAttempts="

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v1, "isDeviceDisabledForMaxFailedAttempt="

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 62
    .line 63
    invoke-static {v0, v1, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 73
    .line 74
    const/16 v1, 0x139e

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const-string p0, "MDM is not enabled..."

    .line 88
    .line 89
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_2
    return-void
.end method

.method public final updateFailedUnlockAttemptForProfileDisabled()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForProfileDisable:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    const-string v3, "EdmMonitor"

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->getCurrentFailedAttempts()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v4, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForProfileDisable:I

    .line 19
    .line 20
    if-lt v0, v4, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v1, v2

    .line 24
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsProfileDisableForMaxFailedAttempt:Z

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v2, "reportFailedUnlockAttempt : maxNumFailedAttemptForProfileDisable="

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget v2, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForProfileDisable:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, " , curNumFailedAttempts="

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v1, "isProfileDisableForMaxFailedAttempt="

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsProfileDisableForMaxFailedAttempt:Z

    .line 62
    .line 63
    invoke-static {v0, v1, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsProfileDisableForMaxFailedAttempt:Z

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 73
    .line 74
    const/16 v1, 0x13a5

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const-string p0, "MDM is not enabled..."

    .line 88
    .line 89
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_2
    return-void
.end method
