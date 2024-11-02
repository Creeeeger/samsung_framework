.class public final Lcom/android/wm/shell/common/split/DividerView$12;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 7
    .line 8
    .line 9
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SNAP_ALGORITHM:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 14
    .line 15
    iget-boolean v0, p1, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 31
    .line 32
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerView;->isVerticalDivision()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const v1, 0x7f130036

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const v1, 0x7f13003c

    .line 45
    .line 46
    .line 47
    :goto_1
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 50
    .line 51
    invoke-static {v3}, Lcom/android/wm/shell/common/split/DividerView;->access$1000(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const v3, 0x7f0a007f

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 66
    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    const v1, 0x7f130038

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    const v1, 0x7f130032

    .line 75
    .line 76
    .line 77
    :goto_2
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 80
    .line 81
    invoke-static {v3}, Lcom/android/wm/shell/common/split/DividerView;->access$1100(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const v3, 0x7f0a0079

    .line 90
    .line 91
    .line 92
    invoke-direct {v2, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isMiddleTargetOnly()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_6

    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 105
    .line 106
    iget-boolean v1, v1, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 107
    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :cond_3
    if-eqz v0, :cond_4

    .line 113
    .line 114
    const v0, 0x7f130037

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_4
    const v0, 0x7f13003d

    .line 119
    .line 120
    .line 121
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getTargetMinimalRatio()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    const/16 v2, 0x32

    .line 126
    .line 127
    const v3, 0x7f0a007c

    .line 128
    .line 129
    .line 130
    const/16 v4, 0x1e

    .line 131
    .line 132
    if-ne v1, v4, :cond_5

    .line 133
    .line 134
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 137
    .line 138
    invoke-static {v1}, Lcom/android/wm/shell/common/split/DividerView;->access$1200(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const/16 v5, 0x46

    .line 143
    .line 144
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {v1, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const v5, 0x7f0a007e

    .line 157
    .line 158
    .line 159
    invoke-direct {p1, v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 163
    .line 164
    .line 165
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 166
    .line 167
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 168
    .line 169
    invoke-static {v1}, Lcom/android/wm/shell/common/split/DividerView;->access$1300(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-direct {p1, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 189
    .line 190
    .line 191
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 192
    .line 193
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 194
    .line 195
    invoke-static {p0}, Lcom/android/wm/shell/common/split/DividerView;->access$1400(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    const v0, 0x7f0a007a

    .line 212
    .line 213
    .line 214
    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getTargetMinimalRatio()I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    const/16 v1, 0x28

    .line 226
    .line 227
    if-ne p1, v1, :cond_6

    .line 228
    .line 229
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 230
    .line 231
    iget-object v4, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 232
    .line 233
    invoke-static {v4}, Lcom/android/wm/shell/common/split/DividerView;->access$1500(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    const/16 v5, 0x3c

    .line 238
    .line 239
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    const v5, 0x7f0a007d

    .line 252
    .line 253
    .line 254
    invoke-direct {p1, v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 258
    .line 259
    .line 260
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 261
    .line 262
    iget-object v4, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 263
    .line 264
    invoke-static {v4}, Lcom/android/wm/shell/common/split/DividerView;->access$1600(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {v4, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-direct {p1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 284
    .line 285
    .line 286
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 287
    .line 288
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 289
    .line 290
    invoke-static {p0}, Lcom/android/wm/shell/common/split/DividerView;->access$1700(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    const v0, 0x7f0a007b

    .line 307
    .line 308
    .line 309
    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 313
    .line 314
    .line 315
    :cond_6
    :goto_4
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SNAP_ALGORITHM:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 23
    .line 24
    :goto_0
    const/16 v1, 0x10

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-ne p2, v1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerView;->openDividerPanelIfNeeded()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const v1, 0x7f0a007f

    .line 36
    .line 37
    .line 38
    if-ne p2, v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_4

    .line 45
    :cond_2
    const v1, 0x7f0a007e

    .line 46
    .line 47
    .line 48
    if-eq p2, v1, :cond_8

    .line 49
    .line 50
    const v1, 0x7f0a007d

    .line 51
    .line 52
    .line 53
    if-ne p2, v1, :cond_3

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_3
    const v1, 0x7f0a007c

    .line 57
    .line 58
    .line 59
    if-ne p2, v1, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_4

    .line 66
    :cond_4
    const v1, 0x7f0a007a

    .line 67
    .line 68
    .line 69
    if-eq p2, v1, :cond_7

    .line 70
    .line 71
    const v1, 0x7f0a007b

    .line 72
    .line 73
    .line 74
    if-ne p2, v1, :cond_5

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    const v1, 0x7f0a0079

    .line 78
    .line 79
    .line 80
    if-ne p2, v1, :cond_6

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    goto :goto_4

    .line 87
    :cond_6
    :goto_1
    move-object v0, v2

    .line 88
    goto :goto_4

    .line 89
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_4

    .line 94
    :cond_8
    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :goto_4
    if-eqz v0, :cond_c

    .line 99
    .line 100
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ACCESSIBILITY:Z

    .line 101
    .line 102
    const/4 p2, 0x1

    .line 103
    const/4 p3, 0x0

    .line 104
    if-eqz p1, :cond_a

    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 107
    .line 108
    iget-boolean v1, p1, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 109
    .line 110
    if-eqz v1, :cond_a

    .line 111
    .line 112
    iget-object v1, p1, Lcom/android/wm/shell/common/split/DividerView;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    .line 113
    .line 114
    iget-boolean v3, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    .line 115
    .line 116
    if-eqz v3, :cond_9

    .line 117
    .line 118
    iput-object p1, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 119
    .line 120
    iput-boolean p2, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    .line 121
    .line 122
    iput-boolean p2, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    .line 123
    .line 124
    iget-boolean v1, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mUseGuideViewByMultiStar:Z

    .line 125
    .line 126
    sput-boolean v1, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    .line 127
    .line 128
    move v1, p2

    .line 129
    goto :goto_5

    .line 130
    :cond_9
    move v1, p3

    .line 131
    :goto_5
    if-eqz v1, :cond_b

    .line 132
    .line 133
    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 134
    .line 135
    iget v1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividePosition:I

    .line 136
    .line 137
    invoke-virtual {p1, v1, v0, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->snapToTarget(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Z)V

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    .line 143
    .line 144
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    .line 145
    .line 146
    if-eqz p1, :cond_b

    .line 147
    .line 148
    iput-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 149
    .line 150
    iput-boolean p3, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    .line 151
    .line 152
    iput-boolean p3, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_a
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 156
    .line 157
    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 158
    .line 159
    iget v1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 160
    .line 161
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateDivideBounds(I)V

    .line 162
    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 165
    .line 166
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 167
    .line 168
    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 169
    .line 170
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/wm/shell/common/split/SplitLayout;->snapToTarget(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Z)V

    .line 171
    .line 172
    .line 173
    :cond_b
    :goto_6
    return p2

    .line 174
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    return p0
.end method
