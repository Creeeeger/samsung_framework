.class public final Lcom/android/systemui/qs/QSSecurityFooter;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

.field public final mContext:Landroid/content/Context;

.field public mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mDpm:Landroid/app/admin/DevicePolicyManager;

.field public final mFooterText:Landroid/widget/TextView;

.field public mFooterTextContent:Ljava/lang/CharSequence;

.field public final mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

.field public mIsVisible:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public final mManagementDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mManagementDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mManagementDialogStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mManagementMessageSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mManagementMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mManagementMultipleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mManagementTitleSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mMonitoringSubtitleCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mMonitoringSubtitleNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mMonitoringSubtitleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mPrimaryFooterIcon:Landroid/widget/ImageView;

.field public mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

.field public mPrimaryFooterIconId:I

.field public final mReceiver:Lcom/android/systemui/qs/QSSecurityFooter$1;

.field public final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field public final mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUpdateDisplayState:Lcom/android/systemui/qs/QSSecurityFooter$3;

.field public final mUpdatePrimaryIcon:Lcom/android/systemui/qs/QSSecurityFooter$2;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mViewPoliciesButtonStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public mVisibilityChangedListener:Lcom/android/systemui/qs/bar/SecurityFooterBar;

.field public final mWorkProfileDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mWorkProfileDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mWorkProfileMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mWorkProfileNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;


