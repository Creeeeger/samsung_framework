.class public final Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

.field public final mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

.field public mHasVoiceCallingFeature:Z

.field public final mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field public final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public final mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

.field public final mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUIToastWrapper;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;Lcom/android/systemui/popup/util/PopupUIUtil;Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final getAction()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "com.samsung.systemui.popup.intent.DATA_CONNECTION_ERROR"

    .line 2
    .line 3
    return-object p0
.end method

.method public final show(Landroid/content/Intent;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "com.samsung.systemui.popup.intent.DATA_CONNECTION_ERROR"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v1, "connectivity"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 28
    .line 29
    const-string/jumbo v1, "phone"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x0

    .line 43
    const/4 v2, 0x1

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    move v0, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v0, v1

    .line 49
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mHasVoiceCallingFeature:Z

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move v0, v1

    .line 57
    move v3, v0

    .line 58
    :goto_1
    sget v4, Lcom/android/systemui/util/DeviceState;->sPhoneCount:I

    .line 59
    .line 60
    if-ge v0, v4, :cond_4

    .line 61
    .line 62
    const-string v4, "gsm.sim.state"

    .line 63
    .line 64
    const-string v5, "NOT_READY"

    .line 65
    .line 66
    invoke-static {v0, v4, v5}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const-string v5, "READY"

    .line 71
    .line 72
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_2

    .line 77
    .line 78
    const-string v5, "LOADED"

    .line 79
    .line 80
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_3

    .line 85
    .line 86
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    if-nez v3, :cond_5

    .line 92
    .line 93
    move v0, v2

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    move v0, v1

    .line 96
    :goto_2
    const-string v3, "DataConnectionViewModel"

    .line 97
    .line 98
    iget-object v4, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 99
    .line 100
    if-nez v0, :cond_d

    .line 101
    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mHasVoiceCallingFeature:Z

    .line 103
    .line 104
    if-nez v0, :cond_6

    .line 105
    .line 106
    goto/16 :goto_5

    .line 107
    .line 108
    :cond_6
    const-string/jumbo v0, "type"

    .line 109
    .line 110
    .line 111
    const/4 v5, -0x1

    .line 112
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    const-string v0, "no_signal_retry_enable"

    .line 117
    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    const-string v0, "no_signal_retry_intent"

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    move-object v13, p1

    .line 129
    check-cast v13, Landroid/app/PendingIntent;

    .line 130
    .line 131
    const-string/jumbo p1, "show : "

    .line 132
    .line 133
    .line 134
    const-string v0, ", "

    .line 135
    .line 136
    invoke-static {p1, v11, v0, v12, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-eqz v13, :cond_7

    .line 141
    .line 142
    move v1, v2

    .line 143
    :cond_7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v4, v3, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->initializeDialog()V

    .line 156
    .line 157
    .line 158
    if-eq v11, v5, :cond_b

    .line 159
    .line 160
    if-eqz v11, :cond_a

    .line 161
    .line 162
    if-eq v11, v2, :cond_9

    .line 163
    .line 164
    const/4 v0, 0x2

    .line 165
    if-eq v11, v0, :cond_a

    .line 166
    .line 167
    const/4 v0, 0x3

    .line 168
    if-eq v11, v0, :cond_8

    .line 169
    .line 170
    const/4 v0, 0x4

    .line 171
    if-eq v11, v0, :cond_a

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_8
    new-instance v0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;

    .line 175
    .line 176
    iget-object v1, p1, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    .line 177
    .line 178
    iget-object v2, p1, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 179
    .line 180
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V

    .line 181
    .line 182
    .line 183
    iput-object v0, p1, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_9
    iget-object v0, p1, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    :cond_a
    new-instance v0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;

    .line 192
    .line 193
    iget-object v7, p1, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    .line 194
    .line 195
    iget-object v8, p1, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 196
    .line 197
    iget-object v9, p1, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mShowingDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$1;

    .line 198
    .line 199
    iget-object v10, p1, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDismissDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$2;

    .line 200
    .line 201
    move-object v6, v0

    .line 202
    invoke-direct/range {v6 .. v13}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Ljava/lang/Runnable;Ljava/lang/Runnable;IZLandroid/app/PendingIntent;)V

    .line 203
    .line 204
    .line 205
    iput-object v0, p1, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_b
    const/4 v0, 0x0

    .line 209
    iput-object v0, p1, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 210
    .line 211
    :goto_3
    iget-object p1, p1, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 212
    .line 213
    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 214
    .line 215
    if-eqz p1, :cond_c

    .line 216
    .line 217
    invoke-interface {p1}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->show()V

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_c
    const-string/jumbo p0, "show() invalid AlertDialog"

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v3, p0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :goto_4
    return-void

    .line 228
    :cond_d
    :goto_5
    const-string p1, "Not ready to show DataConnectionErrorDialog()"

    .line 229
    .line 230
    invoke-virtual {v4, v3, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    .line 234
    .line 235
    iget-object p0, p0, Lcom/android/systemui/popup/util/PopupUIToastWrapper;->mContext:Landroid/content/Context;

    .line 236
    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    const v0, 0x7f13044f

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 253
    .line 254
    .line 255
    return-void
.end method
