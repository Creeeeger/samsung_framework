.class public final Lcom/android/systemui/media/SecMediaControlPanel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ACTION_IDS:[I


# instance fields
.field public mActionButtonNumCollapsed:I

.field public mActionButtonNumExpand:I

.field public mActionButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mActionXListAnimator:Ljava/util/ArrayList;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public mAlbumArtAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mAlbumArtRadius:I

.field public mAlbumArtSize:I

.field public mArtworkBoundId:I

.field public mArtworkNextBindRequestId:I

.field public mBackgroundColor:I

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mBudsButtonCollapsed:Landroid/widget/ImageButton;

.field public mBudsButtonExpanded:Landroid/widget/ImageButton;

.field public mBudsDetailCloseRunnable:Ljava/lang/Runnable;

.field public mBudsDetailOpenRunnable:Ljava/lang/Runnable;

.field public mBudsEnabled:Z

.field public mColorSchemeTransition:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

.field public final mContext:Landroid/content/Context;

.field public mController:Landroid/media/session/MediaController;

.field public mCoverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

.field public mDeviceName:Ljava/lang/CharSequence;

.field public mDualPlayModeEnabled:Z

.field public final mDualPlayModeReceiver:Lcom/android/systemui/media/SecMediaControlPanel$2;

.field public mExpandButtonColorAnimator:Landroid/animation/ValueAnimator;

.field public final mExpandClickListener:Lcom/android/systemui/media/SecMediaControlPanel$1;

.field public mExpandContentsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mExpandGutsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mExpandIconRotationAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mExpanded:Z

.field public final mFaceWidgetColorSchemeController:Lcom/android/systemui/facewidget/plugin/FaceWidgetColorSchemeControllerWrapper;

.field public mFraction:F

.field public mFullyExpanded:Z

.field public mGutsBackgroundColor:I

.field public mHeight:I

.field public mIsArtworkBound:Z

.field public mIsEmptyPlayer:Z

.field public mIsPlayerCoverPlayed:Z

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public final mLogger:Lcom/android/systemui/log/MediaLogger;

.field public final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public mMediaDevicesAvailableOnTop:Z

.field public final mMediaOutputHelper:Lcom/android/systemui/media/MediaOutputHelper;

.field public final mObserver:Lcom/android/systemui/media/SecMediaControlPanel$4;

.field public mOptionButtonCollapsed:I

.field public mOptionButtonExpanded:I

.field public mOutputSwitcherAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mPlayerKey:Ljava/lang/String;

.field public final mPlayerRect:Landroid/graphics/Rect;

.field public mPrevArtwork:Landroid/graphics/drawable/Drawable;

.field public mPrevBitmap:Landroid/graphics/Bitmap;

.field public mPrimaryTextColorAnimator:Landroid/animation/ValueAnimator;

.field public mQSMediaPlayerBarCallback:Lcom/android/systemui/media/SecMediaHost$1;

.field public mRemainWidthCollapsed:I

.field public mRemainWidthExpand:I

.field public mRemoveButtonCollapsed:I

.field public mRemoveButtonColorAnimator:Landroid/animation/ValueAnimator;

.field public mRemoveButtonExpanded:I

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mSecondaryTextColorAnimator:Landroid/animation/ValueAnimator;

.field public mSeekBarObserver:Lcom/android/systemui/media/SecSeekBarObserver;

.field public final mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

.field public final mSessionDestroyCallback:Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSettingsListener:Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda2;

.field public final mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public mTertiaryTextColorAnimator:Landroid/animation/ValueAnimator;

.field public mToggleCallback:Lcom/android/systemui/media/MediaPlayerBarExpandHelper$expandCallback$1;

.field public mToken:Landroid/media/session/MediaSession$Token;

.field public final mTunable:Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda3;

.field public final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field public mType:Lcom/android/systemui/media/MediaType;

.field public mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

.field public final mViewOutlineProvider:Lcom/android/systemui/media/SecMediaControlPanel$3;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const v0, 0x7f0a0965

    .line 2
    .line 3
    .line 4
    const v1, 0x7f0a0966

    .line 5
    .line 6
    .line 7
    const v2, 0x7f0a0962

    .line 8
    .line 9
    .line 10
    const v3, 0x7f0a0963

    .line 11
    .line 12
    .line 13
    const v4, 0x7f0a0964

    .line 14
    .line 15
    .line 16
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/android/systemui/media/SecMediaControlPanel;->ACTION_IDS:[I

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/SecSeekBarViewModel;Lcom/android/systemui/media/MediaOutputHelper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/facewidget/plugin/FaceWidgetColorSchemeControllerWrapper;Lcom/android/systemui/log/MediaLogger;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p13

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v2, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerRect:Landroid/graphics/Rect;

    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionXListAnimator:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance v2, Lcom/android/systemui/util/ConfigurationState;

    .line 22
    .line 23
    sget-object v3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 24
    .line 25
    sget-object v4, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 26
    .line 27
    filled-new-array {v3, v4}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-direct {v2, v3}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    iput-object v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    iput-object v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mPrevBitmap:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    iput-object v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mPrevArtwork:Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    iput-boolean v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsArtworkBound:Z

    .line 47
    .line 48
    iput v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mArtworkBoundId:I

    .line 49
    .line 50
    iput v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mArtworkNextBindRequestId:I

    .line 51
    .line 52
    iput v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumCollapsed:I

    .line 53
    .line 54
    iput v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    .line 55
    .line 56
    iput v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthCollapsed:I

    .line 57
    .line 58
    iput v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthExpand:I

    .line 59
    .line 60
    iput v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemoveButtonCollapsed:I

    .line 61
    .line 62
    iput v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemoveButtonExpanded:I

    .line 63
    .line 64
    iput v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mOptionButtonCollapsed:I

    .line 65
    .line 66
    iput v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mOptionButtonExpanded:I

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    iput-boolean v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpanded:Z

    .line 70
    .line 71
    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$1;

    .line 72
    .line 73
    invoke-direct {v3, p0}, Lcom/android/systemui/media/SecMediaControlPanel$1;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 74
    .line 75
    .line 76
    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandClickListener:Lcom/android/systemui/media/SecMediaControlPanel$1;

    .line 77
    .line 78
    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$2;

    .line 79
    .line 80
    invoke-direct {v3, p0}, Lcom/android/systemui/media/SecMediaControlPanel$2;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 81
    .line 82
    .line 83
    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeReceiver:Lcom/android/systemui/media/SecMediaControlPanel$2;

    .line 84
    .line 85
    iput v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mHeight:I

    .line 86
    .line 87
    iput v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mWidth:I

    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    iput v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mFraction:F

    .line 91
    .line 92
    iput-boolean v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerCoverPlayed:Z

    .line 93
    .line 94
    iput-boolean v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mMediaDevicesAvailableOnTop:Z

    .line 95
    .line 96
    iput-boolean v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsEnabled:Z

    .line 97
    .line 98
    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;

    .line 99
    .line 100
    invoke-direct {v3, p0}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 101
    .line 102
    .line 103
    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mSessionDestroyCallback:Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;

    .line 104
    .line 105
    iput-boolean v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsEmptyPlayer:Z

    .line 106
    .line 107
    new-instance v2, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda2;

    .line 108
    .line 109
    invoke-direct {v2, p0}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 110
    .line 111
    .line 112
    iput-object v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mSettingsListener:Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda2;

    .line 113
    .line 114
    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$4;

    .line 115
    .line 116
    invoke-direct {v3, p0}, Lcom/android/systemui/media/SecMediaControlPanel$4;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 117
    .line 118
    .line 119
    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mObserver:Lcom/android/systemui/media/SecMediaControlPanel$4;

    .line 120
    .line 121
    move-object v3, p1

    .line 122
    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    move-object v4, p2

    .line 125
    iput-object v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 126
    .line 127
    move-object v4, p3

    .line 128
    iput-object v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 129
    .line 130
    move-object v4, p4

    .line 131
    iput-object v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 132
    .line 133
    move-object v4, p5

    .line 134
    iput-object v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 135
    .line 136
    move-object v4, p6

    .line 137
    iput-object v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mMediaOutputHelper:Lcom/android/systemui/media/MediaOutputHelper;

    .line 138
    .line 139
    move-object v4, p7

    .line 140
    iput-object v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 141
    .line 142
    move-object/from16 v4, p10

    .line 143
    .line 144
    iput-object v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mLogger:Lcom/android/systemui/log/MediaLogger;

    .line 145
    .line 146
    sget-object v4, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    .line 147
    .line 148
    iput-object v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 149
    .line 150
    move-object v4, p8

    .line 151
    iput-object v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 152
    .line 153
    move-object v4, p9

    .line 154
    iput-object v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mFaceWidgetColorSchemeController:Lcom/android/systemui/facewidget/plugin/FaceWidgetColorSchemeControllerWrapper;

    .line 155
    .line 156
    move-object/from16 v4, p11

    .line 157
    .line 158
    iput-object v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 159
    .line 160
    move-object/from16 v4, p12

    .line 161
    .line 162
    iput-object v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 163
    .line 164
    iput-object v1, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 165
    .line 166
    move-object/from16 v4, p14

    .line 167
    .line 168
    iput-object v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    const v5, 0x7f070e23

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    iput v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtRadius:I

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    const v4, 0x7f070eb3

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    iput v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtSize:I

    .line 195
    .line 196
    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$3;

    .line 197
    .line 198
    invoke-direct {v3, p0}, Lcom/android/systemui/media/SecMediaControlPanel$3;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 199
    .line 200
    .line 201
    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewOutlineProvider:Lcom/android/systemui/media/SecMediaControlPanel$3;

    .line 202
    .line 203
    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda3;

    .line 204
    .line 205
    invoke-direct {v3, p0}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 206
    .line 207
    .line 208
    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mTunable:Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda3;

    .line 209
    .line 210
    const-string v0, "buds_enable"

    .line 211
    .line 212
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    filled-new-array {v0}, [Landroid/net/Uri;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 221
    .line 222
    .line 223
    return-void
.end method

.method public static scaleTransitionDrawableLayer(Landroid/graphics/drawable/TransitionDrawable;III)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    if-eqz p2, :cond_3

    .line 21
    .line 22
    if-nez p3, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    int-to-float v1, v1

    .line 26
    int-to-float v0, v0

    .line 27
    div-float v2, v1, v0

    .line 28
    .line 29
    int-to-float p2, p2

    .line 30
    int-to-float p3, p3

    .line 31
    div-float v3, p2, p3

    .line 32
    .line 33
    cmpl-float v2, v2, v3

    .line 34
    .line 35
    if-lez v2, :cond_2

    .line 36
    .line 37
    div-float/2addr p3, v0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    div-float p3, p2, v1

    .line 40
    .line 41
    :goto_0
    mul-float/2addr v1, p3

    .line 42
    float-to-int p2, v1

    .line 43
    mul-float/2addr p3, v0

    .line 44
    float-to-int p3, p3

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/drawable/TransitionDrawable;->setLayerSize(III)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/media/SecPlayerViewHolder;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsEmptyPlayer:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p1, Lcom/android/systemui/media/SecPlayerViewHolder;->albumThumbnail:Landroid/widget/ImageView;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewOutlineProvider:Lcom/android/systemui/media/SecMediaControlPanel$3;

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance v0, Lcom/android/systemui/media/SecSeekBarObserver;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 33
    .line 34
    invoke-direct {v0, v3}, Lcom/android/systemui/media/SecSeekBarObserver;-><init>(Lcom/android/systemui/media/SecPlayerViewHolder;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SecSeekBarObserver;

    .line 38
    .line 39
    iget-object v3, v1, Lcom/android/systemui/media/SecSeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    invoke-virtual {v3, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;

    .line 57
    .line 58
    invoke-direct {v0, v1, p1}, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;Landroid/widget/SeekBar;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSessionDestroyCallback:Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;

    .line 65
    .line 66
    iput-object p1, v1, Lcom/android/systemui/media/SecSeekBarViewModel;->sessionDestroyCallback:Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;

    .line 67
    .line 68
    const-string p1, "com.samsung.bluetooth.a2dp.intent.action.DUAL_PLAY_MODE_ENABLED"

    .line 69
    .line 70
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeReceiver:Lcom/android/systemui/media/SecMediaControlPanel$2;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 77
    .line 78
    invoke-virtual {v3, p1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 79
    .line 80
    .line 81
    const-string/jumbo p1, "qspanel_media_quickcontrol_bar_available_on_top"

    .line 82
    .line 83
    .line 84
    filled-new-array {p1}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 89
    .line 90
    iget-object v4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mTunable:Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda3;

    .line 91
    .line 92
    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/4 v0, -0x1

    .line 96
    invoke-virtual {v3, v0, p1}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const/4 v2, 0x0

    .line 104
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mMediaDevicesAvailableOnTop:Z

    .line 105
    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateWidth()V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportColorSchemeTransition()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    if-eqz p1, :cond_3

    .line 118
    .line 119
    new-instance p1, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    .line 120
    .line 121
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 122
    .line 123
    invoke-direct {p1, v0, v2}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;-><init>(Landroid/content/Context;Lcom/android/systemui/media/SecPlayerViewHolder;)V

    .line 124
    .line 125
    .line 126
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mColorSchemeTransition:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    .line 127
    .line 128
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_4

    .line 135
    .line 136
    new-instance p1, Lcom/android/systemui/media/CoverMusicCapsuleController;

    .line 137
    .line 138
    new-instance v2, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda4;

    .line 139
    .line 140
    invoke-direct {v2, p0}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 141
    .line 142
    .line 143
    iget-object v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 144
    .line 145
    invoke-direct {p1, v0, v3, v2}, Lcom/android/systemui/media/CoverMusicCapsuleController;-><init>(Landroid/content/Context;Lcom/android/systemui/subscreen/SubScreenManager;Ljava/util/function/BooleanSupplier;)V

    .line 146
    .line 147
    .line 148
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mCoverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

    .line 149
    .line 150
    iput-object p1, v1, Lcom/android/systemui/media/SecSeekBarViewModel;->coverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

    .line 151
    .line 152
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportWidgetTimer()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_5

    .line 159
    .line 160
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mObserver:Lcom/android/systemui/media/SecMediaControlPanel$4;

    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_5
    return-void
.end method

.method public final bind(Lcom/android/systemui/media/controls/models/player/MediaData;Ljava/lang/String;)V
    .locals 34

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "MediaControlPanel#bindPlayer<"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v10, ">"

    .line 23
    .line 24
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateWidth()V

    .line 35
    .line 36
    .line 37
    iget-object v0, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 38
    .line 39
    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    :cond_1
    iput-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    .line 50
    .line 51
    :cond_2
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    .line 52
    .line 53
    const/4 v11, 0x0

    .line 54
    iget-object v12, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    new-instance v0, Landroid/media/session/MediaController;

    .line 59
    .line 60
    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    .line 61
    .line 62
    invoke-direct {v0, v12, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iput-object v11, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    .line 69
    .line 70
    :goto_0
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->header:Landroid/widget/LinearLayout;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    move-object v0, v11

    .line 78
    :goto_1
    iget-object v13, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandClickListener:Lcom/android/systemui/media/SecMediaControlPanel$1;

    .line 79
    .line 80
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    move-object v0, v11

    .line 91
    :goto_2
    const v14, 0x7f080a11

    .line 92
    .line 93
    .line 94
    iget v15, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->userId:I

    .line 95
    .line 96
    iget-object v6, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    .line 97
    .line 98
    if-eqz v6, :cond_6

    .line 99
    .line 100
    invoke-virtual {v6, v12, v15}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_6
    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    .line 110
    .line 111
    :goto_3
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 112
    .line 113
    iget-object v1, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->titleText:Landroid/widget/TextView;

    .line 114
    .line 115
    if-eqz v1, :cond_7

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_7
    move-object v1, v11

    .line 119
    :goto_4
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->artistText:Landroid/widget/TextView;

    .line 120
    .line 121
    if-eqz v0, :cond_8

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_8
    move-object v0, v11

    .line 125
    :goto_5
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iget-object v3, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->song:Ljava/lang/CharSequence;

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    const/4 v4, 0x0

    .line 136
    iget-object v11, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->artist:Ljava/lang/CharSequence;

    .line 137
    .line 138
    if-eqz v2, :cond_a

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-nez v2, :cond_9

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_9
    move/from16 v16, v4

    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_a
    :goto_6
    const/16 v16, 0x1

    .line 155
    .line 156
    :goto_7
    invoke-static {v3}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v11}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 171
    .line 172
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->appName:Landroid/widget/TextView;

    .line 173
    .line 174
    if-eqz v0, :cond_b

    .line 175
    .line 176
    goto :goto_8

    .line 177
    :cond_b
    const/4 v0, 0x0

    .line 178
    :goto_8
    iget-object v11, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->app:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    const/4 v3, 0x5

    .line 184
    const-string v0, "MediaControlPanel"

    .line 185
    .line 186
    iget-object v1, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->device:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 187
    .line 188
    if-eqz v1, :cond_e

    .line 189
    .line 190
    iget-object v2, v1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->name:Ljava/lang/CharSequence;

    .line 191
    .line 192
    iput-object v2, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceName:Ljava/lang/CharSequence;

    .line 193
    .line 194
    iget-object v1, v1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->customMediaDeviceData:Lcom/android/systemui/media/controls/models/player/SecMediaDeviceDataImpl;

    .line 195
    .line 196
    iget-object v1, v1, Lcom/android/systemui/media/controls/models/player/SecMediaDeviceDataImpl;->deviceType:Ljava/lang/Integer;

    .line 197
    .line 198
    if-eqz v1, :cond_d

    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-ne v1, v3, :cond_d

    .line 205
    .line 206
    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mQSMediaPlayerBarCallback:Lcom/android/systemui/media/SecMediaHost$1;

    .line 207
    .line 208
    if-eqz v1, :cond_d

    .line 209
    .line 210
    iget-object v1, v1, Lcom/android/systemui/media/SecMediaHost$1;->this$0:Lcom/android/systemui/media/SecMediaHost;

    .line 211
    .line 212
    iget-object v1, v1, Lcom/android/systemui/media/SecMediaHost;->mMediaBluetoothHelper:Lcom/android/systemui/media/MediaBluetoothHelper;

    .line 213
    .line 214
    iget-object v1, v1, Lcom/android/systemui/media/MediaBluetoothHelper;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 215
    .line 216
    if-eqz v1, :cond_c

    .line 217
    .line 218
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->semIsDualPlayMode()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    goto :goto_9

    .line 223
    :cond_c
    move v1, v4

    .line 224
    :goto_9
    if-eqz v1, :cond_d

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_a

    .line 228
    :cond_d
    move v1, v4

    .line 229
    :goto_a
    iput-boolean v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeEnabled:Z

    .line 230
    .line 231
    goto :goto_b

    .line 232
    :cond_e
    const-string v1, "device is null"

    .line 233
    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    const v1, 0x7f130f44

    .line 238
    .line 239
    .line 240
    invoke-virtual {v12, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    iput-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceName:Ljava/lang/CharSequence;

    .line 245
    .line 246
    :goto_b
    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 247
    .line 248
    iget-object v1, v1, Lcom/android/systemui/media/SecPlayerViewHolder;->mediaOutputText:Landroid/widget/TextView;

    .line 249
    .line 250
    if-eqz v1, :cond_f

    .line 251
    .line 252
    goto :goto_c

    .line 253
    :cond_f
    const/4 v1, 0x0

    .line 254
    :goto_c
    new-instance v2, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;

    .line 255
    .line 256
    invoke-direct {v2, v7, v8, v1}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/controls/models/player/MediaData;Landroid/widget/TextView;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateDeviceName()V

    .line 263
    .line 264
    .line 265
    const v2, 0x7f070ed6

    .line 266
    .line 267
    .line 268
    invoke-virtual {v7, v2, v1}, Lcom/android/systemui/media/SecMediaControlPanel;->updateFontSize(ILandroid/widget/TextView;)V

    .line 269
    .line 270
    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v2, "bindActionButtons semanticActions="

    .line 274
    .line 275
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v2, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->semanticActions:Lcom/android/systemui/media/controls/models/player/MediaButton;

    .line 279
    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v2, "bindActionButtons actionsWhenCollapsed="

    .line 293
    .line 294
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    iget-object v2, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->actionsToShowInCompact:Ljava/util/List;

    .line 298
    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v14, ", actionIcons="

    .line 303
    .line 304
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    iget-object v14, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->actions:Ljava/util/List;

    .line 308
    .line 309
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    iput v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumCollapsed:I

    .line 324
    .line 325
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    iput v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    .line 330
    .line 331
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 332
    .line 333
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    sget-object v17, Lcom/android/systemui/media/SecMediaControlPanel;->ACTION_IDS:[I

    .line 338
    .line 339
    move-object/from16 v18, v6

    .line 340
    .line 341
    if-nez v0, :cond_10

    .line 342
    .line 343
    move v5, v4

    .line 344
    move-object/from16 v25, v10

    .line 345
    .line 346
    goto/16 :goto_12

    .line 347
    .line 348
    :cond_10
    move v0, v4

    .line 349
    :goto_d
    const v1, 0x7f070ebf

    .line 350
    .line 351
    .line 352
    if-ge v0, v3, :cond_16

    .line 353
    .line 354
    aget v3, v17, v0

    .line 355
    .line 356
    iget-object v5, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 357
    .line 358
    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/media/SecPlayerViewHolder;->getActionButton(IZ)Landroid/widget/ImageButton;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    invoke-virtual {v5}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 363
    .line 364
    .line 365
    move-result-object v23

    .line 366
    move-object/from16 v4, v23

    .line 367
    .line 368
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 369
    .line 370
    sget-boolean v23, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 371
    .line 372
    if-eqz v23, :cond_12

    .line 373
    .line 374
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 375
    .line 376
    .line 377
    move-result-object v6

    .line 378
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 383
    .line 384
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 393
    .line 394
    if-eqz v0, :cond_11

    .line 395
    .line 396
    iget v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mWidth:I

    .line 397
    .line 398
    int-to-float v1, v1

    .line 399
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 400
    .line 401
    .line 402
    move-result-object v6

    .line 403
    move-object/from16 v25, v10

    .line 404
    .line 405
    const v10, 0x7f070ebc

    .line 406
    .line 407
    .line 408
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getFloat(I)F

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    mul-float/2addr v6, v1

    .line 413
    float-to-int v1, v6

    .line 414
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 415
    .line 416
    goto :goto_e

    .line 417
    :cond_11
    move-object/from16 v25, v10

    .line 418
    .line 419
    goto :goto_e

    .line 420
    :cond_12
    move-object/from16 v25, v10

    .line 421
    .line 422
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    const v6, 0x7f070ebe

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 434
    .line 435
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 444
    .line 445
    if-eqz v0, :cond_13

    .line 446
    .line 447
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    const v6, 0x7f070ebb

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 459
    .line 460
    :cond_13
    :goto_e
    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    .line 462
    .line 463
    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 464
    .line 465
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaType;->getSupportBudsButton()Z

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    if-eqz v1, :cond_14

    .line 470
    .line 471
    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonCollapsed:Landroid/widget/ImageButton;

    .line 472
    .line 473
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    .line 475
    .line 476
    :cond_14
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 485
    .line 486
    const/4 v5, 0x2

    .line 487
    if-ne v1, v5, :cond_15

    .line 488
    .line 489
    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 490
    .line 491
    const/4 v5, 0x1

    .line 492
    invoke-virtual {v1, v3, v5}, Lcom/android/systemui/media/SecPlayerViewHolder;->getActionButton(IZ)Landroid/widget/ImageButton;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    .line 498
    .line 499
    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 500
    .line 501
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaType;->getSupportBudsButton()Z

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    if-eqz v1, :cond_15

    .line 506
    .line 507
    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonCollapsed:Landroid/widget/ImageButton;

    .line 508
    .line 509
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    .line 511
    .line 512
    :cond_15
    add-int/lit8 v0, v0, 0x1

    .line 513
    .line 514
    move-object/from16 v10, v25

    .line 515
    .line 516
    const/4 v3, 0x5

    .line 517
    const/4 v4, 0x0

    .line 518
    goto/16 :goto_d

    .line 519
    .line 520
    :cond_16
    move-object/from16 v25, v10

    .line 521
    .line 522
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 523
    .line 524
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandedActionButtonsContainer:Landroid/widget/LinearLayout;

    .line 525
    .line 526
    if-eqz v0, :cond_17

    .line 527
    .line 528
    goto :goto_f

    .line 529
    :cond_17
    const/4 v0, 0x0

    .line 530
    :goto_f
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 539
    .line 540
    const/4 v6, 0x2

    .line 541
    if-ne v3, v6, :cond_18

    .line 542
    .line 543
    const/4 v3, 0x0

    .line 544
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 545
    .line 546
    .line 547
    move v5, v3

    .line 548
    goto/16 :goto_12

    .line 549
    .line 550
    :cond_18
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    iget v4, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    .line 555
    .line 556
    if-eq v4, v6, :cond_1c

    .line 557
    .line 558
    const/4 v5, 0x3

    .line 559
    if-eq v4, v5, :cond_1b

    .line 560
    .line 561
    const/4 v10, 0x4

    .line 562
    if-eq v4, v10, :cond_1a

    .line 563
    .line 564
    const/4 v5, 0x5

    .line 565
    if-eq v4, v5, :cond_19

    .line 566
    .line 567
    const/4 v3, 0x0

    .line 568
    goto :goto_10

    .line 569
    :cond_19
    const v4, 0x7f070bfd

    .line 570
    .line 571
    .line 572
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 573
    .line 574
    .line 575
    move-result v3

    .line 576
    goto :goto_10

    .line 577
    :cond_1a
    const v4, 0x7f070bfc

    .line 578
    .line 579
    .line 580
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 581
    .line 582
    .line 583
    move-result v3

    .line 584
    goto :goto_10

    .line 585
    :cond_1b
    const/4 v10, 0x4

    .line 586
    const v4, 0x7f070bfb

    .line 587
    .line 588
    .line 589
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 590
    .line 591
    .line 592
    move-result v3

    .line 593
    goto :goto_10

    .line 594
    :cond_1c
    const/4 v10, 0x4

    .line 595
    const v4, 0x7f070bfa

    .line 596
    .line 597
    .line 598
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    :goto_10
    const/4 v4, 0x0

    .line 603
    :goto_11
    iget v5, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    .line 604
    .line 605
    if-ge v4, v5, :cond_20

    .line 606
    .line 607
    const/4 v5, 0x5

    .line 608
    if-ge v4, v5, :cond_20

    .line 609
    .line 610
    aget v5, v17, v4

    .line 611
    .line 612
    iget-object v6, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 613
    .line 614
    const/4 v10, 0x1

    .line 615
    invoke-virtual {v6, v5, v10}, Lcom/android/systemui/media/SecPlayerViewHolder;->getActionButton(IZ)Landroid/widget/ImageButton;

    .line 616
    .line 617
    .line 618
    move-result-object v5

    .line 619
    invoke-virtual {v5}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 620
    .line 621
    .line 622
    move-result-object v6

    .line 623
    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 624
    .line 625
    sget-boolean v22, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 626
    .line 627
    if-eqz v22, :cond_1d

    .line 628
    .line 629
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 630
    .line 631
    .line 632
    move-result-object v10

    .line 633
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 634
    .line 635
    .line 636
    move-result v10

    .line 637
    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 638
    .line 639
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 640
    .line 641
    .line 642
    move-result-object v10

    .line 643
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 644
    .line 645
    .line 646
    move-result v10

    .line 647
    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 648
    .line 649
    :cond_1d
    if-eqz v4, :cond_1e

    .line 650
    .line 651
    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 652
    .line 653
    :cond_1e
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    .line 655
    .line 656
    iget-object v5, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 657
    .line 658
    invoke-virtual {v5}, Lcom/android/systemui/media/MediaType;->getSupportBudsButton()Z

    .line 659
    .line 660
    .line 661
    move-result v5

    .line 662
    if-eqz v5, :cond_1f

    .line 663
    .line 664
    iget-object v5, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    .line 665
    .line 666
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    .line 668
    .line 669
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    .line 670
    .line 671
    const/4 v6, 0x2

    .line 672
    const/4 v10, 0x4

    .line 673
    goto :goto_11

    .line 674
    :cond_20
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    const v3, 0x7f070ec8

    .line 679
    .line 680
    .line 681
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 682
    .line 683
    .line 684
    move-result v1

    .line 685
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    const v4, 0x7f070ec7

    .line 690
    .line 691
    .line 692
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    const/4 v5, 0x0

    .line 697
    invoke-virtual {v0, v5, v1, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 698
    .line 699
    .line 700
    :goto_12
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 701
    .line 702
    .line 703
    move-result v0

    .line 704
    const/4 v3, 0x5

    .line 705
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 706
    .line 707
    .line 708
    move-result v10

    .line 709
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    new-instance v1, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;

    .line 714
    .line 715
    invoke-direct {v1}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;-><init>()V

    .line 716
    .line 717
    .line 718
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    .line 723
    .line 724
    .line 725
    move-result-wide v0

    .line 726
    long-to-int v6, v0

    .line 727
    move v4, v5

    .line 728
    :goto_13
    if-ge v4, v3, :cond_24

    .line 729
    .line 730
    aget v21, v17, v4

    .line 731
    .line 732
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 733
    .line 734
    .line 735
    move-result v0

    .line 736
    if-ge v4, v0, :cond_21

    .line 737
    .line 738
    const/16 v24, 0x1

    .line 739
    .line 740
    goto :goto_14

    .line 741
    :cond_21
    move/from16 v24, v5

    .line 742
    .line 743
    :goto_14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    move-result v26

    .line 751
    if-eqz v24, :cond_22

    .line 752
    .line 753
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    check-cast v0, Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 758
    .line 759
    move-object/from16 v27, v0

    .line 760
    .line 761
    goto :goto_15

    .line 762
    :cond_22
    const/16 v27, 0x0

    .line 763
    .line 764
    :goto_15
    iget-object v1, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 765
    .line 766
    const/16 v28, 0x1

    .line 767
    .line 768
    move-object/from16 v0, p0

    .line 769
    .line 770
    move-object/from16 v20, v1

    .line 771
    .line 772
    move/from16 v1, v21

    .line 773
    .line 774
    move-object/from16 v29, v2

    .line 775
    .line 776
    move-object/from16 v2, v27

    .line 777
    .line 778
    move/from16 v30, v3

    .line 779
    .line 780
    move/from16 v3, v24

    .line 781
    .line 782
    move/from16 v31, v4

    .line 783
    .line 784
    move v4, v10

    .line 785
    move/from16 v32, v10

    .line 786
    .line 787
    const/16 v22, 0x1

    .line 788
    .line 789
    move v10, v5

    .line 790
    move-object/from16 v5, v20

    .line 791
    .line 792
    move-object/from16 v33, v18

    .line 793
    .line 794
    const/4 v10, 0x2

    .line 795
    const/16 v19, 0x4

    .line 796
    .line 797
    move/from16 v18, v6

    .line 798
    .line 799
    move/from16 v6, v28

    .line 800
    .line 801
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/media/SecMediaControlPanel;->bindButtonAndVisible(ILcom/android/systemui/media/controls/models/player/MediaAction;ZILjava/lang/String;Z)V

    .line 802
    .line 803
    .line 804
    if-eqz v24, :cond_23

    .line 805
    .line 806
    if-eqz v26, :cond_23

    .line 807
    .line 808
    move/from16 v3, v22

    .line 809
    .line 810
    goto :goto_16

    .line 811
    :cond_23
    const/4 v3, 0x0

    .line 812
    :goto_16
    iget-object v5, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 813
    .line 814
    const/4 v6, 0x0

    .line 815
    move-object/from16 v0, p0

    .line 816
    .line 817
    move/from16 v1, v21

    .line 818
    .line 819
    move-object/from16 v2, v27

    .line 820
    .line 821
    move/from16 v4, v18

    .line 822
    .line 823
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/media/SecMediaControlPanel;->bindButtonAndVisible(ILcom/android/systemui/media/controls/models/player/MediaAction;ZILjava/lang/String;Z)V

    .line 824
    .line 825
    .line 826
    add-int/lit8 v4, v31, 0x1

    .line 827
    .line 828
    move/from16 v6, v18

    .line 829
    .line 830
    move-object/from16 v2, v29

    .line 831
    .line 832
    move/from16 v3, v30

    .line 833
    .line 834
    move/from16 v10, v32

    .line 835
    .line 836
    move-object/from16 v18, v33

    .line 837
    .line 838
    const/4 v5, 0x0

    .line 839
    goto :goto_13

    .line 840
    :cond_24
    move-object/from16 v33, v18

    .line 841
    .line 842
    const/4 v10, 0x2

    .line 843
    const/16 v19, 0x4

    .line 844
    .line 845
    const/16 v22, 0x1

    .line 846
    .line 847
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    .line 848
    .line 849
    new-instance v1, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda5;

    .line 850
    .line 851
    invoke-direct {v1, v7, v0}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Landroid/media/session/MediaController;)V

    .line 852
    .line 853
    .line 854
    iget-object v14, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 855
    .line 856
    invoke-interface {v14, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 857
    .line 858
    .line 859
    if-eqz v0, :cond_27

    .line 860
    .line 861
    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mCoverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

    .line 862
    .line 863
    if-eqz v1, :cond_27

    .line 864
    .line 865
    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 866
    .line 867
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    .line 868
    .line 869
    .line 870
    move-result v1

    .line 871
    if-eqz v1, :cond_27

    .line 872
    .line 873
    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mCoverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

    .line 874
    .line 875
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 880
    .line 881
    .line 882
    if-eqz v0, :cond_25

    .line 883
    .line 884
    const-string v2, "android.media.metadata.DURATION"

    .line 885
    .line 886
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 887
    .line 888
    .line 889
    move-result-wide v2

    .line 890
    long-to-int v4, v2

    .line 891
    goto :goto_17

    .line 892
    :cond_25
    const/4 v4, 0x0

    .line 893
    :goto_17
    if-gtz v4, :cond_26

    .line 894
    .line 895
    move/from16 v5, v22

    .line 896
    .line 897
    goto :goto_18

    .line 898
    :cond_26
    const/4 v5, 0x0

    .line 899
    :goto_18
    iput-boolean v5, v1, Lcom/android/systemui/media/CoverMusicCapsuleController;->isLiveStreaming:Z

    .line 900
    .line 901
    :cond_27
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 902
    .line 903
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportGuts()Z

    .line 904
    .line 905
    .line 906
    move-result v0

    .line 907
    if-nez v0, :cond_28

    .line 908
    .line 909
    goto/16 :goto_1b

    .line 910
    .line 911
    :cond_28
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 912
    .line 913
    iget-object v1, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->player:Landroid/widget/LinearLayout;

    .line 914
    .line 915
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->options:Landroid/view/View;

    .line 916
    .line 917
    if-eqz v1, :cond_30

    .line 918
    .line 919
    if-nez v0, :cond_29

    .line 920
    .line 921
    goto/16 :goto_1b

    .line 922
    .line 923
    :cond_29
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 924
    .line 925
    .line 926
    move-result v2

    .line 927
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 928
    .line 929
    .line 930
    new-instance v2, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda8;

    .line 931
    .line 932
    invoke-direct {v2, v7, v0, v1}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Landroid/view/View;Landroid/view/View;)V

    .line 933
    .line 934
    .line 935
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 936
    .line 937
    .line 938
    iget-object v2, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 939
    .line 940
    iget-object v2, v2, Lcom/android/systemui/media/SecPlayerViewHolder;->removeText:Landroid/widget/TextView;

    .line 941
    .line 942
    if-eqz v2, :cond_2a

    .line 943
    .line 944
    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda9;

    .line 945
    .line 946
    invoke-direct {v3, v7, v8}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/controls/models/player/MediaData;)V

    .line 947
    .line 948
    .line 949
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 950
    .line 951
    .line 952
    const v3, 0x7f070eb9

    .line 953
    .line 954
    .line 955
    invoke-virtual {v7, v3, v2}, Lcom/android/systemui/media/SecMediaControlPanel;->updateFontSize(ILandroid/widget/TextView;)V

    .line 956
    .line 957
    .line 958
    :cond_2a
    iget-object v2, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 959
    .line 960
    iget-object v2, v2, Lcom/android/systemui/media/SecPlayerViewHolder;->cancelText:Landroid/widget/TextView;

    .line 961
    .line 962
    if-eqz v2, :cond_2b

    .line 963
    .line 964
    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;

    .line 965
    .line 966
    invoke-direct {v3, v7, v0, v10, v1}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 970
    .line 971
    .line 972
    const v3, 0x7f070eb8

    .line 973
    .line 974
    .line 975
    invoke-virtual {v7, v3, v2}, Lcom/android/systemui/media/SecMediaControlPanel;->updateFontSize(ILandroid/widget/TextView;)V

    .line 976
    .line 977
    .line 978
    :cond_2b
    iget-object v2, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 979
    .line 980
    iget-object v2, v2, Lcom/android/systemui/media/SecPlayerViewHolder;->optionsAppIcon:Landroid/widget/ImageView;

    .line 981
    .line 982
    if-eqz v2, :cond_2d

    .line 983
    .line 984
    move-object/from16 v3, v33

    .line 985
    .line 986
    if-eqz v3, :cond_2c

    .line 987
    .line 988
    invoke-virtual {v3, v12, v15}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 989
    .line 990
    .line 991
    move-result-object v3

    .line 992
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 993
    .line 994
    .line 995
    goto :goto_19

    .line 996
    :cond_2c
    const v3, 0x7f080a11

    .line 997
    .line 998
    .line 999
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1000
    .line 1001
    .line 1002
    :cond_2d
    :goto_19
    iget-object v2, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 1003
    .line 1004
    iget-object v2, v2, Lcom/android/systemui/media/SecPlayerViewHolder;->optionsAppTitle:Landroid/widget/TextView;

    .line 1005
    .line 1006
    if-eqz v2, :cond_2e

    .line 1007
    .line 1008
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    .line 1010
    .line 1011
    const v3, 0x7f070eb7

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v7, v3, v2}, Lcom/android/systemui/media/SecMediaControlPanel;->updateFontSize(ILandroid/widget/TextView;)V

    .line 1015
    .line 1016
    .line 1017
    :cond_2e
    const/16 v2, 0x8

    .line 1018
    .line 1019
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1020
    .line 1021
    .line 1022
    const/4 v0, 0x0

    .line 1023
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    .line 1025
    .line 1026
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 1027
    .line 1028
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/view/View;

    .line 1029
    .line 1030
    if-eqz v0, :cond_2f

    .line 1031
    .line 1032
    goto :goto_1a

    .line 1033
    :cond_2f
    const/4 v0, 0x0

    .line 1034
    :goto_1a
    new-instance v1, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda10;

    .line 1035
    .line 1036
    invoke-direct {v1, v7}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1040
    .line 1041
    .line 1042
    :cond_30
    :goto_1b
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 1043
    .line 1044
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    .line 1045
    .line 1046
    .line 1047
    move-result v0

    .line 1048
    if-nez v0, :cond_31

    .line 1049
    .line 1050
    goto/16 :goto_23

    .line 1051
    .line 1052
    :cond_31
    const v0, 0x7f0605af

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v12, v0}, Landroid/content/Context;->getColor(I)I

    .line 1056
    .line 1057
    .line 1058
    move-result v0

    .line 1059
    iput v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mGutsBackgroundColor:I

    .line 1060
    .line 1061
    const v0, 0x7f0605ae

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v12, v0}, Landroid/content/Context;->getColor(I)I

    .line 1065
    .line 1066
    .line 1067
    move-result v0

    .line 1068
    iput v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundColor:I

    .line 1069
    .line 1070
    invoke-virtual {v7, v0}, Lcom/android/systemui/media/SecMediaControlPanel;->setBackgroundColor(I)V

    .line 1071
    .line 1072
    .line 1073
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 1074
    .line 1075
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/view/View;

    .line 1076
    .line 1077
    if-eqz v0, :cond_32

    .line 1078
    .line 1079
    goto :goto_1c

    .line 1080
    :cond_32
    const/4 v0, 0x0

    .line 1081
    :goto_1c
    new-instance v1, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;

    .line 1082
    .line 1083
    iget-object v2, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->clickIntent:Landroid/app/PendingIntent;

    .line 1084
    .line 1085
    const/4 v3, 0x0

    .line 1086
    invoke-direct {v1, v7, v2, v3, v8}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    .line 1091
    .line 1092
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 1093
    .line 1094
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->albumThumbnail:Landroid/widget/ImageView;

    .line 1095
    .line 1096
    if-eqz v0, :cond_39

    .line 1097
    .line 1098
    iget-object v1, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    .line 1099
    .line 1100
    if-eqz v1, :cond_33

    .line 1101
    .line 1102
    move/from16 v5, v22

    .line 1103
    .line 1104
    goto :goto_1d

    .line 1105
    :cond_33
    const/4 v5, 0x0

    .line 1106
    :goto_1d
    if-eqz v5, :cond_38

    .line 1107
    .line 1108
    if-nez v1, :cond_34

    .line 1109
    .line 1110
    const/4 v11, 0x0

    .line 1111
    goto :goto_1f

    .line 1112
    :cond_34
    invoke-virtual {v1, v12}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v11

    .line 1116
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 1117
    .line 1118
    .line 1119
    move-result v1

    .line 1120
    int-to-float v1, v1

    .line 1121
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 1122
    .line 1123
    .line 1124
    move-result v2

    .line 1125
    int-to-float v2, v2

    .line 1126
    div-float/2addr v1, v2

    .line 1127
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1128
    .line 1129
    cmpl-float v2, v1, v2

    .line 1130
    .line 1131
    if-lez v2, :cond_35

    .line 1132
    .line 1133
    new-instance v2, Landroid/graphics/Rect;

    .line 1134
    .line 1135
    iget v3, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtSize:I

    .line 1136
    .line 1137
    int-to-float v4, v3

    .line 1138
    mul-float/2addr v4, v1

    .line 1139
    float-to-int v1, v4

    .line 1140
    const/4 v4, 0x0

    .line 1141
    invoke-direct {v2, v4, v4, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1142
    .line 1143
    .line 1144
    goto :goto_1e

    .line 1145
    :cond_35
    const/4 v4, 0x0

    .line 1146
    new-instance v2, Landroid/graphics/Rect;

    .line 1147
    .line 1148
    iget v3, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtSize:I

    .line 1149
    .line 1150
    int-to-float v5, v3

    .line 1151
    div-float/2addr v5, v1

    .line 1152
    float-to-int v1, v5

    .line 1153
    invoke-direct {v2, v4, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1154
    .line 1155
    .line 1156
    :goto_1e
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 1157
    .line 1158
    .line 1159
    move-result v1

    .line 1160
    iget v3, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtSize:I

    .line 1161
    .line 1162
    if-gt v1, v3, :cond_36

    .line 1163
    .line 1164
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 1165
    .line 1166
    .line 1167
    move-result v1

    .line 1168
    iget v3, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtSize:I

    .line 1169
    .line 1170
    if-le v1, v3, :cond_37

    .line 1171
    .line 1172
    :cond_36
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 1173
    .line 1174
    .line 1175
    move-result v1

    .line 1176
    iget v3, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtSize:I

    .line 1177
    .line 1178
    sub-int/2addr v1, v3

    .line 1179
    int-to-float v1, v1

    .line 1180
    const/high16 v3, 0x40000000    # 2.0f

    .line 1181
    .line 1182
    div-float/2addr v1, v3

    .line 1183
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 1184
    .line 1185
    .line 1186
    move-result v4

    .line 1187
    iget v5, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtSize:I

    .line 1188
    .line 1189
    sub-int/2addr v4, v5

    .line 1190
    int-to-float v4, v4

    .line 1191
    div-float/2addr v4, v3

    .line 1192
    neg-float v1, v1

    .line 1193
    float-to-int v1, v1

    .line 1194
    neg-float v3, v4

    .line 1195
    float-to-int v3, v3

    .line 1196
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1197
    .line 1198
    .line 1199
    :cond_37
    invoke-virtual {v11, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1200
    .line 1201
    .line 1202
    :goto_1f
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1203
    .line 1204
    .line 1205
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 1206
    .line 1207
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1208
    .line 1209
    .line 1210
    goto :goto_20

    .line 1211
    :cond_38
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v1

    .line 1215
    const v2, 0x7f081111

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v1

    .line 1222
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1223
    .line 1224
    .line 1225
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 1226
    .line 1227
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1228
    .line 1229
    .line 1230
    :cond_39
    :goto_20
    iget v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundColor:I

    .line 1231
    .line 1232
    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 1233
    .line 1234
    iget-object v1, v1, Lcom/android/systemui/media/SecPlayerViewHolder;->albumThumbnail:Landroid/widget/ImageView;

    .line 1235
    .line 1236
    if-nez v1, :cond_3a

    .line 1237
    .line 1238
    goto :goto_21

    .line 1239
    :cond_3a
    const/4 v2, 0x3

    .line 1240
    new-array v2, v2, [F

    .line 1241
    .line 1242
    invoke-static {v0, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1243
    .line 1244
    .line 1245
    aget v0, v2, v10

    .line 1246
    .line 1247
    const/4 v2, 0x0

    .line 1248
    cmpg-float v2, v2, v0

    .line 1249
    .line 1250
    if-gtz v2, :cond_3b

    .line 1251
    .line 1252
    float-to-double v2, v0

    .line 1253
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 1254
    .line 1255
    cmpg-double v0, v2, v4

    .line 1256
    .line 1257
    if-gez v0, :cond_3b

    .line 1258
    .line 1259
    const v0, 0x7f080f81

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v12, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v0

    .line 1266
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1267
    .line 1268
    .line 1269
    goto :goto_21

    .line 1270
    :cond_3b
    const v0, 0x7f080f80

    .line 1271
    .line 1272
    .line 1273
    invoke-virtual {v12, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v0

    .line 1277
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1278
    .line 1279
    .line 1280
    :goto_21
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 1281
    .line 1282
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandIcon:Landroid/widget/ImageView;

    .line 1283
    .line 1284
    if-eqz v0, :cond_3d

    .line 1285
    .line 1286
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/SecMediaControlPanel;->expandIconNeedToShow()Z

    .line 1287
    .line 1288
    .line 1289
    move-result v1

    .line 1290
    if-eqz v1, :cond_3c

    .line 1291
    .line 1292
    const/4 v4, 0x0

    .line 1293
    goto :goto_22

    .line 1294
    :cond_3c
    move/from16 v4, v19

    .line 1295
    .line 1296
    :goto_22
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1297
    .line 1298
    .line 1299
    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1300
    .line 1301
    .line 1302
    :cond_3d
    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateExpandAnimator()V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateResources()V

    .line 1306
    .line 1307
    .line 1308
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 1309
    .line 1310
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportArtwork()Z

    .line 1311
    .line 1312
    .line 1313
    move-result v0

    .line 1314
    if-nez v0, :cond_3e

    .line 1315
    .line 1316
    goto :goto_24

    .line 1317
    :cond_3e
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/controls/models/player/MediaData;->hashCode()I

    .line 1318
    .line 1319
    .line 1320
    move-result v10

    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1322
    .line 1323
    const-string v1, "MediaControlPanel#bindArtworkAndColors<"

    .line 1324
    .line 1325
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1326
    .line 1327
    .line 1328
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    .line 1330
    .line 1331
    move-object/from16 v1, v25

    .line 1332
    .line 1333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v6

    .line 1340
    invoke-static {v6, v10}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 1341
    .line 1342
    .line 1343
    iget v5, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mArtworkNextBindRequestId:I

    .line 1344
    .line 1345
    add-int/lit8 v0, v5, 0x1

    .line 1346
    .line 1347
    iput v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mArtworkNextBindRequestId:I

    .line 1348
    .line 1349
    if-eqz v16, :cond_3f

    .line 1350
    .line 1351
    const/4 v0, 0x0

    .line 1352
    iput-boolean v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mIsArtworkBound:Z

    .line 1353
    .line 1354
    :cond_3f
    iget v4, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mWidth:I

    .line 1355
    .line 1356
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 1357
    .line 1358
    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v0

    .line 1362
    invoke-virtual {v0}, Landroid/widget/ImageView;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v0

    .line 1366
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 1367
    .line 1368
    invoke-virtual {v0, v4, v4}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 1369
    .line 1370
    .line 1371
    new-instance v9, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;

    .line 1372
    .line 1373
    move-object v0, v9

    .line 1374
    move-object/from16 v1, p0

    .line 1375
    .line 1376
    move-object/from16 v2, p1

    .line 1377
    .line 1378
    move v3, v4

    .line 1379
    move v7, v10

    .line 1380
    move/from16 v8, v16

    .line 1381
    .line 1382
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/controls/models/player/MediaData;IIILjava/lang/String;IZ)V

    .line 1383
    .line 1384
    .line 1385
    invoke-interface {v14, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1386
    .line 1387
    .line 1388
    :goto_24
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1389
    .line 1390
    .line 1391
    return-void
.end method

.method public final bindButtonAndVisible(ILcom/android/systemui/media/controls/models/player/MediaAction;ZILjava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p6}, Lcom/android/systemui/media/SecPlayerViewHolder;->getActionButton(IZ)Landroid/widget/ImageButton;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p6, 0x0

    .line 8
    if-eqz p3, :cond_4

    .line 9
    .line 10
    new-instance v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;

    .line 11
    .line 12
    invoke-direct {v0, p0, p4, p5, p1}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;ILjava/lang/String;Landroid/widget/ImageButton;)V

    .line 13
    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p2, Lcom/android/systemui/media/controls/models/player/MediaAction;->icon:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    instance-of p4, p0, Landroid/graphics/drawable/Animatable;

    .line 33
    .line 34
    if-eqz p4, :cond_1

    .line 35
    .line 36
    move-object p4, p0

    .line 37
    check-cast p4, Landroid/graphics/drawable/Animatable;

    .line 38
    .line 39
    invoke-interface {p4}, Landroid/graphics/drawable/Animatable;->start()V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p0, p2, Lcom/android/systemui/media/controls/models/player/MediaAction;->contentDescription:Ljava/lang/CharSequence;

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p2, Lcom/android/systemui/media/controls/models/player/MediaAction;->action:Ljava/lang/Runnable;

    .line 51
    .line 52
    if-nez p0, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1, p6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/4 p2, 0x1

    .line 59
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 60
    .line 61
    .line 62
    new-instance p2, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;

    .line 63
    .line 64
    const/4 p4, 0x3

    .line 65
    invoke-direct {p2, v0, p1, p4, p0}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_0
    if-eqz p3, :cond_5

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_5
    const/16 p6, 0x8

    .line 75
    .line 76
    :goto_1
    invoke-virtual {p1, p6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final calculateSongTitleWidth()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v2, 0x7f070ebf

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mWidth:I

    .line 19
    .line 20
    int-to-float v2, v2

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const v4, 0x7f070ebc

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    mul-float/2addr v3, v2

    .line 33
    float-to-int v2, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const v2, 0x7f070ebe

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const v3, 0x7f070ebb

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsEnabled:Z

    .line 58
    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    iget v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumCollapsed:I

    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumCollapsed:I

    .line 67
    .line 68
    :goto_1
    mul-int/2addr v0, v3

    .line 69
    add-int/lit8 v3, v3, -0x1

    .line 70
    .line 71
    mul-int/2addr v3, v2

    .line 72
    add-int/2addr v3, v0

    .line 73
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const v2, 0x7f070eb5

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    add-int/2addr v0, v3

    .line 85
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const v3, 0x7f070ed7

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const v4, 0x7f070e32

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    mul-int/lit8 v3, v3, 0x2

    .line 108
    .line 109
    add-int/2addr v3, v2

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v4, "budsEnabled = "

    .line 113
    .line 114
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-boolean v4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsEnabled:Z

    .line 118
    .line 119
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v4, ", mActionButtonNumCollapsed = "

    .line 123
    .line 124
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget v4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumCollapsed:I

    .line 128
    .line 129
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v4, ", mActionButtonNumExpand = "

    .line 133
    .line 134
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget v4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    .line 138
    .line 139
    const-string v5, "MediaControlPanel"

    .line 140
    .line 141
    invoke-static {v2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mWidth:I

    .line 145
    .line 146
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    const v5, 0x7f070eb3

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    add-int/2addr v4, v0

    .line 158
    add-int/2addr v4, v3

    .line 159
    sub-int/2addr v2, v4

    .line 160
    iput v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthCollapsed:I

    .line 161
    .line 162
    iget v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mWidth:I

    .line 163
    .line 164
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const v2, 0x7f070e22

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    mul-int/lit8 v1, v1, 0x2

    .line 176
    .line 177
    sub-int/2addr v0, v1

    .line 178
    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthExpand:I

    .line 179
    .line 180
    return-void
.end method

.method public final expandIconNeedToShow()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/ConfigurationState;->getValue(Lcom/android/systemui/util/ConfigurationState$ConfigurationField;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 27
    .line 28
    if-eq p0, v1, :cond_1

    .line 29
    .line 30
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 31
    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 36
    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    :goto_0
    move v1, v3

    .line 40
    :cond_1
    return v1
.end method

.method public final getPlayerExpandedFraction()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/high16 p0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const v2, 0x7f070ed2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const v2, 0x7f070ed1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mHeight:I

    .line 44
    .line 45
    sub-int/2addr p0, v0

    .line 46
    int-to-float p0, p0

    .line 47
    sub-int/2addr v1, v0

    .line 48
    int-to-float v0, v1

    .line 49
    div-float/2addr p0, v0

    .line 50
    return p0
.end method

.method public final isDisabledPlayer()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-boolean p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mFullyExpanded:Z

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
.end method

.method public final isPlaying()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 v1, 0x3

    .line 19
    if-ne p0, v1, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    :cond_2
    :goto_0
    return v0
.end method

.method public final removePlayer()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Removing player from QSPanel : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/systemui/media/SecPlayerViewHolder;->appName:Landroid/widget/TextView;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "MediaControlPanel"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mQSMediaPlayerBarCallback:Lcom/android/systemui/media/SecMediaHost$1;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/systemui/media/SecMediaHost$1;->this$0:Lcom/android/systemui/media/SecMediaHost;

    .line 39
    .line 40
    iget-object v2, v1, Lcom/android/systemui/media/SecMediaHost;->mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 41
    .line 42
    invoke-virtual {v2, p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->onMediaDataRemoved(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, v0, Lcom/android/systemui/media/SecMediaHost$1;->val$playerData:Lcom/android/systemui/media/SecMediaPlayerData;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayersSize()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-gtz p0, :cond_2

    .line 52
    .line 53
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Lcom/android/systemui/media/SecMediaHost;->onMediaVisibilityChanged(Ljava/lang/Boolean;)V

    .line 56
    .line 57
    .line 58
    iget-object p0, v1, Lcom/android/systemui/media/SecMediaHost;->mMediaBarCallback:Lcom/android/systemui/qs/bar/BarController$4;

    .line 59
    .line 60
    if-nez p0, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarController$4;->onBarHeightChanged()V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_1
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsEmptyPlayer:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 p0, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setFraction(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    cmpl-float v0, p1, v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateExpandAnimator()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->updateActionButtonEnabled(F)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iput p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mFraction:F

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateSeekBarVisibility()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->calculateSongTitleWidth()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->setSongTitleWidth(F)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mOutputSwitcherAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandIconRotationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 41
    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionXListAnimator:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/android/systemui/qs/TouchAnimator;

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandContentsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 70
    .line 71
    .line 72
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandGutsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 73
    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 77
    .line 78
    .line 79
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 80
    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 84
    .line 85
    .line 86
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 87
    .line 88
    if-eqz v0, :cond_8

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 91
    .line 92
    .line 93
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mPrimaryTextColorAnimator:Landroid/animation/ValueAnimator;

    .line 94
    .line 95
    if-eqz v0, :cond_9

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 98
    .line 99
    .line 100
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSecondaryTextColorAnimator:Landroid/animation/ValueAnimator;

    .line 101
    .line 102
    if-eqz v0, :cond_a

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 105
    .line 106
    .line 107
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mTertiaryTextColorAnimator:Landroid/animation/ValueAnimator;

    .line 108
    .line 109
    if-eqz v0, :cond_b

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 112
    .line 113
    .line 114
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandButtonColorAnimator:Landroid/animation/ValueAnimator;

    .line 115
    .line 116
    if-eqz v0, :cond_c

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 119
    .line 120
    .line 121
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemoveButtonColorAnimator:Landroid/animation/ValueAnimator;

    .line 122
    .line 123
    if-eqz p0, :cond_d

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 126
    .line 127
    .line 128
    :cond_d
    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/android/systemui/media/SecSeekBarViewModel$listening$1;

    .line 16
    .line 17
    invoke-direct {v1, v0, p1}, Lcom/android/systemui/media/SecSeekBarViewModel$listening$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    .line 21
    .line 22
    check-cast v0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->player:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->options:Landroid/view/View;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundColor:I

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/SecMediaControlPanel;->setBackgroundColor(I)V

    .line 53
    .line 54
    .line 55
    :cond_3
    if-eqz p1, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateExpandAnimator()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateOutputSwitcherVisibility()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->calculateSongTitleWidth()V

    .line 64
    .line 65
    .line 66
    iget-boolean p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpanded:Z

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    const/high16 p1, 0x3f800000    # 1.0f

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    const/4 p1, 0x0

    .line 74
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->setSongTitleWidth(F)V

    .line 75
    .line 76
    .line 77
    :cond_5
    return-void
.end method

.method public final setSongTitleWidth(F)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthCollapsed:I

    .line 2
    .line 3
    if-lez v0, :cond_3

    .line 4
    .line 5
    iget v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthExpand:I

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->titleArtistView:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 22
    .line 23
    float-to-double v1, p1

    .line 24
    const-wide v3, 0x3fe999999999999aL    # 0.8

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    cmpl-double p1, v1, v3

    .line 30
    .line 31
    if-lez p1, :cond_2

    .line 32
    .line 33
    iget p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthExpand:I

    .line 34
    .line 35
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthCollapsed:I

    .line 39
    .line 40
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 41
    .line 42
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->titleArtistView:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SecMediaControlPanel{mPlayerKey=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', this="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 p0, 0x7d

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final updateActionButtonEnabled(F)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->isDisabledPlayer()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    sget-object v2, Lcom/android/systemui/media/SecMediaControlPanel;->ACTION_IDS:[I

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move p1, v4

    .line 13
    :goto_0
    if-ge p1, v1, :cond_0

    .line 14
    .line 15
    aget v0, v2, p1

    .line 16
    .line 17
    iget-object v5, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 18
    .line 19
    invoke-virtual {v5, v0, v4}, Lcom/android/systemui/media/SecPlayerViewHolder;->getActionButton(IZ)Landroid/widget/ImageButton;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 27
    .line 28
    invoke-virtual {v5, v0, v3}, Lcom/android/systemui/media/SecPlayerViewHolder;->getActionButton(IZ)Landroid/widget/ImageButton;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void

    .line 39
    :cond_1
    move v0, v4

    .line 40
    :goto_1
    if-ge v0, v1, :cond_3

    .line 41
    .line 42
    aget v5, v2, v0

    .line 43
    .line 44
    iget-object v6, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 45
    .line 46
    invoke-virtual {v6, v5, v4}, Lcom/android/systemui/media/SecPlayerViewHolder;->getActionButton(IZ)Landroid/widget/ImageButton;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v6, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v6, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 54
    .line 55
    invoke-virtual {v6, v5, v3}, Lcom/android/systemui/media/SecPlayerViewHolder;->getActionButton(IZ)Landroid/widget/ImageButton;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const/4 v6, 0x0

    .line 60
    cmpl-float v6, p1, v6

    .line 61
    .line 62
    if-eqz v6, :cond_2

    .line 63
    .line 64
    move v6, v3

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    move v6, v4

    .line 67
    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    return-void
.end method

.method public final updateBudsButton()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportBudsButton()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonCollapsed:Landroid/widget/ImageButton;

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getBudsEnable()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput-boolean v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsEnabled:Z

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v1, "onChanged(): buds enabled: "

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsEnabled:Z

    .line 35
    .line 36
    const-string v2, "MediaControlPanel"

    .line 37
    .line 38
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsEnabled:Z

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsDetailCloseRunnable:Ljava/lang/Runnable;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonCollapsed:Landroid/widget/ImageButton;

    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsEnabled:Z

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    const/16 v3, 0x8

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    move v1, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move v1, v3

    .line 62
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    .line 66
    .line 67
    iget-boolean v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsEnabled:Z

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move v2, v3

    .line 73
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonCollapsed:Landroid/widget/ImageButton;

    .line 77
    .line 78
    iget-boolean v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsEnabled:Z

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    .line 84
    .line 85
    iget-boolean p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsEnabled:Z

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_2
    return-void
.end method

.method public final updateDeviceName()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->seamlessText:Landroid/widget/TextView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v2, "updateDeviceName() : deviceName = "

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceName:Ljava/lang/CharSequence;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ", mDualPlayModeEnabled = "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-boolean v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeEnabled:Z

    .line 28
    .line 29
    const-string v3, "MediaControlPanel"

    .line 30
    .line 31
    invoke-static {v1, v2, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeEnabled:Z

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    const v1, 0x7f130f63

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceName:Ljava/lang/CharSequence;

    .line 49
    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    const v1, 0x7f130f44

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceName:Ljava/lang/CharSequence;

    .line 65
    .line 66
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    const v1, 0x7f070ec6

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateFontSize(ILandroid/widget/TextView;)V

    .line 73
    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportBudsButton()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonCollapsed:Landroid/widget/ImageButton;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceName:Ljava/lang/CharSequence;

    .line 91
    .line 92
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const v3, 0x7f130f59

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceName:Ljava/lang/CharSequence;

    .line 109
    .line 110
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {v2, v3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final updateExpandAnimator()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 2
    .line 3
    if-eqz v0, :cond_11

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionXListAnimator:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->albumThumbnail:Landroid/widget/ImageView;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const-string/jumbo v2, "translationX"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v3, "translationY"

    .line 29
    .line 30
    .line 31
    const-string v4, "alpha"

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    iget-object v7, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    const/4 v8, 0x2

    .line 38
    if-eqz v0, :cond_9

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    const/16 v10, 0x8

    .line 45
    .line 46
    if-eq v9, v10, :cond_1

    .line 47
    .line 48
    move v9, v5

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v9, v6

    .line 51
    :goto_0
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    const v11, 0x7f070e21

    .line 56
    .line 57
    .line 58
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    iget v11, v11, Landroid/content/res/Configuration;->screenLayout:I

    .line 71
    .line 72
    and-int/lit16 v11, v11, 0xc0

    .line 73
    .line 74
    const/16 v12, 0x80

    .line 75
    .line 76
    if-ne v11, v12, :cond_2

    .line 77
    .line 78
    move v11, v5

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move v11, v6

    .line 81
    :goto_1
    if-eqz v11, :cond_3

    .line 82
    .line 83
    neg-int v10, v10

    .line 84
    :cond_3
    new-instance v11, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 85
    .line 86
    invoke-direct {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 87
    .line 88
    .line 89
    new-array v12, v8, [F

    .line 90
    .line 91
    fill-array-data v12, :array_0

    .line 92
    .line 93
    .line 94
    invoke-virtual {v11, v0, v4, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-array v12, v8, [F

    .line 104
    .line 105
    const/4 v13, 0x0

    .line 106
    aput v13, v12, v6

    .line 107
    .line 108
    iget-boolean v14, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsEmptyPlayer:Z

    .line 109
    .line 110
    if-eqz v14, :cond_4

    .line 111
    .line 112
    move v14, v13

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    const/high16 v14, 0x3f800000    # 1.0f

    .line 115
    .line 116
    :goto_2
    aput v14, v12, v5

    .line 117
    .line 118
    invoke-virtual {v11, v0, v4, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    new-array v12, v8, [F

    .line 128
    .line 129
    iget-boolean v14, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsEmptyPlayer:Z

    .line 130
    .line 131
    if-eqz v14, :cond_5

    .line 132
    .line 133
    move v14, v13

    .line 134
    goto :goto_3

    .line 135
    :cond_5
    const/high16 v14, -0x3db80000    # -50.0f

    .line 136
    .line 137
    :goto_3
    aput v14, v12, v6

    .line 138
    .line 139
    aput v13, v12, v5

    .line 140
    .line 141
    invoke-virtual {v11, v0, v3, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 142
    .line 143
    .line 144
    if-eqz v9, :cond_8

    .line 145
    .line 146
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->titleArtistView:Landroid/widget/LinearLayout;

    .line 149
    .line 150
    new-array v9, v8, [F

    .line 151
    .line 152
    aput v13, v9, v6

    .line 153
    .line 154
    neg-int v10, v10

    .line 155
    int-to-float v10, v10

    .line 156
    aput v10, v9, v5

    .line 157
    .line 158
    invoke-virtual {v11, v0, v2, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 162
    .line 163
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 164
    .line 165
    if-eqz v0, :cond_6

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_6
    move-object v0, v1

    .line 169
    :goto_4
    new-array v9, v8, [F

    .line 170
    .line 171
    aput v13, v9, v6

    .line 172
    .line 173
    aput v10, v9, v5

    .line 174
    .line 175
    invoke-virtual {v11, v0, v2, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 179
    .line 180
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->seamlessText:Landroid/widget/TextView;

    .line 181
    .line 182
    if-eqz v0, :cond_7

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_7
    move-object v0, v1

    .line 186
    :goto_5
    new-array v9, v8, [F

    .line 187
    .line 188
    aput v13, v9, v6

    .line 189
    .line 190
    aput v10, v9, v5

    .line 191
    .line 192
    invoke-virtual {v11, v0, v2, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 196
    .line 197
    .line 198
    :cond_8
    invoke-virtual {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iput-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 203
    .line 204
    :cond_9
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 205
    .line 206
    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 207
    .line 208
    .line 209
    iget-object v9, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 210
    .line 211
    iget-object v9, v9, Lcom/android/systemui/media/SecPlayerViewHolder;->mediaOutputText:Landroid/widget/TextView;

    .line 212
    .line 213
    if-eqz v9, :cond_a

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_a
    move-object v9, v1

    .line 217
    :goto_6
    new-array v10, v8, [F

    .line 218
    .line 219
    fill-array-data v10, :array_1

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v9, v4, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 223
    .line 224
    .line 225
    iget-object v9, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 226
    .line 227
    iget-object v9, v9, Lcom/android/systemui/media/SecPlayerViewHolder;->mediaOutputText:Landroid/widget/TextView;

    .line 228
    .line 229
    if-eqz v9, :cond_b

    .line 230
    .line 231
    move-object v1, v9

    .line 232
    :cond_b
    new-array v9, v8, [F

    .line 233
    .line 234
    fill-array-data v9, :array_2

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1, v2, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 238
    .line 239
    .line 240
    new-instance v1, Lcom/android/systemui/media/SecMediaControlPanel$5;

    .line 241
    .line 242
    invoke-direct {v1, p0}, Lcom/android/systemui/media/SecMediaControlPanel$5;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 243
    .line 244
    .line 245
    iput-object v1, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 246
    .line 247
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iput-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mOutputSwitcherAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 252
    .line 253
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 254
    .line 255
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandIcon:Landroid/widget/ImageView;

    .line 256
    .line 257
    if-eqz v0, :cond_c

    .line 258
    .line 259
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 260
    .line 261
    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 262
    .line 263
    .line 264
    new-array v2, v8, [F

    .line 265
    .line 266
    fill-array-data v2, :array_3

    .line 267
    .line 268
    .line 269
    const-string/jumbo v9, "rotation"

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v0, v9, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    iput-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandIconRotationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 280
    .line 281
    :cond_c
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 282
    .line 283
    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 284
    .line 285
    .line 286
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 287
    .line 288
    invoke-virtual {v2}, Lcom/android/systemui/media/SecPlayerViewHolder;->getCollapsedActionButtonsContainer()Landroid/widget/LinearLayout;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    new-array v9, v8, [F

    .line 293
    .line 294
    fill-array-data v9, :array_4

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1, v2, v4, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 298
    .line 299
    .line 300
    new-instance v2, Lcom/android/systemui/media/SecMediaControlPanel$6;

    .line 301
    .line 302
    invoke-direct {v2, p0}, Lcom/android/systemui/media/SecMediaControlPanel$6;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 303
    .line 304
    .line 305
    iput-object v2, v1, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 306
    .line 307
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    iput-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 312
    .line 313
    const v1, 0x7f0603d6

    .line 314
    .line 315
    .line 316
    invoke-virtual {v7, v1}, Landroid/content/Context;->getColor(I)I

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    const v2, 0x7f0603d9

    .line 321
    .line 322
    .line 323
    invoke-virtual {v7, v2}, Landroid/content/Context;->getColor(I)I

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    const v9, 0x7f0603db

    .line 328
    .line 329
    .line 330
    invoke-virtual {v7, v9}, Landroid/content/Context;->getColor(I)I

    .line 331
    .line 332
    .line 333
    move-result v9

    .line 334
    const v10, 0x7f0603ca

    .line 335
    .line 336
    .line 337
    invoke-virtual {v7, v10}, Landroid/content/Context;->getColor(I)I

    .line 338
    .line 339
    .line 340
    move-result v10

    .line 341
    const v11, 0x7f0603cb

    .line 342
    .line 343
    .line 344
    invoke-virtual {v7, v11}, Landroid/content/Context;->getColor(I)I

    .line 345
    .line 346
    .line 347
    move-result v11

    .line 348
    const v12, 0x7f0603cc

    .line 349
    .line 350
    .line 351
    invoke-virtual {v7, v12}, Landroid/content/Context;->getColor(I)I

    .line 352
    .line 353
    .line 354
    move-result v12

    .line 355
    new-instance v13, Landroid/animation/ArgbEvaluator;

    .line 356
    .line 357
    invoke-direct {v13}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 358
    .line 359
    .line 360
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    move-result-object v10

    .line 368
    filled-new-array {v1, v10}, [Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-static {v13, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    iput-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mPrimaryTextColorAnimator:Landroid/animation/ValueAnimator;

    .line 377
    .line 378
    new-instance v10, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda0;

    .line 379
    .line 380
    invoke-direct {v10, p0, v6}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 384
    .line 385
    .line 386
    new-instance v1, Landroid/animation/ArgbEvaluator;

    .line 387
    .line 388
    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    .line 397
    .line 398
    move-result-object v10

    .line 399
    filled-new-array {v2, v10}, [Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    iput-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSecondaryTextColorAnimator:Landroid/animation/ValueAnimator;

    .line 408
    .line 409
    new-instance v2, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda0;

    .line 410
    .line 411
    invoke-direct {v2, p0, v5}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 415
    .line 416
    .line 417
    new-instance v1, Landroid/animation/ArgbEvaluator;

    .line 418
    .line 419
    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 420
    .line 421
    .line 422
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 427
    .line 428
    .line 429
    move-result-object v9

    .line 430
    filled-new-array {v2, v9}, [Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    iput-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mTertiaryTextColorAnimator:Landroid/animation/ValueAnimator;

    .line 439
    .line 440
    new-instance v2, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda0;

    .line 441
    .line 442
    invoke-direct {v2, p0, v8}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 446
    .line 447
    .line 448
    if-eqz v0, :cond_d

    .line 449
    .line 450
    new-instance v1, Landroid/animation/ArgbEvaluator;

    .line 451
    .line 452
    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 453
    .line 454
    .line 455
    const v2, 0x7f0603dc

    .line 456
    .line 457
    .line 458
    invoke-virtual {v7, v2}, Landroid/content/Context;->getColor(I)I

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    const v9, 0x7f0603dd

    .line 467
    .line 468
    .line 469
    invoke-virtual {v7, v9}, Landroid/content/Context;->getColor(I)I

    .line 470
    .line 471
    .line 472
    move-result v9

    .line 473
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 474
    .line 475
    .line 476
    move-result-object v9

    .line 477
    filled-new-array {v2, v9}, [Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    iput-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandButtonColorAnimator:Landroid/animation/ValueAnimator;

    .line 486
    .line 487
    new-instance v2, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda0;

    .line 488
    .line 489
    const/4 v9, 0x4

    .line 490
    invoke-direct {v2, v0, v9}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 494
    .line 495
    .line 496
    :cond_d
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 497
    .line 498
    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 499
    .line 500
    .line 501
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 502
    .line 503
    iget-object v1, v1, Lcom/android/systemui/media/SecPlayerViewHolder;->player:Landroid/widget/LinearLayout;

    .line 504
    .line 505
    if-eqz v1, :cond_e

    .line 506
    .line 507
    const v2, 0x7f0a0067

    .line 508
    .line 509
    .line 510
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    new-array v2, v8, [F

    .line 515
    .line 516
    fill-array-data v2, :array_5

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 520
    .line 521
    .line 522
    new-array v2, v8, [F

    .line 523
    .line 524
    fill-array-data v2, :array_6

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 528
    .line 529
    .line 530
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 531
    .line 532
    iget-object v1, v1, Lcom/android/systemui/media/SecPlayerViewHolder;->progressInfo:Landroid/widget/LinearLayout;

    .line 533
    .line 534
    if-eqz v1, :cond_e

    .line 535
    .line 536
    new-array v2, v8, [F

    .line 537
    .line 538
    fill-array-data v2, :array_7

    .line 539
    .line 540
    .line 541
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 542
    .line 543
    .line 544
    new-array v2, v8, [F

    .line 545
    .line 546
    fill-array-data v2, :array_8

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 550
    .line 551
    .line 552
    :cond_e
    const v1, 0x3f19999a    # 0.6f

    .line 553
    .line 554
    .line 555
    iput v1, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 556
    .line 557
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    iput-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandContentsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 562
    .line 563
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 564
    .line 565
    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 566
    .line 567
    .line 568
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 569
    .line 570
    iget-object v1, v1, Lcom/android/systemui/media/SecPlayerViewHolder;->remove:Landroid/view/View;

    .line 571
    .line 572
    if-eqz v1, :cond_f

    .line 573
    .line 574
    new-array v2, v8, [F

    .line 575
    .line 576
    iget v4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemoveButtonCollapsed:I

    .line 577
    .line 578
    int-to-float v4, v4

    .line 579
    aput v4, v2, v6

    .line 580
    .line 581
    iget v4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemoveButtonExpanded:I

    .line 582
    .line 583
    int-to-float v4, v4

    .line 584
    aput v4, v2, v5

    .line 585
    .line 586
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 587
    .line 588
    .line 589
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 590
    .line 591
    iget-object v1, v1, Lcom/android/systemui/media/SecPlayerViewHolder;->optionButtons:Landroid/view/View;

    .line 592
    .line 593
    if-eqz v1, :cond_10

    .line 594
    .line 595
    new-array v2, v8, [F

    .line 596
    .line 597
    iget v4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mOptionButtonCollapsed:I

    .line 598
    .line 599
    int-to-float v4, v4

    .line 600
    aput v4, v2, v6

    .line 601
    .line 602
    iget v4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mOptionButtonExpanded:I

    .line 603
    .line 604
    int-to-float v4, v4

    .line 605
    aput v4, v2, v5

    .line 606
    .line 607
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 608
    .line 609
    .line 610
    :cond_10
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    iput-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandGutsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 615
    .line 616
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 617
    .line 618
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 619
    .line 620
    .line 621
    const v1, 0x7f0605b3

    .line 622
    .line 623
    .line 624
    invoke-virtual {v7, v1}, Landroid/content/Context;->getColor(I)I

    .line 625
    .line 626
    .line 627
    move-result v1

    .line 628
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    const v2, 0x7f0605b4

    .line 633
    .line 634
    .line 635
    invoke-virtual {v7, v2}, Landroid/content/Context;->getColor(I)I

    .line 636
    .line 637
    .line 638
    move-result v2

    .line 639
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v1

    .line 647
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    iput-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemoveButtonColorAnimator:Landroid/animation/ValueAnimator;

    .line 652
    .line 653
    new-instance v1, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda0;

    .line 654
    .line 655
    const/4 v2, 0x3

    .line 656
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateSeekBarVisibility()V

    .line 663
    .line 664
    .line 665
    :cond_11
    :goto_7
    return-void

    .line 666
    nop

    .line 667
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    :array_2
    .array-data 4
        0x41f00000    # 30.0f
        0x0
    .end array-data

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    :array_3
    .array-data 4
        0x43b40000    # 360.0f
        0x43340000    # 180.0f
    .end array-data

    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    :array_5
    .array-data 4
        -0x3db80000    # -50.0f
        0x0
    .end array-data

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    :array_7
    .array-data 4
        -0x3db80000    # -50.0f
        0x0
    .end array-data

    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final updateFontSize(ILandroid/widget/TextView;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaType;->getSupportFixedFontSize()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const p0, 0x3f4ccccd    # 0.8f

    .line 11
    .line 12
    .line 13
    const v0, 0x3fa66666    # 1.3f

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p1, p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final updateOutputSwitcherVisibility()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsEmptyPlayer:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mMediaDevicesAvailableOnTop:Z

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    :cond_1
    iget v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mFraction:F

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    cmpl-float v0, v0, v2

    .line 23
    .line 24
    if-lez v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    move v0, v1

    .line 29
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->mediaOutputText:Landroid/widget/TextView;

    .line 32
    .line 33
    if-eqz p0, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    const/4 p0, 0x0

    .line 37
    :goto_1
    if-eqz v0, :cond_4

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_4
    const/4 v1, 0x4

    .line 41
    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final updateResources()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportGuts()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const v1, 0x7f0603d6

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const v2, 0x7f0603d9

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const v3, 0x7f0603db

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const v4, 0x7f0603ca

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const v5, 0x7f0603cb

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const v6, 0x7f0603cc

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    iget-object v7, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 55
    .line 56
    iget-object v8, v7, Lcom/android/systemui/media/SecPlayerViewHolder;->collapsedActionButtons$delegate:Lkotlin/Lazy;

    .line 57
    .line 58
    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    check-cast v8, Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const/4 v10, 0x0

    .line 69
    :goto_0
    if-ge v10, v9, :cond_1

    .line 70
    .line 71
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->keyAt(I)I

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    check-cast v11, Landroid/widget/ImageButton;

    .line 79
    .line 80
    invoke-virtual {v11, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v10, v10, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object v8, v7, Lcom/android/systemui/media/SecPlayerViewHolder;->budsButtonCollapsed:Landroid/widget/ImageButton;

    .line 87
    .line 88
    const/4 v9, 0x0

    .line 89
    if-eqz v8, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move-object v8, v9

    .line 93
    :goto_1
    invoke-virtual {v8, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 94
    .line 95
    .line 96
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-virtual {v7}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 108
    .line 109
    .line 110
    const/16 v10, 0x4c

    .line 111
    .line 112
    invoke-virtual {v8, v10}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 117
    .line 118
    .line 119
    iget-object v7, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 120
    .line 121
    iget-boolean v8, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpanded:Z

    .line 122
    .line 123
    if-eqz v8, :cond_3

    .line 124
    .line 125
    move v1, v4

    .line 126
    :cond_3
    if-eqz v8, :cond_4

    .line 127
    .line 128
    move v2, v5

    .line 129
    :cond_4
    if-eqz v8, :cond_5

    .line 130
    .line 131
    move v3, v6

    .line 132
    :cond_5
    iget-object v4, v7, Lcom/android/systemui/media/SecPlayerViewHolder;->titleText:Landroid/widget/TextView;

    .line 133
    .line 134
    if-eqz v4, :cond_6

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    move-object v4, v9

    .line 138
    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v7, Lcom/android/systemui/media/SecPlayerViewHolder;->artistText:Landroid/widget/TextView;

    .line 142
    .line 143
    if-eqz v1, :cond_7

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_7
    move-object v1, v9

    .line 147
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v7, Lcom/android/systemui/media/SecPlayerViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 151
    .line 152
    if-eqz v1, :cond_8

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_8
    move-object v1, v9

    .line 156
    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v7, Lcom/android/systemui/media/SecPlayerViewHolder;->seamlessText:Landroid/widget/TextView;

    .line 160
    .line 161
    if-eqz v1, :cond_9

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_9
    move-object v1, v9

    .line 165
    :goto_5
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    .line 167
    .line 168
    const v1, 0x7f0605af

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    iput v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mGutsBackgroundColor:I

    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 182
    .line 183
    if-eqz v2, :cond_a

    .line 184
    .line 185
    const v3, 0x7f070eca

    .line 186
    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_a
    const v3, 0x7f070ec9

    .line 190
    .line 191
    .line 192
    :goto_6
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    iput v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mOptionButtonCollapsed:I

    .line 197
    .line 198
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    if-eqz v2, :cond_b

    .line 203
    .line 204
    const v3, 0x7f070ecc

    .line 205
    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_b
    const v3, 0x7f070ecb

    .line 209
    .line 210
    .line 211
    :goto_7
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    iput v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mOptionButtonExpanded:I

    .line 216
    .line 217
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-eqz v2, :cond_c

    .line 222
    .line 223
    const v3, 0x7f070ece

    .line 224
    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_c
    const v3, 0x7f070ecd

    .line 228
    .line 229
    .line 230
    :goto_8
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    iput v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemoveButtonCollapsed:I

    .line 235
    .line 236
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    if-eqz v2, :cond_d

    .line 241
    .line 242
    const v2, 0x7f070ed0

    .line 243
    .line 244
    .line 245
    goto :goto_9

    .line 246
    :cond_d
    const v2, 0x7f070ecf

    .line 247
    .line 248
    .line 249
    :goto_9
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    iput v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemoveButtonExpanded:I

    .line 254
    .line 255
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 256
    .line 257
    iget-object v1, v1, Lcom/android/systemui/media/SecPlayerViewHolder;->optionsAppTitle:Landroid/widget/TextView;

    .line 258
    .line 259
    if-eqz v1, :cond_e

    .line 260
    .line 261
    const v2, 0x7f0605b2

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    .line 270
    .line 271
    :cond_e
    const v1, 0x7f0605b0

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 279
    .line 280
    iget-object v2, v2, Lcom/android/systemui/media/SecPlayerViewHolder;->removeText:Landroid/widget/TextView;

    .line 281
    .line 282
    if-eqz v2, :cond_f

    .line 283
    .line 284
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    .line 286
    .line 287
    const v3, 0x7f080f82

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 295
    .line 296
    .line 297
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 298
    .line 299
    iget-object v2, v2, Lcom/android/systemui/media/SecPlayerViewHolder;->cancelText:Landroid/widget/TextView;

    .line 300
    .line 301
    if-eqz v2, :cond_10

    .line 302
    .line 303
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    .line 305
    .line 306
    const v1, 0x7f080ccc

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 314
    .line 315
    .line 316
    :cond_10
    const v1, 0x7f0605ae

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    iput v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundColor:I

    .line 324
    .line 325
    invoke-virtual {p0, v1}, Lcom/android/systemui/media/SecMediaControlPanel;->setBackgroundColor(I)V

    .line 326
    .line 327
    .line 328
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 329
    .line 330
    iget-object v1, v1, Lcom/android/systemui/media/SecPlayerViewHolder;->expandIcon:Landroid/widget/ImageView;

    .line 331
    .line 332
    if-eqz v1, :cond_12

    .line 333
    .line 334
    iget-boolean v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpanded:Z

    .line 335
    .line 336
    if-eqz v2, :cond_11

    .line 337
    .line 338
    const v2, 0x7f0603dd

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    goto :goto_a

    .line 346
    :cond_11
    const v2, 0x7f0603dc

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    :goto_a
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 354
    .line 355
    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 356
    .line 357
    .line 358
    :cond_12
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 359
    .line 360
    iget-object v1, v1, Lcom/android/systemui/media/SecPlayerViewHolder;->mediaOutputText:Landroid/widget/TextView;

    .line 361
    .line 362
    if-eqz v1, :cond_13

    .line 363
    .line 364
    move-object v9, v1

    .line 365
    :cond_13
    const v1, 0x7f080f6a

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 373
    .line 374
    .line 375
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 376
    .line 377
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->cancelText:Landroid/widget/TextView;

    .line 378
    .line 379
    if-eqz p0, :cond_14

    .line 380
    .line 381
    const/4 v0, 0x1

    .line 382
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 383
    .line 384
    .line 385
    :cond_14
    return-void
.end method

.method public final updateSeekBarVisibility()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->isDisabledPlayer()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mFraction:F

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    cmpl-float v2, v2, v3

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsEmptyPlayer:Z

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    move v1, v3

    .line 43
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const v1, 0x7f070e38

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, v0, v3, v0, v3}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final updateWidth()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x2ec

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const v2, 0x7f070e27

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNotificationSidePadding(Landroid/content/Context;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :goto_0
    invoke-static {v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    mul-int/lit8 v0, v0, 0x2

    .line 46
    .line 47
    sub-int v0, v1, v0

    .line 48
    .line 49
    :goto_1
    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mWidth:I

    .line 50
    .line 51
    return-void
.end method