# direct methods
.method public static -$$Nest$mhandleRefreshState(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 4
    .line 5
    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isDeviceManaged()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 20
    .line 21
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserInfo()Landroid/content/pm/UserInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDemo()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    :goto_0
    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 37
    .line 38
    check-cast v3, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasWorkProfile()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget-object v4, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 45
    .line 46
    check-cast v4, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInCurrentUser()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iget-object v5, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 53
    .line 54
    check-cast v5, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 55
    .line 56
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInWorkProfile()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 61
    .line 62
    check-cast v6, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 63
    .line 64
    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    iget-object v8, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 72
    .line 73
    check-cast v8, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 74
    .line 75
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getPrimaryVpnName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    iget-object v9, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 80
    .line 81
    check-cast v9, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 82
    .line 83
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileVpnName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    iget-object v10, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 88
    .line 89
    check-cast v10, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 90
    .line 91
    iget-object v10, v10, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 92
    .line 93
    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    iget-object v11, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 98
    .line 99
    check-cast v11, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 100
    .line 101
    iget v12, v11, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    .line 102
    .line 103
    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    const/16 v13, -0x2710

    .line 108
    .line 109
    if-ne v12, v13, :cond_1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    iget-object v7, v11, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 113
    .line 114
    invoke-virtual {v7, v12}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    :goto_1
    iget-object v11, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 119
    .line 120
    check-cast v11, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 121
    .line 122
    iget-object v11, v11, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 123
    .line 124
    invoke-virtual {v11}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    iget-object v12, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 129
    .line 130
    check-cast v12, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 131
    .line 132
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isParentalControlsEnabled()Z

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    iget-object v13, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 137
    .line 138
    check-cast v13, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 139
    .line 140
    iget v14, v13, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    .line 141
    .line 142
    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    .line 143
    .line 144
    .line 145
    move-result v14

    .line 146
    invoke-static {v14}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    if-eqz v14, :cond_2

    .line 151
    .line 152
    iget-object v13, v13, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 153
    .line 154
    invoke-virtual {v13, v14}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    .line 155
    .line 156
    .line 157
    move-result v13

    .line 158
    if-nez v13, :cond_2

    .line 159
    .line 160
    const/4 v13, 0x1

    .line 161
    goto :goto_2

    .line 162
    :cond_2
    const/4 v13, 0x0

    .line 163
    :goto_2
    if-nez v5, :cond_4

    .line 164
    .line 165
    if-nez v9, :cond_4

    .line 166
    .line 167
    if-eqz v3, :cond_3

    .line 168
    .line 169
    if-eqz v6, :cond_3

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_3
    const/4 v14, 0x0

    .line 173
    goto :goto_4

    .line 174
    :cond_4
    :goto_3
    const/4 v14, 0x1

    .line 175
    :goto_4
    iget-boolean v15, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    .line 176
    .line 177
    if-eqz v1, :cond_5

    .line 178
    .line 179
    if-eqz v2, :cond_7

    .line 180
    .line 181
    :cond_5
    if-nez v4, :cond_7

    .line 182
    .line 183
    if-nez v8, :cond_7

    .line 184
    .line 185
    if-nez v11, :cond_7

    .line 186
    .line 187
    if-nez v12, :cond_7

    .line 188
    .line 189
    if-eqz v14, :cond_6

    .line 190
    .line 191
    if-eqz v13, :cond_6

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_6
    const/16 v16, 0x0

    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_7
    :goto_5
    const/16 v16, 0x1

    .line 198
    .line 199
    :goto_6
    move-object/from16 v17, v10

    .line 200
    .line 201
    iget-object v10, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 202
    .line 203
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    .line 212
    .line 213
    move-object/from16 v18, v7

    .line 214
    .line 215
    const/4 v7, 0x1

    .line 216
    if-ne v10, v7, :cond_8

    .line 217
    .line 218
    const/4 v7, 0x1

    .line 219
    goto :goto_7

    .line 220
    :cond_8
    const/4 v7, 0x0

    .line 221
    :goto_7
    sget-boolean v10, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 222
    .line 223
    if-nez v10, :cond_9

    .line 224
    .line 225
    and-int v16, v16, v7

    .line 226
    .line 227
    :cond_9
    move/from16 v10, v16

    .line 228
    .line 229
    if-eq v15, v10, :cond_b

    .line 230
    .line 231
    move/from16 v16, v6

    .line 232
    .line 233
    const-string/jumbo v6, "updateVisibility: isVisible: "

    .line 234
    .line 235
    .line 236
    move/from16 v19, v3

    .line 237
    .line 238
    const-string v3, " -> "

    .line 239
    .line 240
    move-object/from16 v20, v9

    .line 241
    .line 242
    const-string v9, " [(isDeviceManaged("

    .line 243
    .line 244
    invoke-static {v6, v15, v3, v10, v9}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v6, ") && !isDemoDevice("

    .line 252
    .line 253
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    xor-int/lit8 v2, v2, 0x1

    .line 257
    .line 258
    const-string v6, ")) || hasCACerts("

    .line 259
    .line 260
    const-string v9, ") || vpnName!=null("

    .line 261
    .line 262
    invoke-static {v3, v2, v6, v4, v9}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    if-eqz v8, :cond_a

    .line 266
    .line 267
    const/4 v2, 0x1

    .line 268
    goto :goto_8

    .line 269
    :cond_a
    const/4 v2, 0x0

    .line 270
    :goto_8
    const-string v6, ") || isProfileOwnerOfOrganizationOwnedDevice("

    .line 271
    .line 272
    const-string v9, ") || isParentalControlsEnabled("

    .line 273
    .line 274
    invoke-static {v3, v2, v6, v11, v9}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const-string v2, ") || (hasDisclosableWorkProfilePolicy("

    .line 278
    .line 279
    const-string v6, ") && isWorkProfileOn("

    .line 280
    .line 281
    invoke-static {v3, v12, v2, v14, v6}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v2, "))] & isPortrait("

    .line 288
    .line 289
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v2, ")"

    .line 296
    .line 297
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    const-string v3, "QSSecurityFooter"

    .line 305
    .line 306
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    goto :goto_9

    .line 310
    :cond_b
    move/from16 v19, v3

    .line 311
    .line 312
    move/from16 v16, v6

    .line 313
    .line 314
    move-object/from16 v20, v9

    .line 315
    .line 316
    :goto_9
    iput-boolean v10, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    .line 317
    .line 318
    if-eqz v10, :cond_d

    .line 319
    .line 320
    if-eqz v11, :cond_d

    .line 321
    .line 322
    if-eqz v14, :cond_c

    .line 323
    .line 324
    if-nez v13, :cond_d

    .line 325
    .line 326
    :cond_c
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    .line 327
    .line 328
    const/4 v3, 0x0

    .line 329
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 330
    .line 331
    .line 332
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    .line 333
    .line 334
    const/16 v3, 0x8

    .line 335
    .line 336
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    .line 338
    .line 339
    goto :goto_a

    .line 340
    :cond_d
    const/4 v2, 0x0

    .line 341
    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    .line 342
    .line 343
    const/4 v6, 0x1

    .line 344
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 345
    .line 346
    .line 347
    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    .line 348
    .line 349
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    .line 351
    .line 352
    :goto_a
    if-eqz v12, :cond_e

    .line 353
    .line 354
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 355
    .line 356
    const v2, 0x7f130daa

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    :goto_b
    move-object/from16 v6, v20

    .line 364
    .line 365
    goto/16 :goto_12

    .line 366
    .line 367
    :cond_e
    if-nez v1, :cond_1b

    .line 368
    .line 369
    const/4 v1, 0x4

    .line 370
    if-nez v4, :cond_17

    .line 371
    .line 372
    if-eqz v5, :cond_f

    .line 373
    .line 374
    if-eqz v13, :cond_f

    .line 375
    .line 376
    goto/16 :goto_d

    .line 377
    .line 378
    :cond_f
    if-nez v8, :cond_13

    .line 379
    .line 380
    if-eqz v20, :cond_10

    .line 381
    .line 382
    if-eqz v13, :cond_10

    .line 383
    .line 384
    goto :goto_c

    .line 385
    :cond_10
    if-eqz v19, :cond_11

    .line 386
    .line 387
    if-eqz v16, :cond_11

    .line 388
    .line 389
    if-eqz v13, :cond_11

    .line 390
    .line 391
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 392
    .line 393
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 398
    .line 399
    const-string v3, "SystemUi.QS_MSG_WORK_PROFILE_NETWORK"

    .line 400
    .line 401
    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    goto :goto_b

    .line 406
    :cond_11
    if-eqz v11, :cond_12

    .line 407
    .line 408
    move-object/from16 v7, v18

    .line 409
    .line 410
    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/QSSecurityFooter;->getMangedDeviceGeneralText(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    goto :goto_b

    .line 415
    :cond_12
    move-object/from16 v6, v20

    .line 416
    .line 417
    goto/16 :goto_e

    .line 418
    .line 419
    :cond_13
    :goto_c
    if-eqz v8, :cond_14

    .line 420
    .line 421
    if-eqz v20, :cond_14

    .line 422
    .line 423
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 424
    .line 425
    const v2, 0x7f130dac

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    goto :goto_b

    .line 433
    :cond_14
    if-eqz v20, :cond_15

    .line 434
    .line 435
    if-eqz v13, :cond_15

    .line 436
    .line 437
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 438
    .line 439
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    new-instance v3, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda3;

    .line 444
    .line 445
    move-object/from16 v6, v20

    .line 446
    .line 447
    invoke-direct {v3, v0, v6, v1}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;I)V

    .line 448
    .line 449
    .line 450
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    const-string v4, "SystemUi.QS_MSG_WORK_PROFILE_NAMED_VPN"

    .line 455
    .line 456
    invoke-virtual {v2, v4, v3, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    goto/16 :goto_12

    .line 461
    .line 462
    :cond_15
    move-object/from16 v6, v20

    .line 463
    .line 464
    if-eqz v8, :cond_1a

    .line 465
    .line 466
    if-eqz v19, :cond_16

    .line 467
    .line 468
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 469
    .line 470
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    new-instance v2, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda3;

    .line 475
    .line 476
    const/4 v3, 0x5

    .line 477
    invoke-direct {v2, v0, v8, v3}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;I)V

    .line 478
    .line 479
    .line 480
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    const-string v4, "SystemUi.QS_MSG_PERSONAL_PROFILE_NAMED_VPN"

    .line 485
    .line 486
    invoke-virtual {v1, v4, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    goto/16 :goto_12

    .line 491
    .line 492
    :cond_16
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 493
    .line 494
    const v2, 0x7f130da9

    .line 495
    .line 496
    .line 497
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    goto/16 :goto_12

    .line 506
    .line 507
    :cond_17
    :goto_d
    move-object/from16 v7, v18

    .line 508
    .line 509
    move-object/from16 v6, v20

    .line 510
    .line 511
    if-eqz v5, :cond_19

    .line 512
    .line 513
    if-eqz v13, :cond_19

    .line 514
    .line 515
    if-nez v7, :cond_18

    .line 516
    .line 517
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 518
    .line 519
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 524
    .line 525
    const-string v3, "SystemUi.QS_MSG_WORK_PROFILE_MONITORING"

    .line 526
    .line 527
    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    goto/16 :goto_12

    .line 532
    .line 533
    :cond_18
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 534
    .line 535
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    new-instance v3, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda1;

    .line 540
    .line 541
    invoke-direct {v3, v0, v7, v1}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;I)V

    .line 542
    .line 543
    .line 544
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    const-string v4, "SystemUi.QS_MSG_NAMED_WORK_PROFILE_MONITORING"

    .line 549
    .line 550
    invoke-virtual {v2, v4, v3, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    goto/16 :goto_12

    .line 555
    .line 556
    :cond_19
    if-eqz v4, :cond_1a

    .line 557
    .line 558
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 559
    .line 560
    const v2, 0x7f130da3

    .line 561
    .line 562
    .line 563
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    goto/16 :goto_12

    .line 568
    .line 569
    :cond_1a
    :goto_e
    const/4 v1, 0x0

    .line 570
    goto/16 :goto_12

    .line 571
    .line 572
    :cond_1b
    move-object/from16 v6, v20

    .line 573
    .line 574
    if-nez v4, :cond_23

    .line 575
    .line 576
    if-nez v5, :cond_23

    .line 577
    .line 578
    if-eqz v16, :cond_1c

    .line 579
    .line 580
    goto/16 :goto_11

    .line 581
    .line 582
    :cond_1c
    if-nez v8, :cond_1e

    .line 583
    .line 584
    if-eqz v6, :cond_1d

    .line 585
    .line 586
    goto :goto_f

    .line 587
    :cond_1d
    move-object/from16 v1, v17

    .line 588
    .line 589
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter;->getMangedDeviceGeneralText(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    goto/16 :goto_12

    .line 594
    .line 595
    :cond_1e
    :goto_f
    move-object/from16 v1, v17

    .line 596
    .line 597
    if-eqz v8, :cond_20

    .line 598
    .line 599
    if-eqz v6, :cond_20

    .line 600
    .line 601
    if-nez v1, :cond_1f

    .line 602
    .line 603
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 604
    .line 605
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMultipleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 610
    .line 611
    const-string v3, "SystemUi.QS_MSG_MANAGEMENT_MULTIPLE_VPNS"

    .line 612
    .line 613
    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    goto/16 :goto_12

    .line 618
    .line 619
    :cond_1f
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 620
    .line 621
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    new-instance v3, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda1;

    .line 626
    .line 627
    const/4 v4, 0x1

    .line 628
    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;I)V

    .line 629
    .line 630
    .line 631
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    const-string v4, "SystemUi.QS_MSG_NAMED_MANAGEMENT_MULTIPLE_VPNS"

    .line 636
    .line 637
    invoke-virtual {v2, v4, v3, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    goto :goto_12

    .line 642
    :cond_20
    if-eqz v8, :cond_21

    .line 643
    .line 644
    move-object v2, v8

    .line 645
    goto :goto_10

    .line 646
    :cond_21
    move-object v2, v6

    .line 647
    :goto_10
    if-nez v1, :cond_22

    .line 648
    .line 649
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 650
    .line 651
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    new-instance v3, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda3;

    .line 656
    .line 657
    const/4 v4, 0x3

    .line 658
    invoke-direct {v3, v0, v2, v4}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;I)V

    .line 659
    .line 660
    .line 661
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    const-string v4, "SystemUi.QS_MSG_MANAGEMENT_NAMED_VPN"

    .line 666
    .line 667
    invoke-virtual {v1, v4, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    goto :goto_12

    .line 672
    :cond_22
    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 673
    .line 674
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 675
    .line 676
    .line 677
    move-result-object v3

    .line 678
    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda2;

    .line 679
    .line 680
    invoke-direct {v4, v0, v1, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    const-string v2, "SystemUi.QS_MSG_NAMED_MANAGEMENT_NAMED_VPN"

    .line 688
    .line 689
    invoke-virtual {v3, v2, v4, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    goto :goto_12

    .line 694
    :cond_23
    :goto_11
    move-object/from16 v1, v17

    .line 695
    .line 696
    if-nez v1, :cond_24

    .line 697
    .line 698
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 699
    .line 700
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 705
    .line 706
    const-string v3, "SystemUi.QS_MSG_MANAGEMENT_MONITORING"

    .line 707
    .line 708
    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    goto :goto_12

    .line 713
    :cond_24
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 714
    .line 715
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 716
    .line 717
    .line 718
    move-result-object v2

    .line 719
    new-instance v3, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda1;

    .line 720
    .line 721
    const/4 v4, 0x2

    .line 722
    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;I)V

    .line 723
    .line 724
    .line 725
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    const-string v4, "SystemUi.QS_MSG_NAMED_MANAGEMENT_MONITORING"

    .line 730
    .line 731
    invoke-virtual {v2, v4, v3, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    :goto_12
    iput-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    .line 736
    .line 737
    if-nez v8, :cond_26

    .line 738
    .line 739
    if-eqz v6, :cond_25

    .line 740
    .line 741
    goto :goto_13

    .line 742
    :cond_25
    const v1, 0x7f080eb9

    .line 743
    .line 744
    .line 745
    goto :goto_14

    .line 746
    :cond_26
    :goto_13
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 747
    .line 748
    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 749
    .line 750
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isVpnBranded()Z

    .line 751
    .line 752
    .line 753
    move-result v1

    .line 754
    if-eqz v1, :cond_27

    .line 755
    .line 756
    const v1, 0x7f08111f

    .line 757
    .line 758
    .line 759
    goto :goto_14

    .line 760
    :cond_27
    const v1, 0x7f0811fd

    .line 761
    .line 762
    .line 763
    :goto_14
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 764
    .line 765
    check-cast v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 766
    .line 767
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isSecureWifiEnabled()Z

    .line 768
    .line 769
    .line 770
    move-result v2

    .line 771
    if-eqz v2, :cond_28

    .line 772
    .line 773
    const v1, 0x7f0811ca

    .line 774
    .line 775
    .line 776
    :cond_28
    iget v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconId:I

    .line 777
    .line 778
    if-eq v2, v1, :cond_29

    .line 779
    .line 780
    iput v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconId:I

    .line 781
    .line 782
    :cond_29
    if-eqz v12, :cond_2b

    .line 783
    .line 784
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 785
    .line 786
    if-nez v1, :cond_2c

    .line 787
    .line 788
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 789
    .line 790
    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 791
    .line 792
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 797
    .line 798
    check-cast v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 799
    .line 800
    if-nez v1, :cond_2a

    .line 801
    .line 802
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 803
    .line 804
    .line 805
    const/4 v1, 0x0

    .line 806
    goto :goto_15

    .line 807
    :cond_2a
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 808
    .line 809
    invoke-virtual {v1, v2}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    :goto_15
    iput-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 814
    .line 815
    goto :goto_16

    .line 816
    :cond_2b
    const/4 v1, 0x0

    .line 817
    iput-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 818
    .line 819
    :cond_2c
    :goto_16
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    .line 820
    .line 821
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdatePrimaryIcon:Lcom/android/systemui/qs/QSSecurityFooter$2;

    .line 822
    .line 823
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 824
    .line 825
    .line 826
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    .line 827
    .line 828
    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Lcom/android/systemui/qs/QSSecurityFooter$3;

    .line 829
    .line 830
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 831
    .line 832
    .line 833
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/SecurityController;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$Callback;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    .line 21
    .line 22
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$1;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$1;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mReceiver:Lcom/android/systemui/qs/QSSecurityFooter$1;

    .line 28
    .line 29
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementTitleSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    const/4 v2, 0x6

    .line 39
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMessageSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    const/4 v2, 0x7

    .line 47
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/16 v2, 0x8

    .line 55
    .line 56
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMultipleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    const/16 v2, 0x9

    .line 64
    .line 65
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    const/16 v2, 0xa

    .line 73
    .line 74
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 80
    .line 81
    const/16 v2, 0xb

    .line 82
    .line 83
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    const/16 v2, 0xc

    .line 91
    .line 92
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    const/16 v2, 0xd

    .line 100
    .line 101
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    const/16 v2, 0xe

    .line 109
    .line 110
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mViewPoliciesButtonStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 114
    .line 115
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 116
    .line 117
    const/4 v2, 0x1

    .line 118
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 122
    .line 123
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 124
    .line 125
    const/4 v2, 0x2

    .line 126
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 132
    .line 133
    const/4 v2, 0x3

    .line 134
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    .line 135
    .line 136
    .line 137
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 138
    .line 139
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 140
    .line 141
    const/4 v2, 0x4

    .line 142
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 146
    .line 147
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 148
    .line 149
    const/4 v2, 0x5

    .line 150
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    .line 151
    .line 152
    .line 153
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 154
    .line 155
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$2;

    .line 156
    .line 157
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$2;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    .line 158
    .line 159
    .line 160
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdatePrimaryIcon:Lcom/android/systemui/qs/QSSecurityFooter$2;

    .line 161
    .line 162
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$3;

    .line 163
    .line 164
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$3;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    .line 165
    .line 166
    .line 167
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Lcom/android/systemui/qs/QSSecurityFooter$3;

    .line 168
    .line 169
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 170
    .line 171
    const v2, 0x7f0a040f

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Landroid/widget/TextView;

    .line 179
    .line 180
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    .line 181
    .line 182
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 183
    .line 184
    const v2, 0x7f0a081a

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Landroid/widget/ImageView;

    .line 192
    .line 193
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    .line 194
    .line 195
    const v0, 0x7f080eb9

    .line 196
    .line 197
    .line 198
    iput v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconId:I

    .line 199
    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 205
    .line 206
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 213
    .line 214
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 215
    .line 216
    iput-object p3, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    .line 217
    .line 218
    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 219
    .line 220
    iput-object p5, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 221
    .line 222
    new-instance p1, Lcom/android/systemui/qs/QSSecurityFooter$H;

    .line 223
    .line 224
    invoke-direct {p1, p0, p6, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;I)V

    .line 225
    .line 226
    .line 227
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    .line 228
    .line 229
    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 230
    .line 231
    iput-object p7, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 234
    .line 235
    .line 236
    return-void
.end method


# virtual methods
.method public createDialogView()Landroid/view/View;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 4
    .line 5
    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isParentalControlsEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const v4, 0x7f0d0391

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v4, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 29
    .line 30
    check-cast v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v4, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 37
    .line 38
    check-cast v4, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 39
    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-object v4, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    :goto_0
    if-eqz v4, :cond_1

    .line 54
    .line 55
    const v5, 0x7f0a07cd

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Landroid/widget/ImageView;

    .line 63
    .line 64
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    const v4, 0x7f0a07ce

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Landroid/widget/TextView;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 77
    .line 78
    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 79
    .line 80
    if-nez v2, :cond_2

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 97
    .line 98
    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isDeviceManaged()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iget-object v4, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 105
    .line 106
    check-cast v4, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 107
    .line 108
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasWorkProfile()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    iget-object v5, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 113
    .line 114
    check-cast v5, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 115
    .line 116
    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 117
    .line 118
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 123
    .line 124
    check-cast v6, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 125
    .line 126
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInCurrentUser()Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 131
    .line 132
    check-cast v7, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 133
    .line 134
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInWorkProfile()Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    iget-object v8, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 139
    .line 140
    check-cast v8, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 141
    .line 142
    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 143
    .line 144
    invoke-virtual {v8, v3}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    iget-object v9, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 149
    .line 150
    check-cast v9, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 151
    .line 152
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getPrimaryVpnName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    iget-object v10, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 157
    .line 158
    check-cast v10, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 159
    .line 160
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileVpnName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    iget-object v11, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 165
    .line 166
    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    const v12, 0x7f0d0390

    .line 171
    .line 172
    .line 173
    invoke-virtual {v11, v12, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    const v12, 0x7f0a0328

    .line 178
    .line 179
    .line 180
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    check-cast v12, Landroid/widget/TextView;

    .line 185
    .line 186
    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/QSSecurityFooter;->getManagementTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    if-nez v1, :cond_4

    .line 194
    .line 195
    move-object v5, v3

    .line 196
    goto :goto_2

    .line 197
    :cond_4
    if-eqz v5, :cond_6

    .line 198
    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSSecurityFooter;->isFinancedDevice()Z

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    if-eqz v12, :cond_5

    .line 204
    .line 205
    iget-object v12, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 206
    .line 207
    const v13, 0x7f130b7e

    .line 208
    .line 209
    .line 210
    filled-new-array {v5, v5}, [Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-virtual {v12, v13, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    goto :goto_2

    .line 219
    :cond_5
    iget-object v12, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 220
    .line 221
    invoke-virtual {v12}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 222
    .line 223
    .line 224
    move-result-object v12

    .line 225
    new-instance v13, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda1;

    .line 226
    .line 227
    invoke-direct {v13, v0, v5, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;I)V

    .line 228
    .line 229
    .line 230
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    const-string v14, "SystemUi.QS_DIALOG_NAMED_MANAGEMENT"

    .line 235
    .line 236
    invoke-virtual {v12, v14, v13, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    goto :goto_2

    .line 241
    :cond_6
    iget-object v5, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 242
    .line 243
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    iget-object v12, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 248
    .line 249
    const-string v13, "SystemUi.QS_DIALOG_MANAGEMENT"

    .line 250
    .line 251
    invoke-virtual {v5, v13, v12}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    :goto_2
    const/4 v12, 0x1

    .line 256
    const v13, 0x7f0a0327

    .line 257
    .line 258
    .line 259
    const/16 v14, 0x8

    .line 260
    .line 261
    if-nez v5, :cond_7

    .line 262
    .line 263
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v13

    .line 267
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_7
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v13

    .line 275
    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    .line 277
    .line 278
    const v13, 0x7f0a0329

    .line 279
    .line 280
    .line 281
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object v13

    .line 285
    check-cast v13, Landroid/widget/TextView;

    .line 286
    .line 287
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    .line 289
    .line 290
    iget-object v13, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 291
    .line 292
    invoke-virtual {v13, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 293
    .line 294
    .line 295
    :goto_3
    if-nez v6, :cond_8

    .line 296
    .line 297
    if-nez v7, :cond_8

    .line 298
    .line 299
    move-object v6, v3

    .line 300
    goto :goto_4

    .line 301
    :cond_8
    if-eqz v1, :cond_9

    .line 302
    .line 303
    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 304
    .line 305
    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 310
    .line 311
    const-string v13, "SystemUi.QS_DIALOG_MANAGEMENT_CA_CERT"

    .line 312
    .line 313
    invoke-virtual {v6, v13, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    goto :goto_4

    .line 318
    :cond_9
    if-eqz v7, :cond_a

    .line 319
    .line 320
    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 321
    .line 322
    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 327
    .line 328
    const-string v13, "SystemUi.QS_DIALOG_WORK_PROFILE_CA_CERT"

    .line 329
    .line 330
    invoke-virtual {v6, v13, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    goto :goto_4

    .line 335
    :cond_a
    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 336
    .line 337
    const v7, 0x7f130b6f

    .line 338
    .line 339
    .line 340
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    :goto_4
    const v7, 0x7f0a020b

    .line 345
    .line 346
    .line 347
    const v13, 0x7f0a020a

    .line 348
    .line 349
    .line 350
    if-nez v6, :cond_b

    .line 351
    .line 352
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 353
    .line 354
    .line 355
    move-result-object v13

    .line 356
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 357
    .line 358
    .line 359
    goto :goto_5

    .line 360
    :cond_b
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 361
    .line 362
    .line 363
    move-result-object v13

    .line 364
    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    const v13, 0x7f0a020c

    .line 368
    .line 369
    .line 370
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 371
    .line 372
    .line 373
    move-result-object v13

    .line 374
    check-cast v13, Landroid/widget/TextView;

    .line 375
    .line 376
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    .line 378
    .line 379
    new-instance v15, Landroid/text/method/LinkMovementMethod;

    .line 380
    .line 381
    invoke-direct {v15}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 388
    .line 389
    .line 390
    move-result-object v13

    .line 391
    check-cast v13, Landroid/widget/TextView;

    .line 392
    .line 393
    iget-object v15, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 394
    .line 395
    invoke-virtual {v15}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 396
    .line 397
    .line 398
    move-result-object v15

    .line 399
    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 400
    .line 401
    const-string v7, "SystemUi.QS_DIALOG_MONITORING_CA_CERT_SUBTITLE"

    .line 402
    .line 403
    invoke-virtual {v15, v7, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    .line 409
    .line 410
    :goto_5
    if-nez v8, :cond_c

    .line 411
    .line 412
    const/4 v3, 0x0

    .line 413
    goto :goto_6

    .line 414
    :cond_c
    if-eqz v1, :cond_d

    .line 415
    .line 416
    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 417
    .line 418
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 423
    .line 424
    const-string v8, "SystemUi.QS_DIALOG_MANAGEMENT_NETWORK"

    .line 425
    .line 426
    invoke-virtual {v3, v8, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    goto :goto_6

    .line 431
    :cond_d
    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 432
    .line 433
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 438
    .line 439
    const-string v8, "SystemUi.QS_DIALOG_WORK_PROFILE_NETWORK"

    .line 440
    .line 441
    invoke-virtual {v3, v8, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    :goto_6
    const v7, 0x7f0a0731

    .line 446
    .line 447
    .line 448
    const v8, 0x7f0a0730

    .line 449
    .line 450
    .line 451
    if-nez v3, :cond_e

    .line 452
    .line 453
    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 454
    .line 455
    .line 456
    move-result-object v8

    .line 457
    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    .line 458
    .line 459
    .line 460
    goto :goto_7

    .line 461
    :cond_e
    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 462
    .line 463
    .line 464
    move-result-object v8

    .line 465
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 466
    .line 467
    .line 468
    const v8, 0x7f0a0732

    .line 469
    .line 470
    .line 471
    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 472
    .line 473
    .line 474
    move-result-object v8

    .line 475
    check-cast v8, Landroid/widget/TextView;

    .line 476
    .line 477
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 481
    .line 482
    .line 483
    move-result-object v8

    .line 484
    check-cast v8, Landroid/widget/TextView;

    .line 485
    .line 486
    iget-object v13, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 487
    .line 488
    invoke-virtual {v13}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 489
    .line 490
    .line 491
    move-result-object v13

    .line 492
    iget-object v15, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 493
    .line 494
    const-string v7, "SystemUi.QS_DIALOG_MONITORING_NETWORK_SUBTITLE"

    .line 495
    .line 496
    invoke-virtual {v13, v7, v15}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v7

    .line 500
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    .line 502
    .line 503
    :goto_7
    if-nez v9, :cond_f

    .line 504
    .line 505
    if-nez v10, :cond_f

    .line 506
    .line 507
    const/4 v7, 0x0

    .line 508
    goto/16 :goto_a

    .line 509
    .line 510
    :cond_f
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .line 511
    .line 512
    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 513
    .line 514
    .line 515
    const-string v8, "SystemUi.QS_DIALOG_MANAGEMENT_TWO_NAMED_VPN"

    .line 516
    .line 517
    if-eqz v1, :cond_12

    .line 518
    .line 519
    if-eqz v9, :cond_10

    .line 520
    .line 521
    if-eqz v10, :cond_10

    .line 522
    .line 523
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 524
    .line 525
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda2;

    .line 530
    .line 531
    invoke-direct {v4, v0, v9, v10, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 532
    .line 533
    .line 534
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v9

    .line 538
    invoke-virtual {v1, v8, v4, v9}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 543
    .line 544
    .line 545
    goto/16 :goto_9

    .line 546
    .line 547
    :cond_10
    if-eqz v9, :cond_11

    .line 548
    .line 549
    goto :goto_8

    .line 550
    :cond_11
    move-object v9, v10

    .line 551
    :goto_8
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 552
    .line 553
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda3;

    .line 558
    .line 559
    invoke-direct {v4, v0, v9, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;I)V

    .line 560
    .line 561
    .line 562
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v8

    .line 566
    const-string v9, "SystemUi.QS_DIALOG_MANAGEMENT_NAMED_VPN"

    .line 567
    .line 568
    invoke-virtual {v1, v9, v4, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 573
    .line 574
    .line 575
    goto :goto_9

    .line 576
    :cond_12
    if-eqz v9, :cond_13

    .line 577
    .line 578
    if-eqz v10, :cond_13

    .line 579
    .line 580
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 581
    .line 582
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda2;

    .line 587
    .line 588
    invoke-direct {v4, v0, v9, v10, v12}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 589
    .line 590
    .line 591
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v9

    .line 595
    invoke-virtual {v1, v8, v4, v9}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 600
    .line 601
    .line 602
    goto :goto_9

    .line 603
    :cond_13
    if-eqz v10, :cond_14

    .line 604
    .line 605
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 606
    .line 607
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda3;

    .line 612
    .line 613
    invoke-direct {v4, v0, v10, v12}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;I)V

    .line 614
    .line 615
    .line 616
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v8

    .line 620
    const-string v9, "SystemUi.QS_DIALOG_WORK_PROFILE_NAMED_VPN"

    .line 621
    .line 622
    invoke-virtual {v1, v9, v4, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 627
    .line 628
    .line 629
    goto :goto_9

    .line 630
    :cond_14
    if-eqz v4, :cond_15

    .line 631
    .line 632
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 633
    .line 634
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda3;

    .line 639
    .line 640
    const/4 v8, 0x2

    .line 641
    invoke-direct {v4, v0, v9, v8}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;I)V

    .line 642
    .line 643
    .line 644
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v8

    .line 648
    const-string v9, "SystemUi.QS_DIALOG_PERSONAL_PROFILE_NAMED_VPN"

    .line 649
    .line 650
    invoke-virtual {v1, v9, v4, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 655
    .line 656
    .line 657
    goto :goto_9

    .line 658
    :cond_15
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 659
    .line 660
    const v4, 0x7f130b78

    .line 661
    .line 662
    .line 663
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v8

    .line 667
    invoke-virtual {v1, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 672
    .line 673
    .line 674
    :goto_9
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 675
    .line 676
    const v4, 0x7f130b7d

    .line 677
    .line 678
    .line 679
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 684
    .line 685
    .line 686
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 687
    .line 688
    const v4, 0x7f130b7c

    .line 689
    .line 690
    .line 691
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;

    .line 696
    .line 697
    invoke-direct {v4, v0}, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v7, v1, v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 701
    .line 702
    .line 703
    :goto_a
    const v1, 0x7f0a0d2e

    .line 704
    .line 705
    .line 706
    const v4, 0x7f0a0d2d

    .line 707
    .line 708
    .line 709
    if-nez v7, :cond_16

    .line 710
    .line 711
    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 716
    .line 717
    .line 718
    goto :goto_b

    .line 719
    :cond_16
    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 720
    .line 721
    .line 722
    move-result-object v4

    .line 723
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 724
    .line 725
    .line 726
    const v4, 0x7f0a0d2f

    .line 727
    .line 728
    .line 729
    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 730
    .line 731
    .line 732
    move-result-object v4

    .line 733
    check-cast v4, Landroid/widget/TextView;

    .line 734
    .line 735
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    .line 737
    .line 738
    new-instance v8, Landroid/text/method/LinkMovementMethod;

    .line 739
    .line 740
    invoke-direct {v8}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 747
    .line 748
    .line 749
    move-result-object v4

    .line 750
    check-cast v4, Landroid/widget/TextView;

    .line 751
    .line 752
    iget-object v8, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 753
    .line 754
    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 755
    .line 756
    .line 757
    move-result-object v8

    .line 758
    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 759
    .line 760
    const-string v9, "SystemUi.QS_DIALOG_MONITORING_VPN_SUBTITLE"

    .line 761
    .line 762
    invoke-virtual {v8, v9, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    .line 768
    .line 769
    :goto_b
    if-eqz v5, :cond_17

    .line 770
    .line 771
    move v0, v12

    .line 772
    goto :goto_c

    .line 773
    :cond_17
    move v0, v2

    .line 774
    :goto_c
    if-eqz v6, :cond_18

    .line 775
    .line 776
    move v4, v12

    .line 777
    goto :goto_d

    .line 778
    :cond_18
    move v4, v2

    .line 779
    :goto_d
    if-eqz v3, :cond_19

    .line 780
    .line 781
    move v3, v12

    .line 782
    goto :goto_e

    .line 783
    :cond_19
    move v3, v2

    .line 784
    :goto_e
    if-eqz v7, :cond_1a

    .line 785
    .line 786
    move v2, v12

    .line 787
    :cond_1a
    if-eqz v0, :cond_1b

    .line 788
    .line 789
    goto :goto_10

    .line 790
    :cond_1b
    if-eqz v3, :cond_1c

    .line 791
    .line 792
    add-int/lit8 v0, v4, 0x1

    .line 793
    .line 794
    goto :goto_f

    .line 795
    :cond_1c
    move v0, v4

    .line 796
    :goto_f
    if-eqz v2, :cond_1d

    .line 797
    .line 798
    add-int/lit8 v0, v0, 0x1

    .line 799
    .line 800
    :cond_1d
    if-eq v0, v12, :cond_1e

    .line 801
    .line 802
    goto :goto_10

    .line 803
    :cond_1e
    if-eqz v4, :cond_1f

    .line 804
    .line 805
    const v0, 0x7f0a020b

    .line 806
    .line 807
    .line 808
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 813
    .line 814
    .line 815
    :cond_1f
    if-eqz v3, :cond_20

    .line 816
    .line 817
    const v0, 0x7f0a0731

    .line 818
    .line 819
    .line 820
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 825
    .line 826
    .line 827
    :cond_20
    if-eqz v2, :cond_21

    .line 828
    .line 829
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 834
    .line 835
    .line 836
    :cond_21
    :goto_10
    return-object v11
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 2
    .line 3
    return-object p0
.end method

.method public getManagementTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->isFinancedDevice()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const v0, 0x7f130b83

    .line 12
    .line 13
    .line 14
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementTitleSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const-string v0, "SystemUi.QS_DIALOG_MANAGEMENT_TITLE"

    .line 32
    .line 33
    invoke-virtual {p1, v0, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final getMangedDeviceGeneralText(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMessageSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const-string v0, "SystemUi.QS_MSG_MANAGEMENT"

    .line 12
    .line 13
    invoke-virtual {p1, v0, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->isFinancedDevice()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const v0, 0x7f130db8

    .line 27
    .line 28
    .line 29
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    const/4 v2, 0x3

    .line 47
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;I)V

    .line 48
    .line 49
    .line 50
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string p1, "SystemUi.QS_MSG_NAMED_MANAGEMENT"

    .line 55
    .line 56
    invoke-virtual {v0, p1, v1, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public getSettingsButton()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mViewPoliciesButtonStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const-string v1, "SystemUi.QS_DIALOG_VIEW_POLICIES"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final isFinancedDevice()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isDeviceManaged()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 12
    .line 13
    check-cast p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    const/4 v0, 0x1

    .line 28
    if-ne p0, v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 3
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onViewAttached()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mReceiver:Lcom/android/systemui/qs/QSSecurityFooter$1;

    .line 4
    .line 5
    new-instance v2, Landroid/content/IntentFilter;

    .line 6
    .line 7
    const-string v3, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    .line 13
    .line 14
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->updateTextMaxWidth()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mReceiver:Lcom/android/systemui/qs/QSSecurityFooter$1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final updateTextMaxWidth()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    .line 2
    .line 3
    const-class v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelSidePadding(Landroid/content/Context;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    mul-int/lit8 v1, v1, 0x2

    .line 36
    .line 37
    sub-int/2addr v2, v1

    .line 38
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const v3, 0x7f070e9a

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    sub-int/2addr v2, v1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const v1, 0x7f070e99

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    sub-int/2addr v2, p0

    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
