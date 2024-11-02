.class public final Lcom/android/settingslib/users/CreateUserDialogController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

.field public mCurrentState:I

.field public mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

.field public mEditUserInfoView:Landroid/view/View;

.field public mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

.field public final mFileAuthority:Ljava/lang/String;

.field public mGrantAdminView:Landroid/view/View;

.field public mIsAdmin:Ljava/lang/Boolean;

.field public mMaxToast:Landroid/widget/Toast;

.field public mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

.field public mSavedName:Ljava/lang/String;

.field public mSavedPhoto:Landroid/graphics/Bitmap;

.field public mSuccessCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

.field public mUserCreationDialog:Landroid/app/Dialog;

.field public mUserNameView:Landroid/widget/EditText;

.field public mWaitingForActivityResult:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mMaxToast:Landroid/widget/Toast;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mFileAuthority:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedPhoto:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedName:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserNameView:Landroid/widget/EditText;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSuccessCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 30
    .line 31
    return-void
.end method

.method public createEditUserPhotoController(Landroid/widget/ImageView;)Lcom/android/settingslib/users/EditUserPhotoController;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/settingslib/users/EditUserPhotoController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedPhoto:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mFileAuthority:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move-object v3, p1

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/users/EditUserPhotoController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v7
.end method

.method public getChangePhotoAdminRestriction(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    .line 1
    const-string/jumbo p0, "no_set_user_icon"

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p1, p0, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public isChangePhotoRestrictedByBase(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string/jumbo p0, "no_set_user_icon"

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p1, p0, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final updateLayout()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_c

    .line 5
    .line 6
    const v2, 0x7f070de6

    .line 7
    .line 8
    .line 9
    const v3, 0x7f130bea

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x7

    .line 13
    const/16 v5, 0x9

    .line 14
    .line 15
    const/4 v6, 0x2

    .line 16
    const/16 v7, 0x8

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x1

    .line 20
    if-eqz v0, :cond_9

    .line 21
    .line 22
    const v10, 0x7f1301b3

    .line 23
    .line 24
    .line 25
    if-eq v0, v9, :cond_8

    .line 26
    .line 27
    if-eq v0, v6, :cond_7

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    if-eq v0, v2, :cond_1

    .line 31
    .line 32
    if-ge v0, v1, :cond_0

    .line 33
    .line 34
    iput v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_0
    iput v2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v0, 0x0

    .line 56
    :goto_0
    move-object v6, v0

    .line 57
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserNameView:Landroid/widget/EditText;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 72
    .line 73
    const v2, 0x7f1311ea

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    move-object v0, v1

    .line 88
    :goto_1
    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSuccessCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    if-eqz v1, :cond_6

    .line 91
    .line 92
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 93
    .line 94
    iget-object v4, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iget-object v1, v1, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    .line 105
    .line 106
    iget-object v4, v1, Lcom/android/systemui/user/CreateUserActivity;->mSetupUserDialog:Landroid/app/Dialog;

    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 109
    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_5

    .line 122
    .line 123
    :cond_4
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :cond_5
    new-instance v7, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda4;

    .line 128
    .line 129
    invoke-direct {v7, v1, v3}, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/user/CreateUserActivity;Ljava/lang/Boolean;)V

    .line 130
    .line 131
    .line 132
    new-instance v5, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;

    .line 133
    .line 134
    invoke-direct {v5, v1, v9}, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/user/CreateUserActivity;I)V

    .line 135
    .line 136
    .line 137
    iget-object v8, v1, Lcom/android/systemui/user/CreateUserActivity;->mUserCreator:Lcom/android/systemui/user/UserCreator;

    .line 138
    .line 139
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    new-instance v4, Lcom/android/settingslib/users/UserCreatingDialog;

    .line 143
    .line 144
    iget-object v1, v8, Lcom/android/systemui/user/UserCreator;->context:Landroid/content/Context;

    .line 145
    .line 146
    invoke-direct {v4, v1}, Lcom/android/settingslib/users/UserCreatingDialog;-><init>(Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 150
    .line 151
    .line 152
    new-instance v9, Lcom/android/systemui/user/UserCreator$createUser$1;

    .line 153
    .line 154
    move-object v1, v9

    .line 155
    move-object v2, v8

    .line 156
    move-object v3, v0

    .line 157
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/user/UserCreator$createUser$1;-><init>(Lcom/android/systemui/user/UserCreator;Ljava/lang/String;Landroid/app/Dialog;Ljava/lang/Runnable;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, v8, Lcom/android/systemui/user/UserCreator;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 161
    .line 162
    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 163
    .line 164
    .line 165
    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->clear()V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_3

    .line 176
    .line 177
    :cond_7
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 178
    .line 179
    invoke-virtual {v0, v8, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v9, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v6, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v5, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v7, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v4, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->setupDialogPaddings()V

    .line 198
    .line 199
    .line 200
    const v1, 0x7f1311e5

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setTitle(I)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    .line 207
    .line 208
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setText(I)V

    .line 209
    .line 210
    .line 211
    iget-object v0, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    .line 212
    .line 213
    const v1, 0x7f1304cf

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    .line 220
    .line 221
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 222
    .line 223
    .line 224
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    .line 225
    .line 226
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_3

    .line 230
    .line 231
    :cond_8
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    .line 232
    .line 233
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    .line 237
    .line 238
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 242
    .line 243
    invoke-virtual {v0, v8, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v9, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v6, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v5, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v7, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v4, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->setupDialogPaddings()V

    .line 262
    .line 263
    .line 264
    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 265
    .line 266
    const v4, 0x7f0807ea

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v4}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    iget-object v4, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogIcon:Landroid/widget/ImageView;

    .line 274
    .line 275
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    .line 277
    .line 278
    const v1, 0x7f1311e1

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setTitle(I)V

    .line 282
    .line 283
    .line 284
    iget-object v1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    .line 285
    .line 286
    const v4, 0x7f1311e0

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 290
    .line 291
    .line 292
    iget-object v4, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContext:Landroid/content/Context;

    .line 293
    .line 294
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->checkMaxFontScale(ILandroid/widget/TextView;)V

    .line 303
    .line 304
    .line 305
    iget-object v1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    .line 306
    .line 307
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setText(I)V

    .line 308
    .line 309
    .line 310
    iget-object v0, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    .line 311
    .line 312
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 313
    .line 314
    .line 315
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    .line 316
    .line 317
    if-nez v0, :cond_d

    .line 318
    .line 319
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 320
    .line 321
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    .line 322
    .line 323
    invoke-virtual {p0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_3

    .line 327
    .line 328
    :cond_9
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    .line 329
    .line 330
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 331
    .line 332
    .line 333
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    .line 334
    .line 335
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 336
    .line 337
    .line 338
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 339
    .line 340
    invoke-virtual {v0, v8}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    const-string v1, "key_add_user_long_message_displayed"

    .line 345
    .line 346
    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 347
    .line 348
    .line 349
    move-result v10

    .line 350
    if-eqz v10, :cond_a

    .line 351
    .line 352
    const v11, 0x7f1311dc

    .line 353
    .line 354
    .line 355
    goto :goto_2

    .line 356
    :cond_a
    const v11, 0x7f1311db

    .line 357
    .line 358
    .line 359
    :goto_2
    if-nez v10, :cond_b

    .line 360
    .line 361
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 370
    .line 371
    .line 372
    :cond_b
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 373
    .line 374
    const v1, 0x7f080a37

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 382
    .line 383
    invoke-virtual {p0, v8, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p0, v9, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p0, v6, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p0, v5, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p0, v7, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0, v4, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p0}, Lcom/android/settingslib/utils/CustomDialogHelper;->setupDialogPaddings()V

    .line 402
    .line 403
    .line 404
    iget-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogIcon:Landroid/widget/ImageView;

    .line 405
    .line 406
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    .line 408
    .line 409
    iget-object v0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    .line 410
    .line 411
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 412
    .line 413
    .line 414
    const v1, 0x7f1311dd

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setTitle(I)V

    .line 418
    .line 419
    .line 420
    iget-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    .line 421
    .line 422
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(I)V

    .line 423
    .line 424
    .line 425
    iget-object v4, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContext:Landroid/content/Context;

    .line 426
    .line 427
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    invoke-virtual {p0, v2, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->checkMaxFontScale(ILandroid/widget/TextView;)V

    .line 436
    .line 437
    .line 438
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    .line 439
    .line 440
    const v1, 0x7f130300

    .line 441
    .line 442
    .line 443
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 447
    .line 448
    .line 449
    goto :goto_3

    .line 450
    :cond_c
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 451
    .line 452
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    .line 453
    .line 454
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 455
    .line 456
    .line 457
    :cond_d
    :goto_3
    return-void
.end method
