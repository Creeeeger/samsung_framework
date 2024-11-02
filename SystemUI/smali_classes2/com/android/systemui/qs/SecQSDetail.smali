.class public Lcom/android/systemui/qs/SecQSDetail;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAnimatingOpen:Z

.field mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field public mCutOutHeight:I

.field public final mDarkModelEasel:Lcom/android/systemui/qs/SecDarkModeEasel;

.field public mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field public mDetailButtons:Landroid/widget/LinearLayout;

.field public mDetailButtonsDivider:Landroid/view/View;

.field public mDetailContent:Landroid/view/ViewGroup;

.field public mDetailContentParent:Lcom/android/systemui/qs/SecQSDetailContentView;

.field public mDetailDoneButton:Landroid/widget/Button;

.field public mDetailExtended:Landroid/widget/LinearLayout;

.field public mDetailExtendedContainer:Landroid/view/ViewGroup;

.field public mDetailExtendedSummary:Landroid/widget/TextView;

.field public mDetailExtendedSummaryContainer:Landroid/view/ViewGroup;

.field public mDetailExtendedText:Lcom/android/systemui/shared/shadow/DoubleShadowTextView;

.field public mDetailSettingsButton:Landroid/widget/Button;

.field public final mDetailViews:Landroid/util/SparseArray;

.field public mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field public final mHideGridContentWhenDone:Lcom/android/systemui/qs/SecQSDetail$3;

.field public mOrientation:I

.field public mQsDetailHeader:Landroid/view/View;

.field public mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

.field public mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

.field public mQsDetailHeaderSwitchStub:Landroid/view/ViewStub;

.field public mQsDetailHeaderTitle:Landroid/widget/TextView;

.field public mQsExpanded:Z

.field public final mQsPanelCallback:Lcom/android/systemui/qs/SecQSDetail$2;

.field public mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mScanState:Z

.field public mScrollView:Landroid/widget/ScrollView;

.field public mSwitchAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field public mSwitchState:Z

.field public final mTeardownDetailWhenDone:Lcom/android/systemui/qs/SecQSDetail$4;

.field public mToggleDivider:Landroid/view/View;

.field public mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

