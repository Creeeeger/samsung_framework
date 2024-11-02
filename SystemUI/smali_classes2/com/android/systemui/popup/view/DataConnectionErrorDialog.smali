.class public final Lcom/android/systemui/popup/view/DataConnectionErrorDialog;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# instance fields
.field public mDialog:Landroid/app/AlertDialog;

.field public final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Ljava/lang/Runnable;Ljava/lang/Runnable;IZLandroid/app/PendingIntent;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 5
    .line 6
    new-instance p3, Lcom/android/systemui/popup/data/DataConnectionErrorData;

    .line 7
    .line 8
    invoke-direct {p3, p2}, Lcom/android/systemui/popup/data/DataConnectionErrorData;-><init>(Lcom/android/systemui/basic/util/LogWrapper;)V

    .line 9
    .line 10
    .line 11
    const p2, 0x7f13044d

    .line 12
    .line 13
    .line 14
    const/4 p4, 0x2

    .line 15
    const v0, 0x7f13044c

    .line 16
    .line 17
    .line 18
    const v1, 0x7f130449

    .line 19
    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    const/4 v3, 0x4

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz p5, :cond_2

    .line 25
    .line 26
    if-eq p5, v4, :cond_1

    .line 27
    .line 28
    if-eq p5, p4, :cond_0

    .line 29
    .line 30
    if-eq p5, v3, :cond_0

    .line 31
    .line 32
    move v5, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v5, p2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v5, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v5, v1

    .line 39
    :goto_0
    const/4 v6, 0x0

    .line 40
    if-eq v5, v2, :cond_6

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-eqz p5, :cond_4

    .line 47
    .line 48
    if-eq p5, v4, :cond_3

    .line 49
    .line 50
    if-eq p5, p4, :cond_5

    .line 51
    .line 52
    if-eq p5, v3, :cond_5

    .line 53
    .line 54
    move p2, v2

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move p2, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_4
    move p2, v1

    .line 59
    :cond_5
    :goto_1
    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    goto :goto_2

    .line 64
    :cond_6
    move-object p2, v6

    .line 65
    :goto_2
    invoke-static {p5}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getBody(I)I

    .line 66
    .line 67
    .line 68
    move-result p4

    .line 69
    if-eq p4, v2, :cond_7

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    invoke-static {p5}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getBody(I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p4

    .line 83
    goto :goto_3

    .line 84
    :cond_7
    move-object p4, v6

    .line 85
    :goto_3
    invoke-static {p5, p6}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getPButton(IZ)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eq v0, v2, :cond_8

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {p5, p6}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getPButton(IZ)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto :goto_4

    .line 104
    :cond_8
    move-object v0, v6

    .line 105
    :goto_4
    const v1, 0x7f130a3a

    .line 106
    .line 107
    .line 108
    const v5, 0x7f130bec

    .line 109
    .line 110
    .line 111
    if-eqz p5, :cond_b

    .line 112
    .line 113
    if-eq p5, v4, :cond_b

    .line 114
    .line 115
    if-eq p5, v3, :cond_9

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_9
    if-eqz p6, :cond_a

    .line 119
    .line 120
    move v7, v1

    .line 121
    goto :goto_6

    .line 122
    :cond_a
    :goto_5
    move v7, v2

    .line 123
    goto :goto_6

    .line 124
    :cond_b
    move v7, v5

    .line 125
    :goto_6
    if-eq v7, v2, :cond_f

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    if-eqz p5, :cond_d

    .line 132
    .line 133
    if-eq p5, v4, :cond_d

    .line 134
    .line 135
    if-eq p5, v3, :cond_c

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_c
    if-eqz p6, :cond_e

    .line 139
    .line 140
    move v2, v1

    .line 141
    goto :goto_7

    .line 142
    :cond_d
    move v2, v5

    .line 143
    :cond_e
    :goto_7
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    goto :goto_8

    .line 148
    :cond_f
    move-object v1, v6

    .line 149
    :goto_8
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 150
    .line 151
    const v5, 0x7f14056c

    .line 152
    .line 153
    .line 154
    invoke-direct {v2, p1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 161
    .line 162
    .line 163
    if-eqz p5, :cond_12

    .line 164
    .line 165
    if-eq p5, v4, :cond_11

    .line 166
    .line 167
    if-eq p5, v3, :cond_10

    .line 168
    .line 169
    move-object p1, v6

    .line 170
    goto :goto_a

    .line 171
    :cond_10
    new-instance p1, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda1;

    .line 172
    .line 173
    invoke-direct {p1, p3, p6, p7}, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/popup/data/DataConnectionErrorData;ZLandroid/app/PendingIntent;)V

    .line 174
    .line 175
    .line 176
    goto :goto_a

    .line 177
    :cond_11
    new-instance p2, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda0;

    .line 178
    .line 179
    invoke-direct {p2, p1, v4}, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    .line 180
    .line 181
    .line 182
    goto :goto_9

    .line 183
    :cond_12
    new-instance p2, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda0;

    .line 184
    .line 185
    const/4 p3, 0x0

    .line 186
    invoke-direct {p2, p1, p3}, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    .line 187
    .line 188
    .line 189
    :goto_9
    move-object p1, p2

    .line 190
    :goto_a
    if-nez p1, :cond_13

    .line 191
    .line 192
    move-object p2, v6

    .line 193
    goto :goto_b

    .line 194
    :cond_13
    new-instance p2, Lcom/android/systemui/popup/view/DataConnectionErrorDialog$$ExternalSyntheticLambda0;

    .line 195
    .line 196
    invoke-direct {p2, p1}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    .line 197
    .line 198
    .line 199
    :goto_b
    invoke-virtual {v2, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    .line 201
    .line 202
    if-eqz v1, :cond_14

    .line 203
    .line 204
    invoke-virtual {v2, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 205
    .line 206
    .line 207
    :cond_14
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    iput-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    const-string p2, "DataConnectionErrorDialog"

    .line 222
    .line 223
    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    const/16 p2, 0x7d8

    .line 233
    .line 234
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    .line 238
    .line 239
    iput-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    .line 240
    .line 241
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "DataConnectionErrorDialog"

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final isShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final show()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const-string v0, "DataConnectionErrorDialog"

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    return-void
.end method
