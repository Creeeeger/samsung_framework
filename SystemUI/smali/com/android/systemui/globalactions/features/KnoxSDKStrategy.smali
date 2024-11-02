.class public final Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/OnKeyListenerStrategy;


# instance fields
.field public final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

.field public final mKnoxCustomManagerWrapper:Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

.field public final mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p6, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mKnoxCustomManagerWrapper:Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    .line 13
    .line 14
    iput-object p5, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onCreateActions(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_8

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 13
    .line 14
    iput-boolean v1, v0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskOptionShown:Z

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->setOverrideDefaultActions(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogItems()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x4

    .line 29
    or-int/2addr v3, v2

    .line 30
    if-ne v3, v2, :cond_0

    .line 31
    .line 32
    move v2, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v2, v1

    .line 35
    :goto_0
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    .line 38
    .line 39
    const-string/jumbo v3, "power"

    .line 40
    .line 41
    .line 42
    invoke-interface {v2, p1, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogItems()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/16 v3, 0x40

    .line 58
    .line 59
    or-int/2addr v3, v2

    .line 60
    if-ne v3, v2, :cond_2

    .line 61
    .line 62
    move v2, v0

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v2, v1

    .line 65
    :goto_1
    if-eqz v2, :cond_3

    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    .line 68
    .line 69
    const-string/jumbo v3, "restart"

    .line 70
    .line 71
    .line 72
    invoke-interface {v2, p1, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 80
    .line 81
    iget-object v2, v2, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogItems()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const/16 v3, 0x80

    .line 88
    .line 89
    or-int/2addr v3, v2

    .line 90
    if-ne v3, v2, :cond_4

    .line 91
    .line 92
    move v2, v0

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    move v2, v1

    .line 95
    :goto_2
    if-eqz v2, :cond_5

    .line 96
    .line 97
    iget-object v2, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    .line 98
    .line 99
    const-string v3, "emergency"

    .line 100
    .line 101
    invoke-interface {v2, p1, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 106
    .line 107
    .line 108
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 109
    .line 110
    iget-object v2, v2, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogItems()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    const/16 v3, 0x100

    .line 117
    .line 118
    or-int/2addr v3, v2

    .line 119
    if-ne v3, v2, :cond_6

    .line 120
    .line 121
    move v1, v0

    .line 122
    :cond_6
    if-eqz v1, :cond_7

    .line 123
    .line 124
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    .line 125
    .line 126
    const-string v2, "bug_report"

    .line 127
    .line 128
    invoke-interface {v1, p1, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    sget-object v3, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_BTN_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    .line 137
    .line 138
    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 142
    .line 143
    .line 144
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 145
    .line 146
    iget-object v1, v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogOptionMode()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    const/4 v2, 0x2

    .line 153
    if-ne v1, v2, :cond_9

    .line 154
    .line 155
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 156
    .line 157
    iput-boolean v0, v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskOptionShown:Z

    .line 158
    .line 159
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    .line 160
    .line 161
    const-string/jumbo v1, "pro_kiosk"

    .line 162
    .line 163
    .line 164
    invoke-interface {v0, p1, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_8
    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->setOverrideDefaultActions(Z)V

    .line 173
    .line 174
    .line 175
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 176
    .line 177
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 178
    .line 179
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_b

    .line 184
    .line 185
    const-string v0, "knox_custom"

    .line 186
    .line 187
    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->clearActions(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mKnoxCustomManagerWrapper:Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    new-instance v2, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .line 199
    .line 200
    iget-object v1, v1, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;

    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItems()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    if-eqz v1, :cond_a

    .line 207
    .line 208
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_a

    .line 217
    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Lcom/samsung/android/knox/custom/PowerItem;

    .line 223
    .line 224
    new-instance v4, Lcom/android/systemui/globalactions/util/PowerItemWrapper;

    .line 225
    .line 226
    invoke-direct {v4, v3}, Lcom/android/systemui/globalactions/util/PowerItemWrapper;-><init>(Lcom/samsung/android/knox/custom/PowerItem;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-eqz v2, :cond_b

    .line 242
    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    check-cast v2, Lcom/android/systemui/globalactions/util/PowerItemWrapper;

    .line 248
    .line 249
    iget-object v3, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    .line 250
    .line 251
    invoke-interface {v3, p1, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    iget-object v4, v2, Lcom/android/systemui/globalactions/util/PowerItemWrapper;->mPowerItem:Lcom/samsung/android/knox/custom/PowerItem;

    .line 256
    .line 257
    iget-object v4, v4, Lcom/samsung/android/knox/custom/PowerItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 258
    .line 259
    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setIcon(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 260
    .line 261
    .line 262
    iget-object v2, v2, Lcom/android/systemui/globalactions/util/PowerItemWrapper;->mPowerItem:Lcom/samsung/android/knox/custom/PowerItem;

    .line 263
    .line 264
    iget-object v4, v2, Lcom/samsung/android/knox/custom/PowerItem;->mText:Ljava/lang/String;

    .line 265
    .line 266
    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setText(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget-object v4, v2, Lcom/samsung/android/knox/custom/PowerItem;->mIntent:Landroid/content/Intent;

    .line 270
    .line 271
    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setIntent(Landroid/content/Intent;)V

    .line 272
    .line 273
    .line 274
    iget v2, v2, Lcom/samsung/android/knox/custom/PowerItem;->mIntentAction:I

    .line 275
    .line 276
    invoke-interface {v3, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setIntentAction(I)V

    .line 277
    .line 278
    .line 279
    invoke-interface {p1, v3}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 280
    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_b
    return-void
.end method

.method public final onCreateEmergencyAction()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 12
    .line 13
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_DO_PROVISIONING_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 22
    .line 23
    sget-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->PWD_CHANGE_ENFORCED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 24
    .line 25
    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public final onInitialize(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 14
    .line 15
    const-string v0, "KnoxSDKStrategy"

    .line 16
    .line 17
    const-string v1, "Presenter has been locked by Knox SDK."

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 23
    .line 24
    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->setDisabled()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final onKeyListenerAction(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->isActionConfirming()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 10
    .line 11
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogOptionMode()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x3

    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-nez p1, :cond_1

    .line 32
    .line 33
    const/16 p1, 0x18

    .line 34
    .line 35
    if-ne p2, p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 38
    .line 39
    iget-boolean p2, p1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskOptionShown:Z

    .line 40
    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    iput-boolean p2, p1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskOptionShown:Z

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    .line 49
    .line 50
    const-string/jumbo v1, "pro_kiosk"

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, p1, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 61
    .line 62
    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->getGlobalActionsView()Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->updateViewList()V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 70
    .line 71
    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->getGlobalActionsView()Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->forceRequestLayout()V

    .line 76
    .line 77
    .line 78
    return p2

    .line 79
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 80
    return p0
.end method