.field public mTriggeredExpand:Z

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static $r8$lambda$1uAO_h_OA3h2MPW8fBnCc4-4CwE(Lcom/android/systemui/qs/SecQSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const v1, 0x7f130071

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->onDoneButtonClicked()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->showDetail(Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public static $r8$lambda$GqF35b0Ptg1YPaUYppLYwuej_yI(Lcom/android/systemui/qs/SecQSDetail;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedText:Lcom/android/systemui/shared/shadow/DoubleShadowTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const v2, 0x7f0605a6

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContentParent:Lcom/android/systemui/qs/SecQSDetailContentView;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const v2, 0x7f080f7c

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 49
    .line 50
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/SecQSDetail;->updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda3;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/SecQSDetail;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailSettingsButton:Landroid/widget/Button;

    .line 66
    .line 67
    const v1, 0x7f0605a0

    .line 68
    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 79
    .line 80
    .line 81
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailDoneButton:Landroid/widget/Button;

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailButtonsDivider:Landroid/view/View;

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    const v2, 0x7f0605a2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 108
    .line 109
    .line 110
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mScrollView:Landroid/widget/ScrollView;

    .line 111
    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getVerticalScrollbarThumbDrawable()Landroid/graphics/drawable/Drawable;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    const v2, 0x7f060969

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mScrollView:Landroid/widget/ScrollView;

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    .line 136
    .line 137
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

    .line 138
    .line 139
    if-eqz v0, :cond_8

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

    .line 146
    .line 147
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

    .line 152
    .line 153
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    .line 159
    check-cast v1, Landroid/view/ViewGroup;

    .line 160
    .line 161
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    iget-object v4, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

    .line 168
    .line 169
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getVisibility()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    iget-object v5, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

    .line 174
    .line 175
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    new-instance v5, Landroid/widget/ProgressBar;

    .line 179
    .line 180
    invoke-direct {v5, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 181
    .line 182
    .line 183
    iput-object v5, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

    .line 184
    .line 185
    invoke-virtual {v1, v5, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

    .line 189
    .line 190
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 194
    .line 195
    if-eqz v0, :cond_9

    .line 196
    .line 197
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mSwitchAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 198
    .line 199
    if-eqz v1, :cond_9

    .line 200
    .line 201
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 206
    .line 207
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 212
    .line 213
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 218
    .line 219
    check-cast v1, Landroid/view/ViewGroup;

    .line 220
    .line 221
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 222
    .line 223
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    iget-object v4, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 228
    .line 229
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 230
    .line 231
    .line 232
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const v4, 0x7f0d0387

    .line 237
    .line 238
    .line 239
    const/4 v5, 0x0

    .line 240
    invoke-virtual {v0, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    check-cast v0, Lcom/android/systemui/qs/SecQSSwitch;

    .line 245
    .line 246
    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 247
    .line 248
    invoke-virtual {v1, v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 249
    .line 250
    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mSwitchAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 252
    .line 253
    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mSwitchState:Z

    .line 254
    .line 255
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/SecQSDetail;->setupHeaderSwitch(Lcom/android/systemui/plugins/qs/DetailAdapter;Ljava/lang/Boolean;)V

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mSwitchAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 263
    .line 264
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 265
    .line 266
    new-instance v2, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;

    .line 267
    .line 268
    const/4 v3, 0x2

    .line 269
    invoke-direct {v2, p0, v0, v3}, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/SecQSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    .line 274
    .line 275
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 276
    .line 277
    new-instance v2, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda4;

    .line 278
    .line 279
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/SecQSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 283
    .line 284
    .line 285
    :cond_9
    return-void
.end method

.method public static $r8$lambda$TxB-zPyGotyrSZn1dD6iSte9HRY(Lcom/android/systemui/qs/SecQSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailTileSpec:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    const-string v0, ""

    .line 14
    .line 15
    :cond_1
    const-string v1, "Wifi"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v1, :cond_3

    .line 23
    .line 24
    const-string v1, "Bluetooth"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    move v0, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 36
    :goto_1
    if-eqz v0, :cond_4

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

    .line 45
    .line 46
    const/16 v1, 0x8

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :goto_2
    if-eqz p1, :cond_7

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->getTile(Lcom/android/systemui/plugins/qs/DetailAdapter;)Lcom/android/systemui/plugins/qs/QSTile;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/android/systemui/plugins/qs/SQSTile;

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/SQSTile;->getTileMapKey()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_3

    .line 68
    :cond_5
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_3
    sget-object v0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 77
    .line 78
    if-eqz p2, :cond_6

    .line 79
    .line 80
    const-string v1, "1"

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    const-string v1, "0"

    .line 84
    .line 85
    :goto_4
    const-string v2, "QPDE1008"

    .line 86
    .line 87
    invoke-static {v0, v2, p1, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->isLandscape()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_9

    .line 95
    .line 96
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    if-eqz p2, :cond_8

    .line 99
    .line 100
    const p2, 0x7f131117

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_8
    const p2, 0x7f131116

    .line 105
    .line 106
    .line 107
    :goto_5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    :cond_9
    return-void
.end method

.method public static -$$Nest$mcheckPendingAnimations(Lcom/android/systemui/qs/SecQSDetail;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mSwitchState:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/SecQSDetail;->handleToggleStateChanged(ZZ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 10
    .line 11
    sget-object p1, Lcom/android/systemui/qs/QSEvents;->INSTANCE:Lcom/android/systemui/qs/QSEvents;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/android/systemui/qs/QSEvents;->qsUiEventsLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 19
    .line 20
    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mOrientation:I

    .line 22
    .line 23
    new-instance p1, Lcom/android/systemui/qs/SecDarkModeEasel;

    .line 24
    .line 25
    new-instance p2, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecQSDetail;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p2}, Lcom/android/systemui/qs/SecDarkModeEasel;-><init>(Lcom/android/systemui/qs/SecDarkModeEasel$PictureSubject;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDarkModelEasel:Lcom/android/systemui/qs/SecDarkModeEasel;

    .line 34
    .line 35
    new-instance p1, Lcom/android/systemui/qs/SecQSDetail$2;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/SecQSDetail$2;-><init>(Lcom/android/systemui/qs/SecQSDetail;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 41
    .line 42
    new-instance p1, Lcom/android/systemui/qs/SecQSDetail$3;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/SecQSDetail$3;-><init>(Lcom/android/systemui/qs/SecQSDetail;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mHideGridContentWhenDone:Lcom/android/systemui/qs/SecQSDetail$3;

    .line 48
    .line 49
    new-instance p1, Lcom/android/systemui/qs/SecQSDetail$4;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/SecQSDetail$4;-><init>(Lcom/android/systemui/qs/SecQSDetail;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mTeardownDetailWhenDone:Lcom/android/systemui/qs/SecQSDetail$4;

    .line 55
    .line 56
    const-class p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 65
    .line 66
    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/qs/SecQSDetail;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/systemui/qs/SecQSDetail;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 9
    .line 10
    if-eqz v3, :cond_1

    .line 11
    .line 12
    move v3, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    move v3, v1

    .line 15
    :goto_1
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->shouldUseFullScreen()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    move v4, v0

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move v4, v1

    .line 26
    :goto_2
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 27
    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    const/4 v6, 0x0

    .line 31
    const/16 v7, 0x8

    .line 32
    .line 33
    const v8, 0x7f0a0859

    .line 34
    .line 35
    .line 36
    if-eqz v2, :cond_a

    .line 37
    .line 38
    const v9, 0x7f0a0854

    .line 39
    .line 40
    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    :goto_3
    if-nez v4, :cond_8

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->setDetailExtendedContainerHeight()V

    .line 75
    .line 76
    .line 77
    sget-boolean v9, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 78
    .line 79
    if-eqz v9, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->onSummaryUpdated()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->updateTabletResources()V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 88
    .line 89
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    if-nez v9, :cond_6

    .line 101
    .line 102
    iget-object v9, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 103
    .line 104
    if-eqz v9, :cond_5

    .line 105
    .line 106
    invoke-virtual {v9, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 110
    .line 111
    invoke-virtual {v9, v1}, Landroid/view/View;->setClickable(Z)V

    .line 112
    .line 113
    .line 114
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    invoke-virtual {p0, v6, v9}, Lcom/android/systemui/qs/SecQSDetail;->updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_6
    iget-object v10, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 123
    .line 124
    if-nez v10, :cond_7

    .line 125
    .line 126
    iget-object v10, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitchStub:Landroid/view/ViewStub;

    .line 127
    .line 128
    invoke-virtual {v10}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    check-cast v10, Lcom/android/systemui/qs/SecQSSwitch;

    .line 133
    .line 134
    iput-object v10, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 135
    .line 136
    :cond_7
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mSwitchAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 137
    .line 138
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    iput-boolean v10, p0, Lcom/android/systemui/qs/SecQSDetail;->mSwitchState:Z

    .line 143
    .line 144
    invoke-virtual {p0, p1, v9}, Lcom/android/systemui/qs/SecQSDetail;->setupHeaderSwitch(Lcom/android/systemui/plugins/qs/DetailAdapter;Ljava/lang/Boolean;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/qs/SecQSDetail;->updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    iget-object v9, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 155
    .line 156
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    iget-object v9, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 160
    .line 161
    new-instance v10, Lcom/android/systemui/qs/SecQSDetail$1;

    .line 162
    .line 163
    invoke-direct {v10, p0}, Lcom/android/systemui/qs/SecQSDetail$1;-><init>(Lcom/android/systemui/qs/SecQSDetail;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v9, v10}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 167
    .line 168
    .line 169
    iget-object v9, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 170
    .line 171
    new-instance v10, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;

    .line 172
    .line 173
    invoke-direct {v10, p0, p1, v0}, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/SecQSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .line 178
    .line 179
    iget-object v9, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 180
    .line 181
    new-instance v10, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;

    .line 182
    .line 183
    const/4 v11, 0x2

    .line 184
    invoke-direct {v10, p0, p1, v11}, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/SecQSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    iget-object v9, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 191
    .line 192
    new-instance v10, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda4;

    .line 193
    .line 194
    invoke-direct {v10, p0, p1}, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/SecQSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 198
    .line 199
    .line 200
    :cond_8
    :goto_4
    iget-boolean v9, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsExpanded:Z

    .line 201
    .line 202
    if-nez v9, :cond_9

    .line 203
    .line 204
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mTriggeredExpand:Z

    .line 205
    .line 206
    iget-object v9, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 207
    .line 208
    if-eqz v9, :cond_9

    .line 209
    .line 210
    iget-boolean v10, v9, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    .line 211
    .line 212
    if-nez v10, :cond_9

    .line 213
    .line 214
    iget-object v9, v9, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mCollapseExpandAction:Ljava/lang/Runnable;

    .line 215
    .line 216
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 217
    .line 218
    .line 219
    :cond_9
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->shouldAnimate()Z

    .line 220
    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_a
    iget-boolean v9, p0, Lcom/android/systemui/qs/SecQSDetail;->mTriggeredExpand:Z

    .line 224
    .line 225
    if-eqz v9, :cond_c

    .line 226
    .line 227
    iget-object v9, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 228
    .line 229
    if-eqz v9, :cond_b

    .line 230
    .line 231
    iget-object v9, v9, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mCollapseExpandAction:Ljava/lang/Runnable;

    .line 232
    .line 233
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 234
    .line 235
    .line 236
    :cond_b
    iput-boolean v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mTriggeredExpand:Z

    .line 237
    .line 238
    :cond_c
    :goto_5
    if-eq v3, v2, :cond_d

    .line 239
    .line 240
    move v9, v0

    .line 241
    goto :goto_6

    .line 242
    :cond_d
    move v9, v1

    .line 243
    :goto_6
    if-nez v9, :cond_e

    .line 244
    .line 245
    if-nez v3, :cond_e

    .line 246
    .line 247
    return-void

    .line 248
    :cond_e
    if-eqz v2, :cond_14

    .line 249
    .line 250
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-nez v4, :cond_f

    .line 255
    .line 256
    iget-object v9, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 257
    .line 258
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    const v11, 0x7f070e7f

    .line 263
    .line 264
    .line 265
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 266
    .line 267
    .line 268
    move-result v10

    .line 269
    invoke-virtual {v9, v1, v10, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 270
    .line 271
    .line 272
    sget-boolean v9, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 273
    .line 274
    if-eqz v9, :cond_f

    .line 275
    .line 276
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    const v10, 0x7f070e7e

    .line 281
    .line 282
    .line 283
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 284
    .line 285
    .line 286
    move-result v9

    .line 287
    iget-object v10, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContentParent:Lcom/android/systemui/qs/SecQSDetailContentView;

    .line 288
    .line 289
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 290
    .line 291
    .line 292
    move-result v11

    .line 293
    iget-object v12, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContentParent:Lcom/android/systemui/qs/SecQSDetailContentView;

    .line 294
    .line 295
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 296
    .line 297
    .line 298
    move-result v12

    .line 299
    invoke-virtual {v10, v9, v11, v9, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 300
    .line 301
    .line 302
    :cond_f
    iget-object v9, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 303
    .line 304
    iget-object v10, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 305
    .line 306
    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v10

    .line 310
    check-cast v10, Landroid/view/View;

    .line 311
    .line 312
    iget-object v11, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 313
    .line 314
    invoke-interface {p1, v9, v10, v11}, Lcom/android/systemui/plugins/qs/DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    if-nez v9, :cond_10

    .line 319
    .line 320
    new-instance p0, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    const-string v0, "Tile = "

    .line 323
    .line 324
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string p1, " detailView is null"

    .line 335
    .line 336
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    const-string p1, "QSDetail"

    .line 344
    .line 345
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :cond_10
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    iget-object v11, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailButtonsDivider:Landroid/view/View;

    .line 354
    .line 355
    if-eqz v10, :cond_11

    .line 356
    .line 357
    move v12, v1

    .line 358
    goto :goto_7

    .line 359
    :cond_11
    move v12, v7

    .line 360
    :goto_7
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 361
    .line 362
    .line 363
    iget-object v11, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailSettingsButton:Landroid/widget/Button;

    .line 364
    .line 365
    if-eqz v10, :cond_12

    .line 366
    .line 367
    move v7, v1

    .line 368
    :cond_12
    invoke-virtual {v11, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 369
    .line 370
    .line 371
    iget-object v7, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailSettingsButton:Landroid/widget/Button;

    .line 372
    .line 373
    new-instance v11, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda1;

    .line 374
    .line 375
    invoke-direct {v11, p0, p1, v10}, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/SecQSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v7, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    .line 380
    .line 381
    iget-object v7, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailDoneButton:Landroid/widget/Button;

    .line 382
    .line 383
    new-instance v10, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;

    .line 384
    .line 385
    invoke-direct {v10, p0, p1, v1}, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/SecQSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v7, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    .line 390
    .line 391
    if-eqz v4, :cond_13

    .line 392
    .line 393
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 394
    .line 395
    .line 396
    move-result-object v7

    .line 397
    check-cast v7, Landroid/view/ViewGroup;

    .line 398
    .line 399
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 400
    .line 401
    .line 402
    goto :goto_8

    .line 403
    :cond_13
    iget-object v7, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 404
    .line 405
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 406
    .line 407
    .line 408
    iget-object v7, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 409
    .line 410
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 411
    .line 412
    .line 413
    :goto_8
    iget-object v7, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 414
    .line 415
    invoke-virtual {v7, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    const-class v3, Lcom/android/internal/logging/MetricsLogger;

    .line 419
    .line 420
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    check-cast v3, Lcom/android/internal/logging/MetricsLogger;

    .line 425
    .line 426
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    .line 427
    .line 428
    .line 429
    move-result v7

    .line 430
    invoke-virtual {v3, v7}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 431
    .line 432
    .line 433
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 434
    .line 435
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->openDetailEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    .line 436
    .line 437
    .line 438
    move-result-object v7

    .line 439
    check-cast v3, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 440
    .line 441
    invoke-virtual {v3, v7}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 442
    .line 443
    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    iget-object v7, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 450
    .line 451
    const v8, 0x7f1300f9

    .line 452
    .line 453
    .line 454
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v7

    .line 458
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string v7, ", "

    .line 462
    .line 463
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    .line 467
    .line 468
    .line 469
    move-result-object v7

    .line 470
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 478
    .line 479
    .line 480
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 481
    .line 482
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    .line 484
    .line 485
    if-nez v4, :cond_17

    .line 486
    .line 487
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->updateDetailText()V

    .line 488
    .line 489
    .line 490
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->updateDndDetail()V

    .line 491
    .line 492
    .line 493
    goto :goto_9

    .line 494
    :cond_14
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 495
    .line 496
    if-eqz p1, :cond_15

    .line 497
    .line 498
    if-eqz v3, :cond_15

    .line 499
    .line 500
    const-class p1, Lcom/android/internal/logging/MetricsLogger;

    .line 501
    .line 502
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    check-cast p1, Lcom/android/internal/logging/MetricsLogger;

    .line 507
    .line 508
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 509
    .line 510
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    invoke-virtual {p1, v3}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 515
    .line 516
    .line 517
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 518
    .line 519
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 520
    .line 521
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/DetailAdapter;->closeDetailEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    check-cast p1, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 526
    .line 527
    invoke-virtual {p1, v3}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 528
    .line 529
    .line 530
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 531
    .line 532
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->dismissListPopupWindow()V

    .line 533
    .line 534
    .line 535
    iput-object v6, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 536
    .line 537
    :cond_15
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 538
    .line 539
    if-eqz p1, :cond_16

    .line 540
    .line 541
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 542
    .line 543
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 544
    .line 545
    .line 546
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 547
    .line 548
    iget-boolean v3, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsExpanded:Z

    .line 549
    .line 550
    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/SecQSPanelController;->setGridContentVisibility(Z)V

    .line 551
    .line 552
    .line 553
    :cond_16
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 554
    .line 555
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    .line 557
    .line 558
    new-instance v3, Lcom/android/systemui/qs/SecQSDetail$2$3;

    .line 559
    .line 560
    invoke-direct {v3, p1, v1}, Lcom/android/systemui/qs/SecQSDetail$2$3;-><init>(Lcom/android/systemui/qs/SecQSDetail$2;Z)V

    .line 561
    .line 562
    .line 563
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSDetail$2;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 564
    .line 565
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 566
    .line 567
    .line 568
    :cond_17
    :goto_9
    const/16 p1, 0x20

    .line 569
    .line 570
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 571
    .line 572
    .line 573
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 574
    .line 575
    iget-boolean v3, p0, Lcom/android/systemui/qs/SecQSDetail;->mTriggeredExpand:Z

    .line 576
    .line 577
    iget-object v4, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 578
    .line 579
    if-eqz v4, :cond_18

    .line 580
    .line 581
    iget-object v4, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 582
    .line 583
    iget-boolean v4, v4, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    .line 584
    .line 585
    if-nez v4, :cond_18

    .line 586
    .line 587
    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    .line 588
    .line 589
    .line 590
    move-result v4

    .line 591
    if-nez v4, :cond_23

    .line 592
    .line 593
    iget-boolean v4, p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mAnimatorsInitialiezed:Z

    .line 594
    .line 595
    if-nez v4, :cond_18

    .line 596
    .line 597
    goto/16 :goto_10

    .line 598
    .line 599
    :cond_18
    const/4 v4, 0x0

    .line 600
    if-eqz v2, :cond_19

    .line 601
    .line 602
    iget-object v5, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 603
    .line 604
    invoke-virtual {v5, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->setDetailOpening(Z)V

    .line 605
    .line 606
    .line 607
    iget-object v0, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 608
    .line 609
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 610
    .line 611
    .line 612
    new-instance v5, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;

    .line 613
    .line 614
    const/4 v6, 0x7

    .line 615
    invoke-direct {v5, v3, v6}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;-><init>(ZI)V

    .line 616
    .line 617
    .line 618
    iget-object v0, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->this$0:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 619
    .line 620
    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 621
    .line 622
    .line 623
    goto/16 :goto_c

    .line 624
    .line 625
    :cond_19
    iget-object v3, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 626
    .line 627
    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->setDetailShowing(Z)V

    .line 628
    .line 629
    .line 630
    iget-object v3, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 631
    .line 632
    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->setDetailClosing(Z)V

    .line 633
    .line 634
    .line 635
    iget-boolean v0, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsFullyExpanded:Z

    .line 636
    .line 637
    if-nez v0, :cond_1d

    .line 638
    .line 639
    iget-boolean v0, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelExpanded:Z

    .line 640
    .line 641
    if-nez v0, :cond_1d

    .line 642
    .line 643
    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    .line 644
    .line 645
    .line 646
    move-result v0

    .line 647
    if-eqz v0, :cond_1a

    .line 648
    .line 649
    goto/16 :goto_10

    .line 650
    .line 651
    :cond_1a
    iget-object v0, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    .line 652
    .line 653
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 658
    .line 659
    .line 660
    move-result v2

    .line 661
    sget-object v3, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 662
    .line 663
    if-eqz v2, :cond_1b

    .line 664
    .line 665
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    check-cast v2, Landroid/view/View;

    .line 670
    .line 671
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    const/high16 v7, 0x3f800000    # 1.0f

    .line 676
    .line 677
    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    const-wide/16 v7, 0x64

    .line 690
    .line 691
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 692
    .line 693
    .line 694
    move-result-object v2

    .line 695
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 700
    .line 701
    .line 702
    goto :goto_a

    .line 703
    :cond_1b
    iget-object v0, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    .line 704
    .line 705
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 710
    .line 711
    .line 712
    move-result v2

    .line 713
    if-eqz v2, :cond_1c

    .line 714
    .line 715
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v2

    .line 719
    check-cast v2, Landroid/view/View;

    .line 720
    .line 721
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 722
    .line 723
    .line 724
    move-result-object v2

    .line 725
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 726
    .line 727
    .line 728
    move-result-object v2

    .line 729
    const-wide/16 v7, 0x32

    .line 730
    .line 731
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 732
    .line 733
    .line 734
    move-result-object v2

    .line 735
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 736
    .line 737
    .line 738
    move-result-object v2

    .line 739
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 740
    .line 741
    .line 742
    goto :goto_b

    .line 743
    :cond_1c
    iget-object v0, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/SecQSDetail$5;

    .line 744
    .line 745
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSDetail$5;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 746
    .line 747
    iget-object v2, v0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 748
    .line 749
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v0, v6}, Lcom/android/systemui/qs/SecQSDetail;->handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    .line 756
    .line 757
    .line 758
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 759
    .line 760
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->setDetailClosing(Z)V

    .line 761
    .line 762
    .line 763
    goto :goto_10

    .line 764
    :cond_1d
    :goto_c
    xor-int/lit8 v0, v2, 0x1

    .line 765
    .line 766
    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    .line 767
    .line 768
    .line 769
    move-result v3

    .line 770
    if-eqz v3, :cond_1e

    .line 771
    .line 772
    goto :goto_f

    .line 773
    :cond_1e
    if-eqz v0, :cond_1f

    .line 774
    .line 775
    iget-object v3, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSetForDetail:Landroid/animation/AnimatorSet;

    .line 776
    .line 777
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 778
    .line 779
    .line 780
    iget-object v3, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSetForDetail:Landroid/animation/AnimatorSet;

    .line 781
    .line 782
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 783
    .line 784
    .line 785
    goto :goto_d

    .line 786
    :cond_1f
    iget-object v3, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSetForDetail:Landroid/animation/AnimatorSet;

    .line 787
    .line 788
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 789
    .line 790
    .line 791
    iget-object v3, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSetForDetail:Landroid/animation/AnimatorSet;

    .line 792
    .line 793
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 794
    .line 795
    .line 796
    :goto_d
    iget-object v3, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 797
    .line 798
    if-eqz v0, :cond_20

    .line 799
    .line 800
    const/high16 v0, 0x40000

    .line 801
    .line 802
    goto :goto_e

    .line 803
    :cond_20
    const/high16 v0, 0x60000

    .line 804
    .line 805
    :goto_e
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 806
    .line 807
    .line 808
    :goto_f
    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    .line 809
    .line 810
    .line 811
    move-result v0

    .line 812
    if-eqz v0, :cond_21

    .line 813
    .line 814
    goto :goto_10

    .line 815
    :cond_21
    if-eqz v2, :cond_22

    .line 816
    .line 817
    iget-object v0, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    .line 818
    .line 819
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 820
    .line 821
    .line 822
    iget-object v0, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    .line 823
    .line 824
    const v2, 0x3f6e147b    # 0.93f

    .line 825
    .line 826
    .line 827
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 828
    .line 829
    .line 830
    iget-object v0, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    .line 831
    .line 832
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 833
    .line 834
    .line 835
    iget-object v0, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimSet:Landroid/animation/AnimatorSet;

    .line 836
    .line 837
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 838
    .line 839
    .line 840
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimSet:Landroid/animation/AnimatorSet;

    .line 841
    .line 842
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 843
    .line 844
    .line 845
    goto :goto_10

    .line 846
    :cond_22
    iget-object v0, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimSet:Landroid/animation/AnimatorSet;

    .line 847
    .line 848
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 849
    .line 850
    .line 851
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimSet:Landroid/animation/AnimatorSet;

    .line 852
    .line 853
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 854
    .line 855
    .line 856
    :cond_23
    :goto_10
    iget-boolean p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mTriggeredExpand:Z

    .line 857
    .line 858
    if-eqz p1, :cond_24

    .line 859
    .line 860
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 861
    .line 862
    if-eqz p1, :cond_24

    .line 863
    .line 864
    iget-boolean p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    .line 865
    .line 866
    if-eqz p1, :cond_24

    .line 867
    .line 868
    iput-boolean v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mTriggeredExpand:Z

    .line 869
    .line 870
    :cond_24
    const-string p0, "QPP101"

    .line 871
    .line 872
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    return-void
.end method

.method public final handleToggleStateChanged(ZZ)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mSwitchState:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mAnimatingOpen:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qs/SecQSDetail;->updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 49
    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 57
    .line 58
    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/SecQSDetail;->updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_0
    return-void
.end method

.method public final handleUpdatingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const v3, 0x7f070e7f

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 22
    .line 23
    .line 24
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const v2, 0x7f070e7e

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContentParent:Lcom/android/systemui/qs/SecQSDetailContentView;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    iget-object v5, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContentParent:Lcom/android/systemui/qs/SecQSDetailContentView;

    .line 46
    .line 47
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-virtual {v2, v1, v4, v1, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/view/View;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 65
    .line 66
    invoke-interface {p1, v1, v2, v4}, Lcom/android/systemui/plugins/qs/DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->shouldUseFullScreen()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    const v2, 0x7f0a0859

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/view/ViewGroup;

    .line 86
    .line 87
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 97
    .line 98
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 102
    .line 103
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailSettingsButton:Landroid/widget/Button;

    .line 111
    .line 112
    const/16 v1, 0x8

    .line 113
    .line 114
    if-eqz p1, :cond_2

    .line 115
    .line 116
    move v2, v3

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    move v2, v1

    .line 119
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailButtonsDivider:Landroid/view/View;

    .line 123
    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    move v3, v1

    .line 128
    :goto_2
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    :cond_4
    return-void
.end method

.method public final isLandscape()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->shouldUseFullScreen()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sub-int/2addr v2, v0

    .line 37
    if-gez v2, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v1, v2

    .line 41
    :goto_1
    iget v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mCutOutHeight:I

    .line 42
    .line 43
    if-eq v0, v1, :cond_4

    .line 44
    .line 45
    iput v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mCutOutHeight:I

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->setDetailExtendedContainerHeight()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->setPanelMargin()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->updateDetailHeader()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->updateDndDetail()V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    iget v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mCutOutHeight:I

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iput v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mCutOutHeight:I

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->setDetailExtendedContainerHeight()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->setPanelMargin()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->updateDetailHeader()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->updateDndDetail()V

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->shouldUseFullScreen()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->updateDetailText()V

    .line 22
    .line 23
    .line 24
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ge v1, v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mOrientation:I

    .line 47
    .line 48
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 49
    .line 50
    if-eq v0, v1, :cond_4

    .line 51
    .line 52
    iput v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mOrientation:I

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->setDetailExtendedContainerHeight()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->setPanelMargin()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->updateDetailHeader()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 72
    .line 73
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/SecQSDetail;->updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQSDetail;->handleUpdatingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->updateDndDetail()V

    .line 86
    .line 87
    .line 88
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->updateTabletResources()V

    .line 93
    .line 94
    .line 95
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDarkModelEasel:Lcom/android/systemui/qs/SecDarkModeEasel;

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecDarkModeEasel;->updateColors(Landroid/content/res/Configuration;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x1020002

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 14
    .line 15
    const v0, 0x7f0a030a

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/Button;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailSettingsButton:Landroid/widget/Button;

    .line 25
    .line 26
    const v0, 0x7f0a035f

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/Button;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailDoneButton:Landroid/widget/Button;

    .line 36
    .line 37
    const v0, 0x7f0a0853

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailButtonsDivider:Landroid/view/View;

    .line 45
    .line 46
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    const v1, 0x7f0a0854

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroid/widget/LinearLayout;

    .line 58
    .line 59
    iput-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtended:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    :cond_0
    const v1, 0x7f0a0858

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/view/ViewGroup;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedContainer:Landroid/view/ViewGroup;

    .line 71
    .line 72
    const v1, 0x7f0a0857

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;

    .line 80
    .line 81
    iput-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedText:Lcom/android/systemui/shared/shadow/DoubleShadowTextView;

    .line 82
    .line 83
    const v1, 0x7f0a0856

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Landroid/view/ViewGroup;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedSummaryContainer:Landroid/view/ViewGroup;

    .line 93
    .line 94
    const v1, 0x7f0a0855

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Landroid/widget/TextView;

    .line 102
    .line 103
    iput-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedSummary:Landroid/widget/TextView;

    .line 104
    .line 105
    const v1, 0x7f0a085c

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Lcom/android/systemui/qs/SecQSDetailContentView;

    .line 113
    .line 114
    iput-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContentParent:Lcom/android/systemui/qs/SecQSDetailContentView;

    .line 115
    .line 116
    const v1, 0x7f0a085d

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Landroid/widget/ScrollView;

    .line 124
    .line 125
    iput-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mScrollView:Landroid/widget/ScrollView;

    .line 126
    .line 127
    const v1, 0x7f0a0877

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iput-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mToggleDivider:Landroid/view/View;

    .line 135
    .line 136
    const v1, 0x7f0a085a

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iput-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 144
    .line 145
    const v2, 0x1020016

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Landroid/widget/TextView;

    .line 153
    .line 154
    iput-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 155
    .line 156
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 157
    .line 158
    const v2, 0x7f0a0bf3

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    check-cast v1, Landroid/view/ViewStub;

    .line 166
    .line 167
    iput-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitchStub:Landroid/view/ViewStub;

    .line 168
    .line 169
    const v1, 0x7f0a085b

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    check-cast v1, Landroid/widget/ProgressBar;

    .line 177
    .line 178
    iput-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

    .line 179
    .line 180
    const v1, 0x7f0a0852

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    check-cast v1, Landroid/widget/LinearLayout;

    .line 188
    .line 189
    iput-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailButtons:Landroid/widget/LinearLayout;

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->updateDetailText()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->setPanelMargin()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->updateDetailHeader()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->updateDndDetail()V

    .line 201
    .line 202
    .line 203
    if-eqz v0, :cond_1

    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->updateTabletResources()V

    .line 206
    .line 207
    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContentParent:Lcom/android/systemui/qs/SecQSDetailContentView;

    .line 209
    .line 210
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 211
    .line 212
    if-nez p0, :cond_2

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_2
    iput-object p0, v0, Lcom/android/systemui/qs/SecQSDetailContentView;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 219
    .line 220
    :goto_0
    return-void
.end method

.method public final onSummaryUpdated()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedSummaryContainer:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedSummaryContainer:Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedContainer:Landroid/view/ViewGroup;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedSummaryContainer:Landroid/view/ViewGroup;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    const v2, 0x7f130dad

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :goto_0
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedSummaryContainer:Landroid/view/ViewGroup;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedSummary:Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 71
    .line 72
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getDetailAdapterSummary()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final setDetailExtendedContainerHeight()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedContainer:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->isLandscape()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, -0x2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final setPanelMargin()V
    .locals 6

    .line 1
    const v0, 0x7f0a085c

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 13
    .line 14
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->isLandscape()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const v4, 0x7f070b9f

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 40
    .line 41
    move v2, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const v4, 0x7f070b96

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 55
    .line 56
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetail;->mToggleDivider:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/android/systemui/qs/SecQSDetail;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 65
    .line 66
    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const v5, 0x7f070cd1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    const v5, 0x7f070cd2

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    :cond_2
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 92
    .line 93
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 94
    .line 95
    iget-object v4, p0, Lcom/android/systemui/qs/SecQSDetail;->mToggleDivider:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContentParent:Lcom/android/systemui/qs/SecQSDetailContentView;

    .line 101
    .line 102
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 106
    .line 107
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const v3, 0x7f070b9d

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v1, :cond_3

    .line 124
    .line 125
    const v3, 0x7f070b9e

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    :cond_3
    invoke-virtual {p0, v3, v2, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 140
    .line 141
    if-eqz v1, :cond_4

    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->mShadeHeaderControllerLazy:Ldagger/Lazy;

    .line 146
    .line 147
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Lcom/android/systemui/shade/ShadeHeaderController;

    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/android/systemui/shade/ShadeHeaderController;->getViewHeight()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 158
    .line 159
    :cond_4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public final setupHeaderSwitch(Lcom/android/systemui/plugins/qs/DetailAdapter;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->jumpDrawablesToCurrentState()V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final updateDetailHeader()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/view/ViewGroup;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->isLandscape()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const v1, 0x7f0a0854

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/view/ViewGroup;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 54
    .line 55
    .line 56
    const/4 v1, -0x2

    .line 57
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const v1, 0x7f070e82

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    const v1, 0x7f0a085c

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/view/ViewGroup;

    .line 81
    .line 82
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const v1, 0x7f070e85

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 99
    .line 100
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 101
    .line 102
    :goto_1
    return-void
.end method

.method public final updateDetailText()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailDoneButton:Landroid/widget/Button;

    .line 2
    .line 3
    const v1, 0x7f130f76

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailDoneButton:Landroid/widget/Button;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/Button;->getTypeface()Landroid/graphics/Typeface;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, v0, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailDoneButton:Landroid/widget/Button;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const v3, 0x7f080f76

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailDoneButton:Landroid/widget/Button;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailSettingsButton:Landroid/widget/Button;

    .line 38
    .line 39
    const v2, 0x7f130f75

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailSettingsButton:Landroid/widget/Button;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/widget/Button;->getTypeface()Landroid/graphics/Typeface;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-boolean v1, v0, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailSettingsButton:Landroid/widget/Button;

    .line 54
    .line 55
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailSettingsButton:Landroid/widget/Button;

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V
    .locals 7

    .line 1
    if-eqz p2, :cond_12

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_a

    .line 14
    .line 15
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string/jumbo v0, "updateDetailTitle"

    .line 24
    .line 25
    .line 26
    const-string v1, "QSDetail"

    .line 27
    .line 28
    invoke-static {v0, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->isLandscape()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x2

    .line 38
    const/4 v3, 0x1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v1, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    move v1, v2

    .line 49
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedText:Lcom/android/systemui/shared/shadow/DoubleShadowTextView;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    const/4 v0, 0x0

    .line 60
    const v1, 0x7f0605a6

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    const/16 v5, 0x8

    .line 65
    .line 66
    if-eqz p1, :cond_a

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->isLandscape()Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_5

    .line 73
    .line 74
    sget-boolean v6, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 75
    .line 76
    if-eqz v6, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 80
    .line 81
    invoke-virtual {v6, v0}, Landroid/view/View;->setClickable(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v6, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 85
    .line 86
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 90
    .line 91
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    .line 93
    .line 94
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    goto :goto_5

    .line 101
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 102
    .line 103
    invoke-virtual {p2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_6

    .line 113
    .line 114
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    const v4, 0x7f131117

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_6
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    const v4, 0x7f131116

    .line 123
    .line 124
    .line 125
    :goto_3
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_7

    .line 137
    .line 138
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 139
    .line 140
    const v1, 0x7f0605a5

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_7
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    const v1, 0x7f0605a4

    .line 147
    .line 148
    .line 149
    :goto_4
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 154
    .line 155
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    .line 157
    .line 158
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 159
    .line 160
    if-eqz p2, :cond_d

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->isLandscape()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_9

    .line 167
    .line 168
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 169
    .line 170
    if-eqz v1, :cond_8

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_8
    move v2, v3

    .line 174
    :cond_9
    :goto_6
    invoke-virtual {p2, v2}, Landroid/widget/CompoundButton;->setImportantForAccessibility(I)V

    .line 175
    .line 176
    .line 177
    goto :goto_8

    .line 178
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->isLandscape()Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_c

    .line 183
    .line 184
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 185
    .line 186
    if-eqz v2, :cond_b

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 190
    .line 191
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 195
    .line 196
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 197
    .line 198
    .line 199
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 200
    .line 201
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 202
    .line 203
    .line 204
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 205
    .line 206
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 207
    .line 208
    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    .line 214
    .line 215
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 216
    .line 217
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    goto :goto_8

    .line 221
    :cond_c
    :goto_7
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 222
    .line 223
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    :cond_d
    :goto_8
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->isLandscape()Z

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    if-eqz p2, :cond_e

    .line 231
    .line 232
    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 233
    .line 234
    if-nez p2, :cond_e

    .line 235
    .line 236
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 237
    .line 238
    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    const/16 v2, 0x190

    .line 243
    .line 244
    invoke-static {v1, v2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 249
    .line 250
    .line 251
    goto :goto_9

    .line 252
    :cond_e
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 253
    .line 254
    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    const/16 v2, 0x258

    .line 259
    .line 260
    invoke-static {v1, v2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 265
    .line 266
    .line 267
    :goto_9
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->isLandscape()Z

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    if-eqz p2, :cond_f

    .line 272
    .line 273
    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 274
    .line 275
    if-eqz p2, :cond_10

    .line 276
    .line 277
    :cond_f
    if-nez p1, :cond_11

    .line 278
    .line 279
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail;->mToggleDivider:Landroid/view/View;

    .line 280
    .line 281
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 282
    .line 283
    .line 284
    goto :goto_a

    .line 285
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail;->mToggleDivider:Landroid/view/View;

    .line 286
    .line 287
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 288
    .line 289
    .line 290
    :cond_12
    :goto_a
    return-void
.end method

.method public final updateDndDetail()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const v3, 0x7f130dad

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    const/16 v2, 0x8

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetail;->isLandscape()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedSummaryContainer:Landroid/view/ViewGroup;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    instance-of v1, v0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedSummary:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getDetailAdapterSummary()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 71
    .line 72
    check-cast v0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 75
    .line 76
    iput-object p0, v0, Lcom/android/systemui/qs/tiles/DndTile;->mSecQSDetail:Lcom/android/systemui/qs/SecQSDetail;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedSummaryContainer:Landroid/view/ViewGroup;

    .line 80
    .line 81
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_1
    return-void
.end method

.method public final updateTabletResources()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContentParent:Lcom/android/systemui/qs/SecQSDetailContentView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f070b7c

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedContainer:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, -0x1

    .line 22
    if-ge v3, v1, :cond_0

    .line 23
    .line 24
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-direct {v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedContainer:Landroid/view/ViewGroup;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedContainer:Landroid/view/ViewGroup;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-ge v2, v1, :cond_0

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v1, v4

    .line 53
    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/qs/SecQSDetailContentView;->hasMinHeight:Z

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtendedContainer:Landroid/view/ViewGroup;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    .line 63
    const/high16 v1, 0x3f800000    # 1.0f

    .line 64
    .line 65
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailButtons:Landroid/widget/LinearLayout;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailButtons:Landroid/widget/LinearLayout;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/view/ViewGroup;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailButtons:Landroid/widget/LinearLayout;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtended:Landroid/widget/LinearLayout;

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailExtended:Landroid/widget/LinearLayout;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailButtons:Landroid/widget/LinearLayout;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailButtons:Landroid/widget/LinearLayout;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const v2, 0x7f070b6d

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailDoneButton:Landroid/widget/Button;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 133
    .line 134
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 135
    .line 136
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailSettingsButton:Landroid/widget/Button;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 145
    .line 146
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 147
    .line 148
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail;->mDetailButtonsDivider:Landroid/view/View;

    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 157
    .line 158
    iput v4, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 159
    .line 160
    iput v4, p0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 161
    .line 162
    return-void
.end method
