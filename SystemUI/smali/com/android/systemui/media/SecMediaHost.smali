.class public final Lcom/android/systemui/media/SecMediaHost;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public mBarState:I

.field public mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

.field public final mContext:Landroid/content/Context;

.field public mCurrentMediaData:Lcom/android/systemui/media/MediaDataFormat;

.field public mIsRTL:I

.field public mLocalListening:Z

.field public final mLogger:Lcom/android/systemui/log/MediaLogger;

.field public mMediaBarCallback:Lcom/android/systemui/qs/bar/BarController$4;

.field public final mMediaBluetoothHelper:Lcom/android/systemui/media/MediaBluetoothHelper;

.field public final mMediaControlPanelProvider:Ljavax/inject/Provider;

.field public final mMediaDataListener:Lcom/android/systemui/media/SecMediaHost$2;

.field public final mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

.field public final mMediaFrames:Ljava/util/HashMap;

.field public final mMediaPlayerData:Ljava/util/HashMap;

.field public final mMediaPlayerDataProvider:Ljavax/inject/Provider;

.field public final mOnLayoutChangeListeners:Ljava/util/HashMap;

.field public mOrientation:I

.field public mPagerMargin:I

.field public mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

.field public mPlayerNeedForceUpdate:Z

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public mUpdatePlayers:Z

.field public final mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

.field public final mVisibilityListeners:Ljava/util/ArrayList;

