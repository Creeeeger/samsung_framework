.class public final Lcom/android/systemui/qs/bar/VideoCallMicModeBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public fontScale:F

.field public final items:Lkotlin/sequences/Sequence;

.field public final lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public orientation:I

.field public slotButtonGroup:Landroid/widget/LinearLayout;

.field public final util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/qs/SecQSPanelResourcePicker;",
            "Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v6, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    .line 5
    .line 6
    invoke-direct {v6, p1, p4}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V

    .line 7
    .line 8
    .line 9
    iput-object v6, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    .line 10
    .line 11
    new-instance p4, Lcom/android/systemui/qs/bar/VideoCallEffect;

    .line 12
    .line 13
    new-instance v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$1;-><init>(Lcom/android/systemui/qs/bar/VideoCallMicModeBar;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p4, v6, p1, p5, v0}, Lcom/android/systemui/qs/bar/VideoCallEffect;-><init>(Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;Landroid/content/Context;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    new-instance v7, Lcom/android/systemui/qs/bar/VoIPTranslator;

    .line 22
    .line 23
    new-instance v5, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$2;

    .line 24
    .line 25
    invoke-direct {v5, p0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$2;-><init>(Lcom/android/systemui/qs/bar/VideoCallMicModeBar;)V

    .line 26
    .line 27
    .line 28
    move-object v0, v7

    .line 29
    move-object v1, v6

    .line 30
    move-object v2, p1

    .line 31
    move-object v3, p3

    .line 32
    move-object v4, p5

    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/bar/VoIPTranslator;-><init>(Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    new-instance p5, Lcom/android/systemui/qs/bar/MicMode;

    .line 37
    .line 38
    new-instance v5, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$3;

    .line 39
    .line 40
    invoke-direct {v5, p0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$3;-><init>(Lcom/android/systemui/qs/bar/VideoCallMicModeBar;)V

    .line 41
    .line 42
    .line 43
    new-instance v8, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$4;

    .line 44
    .line 45
    invoke-direct {v8, p0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$4;-><init>(Lcom/android/systemui/qs/bar/VideoCallMicModeBar;)V

    .line 46
    .line 47
    .line 48
    move-object v0, p5

    .line 49
    move-object v3, p2

    .line 50
    move-object v4, p3

    .line 51
    move-object v6, v8

    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/bar/MicMode;-><init>(Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/util/SettingsHelper;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    filled-new-array {p4, v7, p5}, [Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lkotlin/sequences/SequencesKt__SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->items:Lkotlin/sequences/Sequence;

    .line 64
    .line 65
    new-instance p1, Lcom/android/systemui/util/ConfigurationState;

    .line 66
    .line 67
    sget-object p2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 68
    .line 69
    sget-object p3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 70
    .line 71
    sget-object p4, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DISPLAY_DEVICE_TYPE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 72
    .line 73
    filled-new-array {p2, p3, p4}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-direct {p1, p2}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->items:Lkotlin/sequences/Sequence;

    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->fini()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final getBarLayout()I
    .locals 0

    .line 1
    const p0, 0x7f0d0399

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final inflateViews(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    .line 3
    .line 4
    const v2, 0x7f0d0399

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->items:Lkotlin/sequences/Sequence;

    .line 13
    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    .line 31
    .line 32
    invoke-interface {v3, p1}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->inflate(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const v2, 0x7f0a0a63

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroid/widget/LinearLayout;

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    sget-object v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$inflateSlotButtonGroup$1$1;->INSTANCE:Lcom/android/systemui/qs/bar/VideoCallMicModeBar$inflateSlotButtonGroup$1$1;

    .line 48
    .line 49
    new-instance v3, Lkotlin/sequences/TransformingSequence;

    .line 50
    .line 51
    invoke-direct {v3, v1, v0}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v3}, Lkotlin/sequences/SequencesKt___SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FilteringSequence;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v3, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 59
    .line 60
    invoke-direct {v3, v0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-virtual {v3}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {v3}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move-object v0, v2

    .line 80
    :cond_2
    iput-object v0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->slotButtonGroup:Landroid/widget/LinearLayout;

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move-object p1, v0

    .line 84
    :goto_2
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 85
    .line 86
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    .line 101
    .line 102
    invoke-interface {v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->init()V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    .line 121
    .line 122
    sget-object v2, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$setClickListeners$1$1;->INSTANCE:Lcom/android/systemui/qs/bar/VideoCallMicModeBar$setClickListeners$1$1;

    .line 123
    .line 124
    invoke-interface {v0, v2}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->setClickListener(Lkotlin/jvm/functions/Function1;)V

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->updateBarVisibilities()V

    .line 129
    .line 130
    .line 131
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_6

    .line 140
    .line 141
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    .line 146
    .line 147
    invoke-interface {p1}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->updateContents()V

    .line 148
    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_6
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_2

    .line 37
    .line 38
    iget v3, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->orientation:I

    .line 39
    .line 40
    if-ne v3, v0, :cond_2

    .line 41
    .line 42
    iget v3, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->fontScale:F

    .line 43
    .line 44
    cmpg-float v3, v3, v1

    .line 45
    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v3, 0x0

    .line 51
    :goto_0
    if-nez v3, :cond_3

    .line 52
    .line 53
    :cond_2
    iput v0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->orientation:I

    .line 54
    .line 55
    iput v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->fontScale:F

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->updateHeightMargins()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public final updateBarVisibilities()V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$updateBarVisibilities$1;->INSTANCE:Lcom/android/systemui/qs/bar/VideoCallMicModeBar$updateBarVisibilities$1;

    .line 2
    .line 3
    new-instance v1, Lkotlin/sequences/TransformingSequence;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->items:Lkotlin/sequences/Sequence;

    .line 6
    .line 7
    invoke-direct {v1, v2, v0}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x1

    .line 26
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x2

    .line 37
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const-string/jumbo v6, "updateBarVisibilities: videoCall: "

    .line 48
    .line 49
    .line 50
    const-string v7, " micMode: "

    .line 51
    .line 52
    const-string v8, " voIPTranslator: "

    .line 53
    .line 54
    invoke-static {v6, v3, v7, v0, v8}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    iget-object v7, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    new-instance v6, Lcom/android/systemui/qs/bar/VideoCallMicModeStates;

    .line 71
    .line 72
    invoke-direct {v6, v3, v5, v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeStates;-><init>(ZZZ)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_0

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    check-cast v7, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    .line 90
    .line 91
    invoke-interface {v7, v6}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->updateVisibilities(Lcom/android/systemui/qs/bar/VideoCallMicModeStates;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    if-nez v3, :cond_1

    .line 96
    .line 97
    if-nez v0, :cond_1

    .line 98
    .line 99
    if-eqz v5, :cond_2

    .line 100
    .line 101
    :cond_1
    move v1, v4

    .line 102
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->updateHeightMargins()V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final updateHeightMargins()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->orientation:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x2

    .line 11
    if-ne v0, v3, :cond_1

    .line 12
    .line 13
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v0, v2

    .line 20
    :goto_0
    sget-object v4, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$updateHeightMargins$1;->INSTANCE:Lcom/android/systemui/qs/bar/VideoCallMicModeBar$updateHeightMargins$1;

    .line 21
    .line 22
    new-instance v5, Lkotlin/sequences/TransformingSequence;

    .line 23
    .line 24
    iget-object v6, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->items:Lkotlin/sequences/Sequence;

    .line 25
    .line 26
    invoke-direct {v5, v6, v4}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v5}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    new-instance v4, Lcom/android/systemui/qs/bar/VideoCallMicModeStates;

    .line 64
    .line 65
    invoke-direct {v4, v2, v1, v3}, Lcom/android/systemui/qs/bar/VideoCallMicModeStates;-><init>(ZZZ)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->getResources()Lcom/android/systemui/qs/bar/VideoCallMicModeResources;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v6}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_2

    .line 83
    .line 84
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    .line 89
    .line 90
    invoke-interface {v5, v0, v4, v2}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->updateHeightMargins(ZLcom/android/systemui/qs/bar/VideoCallMicModeStates;Lcom/android/systemui/qs/bar/VideoCallMicModeResources;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    invoke-interface {v6}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    .line 109
    .line 110
    invoke-interface {v2}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->updateFontScale()V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->slotButtonGroup:Landroid/widget/LinearLayout;

    .line 115
    .line 116
    if-nez p0, :cond_4

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->getResources()Lcom/android/systemui/qs/bar/VideoCallMicModeResources;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget v0, v0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->dividerPadding:I

    .line 124
    .line 125
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    .line 126
    .line 127
    .line 128
    :goto_3
    return-void
.end method