.field public final mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public mWidgetController:Lcom/android/systemui/media/CoverMusicWidgetController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/media/MediaBluetoothHelper;Lcom/android/systemui/log/MediaLogger;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/media/controls/pipeline/MediaDataManager;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/media/MediaBluetoothHelper;",
            "Lcom/android/systemui/log/MediaLogger;",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaFrames:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mOnLayoutChangeListeners:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/systemui/media/SecMediaHost;->mVisibilityListeners:Ljava/util/ArrayList;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput-boolean v1, p0, Lcom/android/systemui/media/SecMediaHost;->mUpdatePlayers:Z

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/android/systemui/media/SecMediaHost;->mPlayerNeedForceUpdate:Z

    .line 36
    .line 37
    new-instance v2, Lcom/android/systemui/media/SecMediaHost$2;

    .line 38
    .line 39
    invoke-direct {v2, p0}, Lcom/android/systemui/media/SecMediaHost$2;-><init>(Lcom/android/systemui/media/SecMediaHost;)V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaDataListener:Lcom/android/systemui/media/SecMediaHost$2;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    iput-object p8, p0, Lcom/android/systemui/media/SecMediaHost;->mLogger:Lcom/android/systemui/log/MediaLogger;

    .line 47
    .line 48
    iput-object p7, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaBluetoothHelper:Lcom/android/systemui/media/MediaBluetoothHelper;

    .line 49
    .line 50
    iput-object p6, p0, Lcom/android/systemui/media/SecMediaHost;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 51
    .line 52
    invoke-interface {p6, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 53
    .line 54
    .line 55
    iput-object p5, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerDataProvider:Ljavax/inject/Provider;

    .line 56
    .line 57
    iput-object p9, p0, Lcom/android/systemui/media/SecMediaHost;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 58
    .line 59
    iput-object p10, p0, Lcom/android/systemui/media/SecMediaHost;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 60
    .line 61
    new-instance p5, Lcom/android/systemui/media/ViewPagerHelper;

    .line 62
    .line 63
    new-instance p6, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda1;

    .line 64
    .line 65
    invoke-direct {p6, p0, v1}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    .line 66
    .line 67
    .line 68
    new-instance p7, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda2;

    .line 69
    .line 70
    invoke-direct {p7, p0, v1}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    .line 71
    .line 72
    .line 73
    new-instance p8, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda3;

    .line 74
    .line 75
    invoke-direct {p8, p0, v1}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    .line 76
    .line 77
    .line 78
    new-instance p9, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda4;

    .line 79
    .line 80
    invoke-direct {p9, v1, v0}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda4;-><init>(ILjava/util/HashMap;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p5, p6, p7, p8, p9}, Lcom/android/systemui/media/ViewPagerHelper;-><init>(Ljava/util/function/BiFunction;Ljava/util/function/IntSupplier;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 84
    .line 85
    .line 86
    iput-object p5, p0, Lcom/android/systemui/media/SecMediaHost;->mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

    .line 87
    .line 88
    check-cast p3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 89
    .line 90
    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iput-object p4, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaControlPanelProvider:Ljavax/inject/Provider;

    .line 94
    .line 95
    iput-object p2, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 96
    .line 97
    iget-object p2, p2, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;

    .line 98
    .line 99
    iget-object p2, p2, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->_listeners:Ljava/util/Set;

    .line 100
    .line 101
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const p2, 0x7f070eda

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    iput p1, p0, Lcom/android/systemui/media/SecMediaHost;->mPagerMargin:I

    .line 116
    .line 117
    return-void
.end method

.method public static iteratePlayers(Lcom/android/systemui/media/SecMediaPlayerData;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final addMediaFrame(Landroid/view/View;Lcom/android/systemui/media/MediaType;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v15, p2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/systemui/media/SecMediaHost;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    move-object v14, v2

    .line 14
    check-cast v14, Landroid/view/ViewGroup;

    .line 15
    .line 16
    const v4, 0x7f0d035b

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v4, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    iget-object v3, v0, Lcom/android/systemui/media/SecMediaHost;->mMediaFrames:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v3, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object v3, v0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerDataProvider:Ljavax/inject/Provider;

    .line 28
    .line 29
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 34
    .line 35
    iget-object v10, v0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {v10, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-object v4, v0, Lcom/android/systemui/media/SecMediaHost;->mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

    .line 41
    .line 42
    invoke-virtual {v4, v15}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    .line 43
    .line 44
    .line 45
    move-result-object v13

    .line 46
    if-nez v13, :cond_0

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    new-instance v5, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;

    .line 50
    .line 51
    invoke-direct {v5, v15, v4}, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;-><init>(Lcom/android/systemui/media/MediaType;Lcom/android/systemui/media/ViewPagerHelper;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v13, v5}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/4 v12, 0x1

    .line 62
    const/4 v11, 0x0

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    new-instance v4, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 66
    .line 67
    new-instance v5, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda3;

    .line 68
    .line 69
    invoke-direct {v5, v0, v12}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    .line 70
    .line 71
    .line 72
    new-instance v6, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda10;

    .line 73
    .line 74
    invoke-direct {v6, v2, v11}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    invoke-direct {v4, v1, v3, v5, v6}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/media/SecMediaPlayerData;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    .line 78
    .line 79
    .line 80
    iput-object v4, v0, Lcom/android/systemui/media/SecMediaHost;->mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 81
    .line 82
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const/4 v9, 0x2

    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    new-instance v8, Lcom/android/systemui/media/CarouselHelper;

    .line 90
    .line 91
    move-object v1, v8

    .line 92
    iget v3, v0, Lcom/android/systemui/media/SecMediaHost;->mPagerMargin:I

    .line 93
    .line 94
    new-instance v5, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda3;

    .line 95
    .line 96
    move-object v4, v5

    .line 97
    invoke-direct {v5, v0, v9}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    .line 98
    .line 99
    .line 100
    new-instance v6, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda1;

    .line 101
    .line 102
    move-object v5, v6

    .line 103
    invoke-direct {v6, v0, v12}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    .line 104
    .line 105
    .line 106
    new-instance v7, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda2;

    .line 107
    .line 108
    move-object v6, v7

    .line 109
    invoke-direct {v7, v0, v12}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    .line 110
    .line 111
    .line 112
    iget-object v7, v0, Lcom/android/systemui/media/SecMediaHost;->mLogger:Lcom/android/systemui/log/MediaLogger;

    .line 113
    .line 114
    iget-object v9, v0, Lcom/android/systemui/media/SecMediaHost;->mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 115
    .line 116
    move-object/from16 v19, v8

    .line 117
    .line 118
    move-object v8, v9

    .line 119
    new-instance v9, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda4;

    .line 120
    .line 121
    move-object/from16 v17, v9

    .line 122
    .line 123
    move-object/from16 v11, v17

    .line 124
    .line 125
    invoke-direct {v11, v12, v10}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda4;-><init>(ILjava/util/HashMap;)V

    .line 126
    .line 127
    .line 128
    new-instance v11, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda11;

    .line 129
    .line 130
    move-object v10, v11

    .line 131
    invoke-direct {v11, v0}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/media/SecMediaHost;)V

    .line 132
    .line 133
    .line 134
    new-instance v11, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;

    .line 135
    .line 136
    move-object/from16 v20, v1

    .line 137
    .line 138
    move-object/from16 v17, v11

    .line 139
    .line 140
    const/4 v1, 0x0

    .line 141
    const/4 v12, 0x4

    .line 142
    move-object/from16 v1, v17

    .line 143
    .line 144
    invoke-direct {v1, v0, v12}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    .line 145
    .line 146
    .line 147
    iget-object v12, v0, Lcom/android/systemui/media/SecMediaHost;->mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 148
    .line 149
    const/4 v1, 0x1

    .line 150
    iget-object v1, v0, Lcom/android/systemui/media/SecMediaHost;->mMediaControlPanelProvider:Ljavax/inject/Provider;

    .line 151
    .line 152
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    new-instance v2, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda10;

    .line 156
    .line 157
    move-object/from16 v18, v13

    .line 158
    .line 159
    move-object v13, v2

    .line 160
    move/from16 v23, v3

    .line 161
    .line 162
    const/4 v3, 0x1

    .line 163
    invoke-direct {v2, v1, v3}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Object;I)V

    .line 164
    .line 165
    .line 166
    new-instance v1, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda12;

    .line 167
    .line 168
    move-object/from16 v22, v14

    .line 169
    .line 170
    move-object v14, v1

    .line 171
    const/4 v2, 0x0

    .line 172
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    .line 173
    .line 174
    .line 175
    new-instance v1, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda12;

    .line 176
    .line 177
    move-object v15, v1

    .line 178
    invoke-direct {v1, v0, v3}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    .line 179
    .line 180
    .line 181
    new-instance v1, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda7;

    .line 182
    .line 183
    move-object/from16 v17, v1

    .line 184
    .line 185
    invoke-direct {v1, v0}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/media/SecMediaHost;)V

    .line 186
    .line 187
    .line 188
    move-object/from16 v1, p1

    .line 189
    .line 190
    move/from16 v21, v2

    .line 191
    .line 192
    move-object/from16 v2, p1

    .line 193
    .line 194
    move-object/from16 v16, p2

    .line 195
    .line 196
    move-object/from16 v1, v20

    .line 197
    .line 198
    move/from16 v3, v23

    .line 199
    .line 200
    invoke-direct/range {v1 .. v18}, Lcom/android/systemui/media/CarouselHelper;-><init>(Landroid/view/View;ILjava/util/function/Supplier;Ljava/util/function/BiFunction;Ljava/util/function/IntSupplier;Lcom/android/systemui/log/MediaLogger;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Ljava/util/function/Function;Ljava/lang/Runnable;Ljava/util/function/Consumer;Lcom/android/systemui/media/MediaPlayerBarExpandHelper;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Lcom/android/systemui/media/MediaType;Ljava/util/function/BooleanSupplier;Landroidx/viewpager/widget/ViewPager;)V

    .line 201
    .line 202
    .line 203
    move-object/from16 v1, v19

    .line 204
    .line 205
    iput-object v1, v0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_2
    move-object/from16 v22, v14

    .line 209
    .line 210
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/media/MediaType;->getSupportWidgetTimer()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_3

    .line 215
    .line 216
    new-instance v1, Lcom/android/systemui/media/CoverMusicWidgetController;

    .line 217
    .line 218
    new-instance v2, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;

    .line 219
    .line 220
    const/4 v3, 0x2

    .line 221
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    .line 222
    .line 223
    .line 224
    new-instance v3, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;

    .line 225
    .line 226
    const/4 v4, 0x3

    .line 227
    invoke-direct {v3, v0, v4}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    .line 228
    .line 229
    .line 230
    iget-object v4, v0, Lcom/android/systemui/media/SecMediaHost;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 231
    .line 232
    iget-object v5, v0, Lcom/android/systemui/media/SecMediaHost;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 233
    .line 234
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/media/CoverMusicWidgetController;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V

    .line 235
    .line 236
    .line 237
    iput-object v1, v0, Lcom/android/systemui/media/SecMediaHost;->mWidgetController:Lcom/android/systemui/media/CoverMusicWidgetController;

    .line 238
    .line 239
    const-string v2, "CoverMusicWidgetController"

    .line 240
    .line 241
    const-string v3, "init"

    .line 242
    .line 243
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    const/4 v2, 0x0

    .line 247
    invoke-virtual {v1, v2}, Lcom/android/systemui/media/CoverMusicWidgetController;->enableWidget(Z)V

    .line 248
    .line 249
    .line 250
    iget-object v3, v1, Lcom/android/systemui/media/CoverMusicWidgetController;->onPlayerVisibilityListener$delegate:Lkotlin/Lazy;

    .line 251
    .line 252
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    check-cast v3, Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;

    .line 257
    .line 258
    iget-object v4, v1, Lcom/android/systemui/media/CoverMusicWidgetController;->addVisibilityListenerConsumer:Ljava/util/function/Consumer;

    .line 259
    .line 260
    invoke-interface {v4, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iget-object v3, v1, Lcom/android/systemui/media/CoverMusicWidgetController;->observer:Lcom/android/systemui/media/CoverMusicWidgetController$observer$1;

    .line 264
    .line 265
    iget-object v1, v1, Lcom/android/systemui/media/CoverMusicWidgetController;->lifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 266
    .line 267
    invoke-virtual {v1, v3}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_3
    const/4 v2, 0x0

    .line 272
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/media/MediaType;->getSupportRoundedCorner()Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-nez v1, :cond_4

    .line 277
    .line 278
    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->getChildCount()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    new-instance v2, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda8;

    .line 287
    .line 288
    move-object/from16 v3, p1

    .line 289
    .line 290
    invoke-direct {v2, v3}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda8;-><init>(Landroid/view/View;)V

    .line 291
    .line 292
    .line 293
    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    new-instance v2, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;

    .line 298
    .line 299
    invoke-direct {v2}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    new-instance v2, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda14;

    .line 307
    .line 308
    const/4 v3, 0x1

    .line 309
    invoke-direct {v2, v3}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda14;-><init>(I)V

    .line 310
    .line 311
    .line 312
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 313
    .line 314
    .line 315
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/media/SecMediaHost;->mCurrentMediaData:Lcom/android/systemui/media/MediaDataFormat;

    .line 316
    .line 317
    if-eqz v1, :cond_5

    .line 318
    .line 319
    iget-object v2, v1, Lcom/android/systemui/media/MediaDataFormat;->oldKey:Ljava/lang/String;

    .line 320
    .line 321
    iget-object v3, v1, Lcom/android/systemui/media/MediaDataFormat;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 322
    .line 323
    iget-object v1, v1, Lcom/android/systemui/media/MediaDataFormat;->key:Ljava/lang/String;

    .line 324
    .line 325
    move-object/from16 v4, p2

    .line 326
    .line 327
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/media/SecMediaHost;->updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;Lcom/android/systemui/media/MediaType;)V

    .line 328
    .line 329
    .line 330
    :cond_5
    return-void
.end method

.method public final addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;Lcom/android/systemui/media/MediaType;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 12
    .line 13
    iget v2, p0, Lcom/android/systemui/media/SecMediaHost;->mOrientation:I

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v2, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput v1, p0, Lcom/android/systemui/media/SecMediaHost;->mOrientation:I

    .line 20
    .line 21
    iput-boolean v3, p0, Lcom/android/systemui/media/SecMediaHost;->mPlayerNeedForceUpdate:Z

    .line 22
    .line 23
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaHost;->mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

    .line 24
    .line 25
    invoke-virtual {v1, p4}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v4, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 39
    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    const/4 v5, 0x0

    .line 44
    invoke-virtual {p0, v5, p4}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerNum(ZLcom/android/systemui/media/MediaType;)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    invoke-virtual {v4}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 57
    .line 58
    if-eqz v7, :cond_3

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v7, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 69
    .line 70
    if-eqz p2, :cond_3

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-interface {v7, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {v4}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 88
    .line 89
    iget-object v7, p0, Lcom/android/systemui/media/SecMediaHost;->mLogger:Lcom/android/systemui/log/MediaLogger;

    .line 90
    .line 91
    if-nez p2, :cond_a

    .line 92
    .line 93
    iget-object p2, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaControlPanelProvider:Ljavax/inject/Provider;

    .line 94
    .line 95
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 100
    .line 101
    iput-object p4, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 102
    .line 103
    new-instance v8, Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 104
    .line 105
    invoke-direct {v8, v0, v2, v5, p4}, Lcom/android/systemui/media/SecPlayerViewHolder;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZLcom/android/systemui/media/MediaType;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v8}, Lcom/android/systemui/media/SecMediaControlPanel;->attach(Lcom/android/systemui/media/SecPlayerViewHolder;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportBudsButton()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_4

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_4
    iget-object v0, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 121
    .line 122
    iget-object v2, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->budsButtonCollapsed:Landroid/widget/ImageButton;

    .line 123
    .line 124
    const/4 v8, 0x0

    .line 125
    if-eqz v2, :cond_5

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    move-object v2, v8

    .line 129
    :goto_1
    iput-object v2, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonCollapsed:Landroid/widget/ImageButton;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->budsButtonExpanded:Landroid/widget/ImageButton;

    .line 132
    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_6
    move-object v0, v8

    .line 137
    :goto_2
    iput-object v0, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    .line 138
    .line 139
    iput-object v8, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsDetailOpenRunnable:Ljava/lang/Runnable;

    .line 140
    .line 141
    iput-object v8, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsDetailCloseRunnable:Ljava/lang/Runnable;

    .line 142
    .line 143
    iget-object v0, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_7

    .line 150
    .line 151
    iget-object v0, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonCollapsed:Landroid/widget/ImageButton;

    .line 152
    .line 153
    new-instance v2, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;

    .line 154
    .line 155
    invoke-direct {v2, v5, p2}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;-><init>(ILcom/android/systemui/media/SecMediaControlPanel;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    .line 162
    .line 163
    new-instance v2, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;

    .line 164
    .line 165
    invoke-direct {v2, v3, p2}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;-><init>(ILcom/android/systemui/media/SecMediaControlPanel;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    :cond_7
    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaControlPanel;->updateBudsButton()V

    .line 172
    .line 173
    .line 174
    :goto_3
    new-instance v0, Lcom/android/systemui/media/SecMediaHost$1;

    .line 175
    .line 176
    invoke-direct {v0, p0, v4}, Lcom/android/systemui/media/SecMediaHost$1;-><init>(Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/media/SecMediaPlayerData;)V

    .line 177
    .line 178
    .line 179
    iput-object p1, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    .line 180
    .line 181
    iput-object v0, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mQSMediaPlayerBarCallback:Lcom/android/systemui/media/SecMediaHost$1;

    .line 182
    .line 183
    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->bind(Lcom/android/systemui/media/controls/models/player/MediaData;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-boolean p3, p0, Lcom/android/systemui/media/SecMediaHost;->mLocalListening:Z

    .line 187
    .line 188
    invoke-virtual {p2, p3}, Lcom/android/systemui/media/SecMediaControlPanel;->setListening(Z)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaControlPanel;->isPlaying()Z

    .line 199
    .line 200
    .line 201
    move-result p3

    .line 202
    if-eqz p3, :cond_8

    .line 203
    .line 204
    invoke-virtual {v4}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 205
    .line 206
    .line 207
    move-result-object p3

    .line 208
    invoke-virtual {p3, v5, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    move p3, v3

    .line 212
    goto :goto_4

    .line 213
    :cond_8
    invoke-virtual {v4}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 214
    .line 215
    .line 216
    move-result-object p3

    .line 217
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move p3, v5

    .line 221
    :goto_4
    invoke-virtual {v1, p4}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    if-eqz v0, :cond_9

    .line 226
    .line 227
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    if-eqz v0, :cond_9

    .line 232
    .line 233
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 234
    .line 235
    .line 236
    :cond_9
    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaControlPanel;->isPlaying()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    check-cast v7, Lcom/android/systemui/log/MediaLoggerImpl;

    .line 241
    .line 242
    invoke-virtual {v7, p1, v0}, Lcom/android/systemui/log/MediaLoggerImpl;->addPlayer(Ljava/lang/String;Z)V

    .line 243
    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_a
    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->bind(Lcom/android/systemui/media/controls/models/player/MediaData;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-object p3, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    .line 250
    .line 251
    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result p3

    .line 255
    if-nez p3, :cond_b

    .line 256
    .line 257
    iput-object p1, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    .line 258
    .line 259
    :cond_b
    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaControlPanel;->isPlaying()Z

    .line 260
    .line 261
    .line 262
    move-result p3

    .line 263
    if-eqz p3, :cond_c

    .line 264
    .line 265
    invoke-virtual {v4}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 266
    .line 267
    .line 268
    move-result-object p3

    .line 269
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p3

    .line 273
    check-cast p3, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 274
    .line 275
    if-eq p3, p2, :cond_c

    .line 276
    .line 277
    invoke-virtual {v4}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 278
    .line 279
    .line 280
    move-result-object p3

    .line 281
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 285
    .line 286
    .line 287
    move-result-object p3

    .line 288
    invoke-virtual {p3, v5, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    move p3, v3

    .line 292
    goto :goto_5

    .line 293
    :cond_c
    move p3, v5

    .line 294
    :goto_5
    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaControlPanel;->isPlaying()Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    check-cast v7, Lcom/android/systemui/log/MediaLoggerImpl;

    .line 299
    .line 300
    invoke-virtual {v7, p1, v0}, Lcom/android/systemui/log/MediaLoggerImpl;->updatePlayer(Ljava/lang/String;Z)V

    .line 301
    .line 302
    .line 303
    :goto_6
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    if-eqz p1, :cond_d

    .line 308
    .line 309
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/media/SecMediaHost;->updateCapsule(Lcom/android/systemui/media/SecMediaControlPanel;Z)V

    .line 310
    .line 311
    .line 312
    :cond_d
    invoke-virtual {v4}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayersSize()I

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    .line 317
    .line 318
    .line 319
    move-result p2

    .line 320
    if-eqz p2, :cond_11

    .line 321
    .line 322
    if-lez p1, :cond_11

    .line 323
    .line 324
    iget-object p2, p0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    .line 325
    .line 326
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    iget-object v0, v4, Lcom/android/systemui/media/SecMediaPlayerData;->firstPageView:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 330
    .line 331
    if-nez v0, :cond_e

    .line 332
    .line 333
    invoke-static {p2}, Lcom/android/systemui/media/CarouselHelper;->addOrUpdateSentinels$addSentinel(Lcom/android/systemui/media/CarouselHelper;)Lcom/android/systemui/media/SecMediaControlPanel;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    iput-object v0, v4, Lcom/android/systemui/media/SecMediaPlayerData;->firstPageView:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 338
    .line 339
    :cond_e
    iget-object v0, v4, Lcom/android/systemui/media/SecMediaPlayerData;->lastPageView:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 340
    .line 341
    if-nez v0, :cond_f

    .line 342
    .line 343
    invoke-static {p2}, Lcom/android/systemui/media/CarouselHelper;->addOrUpdateSentinels$addSentinel(Lcom/android/systemui/media/CarouselHelper;)Lcom/android/systemui/media/SecMediaControlPanel;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    iput-object p2, v4, Lcom/android/systemui/media/SecMediaPlayerData;->lastPageView:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 348
    .line 349
    :cond_f
    iget-object p2, v4, Lcom/android/systemui/media/SecMediaPlayerData;->firstPageView:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 350
    .line 351
    if-eqz p2, :cond_10

    .line 352
    .line 353
    const-string v0, "first_page"

    .line 354
    .line 355
    invoke-static {v4, p2, v0, v3}, Lcom/android/systemui/media/CarouselHelper;->addOrUpdateSentinels$updateSentinel(Lcom/android/systemui/media/SecMediaPlayerData;Lcom/android/systemui/media/SecMediaControlPanel;Ljava/lang/String;Z)V

    .line 356
    .line 357
    .line 358
    :cond_10
    iget-object p2, v4, Lcom/android/systemui/media/SecMediaPlayerData;->lastPageView:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 359
    .line 360
    if-eqz p2, :cond_11

    .line 361
    .line 362
    const-string v0, "last_page"

    .line 363
    .line 364
    invoke-static {v4, p2, v0, v5}, Lcom/android/systemui/media/CarouselHelper;->addOrUpdateSentinels$updateSentinel(Lcom/android/systemui/media/SecMediaPlayerData;Lcom/android/systemui/media/SecMediaControlPanel;Ljava/lang/String;Z)V

    .line 365
    .line 366
    .line 367
    :cond_11
    invoke-virtual {v1, p4}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    .line 368
    .line 369
    .line 370
    move-result-object p2

    .line 371
    if-eqz p2, :cond_12

    .line 372
    .line 373
    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 374
    .line 375
    .line 376
    move-result-object p2

    .line 377
    if-eqz p2, :cond_12

    .line 378
    .line 379
    invoke-virtual {p2}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 380
    .line 381
    .line 382
    :cond_12
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    .line 383
    .line 384
    .line 385
    move-result p2

    .line 386
    if-eqz p2, :cond_13

    .line 387
    .line 388
    new-instance p2, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;

    .line 389
    .line 390
    const/4 v0, 0x6

    .line 391
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v4}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-interface {v0, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 399
    .line 400
    .line 401
    iget-object p2, p0, Lcom/android/systemui/media/SecMediaHost;->mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 402
    .line 403
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->setPlayerBarExpansion()V

    .line 404
    .line 405
    .line 406
    :cond_13
    if-lez p1, :cond_14

    .line 407
    .line 408
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 409
    .line 410
    invoke-virtual {p0, p2}, Lcom/android/systemui/media/SecMediaHost;->onMediaVisibilityChanged(Ljava/lang/Boolean;)V

    .line 411
    .line 412
    .line 413
    :cond_14
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    .line 414
    .line 415
    .line 416
    move-result p2

    .line 417
    if-eqz p2, :cond_15

    .line 418
    .line 419
    invoke-virtual {p0, v5, p4}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerNum(ZLcom/android/systemui/media/MediaType;)I

    .line 420
    .line 421
    .line 422
    move-result p2

    .line 423
    if-eq v6, p2, :cond_15

    .line 424
    .line 425
    iget-object p2, p0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    .line 426
    .line 427
    invoke-virtual {p2}, Lcom/android/systemui/media/CarouselHelper;->updatePageIndicatorNumberPages()V

    .line 428
    .line 429
    .line 430
    :cond_15
    invoke-virtual {v1, p4}, Lcom/android/systemui/media/ViewPagerHelper;->getCurrentPage(Lcom/android/systemui/media/MediaType;)I

    .line 431
    .line 432
    .line 433
    move-result p2

    .line 434
    if-nez p3, :cond_16

    .line 435
    .line 436
    if-eqz p2, :cond_16

    .line 437
    .line 438
    invoke-virtual {p0, v5, p4}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerNum(ZLcom/android/systemui/media/MediaType;)I

    .line 439
    .line 440
    .line 441
    move-result p0

    .line 442
    sub-int/2addr p0, v3

    .line 443
    if-ne p2, p0, :cond_17

    .line 444
    .line 445
    :cond_16
    invoke-virtual {v1, v3, v5, p4}, Lcom/android/systemui/media/ViewPagerHelper;->setCurrentPage(IZLcom/android/systemui/media/MediaType;)V

    .line 446
    .line 447
    .line 448
    :cond_17
    invoke-virtual {v4}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    .line 449
    .line 450
    .line 451
    move-result-object p0

    .line 452
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 453
    .line 454
    .line 455
    move-result p0

    .line 456
    if-eq p0, p1, :cond_18

    .line 457
    .line 458
    const-string p0, "SecMediaHost"

    .line 459
    .line 460
    const-string p1, "Size of players and number of views in carousel are out of sync"

    .line 461
    .line 462
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .line 464
    .line 465
    :cond_18
    return-void
.end method

.method public final getMediaPlayerNum(ZLcom/android/systemui/media/MediaType;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayersSize()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/16 p2, 0xc

    .line 18
    .line 19
    if-le p0, p2, :cond_2

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/16 p2, 0xa

    .line 24
    .line 25
    :cond_1
    return p2

    .line 26
    :cond_2
    if-eqz p1, :cond_3

    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    if-le p0, p1, :cond_3

    .line 30
    .line 31
    add-int/lit8 p0, p0, -0x2

    .line 32
    .line 33
    :cond_3
    return p0
.end method

.method public final getMediaPlayerSize(Lcom/android/systemui/media/MediaType;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaFrames:Ljava/util/HashMap;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Comparable;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onMediaVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mVisibilityListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    new-instance v0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda15;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Comparable;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/media/SecMediaHost;->mBarState:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/systemui/media/SecMediaHost;->mBarState:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p1, v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move v1, v0

    .line 14
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/media/SecMediaHost;->mLocalListening:Z

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v1, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onUiModeChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final removeMediaFrame(Lcom/android/systemui/media/MediaType;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 8
    .line 9
    new-instance v2, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda6;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v2, p0, p1, v3}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/media/MediaType;I)V

    .line 13
    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-interface {v4, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayersSize()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-lez v2, :cond_1

    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Lcom/android/systemui/media/CarouselHelper;->removeSentinels(Lcom/android/systemui/media/SecMediaPlayerData;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportWidgetTimer()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x0

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaHost;->mWidgetController:Lcom/android/systemui/media/CoverMusicWidgetController;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    const-string v4, "CoverMusicWidgetController"

    .line 60
    .line 61
    const-string v5, "destroyed"

    .line 62
    .line 63
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object v4, v1, Lcom/android/systemui/media/CoverMusicWidgetController;->onPlayerVisibilityListener$delegate:Lkotlin/Lazy;

    .line 67
    .line 68
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;

    .line 73
    .line 74
    iget-object v5, v1, Lcom/android/systemui/media/CoverMusicWidgetController;->removeVisibilityListenerConsumer:Ljava/util/function/Consumer;

    .line 75
    .line 76
    invoke-interface {v5, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v4, v1, Lcom/android/systemui/media/CoverMusicWidgetController;->mediaPauseTimerHandler:Landroid/os/Handler;

    .line 80
    .line 81
    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v3}, Lcom/android/systemui/media/CoverMusicWidgetController;->enableWidget(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v3, v1, Lcom/android/systemui/media/CoverMusicWidgetController;->observer:Lcom/android/systemui/media/CoverMusicWidgetController$observer$1;

    .line 88
    .line 89
    iget-object v1, v1, Lcom/android/systemui/media/CoverMusicWidgetController;->lifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iput-object v2, p0, Lcom/android/systemui/media/SecMediaHost;->mWidgetController:Lcom/android/systemui/media/CoverMusicWidgetController;

    .line 95
    .line 96
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    iput-object v2, p0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    .line 103
    .line 104
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    iget-object v3, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaFrames:Ljava/util/HashMap;

    .line 109
    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    iput-object v2, p0, Lcom/android/systemui/media/SecMediaHost;->mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaHost;->mOnLayoutChangeListeners:Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Landroid/view/View$OnLayoutChangeListener;

    .line 122
    .line 123
    if-eqz v4, :cond_6

    .line 124
    .line 125
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Landroid/view/View;

    .line 130
    .line 131
    if-eqz v5, :cond_5

    .line 132
    .line 133
    invoke-virtual {v5, v4}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 134
    .line 135
    .line 136
    :cond_5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    if-eqz p0, :cond_7

    .line 146
    .line 147
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 148
    .line 149
    .line 150
    :cond_7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public final removePlayer(Lcom/android/systemui/media/MediaType;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaHost;->mLogger:Lcom/android/systemui/log/MediaLogger;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    check-cast v2, Lcom/android/systemui/log/MediaLoggerImpl;

    .line 27
    .line 28
    invoke-virtual {v2, p2}, Lcom/android/systemui/log/MediaLoggerImpl;->removePlayerError(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v0, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SecSeekBarObserver;

    .line 58
    .line 59
    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object v4, v3, Lcom/android/systemui/media/SecSeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    invoke-virtual {v4, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v0, Lcom/android/systemui/media/SecSeekBarViewModel$onDestroy$1;

    .line 72
    .line 73
    invoke-direct {v0, v3}, Lcom/android/systemui/media/SecSeekBarViewModel$onDestroy$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    .line 74
    .line 75
    .line 76
    iget-object v4, v3, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    .line 77
    .line 78
    check-cast v4, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 79
    .line 80
    invoke-virtual {v4, v0}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v3, Lcom/android/systemui/media/SecSeekBarViewModel;->sessionDestroyCallback:Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;

    .line 84
    .line 85
    iget-object v4, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mSessionDestroyCallback:Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;

    .line 86
    .line 87
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    iput-object v0, v3, Lcom/android/systemui/media/SecSeekBarViewModel;->sessionDestroyCallback:Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;

    .line 95
    .line 96
    :cond_4
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 97
    .line 98
    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeReceiver:Lcom/android/systemui/media/SecMediaControlPanel$2;

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    :catch_0
    iget-object v0, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mTunable:Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda3;

    .line 104
    .line 105
    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 106
    .line 107
    invoke-virtual {v3, v0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    iget-object v0, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mCoverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    const-string v3, "CoverMusicCapsuleController"

    .line 124
    .line 125
    const-string v4, "capsule destroyed"

    .line 126
    .line 127
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    const-string/jumbo v3, "visible"

    .line 131
    .line 132
    .line 133
    iget-object v4, v0, Lcom/android/systemui/media/CoverMusicCapsuleController;->bundle:Landroid/os/Bundle;

    .line 134
    .line 135
    const/4 v5, 0x0

    .line 136
    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    .line 138
    .line 139
    iget-object v3, v0, Lcom/android/systemui/media/CoverMusicCapsuleController;->capsule:Landroid/widget/RemoteViews;

    .line 140
    .line 141
    const-string v5, "capsule_layout"

    .line 142
    .line 143
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 144
    .line 145
    .line 146
    const-string v3, "capsule_priority"

    .line 147
    .line 148
    const-string v5, "low"

    .line 149
    .line 150
    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/android/systemui/media/CoverMusicCapsuleController;->updateCapsule()V

    .line 154
    .line 155
    .line 156
    :cond_5
    iget-object v0, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportWidgetTimer()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_6

    .line 163
    .line 164
    iget-object v0, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mObserver:Lcom/android/systemui/media/SecMediaControlPanel$4;

    .line 165
    .line 166
    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 167
    .line 168
    invoke-virtual {v3, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_6
    iget-object v0, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mSettingsListener:Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda2;

    .line 172
    .line 173
    iget-object v1, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 174
    .line 175
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_7

    .line 183
    .line 184
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/media/CarouselHelper;->updatePageIndicatorNumberPages()V

    .line 187
    .line 188
    .line 189
    :cond_7
    check-cast v2, Lcom/android/systemui/log/MediaLoggerImpl;

    .line 190
    .line 191
    invoke-virtual {v2, p2}, Lcom/android/systemui/log/MediaLoggerImpl;->removePlayer(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :goto_0
    return-void
.end method

.method public final updateCapsule(Lcom/android/systemui/media/SecMediaControlPanel;Z)V
    .locals 2

    .line 1
    const-string v0, "Change Cover Played State : "

    .line 2
    .line 3
    const-string v1, "SecMediaHost"

    .line 4
    .line 5
    invoke-static {v0, p2, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_3

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 11
    .line 12
    sget-object p2, Lcom/android/systemui/media/MediaType;->COVER:Lcom/android/systemui/media/MediaType;

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 19
    .line 20
    new-instance p2, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda14;

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    invoke-direct {p2, v0}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda14;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p2}, Lcom/android/systemui/media/SecMediaHost;->iteratePlayers(Lcom/android/systemui/media/SecMediaPlayerData;Ljava/util/function/Consumer;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    iget-boolean p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerCoverPlayed:Z

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    if-ne p2, p0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput-boolean p2, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerCoverPlayed:Z

    .line 44
    .line 45
    :cond_1
    :goto_0
    iget-boolean p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerCoverPlayed:Z

    .line 46
    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    iget-object p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mCoverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

    .line 50
    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    .line 54
    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/CoverMusicCapsuleController;->updateEqualizerState(Landroid/media/session/PlaybackState;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_1
    return-void
.end method

.method public final updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;Lcom/android/systemui/media/MediaType;)V
    .locals 7

    .line 1
    iget-object v0, p3, Lcom/android/systemui/media/controls/models/player/MediaData;->song:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x5

    .line 10
    if-le v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    move-object v4, v0

    .line 19
    iget-boolean v5, p3, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    .line 20
    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    const-string v1, "  "

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mLogger:Lcom/android/systemui/log/MediaLogger;

    .line 30
    .line 31
    move-object v1, v0

    .line 32
    check-cast v1, Lcom/android/systemui/log/MediaLoggerImpl;

    .line 33
    .line 34
    move-object v2, p1

    .line 35
    move-object v3, p2

    .line 36
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/log/MediaLoggerImpl;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-boolean v1, p3, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    .line 59
    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaHost;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/android/systemui/util/Utils;->useMediaResumption(Landroid/content/Context;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    iget-object p2, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaDataListener:Lcom/android/systemui/media/SecMediaHost$2;

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Lcom/android/systemui/media/SecMediaHost$2;->onMediaDataRemoved(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/SecMediaHost;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;Lcom/android/systemui/media/MediaType;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayersSize()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-lez p1, :cond_4

    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/android/systemui/media/CarouselHelper;->updatePageIndicatorVisibility()V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    .line 108
    .line 109
    iget-object p2, p1, Lcom/android/systemui/media/CarouselHelper;->contextSupplier:Ljava/util/function/Supplier;

    .line 110
    .line 111
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Landroid/content/Context;

    .line 116
    .line 117
    const v0, 0x7f0603d6

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    const/16 v0, 0xb4

    .line 125
    .line 126
    invoke-static {p2, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    iget-object p1, p1, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 131
    .line 132
    iput p2, p1, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    .line 133
    .line 134
    iput v0, p1, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    .line 135
    .line 136
    :cond_4
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getSupportWidgetTimer()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_7

    .line 141
    .line 142
    iget-object p1, p3, Lcom/android/systemui/media/controls/models/player/MediaData;->isPlaying:Ljava/lang/Boolean;

    .line 143
    .line 144
    if-eqz p1, :cond_7

    .line 145
    .line 146
    iget-object p2, p0, Lcom/android/systemui/media/SecMediaHost;->mWidgetController:Lcom/android/systemui/media/CoverMusicWidgetController;

    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    iget-object p3, p2, Lcom/android/systemui/media/CoverMusicWidgetController;->mediaPauseTimerHandler:Landroid/os/Handler;

    .line 153
    .line 154
    const-string p4, "CoverMusicWidgetController"

    .line 155
    .line 156
    if-eqz p1, :cond_5

    .line 157
    .line 158
    const-string p1, "callback has been removed"

    .line 159
    .line 160
    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    const/4 p1, 0x1

    .line 164
    invoke-virtual {p2, p1}, Lcom/android/systemui/media/CoverMusicWidgetController;->enableWidget(Z)V

    .line 165
    .line 166
    .line 167
    const-wide/16 v0, 0x0

    .line 168
    .line 169
    iput-wide v0, p2, Lcom/android/systemui/media/CoverMusicWidgetController;->pauseTimerStartedTime:J

    .line 170
    .line 171
    const/4 p1, 0x0

    .line 172
    invoke-virtual {p3, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_5
    if-nez p1, :cond_6

    .line 177
    .line 178
    iget-object p1, p2, Lcom/android/systemui/media/CoverMusicWidgetController;->widgetDisableRunnable:Lcom/android/systemui/media/CoverMusicWidgetController$widgetDisableRunnable$1;

    .line 179
    .line 180
    invoke-virtual {p3, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_6

    .line 185
    .line 186
    const-string v0, "callback has been added"

    .line 187
    .line 188
    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 192
    .line 193
    .line 194
    move-result-wide v0

    .line 195
    iput-wide v0, p2, Lcom/android/systemui/media/CoverMusicWidgetController;->pauseTimerStartedTime:J

    .line 196
    .line 197
    const-wide/32 v0, 0x1d4c0

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_6
    const-string p1, "is not playing but already has callback"

    .line 205
    .line 206
    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaBarCallback:Lcom/android/systemui/qs/bar/BarController$4;

    .line 210
    .line 211
    if-nez p0, :cond_8

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarController$4;->onBarHeightChanged()V

    .line 215
    .line 216
    .line 217
    :goto_2
    return-void
.end method
